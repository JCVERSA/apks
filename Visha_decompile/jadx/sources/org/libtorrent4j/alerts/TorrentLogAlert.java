package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.torrent_log_alert;

public final class TorrentLogAlert extends TorrentAlert<torrent_log_alert> {
    public TorrentLogAlert(torrent_log_alert torrent_log_alertVar) {
        super(torrent_log_alertVar);
    }

    public String logMessage() {
        return ((torrent_log_alert) this.alert).log_message();
    }
}
