package org.libtorrent4j.alerts;

import org.libtorrent4j.Vectors;
import org.libtorrent4j.swig.file_progress_alert;

public final class FileProgressAlert extends TorrentAlert<file_progress_alert> {
    public FileProgressAlert(file_progress_alert file_progress_alertVar) {
        super(file_progress_alertVar);
    }

    public long[] getFiles() {
        return Vectors.int64_vector2longs(((file_progress_alert) this.alert).get_files());
    }
}
