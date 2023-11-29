<?xml version="1.0" encoding="UTF-8"?>
<simconf version="2023090101">
  <simulation>
    <title>My simulation</title>
    <randomseed>1</randomseed>
    <motedelay_us>1000000</motedelay_us>
    <radiomedium>
      org.contikios.cooja.radiomediums.UDGM
      <transmitting_range>50.0</transmitting_range>
      <interference_range>50.0</interference_range>
      <success_ratio_tx>0.6</success_ratio_tx>
      <success_ratio_rx>0.5</success_ratio_rx>
    </radiomedium>
    <events>
      <logoutput>40000</logoutput>
    </events>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <description>Sender</description>
      <source>[CONFIG_DIR]/code/sender-node.c</source>
      <commands>$(MAKE) clean TARGET=cooja
$(MAKE) -j$(CPUS) sender-node.cooja TARGET=cooja</commands>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Battery</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiVib</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRS232</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiBeeper</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRadio</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiButton</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiPIR</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiClock</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiLED</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiCFS</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="99.56423154395364" y="50.06466731257512" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>2</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <description>RPL root</description>
      <source>[CONFIG_DIR]/code/root-node.c</source>
      <commands>$(MAKE) clean TARGET=cooja
$(MAKE) -j$(CPUS) root-node.cooja TARGET=cooja</commands>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Battery</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiVib</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRS232</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiBeeper</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRadio</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiButton</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiPIR</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiClock</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiLED</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiCFS</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="-0.4799968467515439" y="0.30173505605854883" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>3</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <description>Receiver</description>
      <source>[CONFIG_DIR]/code/receiver-node.c</source>
      <commands>$(MAKE) clean TARGET=cooja
