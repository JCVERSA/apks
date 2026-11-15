package org.libtorrent4j.swig;

public class partial_piece_info {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public partial_piece_info(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(partial_piece_info partial_piece_infoVar) {
        if (partial_piece_infoVar == null) {
            return 0L;
        }
        return partial_piece_infoVar.swigCPtr;
    }

    public static long swigRelease(partial_piece_info partial_piece_infoVar) {
        if (partial_piece_infoVar == null) {
            return 0L;
        }
        if (!partial_piece_infoVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = partial_piece_infoVar.swigCPtr;
        partial_piece_infoVar.swigCMemOwn = false;
        partial_piece_infoVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_partial_piece_info(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void finalize() {
        delete();
    }

    public block_info getBlocks() {
        long jPartial_piece_info_blocks_get = libtorrent_jni.partial_piece_info_blocks_get(this.swigCPtr, this);
        if (jPartial_piece_info_blocks_get == 0) {
            return null;
        }
        return new block_info(jPartial_piece_info_blocks_get, false);
    }

    public int getBlocks_in_piece() {
        return libtorrent_jni.partial_piece_info_blocks_in_piece_get(this.swigCPtr, this);
    }

    public int getFinished() {
        return libtorrent_jni.partial_piece_info_finished_get(this.swigCPtr, this);
    }

    public int getPiece_index() {
        return libtorrent_jni.partial_piece_info_piece_index_get(this.swigCPtr, this);
    }

    public int getRequested() {
        return libtorrent_jni.partial_piece_info_requested_get(this.swigCPtr, this);
    }

    public int getWriting() {
        return libtorrent_jni.partial_piece_info_writing_get(this.swigCPtr, this);
    }

    public void setBlocks(block_info block_infoVar) {
        libtorrent_jni.partial_piece_info_blocks_set(this.swigCPtr, this, block_info.getCPtr(block_infoVar), block_infoVar);
    }

    public void setBlocks_in_piece(int i) {
        libtorrent_jni.partial_piece_info_blocks_in_piece_set(this.swigCPtr, this, i);
    }

    public void setFinished(int i) {
        libtorrent_jni.partial_piece_info_finished_set(this.swigCPtr, this, i);
    }

    public void setPiece_index(int i) {
        libtorrent_jni.partial_piece_info_piece_index_set(this.swigCPtr, this, i);
    }

    public void setRequested(int i) {
        libtorrent_jni.partial_piece_info_requested_set(this.swigCPtr, this, i);
    }

    public void setWriting(int i) {
        libtorrent_jni.partial_piece_info_writing_set(this.swigCPtr, this, i);
    }

    public partial_piece_info() {
        this(libtorrent_jni.new_partial_piece_info(), true);
    }
}
