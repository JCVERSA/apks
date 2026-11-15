package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.block_downloading_alert;

public final class BlockDownloadingAlert extends PeerAlert<block_downloading_alert> {
    public BlockDownloadingAlert(block_downloading_alert block_downloading_alertVar) {
        super(block_downloading_alertVar);
    }

    public int blockIndex() {
        return ((block_downloading_alert) this.alert).getBlock_index();
    }

    public int pieceIndex() {
        return ((block_downloading_alert) this.alert).getPiece_index();
    }
}