$(MAKE) -j$(CPUS) receiver-node.cooja TARGET=cooja</commands>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Battery</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiVib</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRS232</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiBeeper</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRadio</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiButton</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiPIR</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiClock</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiLED</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiCFS</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="-0.4799968467515439" y="98.79087181374759" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>1</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="19.858714938163757" y="45.69814205169678" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>4</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="17.375901341438293" y="7.96697735786438" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>5</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="14.702850580215454" y="18.45012605190277" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>6</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="25.324180722236633" y="43.223148584365845" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>7</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="5.798351764678955" y="26.96298062801361" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>8</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="88.52679133415222" y="29.167690873146057" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>9</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="82.99463391304016" y="2.1149158477783203" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>10</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="57.83734321594238" y="38.08373212814331" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>11</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.91010105609894" y="31.19862675666809" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>12</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="56.98813199996948" y="43.9631462097168" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>13</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="84.74739789962769" y="72.5109189748764" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>14</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="90.2613878250122" y="50.242626667022705" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>15</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="50.25125741958618" y="92.6126778125763" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>16</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="76.15675628185272" y="51.17090046405792" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>17</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="87.19922304153442" y="85.25049686431885" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>18</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="7.101133465766907" y="63.75149488449097" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>19</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="24.08641278743744" y="53.76938879489899" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>20</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="27.22773849964142" y="80.52957653999329" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>21</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="28.855010867118835" y="97.74653613567352" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>22</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="10.245674848556519" y="63.703453540802" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>23</id>
        </interface_config>
      </mote>
    </motetype>
  </simulation>
  <plugin>
    org.contikios.cooja.plugins.Visualizer
    <plugin_config>
      <moterelations>true</moterelations>
      <skin>org.contikios.cooja.plugins.skins.IDVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.UDGMVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.GridVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.MoteTypeVisualizerSkin</skin>
      <viewport>3.396775172966846 0.0 0.0 3.396775172966846 25.71656577406191 15.70234658003931</viewport>
      <hidden />
    </plugin_config>
    <bounds x="1" y="1" height="400" width="400" z="2" />
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.LogListener
    <plugin_config>
      <filter />
      <formatted_time />
      <coloring />
    </plugin_config>
    <bounds x="-400" y="793" height="834" width="1184" z="4" />
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.Notes
    <plugin_config>
      <notes>Enter notes here</notes>
      <decorations>true</decorations>
    </plugin_config>
    <bounds x="680" y="0" height="160" width="904" z="5" />
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.ScriptRunner
    <plugin_config>
      <script>function place(id, x, y) {&#xD;
    var node = sim.getMoteWithID(id);&#xD;
    node.getInterfaces().getPosition().setCoordinates(x, y, 0);&#xD;
}&#xD;
&#xD;
function getRandom(min, max) {&#xD;
  return r.nextFloat() * (max - min) + min;&#xD;
}&#xD;
&#xD;
// From: http://bost.ocks.org/mike/shuffle/&#xD;
function shuffle(array) {&#xD;
  var m = array.length, t, i;&#xD;
&#xD;
  // While there remain elements to shuffle…&#xD;
  while (m) {&#xD;
&#xD;
    // Pick a remaining element…&#xD;
    i = Math.floor(r.nextFloat() * m--);&#xD;
&#xD;
    // And swap it with the current element.&#xD;
    t = array[m];&#xD;
    array[m] = array[i];&#xD;
    array[i] = t;&#xD;
  }&#xD;
&#xD;
  return array;&#xD;
}&#xD;
&#xD;
GENERATE_MSG(000000, 'randomize-nodes');&#xD;
GENERATE_MSG(1200000, 'randomize-nodes');&#xD;
GENERATE_MSG(2400000, 'randomize-nodes');&#xD;
GENERATE_MSG(3600000, 'randomize-nodes');&#xD;
&#xD;
var r = new java.util.Random(sim.getRandomSeed());&#xD;
var numForwarders = 20;&#xD;
var forwardIDStart = 4;&#xD;
packetsReceived = [];&#xD;
packetsSent = [];&#xD;
var hops;&#xD;
&#xD;
TIMEOUT(6000000, if(packetsReceived.length &gt; 50) { log.testOK(); } );&#xD;
&#xD;
while(true) {&#xD;
    YIELD();&#xD;
    if(msg.equals("randomize-nodes")) {&#xD;
        var allnodes = [];&#xD;
        for(var i = 0; i &lt; numForwarders; i++) {&#xD;
            allnodes.push(i);&#xD;
        }&#xD;
        shuffle(allnodes);&#xD;
        /* Place 1/4 of the nodes in the first quadrant. */&#xD;
        var i = 0;&#xD;
        for(; i &lt; numForwarders / 4; i++) {&#xD;
                place(i + forwardIDStart, &#xD;
                      getRandom(0, 50),&#xD;
                      getRandom(0, 50));&#xD;
        }&#xD;
        /* Place 1/4 of the nodes in the second quadrant. */&#xD;
        for(; i &lt; 2 * numForwarders / 4; i++) {&#xD;
                place(i + forwardIDStart, &#xD;
                      getRandom(50, 100),&#xD;
                      getRandom(0, 50));&#xD;
        }&#xD;
        /* Place 1/4 of the nodes in the third quadrant. */&#xD;
        for(; i &lt; 3 * numForwarders / 4; i++) {&#xD;
                place(i + forwardIDStart, &#xD;
                      getRandom(50, 100),&#xD;
                      getRandom(50, 100));&#xD;
        }        &#xD;
        /* Place 1/4 of the nodes in the fourth quadrant. */&#xD;
        for(; i &lt; 4 * numForwarders / 4; i++) {&#xD;
                place(i + forwardIDStart, &#xD;
                      getRandom(0, 50),&#xD;
                      getRandom(50, 100));&#xD;
        }        &#xD;
    } else if(msg.startsWith("Sending")) {&#xD;
        log.log(packetsReceived.length/packetsSent.length*100+',')&#xD;
        var data = msg.split(" ");&#xD;
        var num = parseInt(data[14]);&#xD;
        packetsSent.push(num);&#xD;
        hops = 0;&#xD;
    } else if(msg.startsWith("#L")) {&#xD;
        hops++;&#xD;
    } else if(msg.startsWith("Data")) {&#xD;
        var data = msg.split(" ");&#xD;
        var num = parseInt(data[14]);&#xD;
        packetsReceived.push(num);&#xD;
        &#xD;
        /* Copy packetsReceived array to the packets array. */&#xD;
        var packets = packetsReceived.slice();&#xD;
        var recvstr = '';&#xD;
        for(var i = 0; i &lt; num; i++) {&#xD;
            if(packets[0] == i) {&#xD;
                recvstr += '*';&#xD;
                packets.shift();&#xD;
            } else {&#xD;
                recvstr += '_';   &#xD;
            }    &#xD;
        }&#xD;
    }&#xD;
}</script>
      <active>true</active>
    </plugin_config>
    <bounds x="441" y="70" height="702" width="612" z="1" />
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.RadioLogger
    <plugin_config>
      <split>150</split>
      <formatted_time />
      <analyzers name="6lowpan-pcap" />
    </plugin_config>
    <bounds x="1004" y="208" height="300" width="500" z="3" />
  </plugin>
</simconf>
