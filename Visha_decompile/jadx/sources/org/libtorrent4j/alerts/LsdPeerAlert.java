package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.lsd_peer_alert;

public final class LsdPeerAlert extends PeerAlert<lsd_peer_alert> {
    public LsdPeerAlert(lsd_peer_alert lsd_peer_alertVar) {
        super(lsd_peer_alertVar);
    }
}
