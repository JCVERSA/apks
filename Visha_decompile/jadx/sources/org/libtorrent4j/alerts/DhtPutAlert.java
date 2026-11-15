package org.libtorrent4j.alerts;

import org.libtorrent4j.Sha1Hash;
import org.libtorrent4j.Vectors;
import org.libtorrent4j.swig.dht_put_alert;

public final class DhtPutAlert extends AbstractAlert<dht_put_alert> {
    public DhtPutAlert(dht_put_alert dht_put_alertVar) {
        super(dht_put_alertVar);
    }

    public byte[] publicKey() {
        return Vectors.byte_array2bytes(((dht_put_alert) this.alert).get_public_key());
    }

    public byte[] salt() {
        return Vectors.byte_vector2bytes(((dht_put_alert) this.alert).get_salt());
    }

    public long seq() {
        return ((dht_put_alert) this.alert).get_seq();
    }

    public byte[] signature() {
        return Vectors.byte_array2bytes(((dht_put_alert) this.alert).get_signature());
    }

    public Sha1Hash target() {
        return new Sha1Hash(((dht_put_alert) this.alert).getTarget());
    }
}
