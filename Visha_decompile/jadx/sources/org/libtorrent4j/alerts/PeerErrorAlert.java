package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.Operation;
import org.libtorrent4j.swig.peer_error_alert;

public final class PeerErrorAlert extends PeerAlert<peer_error_alert> {
    public PeerErrorAlert(peer_error_alert peer_error_alertVar) {
        super(peer_error_alertVar);
    }

    public ErrorCode error() {
        return new ErrorCode(((peer_error_alert) this.alert).getError());
    }

    public Operation operation() {
        return Operation.fromSwig(((peer_error_alert) this.alert).getOp());
    }
}
