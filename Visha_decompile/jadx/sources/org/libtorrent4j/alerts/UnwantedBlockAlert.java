package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.unwanted_block_alert;

public final class UnwantedBlockAlert extends PeerAlert<unwanted_block_alert> {
    public UnwantedBlockAlert(unwanted_block_alert unwanted_block_alertVar) {
        super(unwanted_block_alertVar);
    }

    public int blockIndex() {
        return ((unwanted_block_alert) this.alert).getBlock_index();
    }

    public int pieceIndex() {
        return ((unwanted_block_alert) this.alert).getPiece_index();
    }
}
