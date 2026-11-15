package org.libtorrent4j.swig;

public class picker_log_alert extends peer_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.picker_log_alert_priority_get());
    public static final int alert_type = libtorrent_jni.picker_log_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.picker_log_alert_static_category_get(), false);
    public static final picker_flags_t partial_ratio = new picker_flags_t(libtorrent_jni.picker_log_alert_partial_ratio_get(), false);
    public static final picker_flags_t prioritize_partials = new picker_flags_t(libtorrent_jni.picker_log_alert_prioritize_partials_get(), false);
    public static final picker_flags_t rarest_first_partials = new picker_flags_t(libtorrent_jni.picker_log_alert_rarest_first_partials_get(), false);
    public static final picker_flags_t rarest_first = new picker_flags_t(libtorrent_jni.picker_log_alert_rarest_first_get(), false);
    public static final picker_flags_t reverse_rarest_first = new picker_flags_t(libtorrent_jni.picker_log_alert_reverse_rarest_first_get(), false);
    public static final picker_flags_t suggested_pieces = new picker_flags_t(libtorrent_jni.picker_log_alert_suggested_pieces_get(), false);
    public static final picker_flags_t prio_sequential_pieces = new picker_flags_t(libtorrent_jni.picker_log_alert_prio_sequential_pieces_get(), false);
    public static final picker_flags_t sequential_pieces = new picker_flags_t(libtorrent_jni.picker_log_alert_sequential_pieces_get(), false);
    public static final picker_flags_t reverse_pieces = new picker_flags_t(libtorrent_jni.picker_log_alert_reverse_pieces_get(), false);
    public static final picker_flags_t time_critical = new picker_flags_t(libtorrent_jni.picker_log_alert_time_critical_get(), false);
    public static final picker_flags_t random_pieces = new picker_flags_t(libtorrent_jni.picker_log_alert_random_pieces_get(), false);
    public static final picker_flags_t prefer_contiguous = new picker_flags_t(libtorrent_jni.picker_log_alert_prefer_contiguous_get(), false);
    public static final picker_flags_t reverse_sequential = new picker_flags_t(libtorrent_jni.picker_log_alert_reverse_sequential_get(), false);
    public static final picker_flags_t backup1 = new picker_flags_t(libtorrent_jni.picker_log_alert_backup1_get(), false);
    public static final picker_flags_t backup2 = new picker_flags_t(libtorrent_jni.picker_log_alert_backup2_get(), false);
    public static final picker_flags_t end_game = new picker_flags_t(libtorrent_jni.picker_log_alert_end_game_get(), false);
    public static final picker_flags_t extent_affinity = new picker_flags_t(libtorrent_jni.picker_log_alert_extent_affinity_get(), false);

    public picker_log_alert(long j, boolean z) {
        super(libtorrent_jni.picker_log_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(picker_log_alert picker_log_alertVar) {
        if (picker_log_alertVar == null) {
            return 0L;
        }
        return picker_log_alertVar.swigCPtr;
    }

    public static long swigRelease(picker_log_alert picker_log_alertVar) {
        if (picker_log_alertVar == null) {
            return 0L;
        }
        if (!picker_log_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = picker_log_alertVar.swigCPtr;
        picker_log_alertVar.swigCMemOwn = false;
        picker_log_alertVar.delete();
        return j;
    }

    public piece_block_vector blocks() {
        return new piece_block_vector(libtorrent_jni.picker_log_alert_blocks(this.swigCPtr, this), true);
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.picker_log_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_picker_log_alert(j);
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

    public picker_flags_t getPicker_flags() {
        long jPicker_log_alert_picker_flags_get = libtorrent_jni.picker_log_alert_picker_flags_get(this.swigCPtr, this);
        if (jPicker_log_alert_picker_flags_get == 0) {
            return null;
        }
        return new picker_flags_t(jPicker_log_alert_picker_flags_get, false);
    }

    @Override
    public String message() {
        return libtorrent_jni.picker_log_alert_message(this.swigCPtr, this);
    }

    public void setPicker_flags(picker_flags_t picker_flags_tVar) {
        libtorrent_jni.picker_log_alert_picker_flags_set(this.swigCPtr, this, picker_flags_t.getCPtr(picker_flags_tVar), picker_flags_tVar);
    }

    @Override
    public int type() {
        return libtorrent_jni.picker_log_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.picker_log_alert_what(this.swigCPtr, this);
    }
}
