package org.libtorrent4j;

import org.libtorrent4j.swig.partial_piece_info;

public final class PartialPieceInfo {
    private final partial_piece_info p;

    public PartialPieceInfo(partial_piece_info partial_piece_infoVar) {
        this.p = partial_piece_infoVar;
    }

    public int blocksInPiece() {
        return this.p.getBlocks_in_piece();
    }

    public int finished() {
        return this.p.getFinished();
    }

    public int pieceIndex() {
        return this.p.getPiece_index();
    }

    public int requested() {
        return this.p.getRequested();
    }

    public partial_piece_info swig() {
        return this.p;
    }

    public int writing() {
        return this.p.getWriting();
    }
}
