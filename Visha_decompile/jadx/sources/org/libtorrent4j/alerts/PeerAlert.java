package org.libtorrent4j.alerts;

import org.libtorrent4j.Sha1Hash;
import org.libtorrent4j.TcpEndpoint;
import org.libtorrent4j.swig.peer_alert;

public class PeerAlert<T extends peer_alert> extends TorrentAlert<T> {
    public PeerAlert(T t) {
        super(t);
    }

    public TcpEndpoint endpoint() {
        return new TcpEndpoint(((peer_alert) this.alert).get_endpoint());
    }

    public Sha1Hash peerId() {
        return new Sha1Hash(((peer_alert) this.alert).getPid());
    }
}
