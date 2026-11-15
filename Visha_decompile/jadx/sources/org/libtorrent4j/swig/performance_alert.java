package org.libtorrent4j.swig;

public class performance_alert extends torrent_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.performance_alert_priority_get());
    public static final int alert_type = libtorrent_jni.performance_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.performance_alert_static_category_get(), false);

    public performance_alert(long j, boolean z) {
        super(libtorrent_jni.performance_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(performance_alert performance_alertVar) {
        if (performance_alertVar == null) {
            return 0L;
        }
        return performance_alertVar.swigCPtr;
    }

    public static long swigRelease(performance_alert performance_alertVar) {
        if (performance_alertVar == null) {
            return 0L;
        }
        if (!performance_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = performance_alertVar.swigCPtr;
        performance_alertVar.swigCMemOwn = false;
        performance_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.performance_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_performance_alert(j);
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

    public performance_warning_t getWarning_code() {
        return performance_warning_t.swigToEnum(libtorrent_jni.performance_alert_warning_code_get(this.swigCPtr, this));
    }

    @Override
    public String message() {
        return libtorrent_jni.performance_alert_message(this.swigCPtr, this);
    }

    @Override
    public int type() {
        return libtorrent_jni.performance_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.performance_alert_what(this.swigCPtr, this);
    }

    public static final class performance_warning_t {
        public static final performance_warning_t aio_limit_reached;
        public static final performance_warning_t download_limit_too_low;
        public static final performance_warning_t num_warnings;
        public static final performance_warning_t outstanding_disk_buffer_limit_reached;
        public static final performance_warning_t outstanding_request_limit_reached;
        public static final performance_warning_t send_buffer_watermark_too_low;
        private static int swigNext;
        private static performance_warning_t[] swigValues;
        public static final performance_warning_t too_few_file_descriptors;
        public static final performance_warning_t too_few_outgoing_ports;
        public static final performance_warning_t too_high_disk_queue_limit;
        public static final performance_warning_t too_many_optimistic_unchoke_slots;
        public static final performance_warning_t upload_limit_too_low;
        private final String swigName;
        private final int swigValue;

        static {
            performance_warning_t performance_warning_tVar = new performance_warning_t("outstanding_disk_buffer_limit_reached");
            outstanding_disk_buffer_limit_reached = performance_warning_tVar;
            performance_warning_t performance_warning_tVar2 = new performance_warning_t("outstanding_request_limit_reached");
            outstanding_request_limit_reached = performance_warning_tVar2;
            performance_warning_t performance_warning_tVar3 = new performance_warning_t("upload_limit_too_low");
            upload_limit_too_low = performance_warning_tVar3;
            performance_warning_t performance_warning_tVar4 = new performance_warning_t("download_limit_too_low");
            download_limit_too_low = performance_warning_tVar4;
            performance_warning_t performance_warning_tVar5 = new performance_warning_t("send_buffer_watermark_too_low");
            send_buffer_watermark_too_low = performance_warning_tVar5;
            performance_warning_t performance_warning_tVar6 = new performance_warning_t("too_many_optimistic_unchoke_slots");
            too_many_optimistic_unchoke_slots = performance_warning_tVar6;
            performance_warning_t performance_warning_tVar7 = new performance_warning_t("too_high_disk_queue_limit");
            too_high_disk_queue_limit = performance_warning_tVar7;
            performance_warning_t performance_warning_tVar8 = new performance_warning_t("aio_limit_reached");
            aio_limit_reached = performance_warning_tVar8;
            performance_warning_t performance_warning_tVar9 = new performance_warning_t("too_few_outgoing_ports", libtorrent_jni.performance_alert_too_few_outgoing_ports_get());
            too_few_outgoing_ports = performance_warning_tVar9;
            performance_warning_t performance_warning_tVar10 = new performance_warning_t("too_few_file_descriptors");
            too_few_file_descriptors = performance_warning_tVar10;
            performance_warning_t performance_warning_tVar11 = new performance_warning_t("num_warnings");
            num_warnings = performance_warning_tVar11;
            swigValues = new performance_warning_t[]{performance_warning_tVar, performance_warning_tVar2, performance_warning_tVar3, performance_warning_tVar4, performance_warning_tVar5, performance_warning_tVar6, performance_warning_tVar7, performance_warning_tVar8, performance_warning_tVar9, performance_warning_tVar10, performance_warning_tVar11};
            swigNext = 0;
        }

        private performance_warning_t(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static performance_warning_t swigToEnum(int i) {
            performance_warning_t[] performance_warning_tVarArr = swigValues;
            if (i < performance_warning_tVarArr.length && i >= 0) {
                performance_warning_t performance_warning_tVar = performance_warning_tVarArr[i];
                if (performance_warning_tVar.swigValue == i) {
                    return performance_warning_tVar;
                }
            }
            int i2 = 0;
            while (true) {
                performance_warning_t[] performance_warning_tVarArr2 = swigValues;
                if (i2 >= performance_warning_tVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + performance_warning_t.class + " with value " + i);
                }
                performance_warning_t performance_warning_tVar2 = performance_warning_tVarArr2[i2];
                if (performance_warning_tVar2.swigValue == i) {
                    return performance_warning_tVar2;
                }
                i2++;
            }
        }

        public final int swigValue() {
            return this.swigValue;
        }

        public String toString() {
            return this.swigName;
        }

        private performance_warning_t(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private performance_warning_t(String str, performance_warning_t performance_warning_tVar) {
            this.swigName = str;
            int i = performance_warning_tVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }
}
