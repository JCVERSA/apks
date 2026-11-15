package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.swig.read_piece_alert;

public final class ReadPieceAlert extends TorrentAlert<read_piece_alert> {
    public ReadPieceAlert(read_piece_alert read_piece_alertVar) {
        super(read_piece_alertVar);
    }

    public long bufferPtr() {
        return ((read_piece_alert) this.alert).buffer_ptr();
    }

    public ErrorCode error() {
        return new ErrorCode(((read_piece_alert) this.alert).getError());
    }

    public int piece() {
        return ((read_piece_alert) this.alert).getPiece();
    }

    public int size() {
        return ((read_piece_alert) this.alert).getSize();
    }
}
