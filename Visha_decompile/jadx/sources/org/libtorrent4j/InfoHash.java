package org.libtorrent4j;

import org.libtorrent4j.swig.info_hash_t;

public class InfoHash extends SwigObject<info_hash_t> {
    public InfoHash() {
        super(new info_hash_t());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Sha1Hash getBest() {
        return new Sha1Hash(((info_hash_t) this.h).get_best());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Sha1Hash getV1() {
        return new Sha1Hash(((info_hash_t) this.h).getV1());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean hasV1() {
        return ((info_hash_t) this.h).has_v1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean hasV2() {
        return ((info_hash_t) this.h).has_v2();
    }

    public InfoHash(info_hash_t info_hash_tVar) {
        super(info_hash_tVar);
    }
}
