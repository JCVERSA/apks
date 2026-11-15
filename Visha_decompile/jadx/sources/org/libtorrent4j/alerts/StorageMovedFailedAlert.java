package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.Operation;
import org.libtorrent4j.swig.storage_moved_failed_alert;

public final class StorageMovedFailedAlert extends TorrentAlert<storage_moved_failed_alert> {
    public StorageMovedFailedAlert(storage_moved_failed_alert storage_moved_failed_alertVar) {
        super(storage_moved_failed_alertVar);
    }

    public ErrorCode error() {
        return new ErrorCode(((storage_moved_failed_alert) this.alert).getError());
    }

    public String filePath() {
        return ((storage_moved_failed_alert) this.alert).file_path();
    }

    public Operation operation() {
        return Operation.fromSwig(((storage_moved_failed_alert) this.alert).getOp());
    }
}
