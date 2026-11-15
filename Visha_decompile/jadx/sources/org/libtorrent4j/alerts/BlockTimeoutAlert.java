package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.block_timeout_alert;

public final class BlockTimeoutAlert extends PeerAlert<block_timeout_alert> {
    public BlockTimeoutAlert(block_timeout_alert block_timeout_alertVar) {
        super(block_timeout_alertVar);
    }

    public int blockIndex() {
        return ((block_timeout_alert) this.alert).getBlock_index();
    }

    public int pieceIndex() {
        return ((block_timeout_alert) this.alert).getPiece_index();
    }
}
