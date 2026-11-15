package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class alert_ptr_vector extends AbstractList<alert> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public alert_ptr_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(alert alertVar) {
        libtorrent_jni.alert_ptr_vector_doAdd__SWIG_0(this.swigCPtr, this, alert.getCPtr(alertVar), alertVar);
    }

    private int doCapacity() {
        return libtorrent_jni.alert_ptr_vector_doCapacity(this.swigCPtr, this);
    }

    private alert doGet(int i) {
        long jAlert_ptr_vector_doGet = libtorrent_jni.alert_ptr_vector_doGet(this.swigCPtr, this, i);
        if (jAlert_ptr_vector_doGet == 0) {
            return null;
        }
        return new alert(jAlert_ptr_vector_doGet, false);
    }

    private alert doRemove(int i) {
        long jAlert_ptr_vector_doRemove = libtorrent_jni.alert_ptr_vector_doRemove(this.swigCPtr, this, i);
        if (jAlert_ptr_vector_doRemove == 0) {
            return null;
        }
        return new alert(jAlert_ptr_vector_doRemove, false);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.alert_ptr_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.alert_ptr_vector_doReserve(this.swigCPtr, this, i);
    }

    private alert doSet(int i, alert alertVar) {
        long jAlert_ptr_vector_doSet = libtorrent_jni.alert_ptr_vector_doSet(this.swigCPtr, this, i, alert.getCPtr(alertVar), alertVar);
        if (jAlert_ptr_vector_doSet == 0) {
            return null;
        }
        return new alert(jAlert_ptr_vector_doSet, false);
    }

    private int doSize() {
        return libtorrent_jni.alert_ptr_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(alert_ptr_vector alert_ptr_vectorVar) {
        if (alert_ptr_vectorVar == null) {
            return 0L;
        }
        return alert_ptr_vectorVar.swigCPtr;
    }

    public static long swigRelease(alert_ptr_vector alert_ptr_vectorVar) {
        if (alert_ptr_vectorVar == null) {
            return 0L;
        }
        if (!alert_ptr_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = alert_ptr_vectorVar.swigCPtr;
        alert_ptr_vectorVar.swigCMemOwn = false;
        alert_ptr_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.alert_ptr_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_alert_ptr_vector(j);
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
        return libtorrent_jni.alert_ptr_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, alert alertVar) {
        libtorrent_jni.alert_ptr_vector_doAdd__SWIG_1(this.swigCPtr, this, i, alert.getCPtr(alertVar), alertVar);
    }

    @Override
    public alert get(int i) {
        return doGet(i);
    }

    @Override
    public alert remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public alert set(int i, alert alertVar) {
        return doSet(i, alertVar);
    }

    @Override
    public boolean add(alert alertVar) {
        ((AbstractList) this).modCount++;
        doAdd(alertVar);
        return true;
    }

    public alert_ptr_vector(alert[] alertVarArr) {
        this();
        doReserve(alertVarArr.length);
        for (alert alertVar : alertVarArr) {
            doAdd(alertVar);
        }
    }

    @Override
    public void add(int i, alert alertVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, alertVar);
    }

    public alert_ptr_vector(Iterable<alert> iterable) {
        this();
        Iterator<alert> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public alert_ptr_vector() {
        this(libtorrent_jni.new_alert_ptr_vector__SWIG_0(), true);
    }

    public alert_ptr_vector(alert_ptr_vector alert_ptr_vectorVar) {
        this(libtorrent_jni.new_alert_ptr_vector__SWIG_1(getCPtr(alert_ptr_vectorVar), alert_ptr_vectorVar), true);
    }

    public alert_ptr_vector(int i, alert alertVar) {
        this(libtorrent_jni.new_alert_ptr_vector__SWIG_2(i, alert.getCPtr(alertVar), alertVar), true);
    }
}
