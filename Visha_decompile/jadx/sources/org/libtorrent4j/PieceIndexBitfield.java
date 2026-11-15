package org.libtorrent4j;

import org.libtorrent4j.swig.bitfield;
import org.libtorrent4j.swig.torrent_status;

public final class PieceIndexBitfield {
    private final bitfield f;
    private final torrent_status ts;

    public PieceIndexBitfield(bitfield bitfieldVar) {
        this(bitfieldVar, null);
    }

    public void clear() {
        this.f.clear();
    }

    public void clearAll() {
        this.f.clear_all();
    }

    public void clearBit(int i) {
        this.f.clear_bit(i);
    }

    public int count() {
        return this.f.count();
    }

    public int findFirstSet() {
        return this.f.find_first_set();
    }

    public int findLastClear() {
        return this.f.find_last_clear();
    }

    public boolean getBit(int i) {
        return this.f.get_bit(i);
    }

    public boolean isAllSet() {
        return this.f.all_set();
    }

    public boolean isEmpty() {
        return this.f.empty();
    }

    public boolean isNoneSet() {
        return this.f.none_set();
    }

    public void resize(int i, boolean z) {
        this.f.resize(i, z);
    }

    public void setAll() {
        this.f.set_all();
    }

    public void setBit(int i) {
        this.f.set_bit(i);
    }

    public int size() {
        return this.f.size();
    }

    public bitfield swig() {
        return this.f;
    }

    public torrent_status ts() {
        return this.ts;
    }

    public PieceIndexBitfield(bitfield bitfieldVar, torrent_status torrent_statusVar) {
        this.f = bitfieldVar;
        this.ts = torrent_statusVar;
    }

    public void resize(int i) {
        this.f.resize(i);
    }
}
