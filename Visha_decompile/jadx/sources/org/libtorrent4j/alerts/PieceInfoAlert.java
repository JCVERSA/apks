package org.libtorrent4j.alerts;

import java.util.ArrayList;
import org.libtorrent4j.BlockInfo;
import org.libtorrent4j.PartialPieceInfo;
import org.libtorrent4j.swig.block_info_vector;
import org.libtorrent4j.swig.partial_piece_info_vector;
import org.libtorrent4j.swig.piece_info_alert;

public final class PieceInfoAlert extends TorrentAlert<piece_info_alert> {
    public PieceInfoAlert(piece_info_alert piece_info_alertVar) {
        super(piece_info_alertVar);
    }

    public ArrayList<BlockInfo> getBlockData() {
        block_info_vector block_data = ((piece_info_alert) this.alert).getBlock_data();
        int size = block_data.size();
        ArrayList<BlockInfo> arrayList = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new BlockInfo(block_data.get(i)));
        }
        return arrayList;
    }

    public ArrayList<PartialPieceInfo> getPieceInfo() {
        partial_piece_info_vector piece_info = ((piece_info_alert) this.alert).getPiece_info();
        int size = piece_info.size();
        ArrayList<PartialPieceInfo> arrayList = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new PartialPieceInfo(piece_info.get(i)));
        }
        return arrayList;
    }
}
