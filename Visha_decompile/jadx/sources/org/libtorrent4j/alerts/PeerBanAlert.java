package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.peer_ban_alert;

public final class PeerBanAlert extends PeerAlert<peer_ban_alert> {
    public PeerBanAlert(peer_ban_alert peer_ban_alertVar) {
        super(peer_ban_alertVar);
    }
}
