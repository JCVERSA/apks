package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class int64_vector extends AbstractList<Long> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public int64_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(long j) {
        libtorrent_jni.int64_vector_doAdd__SWIG_0(this.swigCPtr, this, j);
    }

    private int doCapacity() {
        return libtorrent_jni.int64_vector_doCapacity(this.swigCPtr, this);
    }

    private long doGet(int i) {
        return libtorrent_jni.int64_vector_doGet(this.swigCPtr, this, i);
    }

    private long doRemove(int i) {
        return libtorrent_jni.int64_vector_doRemove(this.swigCPtr, this, i);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.int64_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.int64_vector_doReserve(this.swigCPtr, this, i);
    }

    private long doSet(int i, long j) {
        return libtorrent_jni.int64_vector_doSet(this.swigCPtr, this, i, j);
    }

    private int doSize() {
        return libtorrent_jni.int64_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(int64_vector int64_vectorVar) {
        if (int64_vectorVar == null) {
            return 0L;
        }
        return int64_vectorVar.swigCPtr;
    }

    public static long swigRelease(int64_vector int64_vectorVar) {
        if (int64_vectorVar == null) {
            return 0L;
        }
        if (!int64_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = int64_vectorVar.swigCPtr;
        int64_vectorVar.swigCMemOwn = false;
        int64_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.int64_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_int64_vector(j);
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
        return libtorrent_jni.int64_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, long j) {
        libtorrent_jni.int64_vector_doAdd__SWIG_1(this.swigCPtr, this, i, j);
    }

    @Override
    public Long get(int i) {
        return Long.valueOf(doGet(i));
    }

    @Override
    public Long remove(int i) {
        ((AbstractList) this).modCount++;
        return Long.valueOf(doRemove(i));
    }

    @Override
    public Long set(int i, Long l) {
        return Long.valueOf(doSet(i, l.longValue()));
    }

    @Override
    public boolean add(Long l) {
        ((AbstractList) this).modCount++;
        doAdd(l.longValue());
        return true;
    }

    public int64_vector(long[] jArr) {
        this();
        doReserve(jArr.length);
        for (long j : jArr) {
            doAdd(j);
        }
    }

    @Override
    public void add(int i, Long l) {
        ((AbstractList) this).modCount++;
        doAdd(i, l.longValue());
    }

    public int64_vector(Iterable<Long> iterable) {
        this();
        Iterator<Long> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next().longValue());
        }
    }

    public int64_vector() {
        this(libtorrent_jni.new_int64_vector__SWIG_0(), true);
    }

    public int64_vector(int64_vector int64_vectorVar) {
        this(libtorrent_jni.new_int64_vector__SWIG_1(getCPtr(int64_vectorVar), int64_vectorVar), true);
    }

    public int64_vector(int i, long j) {
        this(libtorrent_jni.new_int64_vector__SWIG_2(i, j), true);
    }
}
