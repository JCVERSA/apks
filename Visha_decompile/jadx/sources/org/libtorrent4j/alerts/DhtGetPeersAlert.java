package org.libtorrent4j.alerts;

import org.libtorrent4j.Sha1Hash;
import org.libtorrent4j.swig.dht_get_peers_alert;

public final class DhtGetPeersAlert extends AbstractAlert<dht_get_peers_alert> {
    public DhtGetPeersAlert(dht_get_peers_alert dht_get_peers_alertVar) {
        super(dht_get_peers_alertVar);
    }

    public Sha1Hash infoHash() {
        return new Sha1Hash(((dht_get_peers_alert) this.alert).getInfo_hash());
    }
}
