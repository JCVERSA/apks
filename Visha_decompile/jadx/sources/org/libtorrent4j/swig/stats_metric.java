package org.libtorrent4j.swig;

public class stats_metric {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public stats_metric(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(stats_metric stats_metricVar) {
        if (stats_metricVar == null) {
            return 0L;
        }
        return stats_metricVar.swigCPtr;
    }

    public static long swigRelease(stats_metric stats_metricVar) {
        if (stats_metricVar == null) {
            return 0L;
        }
        if (!stats_metricVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = stats_metricVar.swigCPtr;
        stats_metricVar.swigCMemOwn = false;
        stats_metricVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_stats_metric(j);
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

    public metric_type_t getType() {
        return metric_type_t.swigToEnum(libtorrent_jni.stats_metric_type_get(this.swigCPtr, this));
    }

    public int getValue_index() {
        return libtorrent_jni.stats_metric_value_index_get(this.swigCPtr, this);
    }

    public String get_name() {
        return libtorrent_jni.stats_metric_get_name(this.swigCPtr, this);
    }

    public void setType(metric_type_t metric_type_tVar) {
        libtorrent_jni.stats_metric_type_set(this.swigCPtr, this, metric_type_tVar.swigValue());
    }

    public void setValue_index(int i) {
        libtorrent_jni.stats_metric_value_index_set(this.swigCPtr, this, i);
    }

    public stats_metric() {
        this(libtorrent_jni.new_stats_metric(), true);
    }
}
