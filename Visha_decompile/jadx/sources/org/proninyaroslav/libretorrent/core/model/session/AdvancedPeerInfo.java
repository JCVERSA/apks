package org.proninyaroslav.libretorrent.core.model.session;

import org.libtorrent4j.PeerInfo;
import org.libtorrent4j.PieceIndexBitfield;
import org.libtorrent4j.swig.peer_info;

public class AdvancedPeerInfo extends PeerInfo {
    protected boolean isUtp;
    protected PieceIndexBitfield pieces;
    protected int port;

    public AdvancedPeerInfo(peer_info peer_infoVar) {
        super(peer_infoVar);
        this.port = peer_infoVar.remote_endpoint().port();
        this.pieces = new PieceIndexBitfield(peer_infoVar.get_pieces());
        this.isUtp = peer_infoVar.getFlags().and_(peer_info.utp_socket).non_zero();
    }

    public boolean isUtp() {
        return this.isUtp;
    }

    public PieceIndexBitfield pieces() {
        return this.pieces;
    }

    public int port() {
        return this.port;
    }
}
