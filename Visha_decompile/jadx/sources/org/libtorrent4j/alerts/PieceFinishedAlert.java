package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.piece_finished_alert;

public final class PieceFinishedAlert extends TorrentAlert<piece_finished_alert> {
    public PieceFinishedAlert(piece_finished_alert piece_finished_alertVar) {
        super(piece_finished_alertVar);
    }

    public int pieceIndex() {
        return ((piece_finished_alert) this.alert).getPiece_index();
    }
}
