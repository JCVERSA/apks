package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class int_vector extends AbstractList<Integer> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public int_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(int i) {
        libtorrent_jni.int_vector_doAdd__SWIG_0(this.swigCPtr, this, i);
    }

    private int doCapacity() {
        return libtorrent_jni.int_vector_doCapacity(this.swigCPtr, this);
    }

    private int doGet(int i) {
        return libtorrent_jni.int_vector_doGet(this.swigCPtr, this, i);
    }

    private int doRemove(int i) {
        return libtorrent_jni.int_vector_doRemove(this.swigCPtr, this, i);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.int_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.int_vector_doReserve(this.swigCPtr, this, i);
    }

    private int doSet(int i, int i2) {
        return libtorrent_jni.int_vector_doSet(this.swigCPtr, this, i, i2);
    }

    private int doSize() {
        return libtorrent_jni.int_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(int_vector int_vectorVar) {
        if (int_vectorVar == null) {
            return 0L;
        }
        return int_vectorVar.swigCPtr;
    }

    public static long swigRelease(int_vector int_vectorVar) {
        if (int_vectorVar == null) {
            return 0L;
        }
        if (!int_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = int_vectorVar.swigCPtr;
        int_vectorVar.swigCMemOwn = false;
        int_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.int_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_int_vector(j);
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
        return libtorrent_jni.int_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, int i2) {
        libtorrent_jni.int_vector_doAdd__SWIG_1(this.swigCPtr, this, i, i2);
    }

    @Override
    public Integer get(int i) {
        return Integer.valueOf(doGet(i));
    }

    @Override
    public Integer remove(int i) {
        ((AbstractList) this).modCount++;
        return Integer.valueOf(doRemove(i));
    }

    @Override
    public Integer set(int i, Integer num) {
        return Integer.valueOf(doSet(i, num.intValue()));
    }

    @Override
    public boolean add(Integer num) {
        ((AbstractList) this).modCount++;
        doAdd(num.intValue());
        return true;
    }

    public int_vector(int[] iArr) {
        this();
        doReserve(iArr.length);
        for (int i : iArr) {
            doAdd(i);
        }
    }

    @Override
    public void add(int i, Integer num) {
        ((AbstractList) this).modCount++;
        doAdd(i, num.intValue());
    }

    public int_vector(Iterable<Integer> iterable) {
        this();
        Iterator<Integer> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next().intValue());
        }
    }

    public int_vector() {
        this(libtorrent_jni.new_int_vector__SWIG_0(), true);
    }

    public int_vector(int_vector int_vectorVar) {
        this(libtorrent_jni.new_int_vector__SWIG_1(getCPtr(int_vectorVar), int_vectorVar), true);
    }

    public int_vector(int i, int i2) {
        this(libtorrent_jni.new_int_vector__SWIG_2(i, i2), true);
    }
}
