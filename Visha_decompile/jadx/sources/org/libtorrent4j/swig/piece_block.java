package org.libtorrent4j.swig;

public class piece_block {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public piece_block(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(piece_block piece_blockVar) {
        if (piece_blockVar == null) {
            return 0L;
        }
        return piece_blockVar.swigCPtr;
    }

    public static piece_block getInvalid() {
        long jPiece_block_invalid_get = libtorrent_jni.piece_block_invalid_get();
        if (jPiece_block_invalid_get == 0) {
            return null;
        }
        return new piece_block(jPiece_block_invalid_get, false);
    }

    public static long swigRelease(piece_block piece_blockVar) {
        if (piece_blockVar == null) {
            return 0L;
        }
        if (!piece_blockVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = piece_blockVar.swigCPtr;
        piece_blockVar.swigCMemOwn = false;
        piece_blockVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_piece_block(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(piece_block piece_blockVar) {
        return libtorrent_jni.piece_block_eq(this.swigCPtr, this, getCPtr(piece_blockVar), piece_blockVar);
    }

    public void finalize() {
        delete();
    }

    public int getBlock_index() {
        return libtorrent_jni.piece_block_block_index_get(this.swigCPtr, this);
    }

    public int getPiece_index() {
        return libtorrent_jni.piece_block_piece_index_get(this.swigCPtr, this);
    }

    public boolean lt(piece_block piece_blockVar) {
        return libtorrent_jni.piece_block_lt(this.swigCPtr, this, getCPtr(piece_blockVar), piece_blockVar);
    }

    public boolean ne(piece_block piece_blockVar) {
        return libtorrent_jni.piece_block_ne(this.swigCPtr, this, getCPtr(piece_blockVar), piece_blockVar);
    }

    public void setBlock_index(int i) {
        libtorrent_jni.piece_block_block_index_set(this.swigCPtr, this, i);
    }

    public void setPiece_index(int i) {
        libtorrent_jni.piece_block_piece_index_set(this.swigCPtr, this, i);
    }

    public piece_block() {
        this(libtorrent_jni.new_piece_block__SWIG_0(), true);
    }

    public piece_block(int i, int i2) {
        this(libtorrent_jni.new_piece_block__SWIG_1(i, i2), true);
    }
}
