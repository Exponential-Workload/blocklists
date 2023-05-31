// Avoid running this on any IPs you don't want getting out there!

const fs = require('fs');
(async()=>{
  // https://api.binaryedge.io/v1/minions
  const binaryEdgeResponse = await fetch('https://api.binaryedge.io/v1/minions')
  const binaryEdgeJson = await binaryEdgeResponse.json();
  /** @type {string[]} */
  const binaryEdgeIPs = binaryEdgeJson.scanners;
  fs.writeFileSync(__dirname+'/lists/binary-edge.sh',fs.readFileSync(__dirname+'/lists/binary-edge.sh','utf-8')+
`iptablesIO -s ${binaryEdgeIPs.filter(v=>v.includes('.')).join(',')} -j DROP
${binaryEdgeIPs.filter(v=>v.includes(':')).length > 0 ? `
iptablesIO -s ${binaryEdgeIPs.filter(v=>v.includes(':')).join(',')} -j DROP` : ''}`)
})();