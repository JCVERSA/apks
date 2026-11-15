package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.swig.torrent_error_alert;

public final class TorrentErrorAlert extends TorrentAlert<torrent_error_alert> {
    public TorrentErrorAlert(torrent_error_alert torrent_error_alertVar) {
        super(torrent_error_alertVar);
    }

    public ErrorCode error() {
        return new ErrorCode(((torrent_error_alert) this.alert).getError());
    }

    public String filename() {
        return ((torrent_error_alert) this.alert).filename();
    }
}
