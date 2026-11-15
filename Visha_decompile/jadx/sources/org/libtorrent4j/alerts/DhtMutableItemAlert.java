package org.libtorrent4j.alerts;

import org.libtorrent4j.Entry;
import org.libtorrent4j.Vectors;
import org.libtorrent4j.swig.dht_mutable_item_alert;

public final class DhtMutableItemAlert extends AbstractAlert<dht_mutable_item_alert> {
    public DhtMutableItemAlert(dht_mutable_item_alert dht_mutable_item_alertVar) {
        super(dht_mutable_item_alertVar);
    }

    public Entry item() {
        return new Entry(((dht_mutable_item_alert) this.alert).getItem());
    }

    public byte[] key() {
        return Vectors.byte_array2bytes(((dht_mutable_item_alert) this.alert).get_key());
    }

    public byte[] salt() {
        return Vectors.byte_vector2bytes(((dht_mutable_item_alert) this.alert).get_salt());
    }

    public long seq() {
        return ((dht_mutable_item_alert) this.alert).get_seq();
    }

    public byte[] signature() {
        return Vectors.byte_array2bytes(((dht_mutable_item_alert) this.alert).get_signature());
    }
}
