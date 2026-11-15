package org.libtorrent4j.alerts;

import org.libtorrent4j.Address;
import org.libtorrent4j.Sha1Hash;
import org.libtorrent4j.swig.dht_announce_alert;

public final class DhtAnnounceAlert extends AbstractAlert<dht_announce_alert> {
    public DhtAnnounceAlert(dht_announce_alert dht_announce_alertVar) {
        super(dht_announce_alertVar);
    }

    public Sha1Hash infoHash() {
        return new Sha1Hash(((dht_announce_alert) this.alert).getInfo_hash());
    }

    public Address ip() {
        return new Address(((dht_announce_alert) this.alert).get_ip());
    }

    public int port() {
        return ((dht_announce_alert) this.alert).getPort();
    }
}
