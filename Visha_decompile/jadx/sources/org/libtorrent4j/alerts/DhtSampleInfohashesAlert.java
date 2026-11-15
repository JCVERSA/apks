package org.libtorrent4j.alerts;

import java.util.ArrayList;
import java.util.List;
import org.libtorrent4j.Pair;
import org.libtorrent4j.Sha1Hash;
import org.libtorrent4j.UdpEndpoint;
import org.libtorrent4j.swig.dht_sample_infohashes_alert;
import org.libtorrent4j.swig.sha1_hash_udp_endpoint_pair;
import org.libtorrent4j.swig.sha1_hash_udp_endpoint_pair_vector;
import org.libtorrent4j.swig.sha1_hash_vector;

public final class DhtSampleInfohashesAlert extends AbstractAlert<dht_sample_infohashes_alert> {
    public DhtSampleInfohashesAlert(dht_sample_infohashes_alert dht_sample_infohashes_alertVar) {
        super(dht_sample_infohashes_alertVar);
    }

    public UdpEndpoint endpoint() {
        return new UdpEndpoint(((dht_sample_infohashes_alert) this.alert).get_endpoint());
    }

    public long interval() {
        return ((dht_sample_infohashes_alert) this.alert).get_interval();
    }

    public List<Pair<Sha1Hash, UdpEndpoint>> nodes() {
        sha1_hash_udp_endpoint_pair_vector sha1_hash_udp_endpoint_pair_vectorVarNodes = ((dht_sample_infohashes_alert) this.alert).nodes();
        int size = sha1_hash_udp_endpoint_pair_vectorVarNodes.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            sha1_hash_udp_endpoint_pair sha1_hash_udp_endpoint_pairVar = sha1_hash_udp_endpoint_pair_vectorVarNodes.get(i);
            arrayList.add(new Pair(new Sha1Hash(sha1_hash_udp_endpoint_pairVar.getFirst()).clone(), new UdpEndpoint(sha1_hash_udp_endpoint_pairVar.getSecond()).clone()));
        }
        return arrayList;
    }

    public int numInfohashes() {
        return ((dht_sample_infohashes_alert) this.alert).getNum_infohashes();
    }

    public int numNodes() {
        return ((dht_sample_infohashes_alert) this.alert).num_nodes();
    }

    public int numSamples() {
        return ((dht_sample_infohashes_alert) this.alert).num_samples();
    }

    public List<Sha1Hash> samples() {
        sha1_hash_vector sha1_hash_vectorVarSamples = ((dht_sample_infohashes_alert) this.alert).samples();
        int size = sha1_hash_vectorVarSamples.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new Sha1Hash(sha1_hash_vectorVarSamples.get(i)).clone());
        }
        return arrayList;
    }
}
