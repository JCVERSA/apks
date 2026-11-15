package org.libtorrent4j.alerts;

import org.libtorrent4j.Entry;
import org.libtorrent4j.Sha1Hash;
import org.libtorrent4j.swig.dht_immutable_item_alert;

public final class DhtImmutableItemAlert extends AbstractAlert<dht_immutable_item_alert> {
    public DhtImmutableItemAlert(dht_immutable_item_alert dht_immutable_item_alertVar) {
        super(dht_immutable_item_alertVar);
    }

    public Entry item() {
        return new Entry(((dht_immutable_item_alert) this.alert).getItem());
    }

    public Sha1Hash target() {
        return new Sha1Hash(((dht_immutable_item_alert) this.alert).getTarget());
    }
}
