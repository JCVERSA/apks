package org.libtorrent4j;

import org.libtorrent4j.swig.peer_request;

public final class PeerRequest {
    private final peer_request r;

    public PeerRequest(peer_request peer_requestVar) {
        this.r = peer_requestVar;
    }

    public int length() {
        return this.r.getLength();
    }

    public int piece() {
        return this.r.getPiece();
    }

    public int start() {
        return this.r.getStart();
    }

    public peer_request swig() {
        return this.r;
    }

    public String toString() {
        return "PeerRequest(piece: " + piece() + ", start: " + start() + ", length: " + length() + ")";
    }
}
