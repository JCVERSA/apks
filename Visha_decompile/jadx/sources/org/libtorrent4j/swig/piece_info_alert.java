package org.libtorrent4j.swig;

public class piece_info_alert extends torrent_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.piece_info_alert_priority_get());
    public static final int alert_type = libtorrent_jni.piece_info_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.piece_info_alert_static_category_get(), false);

    public piece_info_alert(long j, boolean z) {
        super(libtorrent_jni.piece_info_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(piece_info_alert piece_info_alertVar) {
        if (piece_info_alertVar == null) {
            return 0L;
        }
        return piece_info_alertVar.swigCPtr;
    }

    public static long swigRelease(piece_info_alert piece_info_alertVar) {
        if (piece_info_alertVar == null) {
            return 0L;
        }
        if (!piece_info_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = piece_info_alertVar.swigCPtr;
        piece_info_alertVar.swigCMemOwn = false;
        piece_info_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.piece_info_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_piece_info_alert(j);
                }
                this.swigCPtr = 0L;
            }
            super.delete();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public void finalize() {
        delete();
    }

    public block_info_vector getBlock_data() {
        long jPiece_info_alert_block_data_get = libtorrent_jni.piece_info_alert_block_data_get(this.swigCPtr, this);
        if (jPiece_info_alert_block_data_get == 0) {
            return null;
        }
        return new block_info_vector(jPiece_info_alert_block_data_get, false);
    }

    public partial_piece_info_vector getPiece_info() {
        long jPiece_info_alert_piece_info_get = libtorrent_jni.piece_info_alert_piece_info_get(this.swigCPtr, this);
        if (jPiece_info_alert_piece_info_get == 0) {
            return null;
        }
        return new partial_piece_info_vector(jPiece_info_alert_piece_info_get, false);
    }

    @Override
    public String message() {
        return libtorrent_jni.piece_info_alert_message(this.swigCPtr, this);
    }

    public void setBlock_data(block_info_vector block_info_vectorVar) {
        libtorrent_jni.piece_info_alert_block_data_set(this.swigCPtr, this, block_info_vector.getCPtr(block_info_vectorVar), block_info_vectorVar);
    }

    public void setPiece_info(partial_piece_info_vector partial_piece_info_vectorVar) {
        libtorrent_jni.piece_info_alert_piece_info_set(this.swigCPtr, this, partial_piece_info_vector.getCPtr(partial_piece_info_vectorVar), partial_piece_info_vectorVar);
    }

    @Override
    public int type() {
        return libtorrent_jni.piece_info_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.piece_info_alert_what(this.swigCPtr, this);
    }
}
