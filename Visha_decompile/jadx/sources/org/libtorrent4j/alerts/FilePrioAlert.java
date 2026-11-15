package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.Operation;
import org.libtorrent4j.swig.file_prio_alert;

public class FilePrioAlert extends TorrentAlert<file_prio_alert> {
    public FilePrioAlert(file_prio_alert file_prio_alertVar) {
        super(file_prio_alertVar);
    }

    public ErrorCode error() {
        return new ErrorCode(((file_prio_alert) this.alert).getError());
    }

    public Operation operation() {
        return Operation.fromSwig(((file_prio_alert) this.alert).getOp());
    }
}
