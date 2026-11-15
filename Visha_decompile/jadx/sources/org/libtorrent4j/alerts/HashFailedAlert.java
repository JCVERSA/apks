package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.hash_failed_alert;

public final class HashFailedAlert extends TorrentAlert<hash_failed_alert> {
    public HashFailedAlert(hash_failed_alert hash_failed_alertVar) {
        super(hash_failed_alertVar);
    }

    public int pieceIndex() {
        return ((hash_failed_alert) this.alert).getPiece_index();
    }
}
