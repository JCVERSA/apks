package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.swig.file_rename_failed_alert;

public final class FileRenameFailedAlert extends TorrentAlert<file_rename_failed_alert> {
    public FileRenameFailedAlert(file_rename_failed_alert file_rename_failed_alertVar) {
        super(file_rename_failed_alertVar);
    }

    public ErrorCode getError() {
        return new ErrorCode(((file_rename_failed_alert) this.alert).getError());
    }

    public int getIndex() {
        return ((file_rename_failed_alert) this.alert).getIndex();
    }
}
