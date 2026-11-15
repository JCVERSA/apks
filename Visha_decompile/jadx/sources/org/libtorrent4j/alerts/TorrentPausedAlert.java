package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.torrent_paused_alert;

public final class TorrentPausedAlert extends TorrentAlert<torrent_paused_alert> {
    public TorrentPausedAlert(torrent_paused_alert torrent_paused_alertVar) {
        super(torrent_paused_alertVar);
    }
}
