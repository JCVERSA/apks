package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.Operation;
import org.libtorrent4j.swig.fastresume_rejected_alert;

public final class FastresumeRejectedAlert extends TorrentAlert<fastresume_rejected_alert> {
    public FastresumeRejectedAlert(fastresume_rejected_alert fastresume_rejected_alertVar) {
        super(fastresume_rejected_alertVar);
    }

    public ErrorCode error() {
        return new ErrorCode(((fastresume_rejected_alert) this.alert).getError());
    }

    public String filePath() {
        return ((fastresume_rejected_alert) this.alert).file_path();
    }

    public Operation operation() {
        return Operation.fromSwig(((fastresume_rejected_alert) this.alert).getOp());
    }
}
