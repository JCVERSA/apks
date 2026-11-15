package org.libtorrent4j.alerts;

import org.libtorrent4j.TorrentHandle;
import org.libtorrent4j.TorrentInfo;
import org.libtorrent4j.swig.torrent_conflict_alert;

public final class TorrentConflictAlert extends TorrentAlert<torrent_conflict_alert> {
    public TorrentConflictAlert(torrent_conflict_alert torrent_conflict_alertVar) {
        super(torrent_conflict_alertVar);
    }

    public TorrentHandle getConflictingTorrent() {
        return new TorrentHandle(((torrent_conflict_alert) this.alert).getConflicting_torrent());
    }

    public TorrentInfo getMetadata() {
        return new TorrentInfo(((torrent_conflict_alert) this.alert).get_metadata());
    }
}
