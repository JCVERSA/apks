package org.libtorrent4j;

import org.libtorrent4j.swig.announce_endpoint;

public final class AnnounceEndpoint extends SwigObject<announce_endpoint> {
    public AnnounceEndpoint(announce_endpoint announce_endpointVar) {
        super(announce_endpointVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean enabled() {
        return ((announce_endpoint) this.h).getEnabled();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AnnounceInfohash infohashV1() {
        return new AnnounceInfohash(((announce_endpoint) this.h).get_infohash_v1());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AnnounceInfohash infohashV2() {
        return new AnnounceInfohash(((announce_endpoint) this.h).get_infohash_v2());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TcpEndpoint localEndpoint() {
        return new TcpEndpoint(((announce_endpoint) this.h).getLocal_endpoint());
    }
}
