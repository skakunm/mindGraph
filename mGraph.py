#Mac setup,
# First install matplotlib and networkx
# then install graphviz using brew install graphviz
# then install pygraphviz using pip install pygraphviz

import networkx as nx
import matplotlib.pyplot as plt
from math import cos, sin, pi


class mGraph:
    def __init__(self, path=None):
        self.curr_id = 0
        self.g = nx.DiGraph()
        self.path = path
        if path is None:
            self.g.add_node(0, type='start', color='k', text='START')
        else:
            self.load_graph(path)

    def __insert_node(self, from_ids, to_ids):
        from_ids = from_ids if type(from_ids) is list else [from_ids]
        for f_id in from_ids:
            self.g.add_edge(f_id, self.curr_id)
            for t_id in to_ids:
                if t_id in self.g[f_id]:
                        self.g.remove_edge(f_id, t_id)
                        self.g.add_edge(self.curr_id, t_id)

    # manage nodes

    def remove_node(self, id):
        for pre in self.g.predecessors(id):
            for suc in self.g.successors(id):
                self.g.add_edge(pre, suc)
        self.g.remove_node(id)

    def edit_node(self, id, type=None, text=None, color=None, positive=None):
        node = self.g.nodes[id]
        text = node['text'] if text is None else text
        type = node['type'] if type is None else type
        if color is None:
            if type == 'question':
                color = 'b'
            elif type == 'answer':
                color = 'g' if positive else 'r'
            elif type == 'todo':
                color = 'xkcd:pale orange' if positive else 'xkcd:brownish red'
            elif type == 'branch':
                color = 'xkcd:dark grey'
            else:
                print("Type not allowed")
                return
        if 'positive' in node:
            self.g.add_node(id, type=type, color=color, text=text, positive=positive)
        else:
            self.g.add_node(id, type=type, color=color, text=text)

    def add_question(self, from_ids, question, to_ids=[]):
        self.curr_id += 1
        self.g.add_node(self.curr_id, type='question', color='b', text=question)
        self.__insert_node(from_ids, to_ids)

    def add_answer(self, from_ids, answer, positive, to_ids=[]):
        self.curr_id += 1
        self.g.add_node(self.curr_id, type='answer', color='g' if positive else 'r', text=answer, positive=positive)
        self.__insert_node(from_ids, to_ids)

    def add_todo(self, from_ids, todo, finished=False, to_ids=[]):
        self.curr_id += 1
        self.g.add_node(self.curr_id, type='todo', color='xkcd:pale orange' if finished else 'xkcd:brownish red',
                        text=todo, positive=finished)
        self.__insert_node(from_ids, to_ids)

    def add_branch(self, from_ids, title, to_ids=[]):
        self.curr_id += 1
        self.g.add_node(self.curr_id, type='branch', color='xkcd:dark grey', text=title)
        self.__insert_node(from_ids, to_ids)

    def todo_done(self, ids, done=True):
        if type(ids) is not list:
            print('isd must be list, otherwise use edit_node')
            return
        for id in ids:
            self.edit_node(id, positive=done)

    # visualize
    def __print(self, from_id, depth, num_spaces, curr_indent):
        print(' ' * curr_indent * num_spaces, end='')
        self.get_node(from_id)
        if curr_indent < depth - 1:
            for node in self.g.successors(from_id):
                self.__print(node, depth, num_spaces, curr_indent + 1)

    def print(self, from_id=0, depth=10, num_spaces=1):
        self.__print(from_id, depth, num_spaces, 0)

    def get_open_questions(self, only_positive=False):
        for node in self.g.nodes:
            if self.g.nodes[node]['type'] == 'question':
                has_answer = False
                for s in self.g.successors(node):
                    if self.g.nodes[s]['type'] == 'answer':
                        if not only_positive or (only_positive and self.g.nodes[s]['positive']):
                            has_answer = True
                            break
                if not has_answer:
                    print(str(node) + ': ' + self.g.nodes[node]['text'])

    def get_todo(self):
        for nod in self.g.nodes:
            if self.g.nodes[nod]['type'] == 'todo' and not self.g.nodes[nod]['positive']:
                print(str(nod) + ': ' + self.g.nodes[nod]['text'])

    def get_node(self, id):
        node = self.g.nodes[id]
        type_dict = {'start': 'S', 'branch': 'B', 'question': 'Q', 'answer': 'A', 'todo': 'T'}
        prefix = ('Y - ' if node['positive'] else 'N - ') if 'positive' in node else None
        print("{}, nc={}, t={}: {}".format(
            str(id),
            str(len(self.g[id])),
            type_dict[node['type']],
            node['text'] if prefix is None else prefix + node['text']))

    def get_children(self, id):
        for ch in self.g[id]:
            self.get_node(ch)

    def draw_graph(self):
        self.save_graph()
        nod = self.g.nodes
        pos = nx.drawing.nx_agraph.graphviz_layout(self.g, prog='dot')
        plt.clf()

        ang = pi*0.4
        ct = cos(ang)
        st = sin(ang)

        for i in pos:
            p = pos[i]
            temp = (p[0]*ct - p[1]*st, p[0]*st + p[1]*ct)
            pos[i] = temp


        nx.draw_networkx(self.g, node_color=[nod[n]['color'] for n in nod],
                         labels={i: str(i) + ': ' + nod[i]['text'] for i in nod}, alpha=0.5, pos=pos)
        plt.show()
        self.save_graph()

    # manage connections

    def reconnect(self, from_id_start, from_id_goal, to_ids):
        for to_id in to_ids:
            self.g.add_edge(from_id_goal, to_id)
            self.g.remove_edge(from_id_start, to_id)

    def connect(self, from_node, to_node):
        self.g.add_edge(from_node, to_node)

    def disconnect(self, from_node, to_node):
        self.g.remove_edge(from_node, to_node)

    # load - save

    def save_graph(self, path=None):
        path = self.path if path is None else path
        if path is None:
            print('Path not specified')
            return
        else:
            self.path = path
        try:
            nx.write_gexf(self.g, path+'_tmp')
        except:
            print('Save failed, _tmp broken, regular file not broken')
            return

        nx.write_gexf(self.g, path)

    def load_graph(self, path=None):
        path = self.path if path is None else path
        if path is None:
            print('Specify path')
            return
        self.g = nx.read_gexf(path, node_type=int)
        self.curr_id = self.g.number_of_nodes() - 1
