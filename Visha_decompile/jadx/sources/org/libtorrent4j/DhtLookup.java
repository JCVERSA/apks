package org.libtorrent4j;

import org.libtorrent4j.swig.dht_lookup;

public final class DhtLookup {
    private final dht_lookup l;

    public DhtLookup(dht_lookup dht_lookupVar) {
        this.l = dht_lookupVar;
    }

    public int branchFactor() {
        return this.l.getBranch_factor();
    }

    public int firstTimeout() {
        return this.l.getFirst_timeout();
    }

    public int lastSent() {
        return this.l.getLast_sent();
    }

    public int nodesLeft() {
        return this.l.getNodes_left();
    }

    public int outstandingRequests() {
        return this.l.getOutstanding_requests();
    }

    public int responses() {
        return this.l.getResponses();
    }

    public dht_lookup swig() {
        return this.l;
    }

    public Sha1Hash target() {
        return new Sha1Hash(this.l.getTarget());
    }

    public int timeouts() {
        return this.l.getTimeouts();
    }

    public String type() {
        return this.l.get_type();
    }
}
