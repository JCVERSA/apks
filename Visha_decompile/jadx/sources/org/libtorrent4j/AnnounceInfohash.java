package org.libtorrent4j;

import org.libtorrent4j.swig.announce_infohash;

public final class AnnounceInfohash extends SwigObject<announce_infohash> {
    public AnnounceInfohash(announce_infohash announce_infohashVar) {
        super(announce_infohashVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public short fails() {
        return ((announce_infohash) this.h).getFails();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isWorking() {
        return ((announce_infohash) this.h).getFails() == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String message() {
        return ((announce_infohash) this.h).getMessage();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean updating() {
        return ((announce_infohash) this.h).getUpdating();
    }
}
