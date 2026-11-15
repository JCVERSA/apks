package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.request_dropped_alert;

public final class RequestDroppedAlert extends PeerAlert<request_dropped_alert> {
    public RequestDroppedAlert(request_dropped_alert request_dropped_alertVar) {
        super(request_dropped_alertVar);
    }

    public int getBlockIndex() {
        return ((request_dropped_alert) this.alert).getBlock_index();
    }

    public int getPieceIndex() {
        return ((request_dropped_alert) this.alert).getPiece_index();
    }
}
