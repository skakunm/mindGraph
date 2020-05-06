<?xml version='1.0' encoding='utf-8'?>
<gexf version="1.2" xmlns="http://www.gexf.net/1.2draft" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.gexf.net/1.2draft http://www.gexf.net/1.2draft/gexf.xsd">
  <meta lastmodifieddate="2020-04-27">
    <creator>NetworkX 2.4</creator>
  </meta>
  <graph defaultedgetype="directed" mode="static" name="">
    <attributes class="node" mode="static">
      <attribute id="0" title="type" type="string" />
      <attribute id="1" title="color" type="string" />
      <attribute id="2" title="text" type="string" />
      <attribute id="3" title="positive" type="boolean" />
    </attributes>
    <nodes>
      <node id="0" label="0">
        <attvalues>
          <attvalue for="0" value="start" />
          <attvalue for="1" value="k" />
          <attvalue for="2" value="START" />
        </attvalues>
      </node>
      <node id="2" label="2">
        <attvalues>
          <attvalue for="0" value="question" />
          <attvalue for="1" value="b" />
          <attvalue for="2" value="Koji je ugao krova?" />
        </attvalues>
      </node>
      <node id="3" label="3">
        <attvalues>
          <attvalue for="0" value="answer" />
          <attvalue for="1" value="g" />
          <attvalue for="2" value="Smislio sam sistem za predgrevanje sa solarnom" />
          <attvalue for="3" value="true" />
        </attvalues>
      </node>
      <node id="4" label="4">
        <attvalues>
          <attvalue for="0" value="question" />
          <attvalue for="1" value="b" />
          <attvalue for="2" value="Kako ubaciti helikoidu u kazan?" />
        </attvalues>
      </node>
      <node id="5" label="5">
        <attvalues>
          <attvalue for="0" value="todo" />
          <attvalue for="1" value="xkcd:brownish red" />
          <attvalue for="2" value="Izracunaj dimenzije helikoide" />
          <attvalue for="3" value="false" />
        </attvalues>
      </node>
      <node id="6" label="6">
        <attvalues>
          <attvalue for="0" value="todo" />
          <attvalue for="1" value="xkcd:brownish red" />
          <attvalue for="2" value="Koliki su gubici selektivnog panela?" />
          <attvalue for="3" value="false" />
        </attvalues>
      </node>
      <node id="7" label="7">
        <attvalues>
          <attvalue for="0" value="todo" />
          <attvalue for="1" value="xkcd:brownish red" />
          <attvalue for="2" value="Koliki su gubici creva?" />
          <attvalue for="3" value="false" />
        </attvalues>
      </node>
      <node id="8" label="8">
        <attvalues>
          <attvalue for="0" value="todo" />
          <attvalue for="1" value="xkcd:brownish red" />
          <attvalue for="2" value="Koliki su gubici izolacije?" />
          <attvalue for="3" value="false" />
        </attvalues>
      </node>
      <node id="9" label="9">
        <attvalues>
          <attvalue for="0" value="todo" />
          <attvalue for="1" value="xkcd:brownish red" />
          <attvalue for="2" value="Izracunaj potrebnu povrsinu panela" />
          <attvalue for="3" value="false" />
        </attvalues>
      </node>
      <node id="10" label="10">
        <attvalues>
          <attvalue for="0" value="todo" />
          <attvalue for="1" value="xkcd:brownish red" />
          <attvalue for="2" value="Proceni zapreminu spremnika" />
          <attvalue for="3" value="false" />
        </attvalues>
      </node>
      <node id="11" label="11">
        <attvalues>
          <attvalue for="0" value="question" />
          <attvalue for="1" value="b" />
          <attvalue for="2" value="Kako resiti problem pregrevanja" />
        </attvalues>
      </node>
      <node id="12" label="12">
        <attvalues>
          <attvalue for="0" value="todo" />
          <attvalue for="1" value="xkcd:brownish red" />
          <attvalue for="2" value="Koja je cena materijala" />
          <attvalue for="3" value="false" />
        </attvalues>
      </node>
    </nodes>
    <edges>
      <edge id="1" source="0" target="3" />
      <edge id="0" source="0" target="2" />
      <edge id="2" source="0" target="6" />
      <edge id="3" source="0" target="7" />
      <edge id="4" source="0" target="8" />
      <edge id="5" source="2" target="9" />
      <edge id="6" source="3" target="4" />
      <edge id="7" source="3" target="11" />
      <edge id="8" source="4" target="5" />
      <edge id="9" source="5" target="12" />
      <edge id="10" source="6" target="9" />
      <edge id="11" source="7" target="9" />
      <edge id="12" source="8" target="9" />
      <edge id="13" source="9" target="10" />
      <edge id="14" source="10" target="12" />
    </edges>
  </graph>
</gexf>
