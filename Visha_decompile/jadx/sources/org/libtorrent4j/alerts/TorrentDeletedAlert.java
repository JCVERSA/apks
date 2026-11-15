package org.libtorrent4j.alerts;

import org.libtorrent4j.InfoHash;
import org.libtorrent4j.swig.torrent_deleted_alert;

public final class TorrentDeletedAlert extends TorrentAlert<torrent_deleted_alert> {
    public TorrentDeletedAlert(torrent_deleted_alert torrent_deleted_alertVar) {
        super(torrent_deleted_alertVar);
    }

    public InfoHash getInfoHashes() {
        return new InfoHash(((torrent_deleted_alert) this.alert).getInfo_hashes());
    }
}
