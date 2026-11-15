package org.libtorrent4j.alerts;

import java.util.ArrayList;
import java.util.List;
import org.libtorrent4j.Pair;
import org.libtorrent4j.Sha1Hash;
import org.libtorrent4j.UdpEndpoint;
import org.libtorrent4j.swig.dht_live_nodes_alert;
import org.libtorrent4j.swig.sha1_hash_udp_endpoint_pair;
import org.libtorrent4j.swig.sha1_hash_udp_endpoint_pair_vector;

public final class DhtLiveNodesAlert extends AbstractAlert<dht_live_nodes_alert> {
    public DhtLiveNodesAlert(dht_live_nodes_alert dht_live_nodes_alertVar) {
        super(dht_live_nodes_alertVar);
    }

    public Sha1Hash nodeId() {
        return new Sha1Hash(((dht_live_nodes_alert) this.alert).getNode_id());
    }

    public List<Pair<Sha1Hash, UdpEndpoint>> nodes() {
        sha1_hash_udp_endpoint_pair_vector sha1_hash_udp_endpoint_pair_vectorVarNodes = ((dht_live_nodes_alert) this.alert).nodes();
        int size = sha1_hash_udp_endpoint_pair_vectorVarNodes.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            sha1_hash_udp_endpoint_pair sha1_hash_udp_endpoint_pairVar = sha1_hash_udp_endpoint_pair_vectorVarNodes.get(i);
            arrayList.add(new Pair(new Sha1Hash(sha1_hash_udp_endpoint_pairVar.getFirst()).clone(), new UdpEndpoint(sha1_hash_udp_endpoint_pairVar.getSecond()).clone()));
        }
        return arrayList;
    }

    public int numNodes() {
        return ((dht_live_nodes_alert) this.alert).num_nodes();
    }
}
