package org.libtorrent4j.alerts;

import java.util.ArrayList;
import org.libtorrent4j.Address;
import org.libtorrent4j.Sha1Hash;
import org.libtorrent4j.TcpEndpoint;
import org.libtorrent4j.swig.dht_get_peers_reply_alert;
import org.libtorrent4j.swig.tcp_endpoint;
import org.libtorrent4j.swig.tcp_endpoint_vector;

public final class DhtGetPeersReplyAlert extends AbstractAlert<dht_get_peers_reply_alert> {
    public DhtGetPeersReplyAlert(dht_get_peers_reply_alert dht_get_peers_reply_alertVar) {
        super(dht_get_peers_reply_alertVar);
    }

    public Sha1Hash infoHash() {
        return new Sha1Hash(((dht_get_peers_reply_alert) this.alert).getInfo_hash());
    }

    public int numPeers() {
        return ((dht_get_peers_reply_alert) this.alert).num_peers();
    }

    public ArrayList<TcpEndpoint> peers() {
        tcp_endpoint_vector tcp_endpoint_vectorVarPeers = ((dht_get_peers_reply_alert) this.alert).peers();
        int size = tcp_endpoint_vectorVarPeers.size();
        ArrayList<TcpEndpoint> arrayList = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            tcp_endpoint tcp_endpointVar = tcp_endpoint_vectorVarPeers.get(i);
            arrayList.add(new TcpEndpoint(new Address(tcp_endpointVar.address()).toString(), tcp_endpointVar.port()));
        }
        return arrayList;
    }
}
