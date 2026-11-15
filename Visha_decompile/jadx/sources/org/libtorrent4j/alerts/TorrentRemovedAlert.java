package org.libtorrent4j.alerts;

import org.libtorrent4j.InfoHash;
import org.libtorrent4j.swig.torrent_removed_alert;

public final class TorrentRemovedAlert extends TorrentAlert<torrent_removed_alert> {
    public TorrentRemovedAlert(torrent_removed_alert torrent_removed_alertVar) {
        super(torrent_removed_alertVar);
    }

    public InfoHash getInfoHashes() {
        return new InfoHash(((torrent_removed_alert) this.alert).getInfo_hashes());
    }
}
