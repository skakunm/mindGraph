<?xml version='1.0' encoding='utf-8'?>
<gexf version="1.2" xmlns="http://www.gexf.net/1.2draft" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.gexf.net/1.2draft http://www.gexf.net/1.2draft/gexf.xsd">
  <meta lastmodifieddate="2020-03-30">
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
      <node id="1" label="1">
        <attvalues>
          <attvalue for="0" value="question" />
          <attvalue for="1" value="b" />
          <attvalue for="2" value="Kako predstaviti podatke" />
        </attvalues>
      </node>
      <node id="2" label="2">
        <attvalues>
          <attvalue for="0" value="answer" />
          <attvalue for="1" value="g" />
          <attvalue for="2" value="Tacke svakih 10m" />
          <attvalue for="3" value="true" />
        </attvalues>
      </node>
      <node id="3" label="3">
        <attvalues>
          <attvalue for="0" value="answer" />
          <attvalue for="1" value="r" />
          <attvalue for="2" value="Precizno svaka slika" />
          <attvalue for="3" value="false" />
        </attvalues>
      </node>
      <node id="4" label="4">
        <attvalues>
          <attvalue for="0" value="question" />
          <attvalue for="1" value="b" />
          <attvalue for="2" value="Problem odredjivanja smera" />
        </attvalues>
      </node>
      <node id="5" label="5">
        <attvalues>
          <attvalue for="0" value="todo" />
          <attvalue for="1" value="xkcd:pale orange" />
          <attvalue for="2" value="Skontaj kako ucitati GPS" />
          <attvalue for="3" value="true" />
        </attvalues>
      </node>
      <node id="6" label="6">
        <attvalues>
          <attvalue for="0" value="todo" />
          <attvalue for="1" value="xkcd:brownish red" />
          <attvalue for="2" value="Vidi koliko dobro mapira tacke na mapu" />
          <attvalue for="3" value="false" />
        </attvalues>
      </node>
      <node id="7" label="7">
        <attvalues>
          <attvalue for="0" value="todo" />
          <attvalue for="1" value="xkcd:pale orange" />
          <attvalue for="2" value="Podesi VS Code" />
          <attvalue for="3" value="true" />
        </attvalues>
      </node>
      <node id="8" label="8">
        <attvalues>
          <attvalue for="0" value="todo" />
          <attvalue for="1" value="xkcd:brownish red" />
          <attvalue for="2" value="Skontaj konverziju iz ECEF u lat,long" />
          <attvalue for="3" value="false" />
        </attvalues>
      </node>
    </nodes>
    <edges>
      <edge id="0" source="0" target="1" />
      <edge id="1" source="1" target="2" />
      <edge id="2" source="1" target="3" />
      <edge id="3" source="2" target="4" />
      <edge id="4" source="2" target="5" />
      <edge id="6" source="2" target="7" />
      <edge id="5" source="5" target="8" />
      <edge id="7" source="7" target="6" />
      <edge id="8" source="8" target="6" />
    </edges>
  </graph>
</gexf>
