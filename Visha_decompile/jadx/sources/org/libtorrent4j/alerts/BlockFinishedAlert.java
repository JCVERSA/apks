package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.block_finished_alert;

public final class BlockFinishedAlert extends PeerAlert<block_finished_alert> {
    public BlockFinishedAlert(block_finished_alert block_finished_alertVar) {
        super(block_finished_alertVar);
    }

    public int blockIndex() {
        return ((block_finished_alert) this.alert).getBlock_index();
    }

    public int pieceIndex() {
        return ((block_finished_alert) this.alert).getPiece_index();
    }
}
