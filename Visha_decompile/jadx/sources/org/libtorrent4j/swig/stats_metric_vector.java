package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class stats_metric_vector extends AbstractList<stats_metric> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public stats_metric_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(stats_metric stats_metricVar) {
        libtorrent_jni.stats_metric_vector_doAdd__SWIG_0(this.swigCPtr, this, stats_metric.getCPtr(stats_metricVar), stats_metricVar);
    }

    private int doCapacity() {
        return libtorrent_jni.stats_metric_vector_doCapacity(this.swigCPtr, this);
    }

    private stats_metric doGet(int i) {
        return new stats_metric(libtorrent_jni.stats_metric_vector_doGet(this.swigCPtr, this, i), false);
    }

    private stats_metric doRemove(int i) {
        return new stats_metric(libtorrent_jni.stats_metric_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.stats_metric_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.stats_metric_vector_doReserve(this.swigCPtr, this, i);
    }

    private stats_metric doSet(int i, stats_metric stats_metricVar) {
        return new stats_metric(libtorrent_jni.stats_metric_vector_doSet(this.swigCPtr, this, i, stats_metric.getCPtr(stats_metricVar), stats_metricVar), true);
    }

    private int doSize() {
        return libtorrent_jni.stats_metric_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(stats_metric_vector stats_metric_vectorVar) {
        if (stats_metric_vectorVar == null) {
            return 0L;
        }
        return stats_metric_vectorVar.swigCPtr;
    }

    public static long swigRelease(stats_metric_vector stats_metric_vectorVar) {
        if (stats_metric_vectorVar == null) {
            return 0L;
        }
        if (!stats_metric_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = stats_metric_vectorVar.swigCPtr;
        stats_metric_vectorVar.swigCMemOwn = false;
        stats_metric_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.stats_metric_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_stats_metric_vector(j);
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

    @Override
    public boolean isEmpty() {
        return libtorrent_jni.stats_metric_vector_isEmpty(this.swigCPtr, this);
    }

    @Override
    public void removeRange(int i, int i2) {
        ((AbstractList) this).modCount++;
        doRemoveRange(i, i2);
    }

    public void reserve(int i) {
        doReserve(i);
    }

    @Override
    public int size() {
        return doSize();
    }

    private void doAdd(int i, stats_metric stats_metricVar) {
        libtorrent_jni.stats_metric_vector_doAdd__SWIG_1(this.swigCPtr, this, i, stats_metric.getCPtr(stats_metricVar), stats_metricVar);
    }

    @Override
    public stats_metric get(int i) {
        return doGet(i);
    }

    @Override
    public stats_metric remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public stats_metric set(int i, stats_metric stats_metricVar) {
        return doSet(i, stats_metricVar);
    }

    @Override
    public boolean add(stats_metric stats_metricVar) {
        ((AbstractList) this).modCount++;
        doAdd(stats_metricVar);
        return true;
    }

    public stats_metric_vector(stats_metric[] stats_metricVarArr) {
        this();
        doReserve(stats_metricVarArr.length);
        for (stats_metric stats_metricVar : stats_metricVarArr) {
            doAdd(stats_metricVar);
        }
    }

    @Override
    public void add(int i, stats_metric stats_metricVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, stats_metricVar);
    }

    public stats_metric_vector(Iterable<stats_metric> iterable) {
        this();
        Iterator<stats_metric> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public stats_metric_vector() {
        this(libtorrent_jni.new_stats_metric_vector__SWIG_0(), true);
    }

    public stats_metric_vector(stats_metric_vector stats_metric_vectorVar) {
        this(libtorrent_jni.new_stats_metric_vector__SWIG_1(getCPtr(stats_metric_vectorVar), stats_metric_vectorVar), true);
    }

    public stats_metric_vector(int i, stats_metric stats_metricVar) {
        this(libtorrent_jni.new_stats_metric_vector__SWIG_2(i, stats_metric.getCPtr(stats_metricVar), stats_metricVar), true);
    }
}
