package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.dht_reply_alert;

public final class DhtReplyAlert extends TrackerAlert<dht_reply_alert> {
    public DhtReplyAlert(dht_reply_alert dht_reply_alertVar) {
        super(dht_reply_alertVar);
    }

    public int numPeers() {
        return ((dht_reply_alert) this.alert).getNum_peers();
    }
}
