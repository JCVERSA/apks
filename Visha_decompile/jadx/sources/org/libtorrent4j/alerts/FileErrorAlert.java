package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.Operation;
import org.libtorrent4j.swig.file_error_alert;

public final class FileErrorAlert extends TorrentAlert<file_error_alert> {
    public FileErrorAlert(file_error_alert file_error_alertVar) {
        super(file_error_alertVar);
    }

    public ErrorCode error() {
        return new ErrorCode(((file_error_alert) this.alert).getError());
    }

    public String filename() {
        return ((file_error_alert) this.alert).filename();
    }

    public Operation operation() {
        return Operation.fromSwig(((file_error_alert) this.alert).getOp());
    }
}
