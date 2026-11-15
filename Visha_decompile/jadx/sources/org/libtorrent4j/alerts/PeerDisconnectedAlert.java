package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.Operation;
import org.libtorrent4j.swig.peer_disconnected_alert;

public final class PeerDisconnectedAlert extends PeerAlert<peer_disconnected_alert> {
    public PeerDisconnectedAlert(peer_disconnected_alert peer_disconnected_alertVar) {
        super(peer_disconnected_alertVar);
    }

    public ErrorCode error() {
        return new ErrorCode(((peer_disconnected_alert) this.alert).getError());
    }

    public Operation operation() {
        return Operation.fromSwig(((peer_disconnected_alert) this.alert).getOp());
    }

    public CloseReason reason() {
        return CloseReason.fromSwig(((peer_disconnected_alert) this.alert).getReason().swigValue());
    }

    public int socketType() {
        return ((peer_disconnected_alert) this.alert).getSocket_type().swigValue();
    }
}
