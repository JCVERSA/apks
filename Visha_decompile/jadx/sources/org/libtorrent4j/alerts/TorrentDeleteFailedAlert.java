package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.InfoHash;
import org.libtorrent4j.swig.torrent_delete_failed_alert;

public final class TorrentDeleteFailedAlert extends TorrentAlert<torrent_delete_failed_alert> {
    public TorrentDeleteFailedAlert(torrent_delete_failed_alert torrent_delete_failed_alertVar) {
        super(torrent_delete_failed_alertVar);
    }

    public ErrorCode getError() {
        return new ErrorCode(((torrent_delete_failed_alert) this.alert).getError());
    }

    public InfoHash getInfoHashes() {
        return new InfoHash(((torrent_delete_failed_alert) this.alert).getInfo_hashes());
    }
}
