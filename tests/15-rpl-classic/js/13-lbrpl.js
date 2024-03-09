function place(id, x, y) {
    var node = sim.getMoteWithID(id);
    node.getInterfaces().getPosition().setCoordinates(x, y, 0);
}

function getRandom(min, max) {
  return r.nextFloat() * (max - min) + min;
}

// From: http://bost.ocks.org/mike/shuffle/
function shuffle(array) {
  var m = array.length, t, i;

  // While there remain elements to shuffle…
  while (m) {

    // Pick a remaining element…
    i = Math.floor(r.nextFloat() * m--);

    // And swap it with the current element.
    t = array[m];
    array[m] = array[i];
    array[i] = t;
  }

  return array;
}

GENERATE_MSG(000000, 'randomize-nodes');
GENERATE_MSG(1200000, 'randomize-nodes');
GENERATE_MSG(2400000, 'randomize-nodes');
GENERATE_MSG(3600000, 'randomize-nodes');

var r = new java.util.Random(sim.getRandomSeed());
var numForwarders = 20;
var forwardIDStart = 4;
packetsReceived = [];
packetsSent = [];
var hops;

TIMEOUT(24000000, if(packetsReceived.length/packetsSent.length*100>70) { log.testOK(); } );

while(true) {
    YIELD();
    if(msg.equals("randomize-nodes")) {

        var allnodes = [];
        for(var i = 0; i < numForwarders; i++) {
            allnodes.push(i);
        }
        shuffle(allnodes);
        /* Place 1/4 of the nodes in the first quadrant. */
        var i = 0;
        for(; i < numForwarders / 4; i++) {
                place(i + forwardIDStart, 
                      getRandom(0, 50),
                      getRandom(0, 50));
        }
        /* Place 1/4 of the nodes in the second quadrant. */
        for(; i < 2 * numForwarders / 4; i++) {
                place(i + forwardIDStart, 
                      getRandom(50, 100),
                      getRandom(0, 50));
        }
        /* Place 1/4 of the nodes in the third quadrant. */
        for(; i < 3 * numForwarders / 4; i++) {
                place(i + forwardIDStart, 
                      getRandom(50, 100),
                      getRandom(50, 100));
        }        
        /* Place 1/4 of the nodes in the fourth quadrant. */
        for(; i < 4 * numForwarders / 4; i++) {
                place(i + forwardIDStart, 
                      getRandom(0, 50),
                      getRandom(50, 100));
        }        
    } else if(msg.startsWith("Sending")) {
        log.log(packetsReceived.length+"/"+packetsSent.length+"\n")
        var data = msg.split(" ");
        var num = parseInt(data[14]);
        packetsSent.push(num);
   //     log.log("\nPDR:"+packetsReceived.length/packetsSent.length*100+"%");
        hops = 0;
    } else if(msg.startsWith("#L")) {
        hops++;
    } else if(msg.startsWith("Data")) {
        var data = msg.split(" ");
        var num = parseInt(data[14]);
        packetsReceived.push(num);
        
        /* Copy packetsReceived array to the packets array. */
        var packets = packetsReceived.slice();
        var recvstr = '';
        for(var i = 0; i < num; i++) {
            if(packets[0] == i) {
                recvstr += '*';
                packets.shift();
            } else {
                recvstr += '_';   
            }    
        }
    }
}
