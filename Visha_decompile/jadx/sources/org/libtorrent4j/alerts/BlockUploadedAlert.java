package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.block_uploaded_alert;

public final class BlockUploadedAlert extends PeerAlert<block_uploaded_alert> {
    public BlockUploadedAlert(block_uploaded_alert block_uploaded_alertVar) {
        super(block_uploaded_alertVar);
    }

    public int blockIndex() {
        return ((block_uploaded_alert) this.alert).getBlock_index();
    }

    public int pieceIndex() {
        return ((block_uploaded_alert) this.alert).getPiece_index();
    }
}
