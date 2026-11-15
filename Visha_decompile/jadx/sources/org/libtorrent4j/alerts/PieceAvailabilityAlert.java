package org.libtorrent4j.alerts;

import org.libtorrent4j.Vectors;
import org.libtorrent4j.swig.piece_availability_alert;

public final class PieceAvailabilityAlert extends TorrentAlert<piece_availability_alert> {
    public PieceAvailabilityAlert(piece_availability_alert piece_availability_alertVar) {
        super(piece_availability_alertVar);
    }

    public int[] getPieceAvailability() {
        return Vectors.int_vector2ints(((piece_availability_alert) this.alert).getPiece_availability());
    }
}
