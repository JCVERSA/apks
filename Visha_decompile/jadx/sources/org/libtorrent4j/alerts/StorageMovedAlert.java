package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.storage_moved_alert;

public final class StorageMovedAlert extends TorrentAlert<storage_moved_alert> {
    public StorageMovedAlert(storage_moved_alert storage_moved_alertVar) {
        super(storage_moved_alertVar);
    }

    public String storagePath() {
        return ((storage_moved_alert) this.alert).storage_path();
    }
}
