package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.file_renamed_alert;

public final class FileRenamedAlert extends TorrentAlert<file_renamed_alert> {
    public FileRenamedAlert(file_renamed_alert file_renamed_alertVar) {
        super(file_renamed_alertVar);
    }

    public int index() {
        return ((file_renamed_alert) this.alert).getIndex();
    }

    public String newName() {
        return ((file_renamed_alert) this.alert).new_name();
    }
}
