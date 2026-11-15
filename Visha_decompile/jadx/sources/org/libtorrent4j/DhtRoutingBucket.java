package org.libtorrent4j;

import org.libtorrent4j.swig.dht_routing_bucket;

public final class DhtRoutingBucket {
    private final dht_routing_bucket t;

    public DhtRoutingBucket(dht_routing_bucket dht_routing_bucketVar) {
        this.t = dht_routing_bucketVar;
    }

    public int lastActive() {
        return this.t.getLast_active();
    }

    public int numNodes() {
        return this.t.getNum_nodes();
    }

    public int numReplacements() {
        return this.t.getNum_replacements();
    }

    public dht_routing_bucket swig() {
        return this.t;
    }
}
