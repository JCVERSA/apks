package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.file_completed_alert;

public final class FileCompletedAlert extends TorrentAlert<file_completed_alert> {
    public FileCompletedAlert(file_completed_alert file_completed_alertVar) {
        super(file_completed_alertVar);
    }

    public int index() {
        return ((file_completed_alert) this.alert).getIndex();
    }
}
