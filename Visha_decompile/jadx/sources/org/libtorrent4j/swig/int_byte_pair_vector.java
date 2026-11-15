package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class int_byte_pair_vector extends AbstractList<int_byte_pair> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public int_byte_pair_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(int_byte_pair int_byte_pairVar) {
        libtorrent_jni.int_byte_pair_vector_doAdd__SWIG_0(this.swigCPtr, this, int_byte_pair.getCPtr(int_byte_pairVar), int_byte_pairVar);
    }

    private int doCapacity() {
        return libtorrent_jni.int_byte_pair_vector_doCapacity(this.swigCPtr, this);
    }

    private int_byte_pair doGet(int i) {
        return new int_byte_pair(libtorrent_jni.int_byte_pair_vector_doGet(this.swigCPtr, this, i), false);
    }

    private int_byte_pair doRemove(int i) {
        return new int_byte_pair(libtorrent_jni.int_byte_pair_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.int_byte_pair_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.int_byte_pair_vector_doReserve(this.swigCPtr, this, i);
    }

    private int_byte_pair doSet(int i, int_byte_pair int_byte_pairVar) {
        return new int_byte_pair(libtorrent_jni.int_byte_pair_vector_doSet(this.swigCPtr, this, i, int_byte_pair.getCPtr(int_byte_pairVar), int_byte_pairVar), true);
    }

    private int doSize() {
        return libtorrent_jni.int_byte_pair_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(int_byte_pair_vector int_byte_pair_vectorVar) {
        if (int_byte_pair_vectorVar == null) {
            return 0L;
        }
        return int_byte_pair_vectorVar.swigCPtr;
    }

    public static long swigRelease(int_byte_pair_vector int_byte_pair_vectorVar) {
        if (int_byte_pair_vectorVar == null) {
            return 0L;
        }
        if (!int_byte_pair_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = int_byte_pair_vectorVar.swigCPtr;
        int_byte_pair_vectorVar.swigCMemOwn = false;
        int_byte_pair_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.int_byte_pair_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_int_byte_pair_vector(j);
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
        return libtorrent_jni.int_byte_pair_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, int_byte_pair int_byte_pairVar) {
        libtorrent_jni.int_byte_pair_vector_doAdd__SWIG_1(this.swigCPtr, this, i, int_byte_pair.getCPtr(int_byte_pairVar), int_byte_pairVar);
    }

    @Override
    public int_byte_pair get(int i) {
        return doGet(i);
    }

    @Override
    public int_byte_pair remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public int_byte_pair set(int i, int_byte_pair int_byte_pairVar) {
        return doSet(i, int_byte_pairVar);
    }

    @Override
    public boolean add(int_byte_pair int_byte_pairVar) {
        ((AbstractList) this).modCount++;
        doAdd(int_byte_pairVar);
        return true;
    }

    public int_byte_pair_vector(int_byte_pair[] int_byte_pairVarArr) {
        this();
        doReserve(int_byte_pairVarArr.length);
        for (int_byte_pair int_byte_pairVar : int_byte_pairVarArr) {
            doAdd(int_byte_pairVar);
        }
    }

    @Override
    public void add(int i, int_byte_pair int_byte_pairVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, int_byte_pairVar);
    }

    public int_byte_pair_vector(Iterable<int_byte_pair> iterable) {
        this();
        Iterator<int_byte_pair> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public int_byte_pair_vector() {
        this(libtorrent_jni.new_int_byte_pair_vector__SWIG_0(), true);
    }

    public int_byte_pair_vector(int_byte_pair_vector int_byte_pair_vectorVar) {
        this(libtorrent_jni.new_int_byte_pair_vector__SWIG_1(getCPtr(int_byte_pair_vectorVar), int_byte_pair_vectorVar), true);
    }

    public int_byte_pair_vector(int i, int_byte_pair int_byte_pairVar) {
        this(libtorrent_jni.new_int_byte_pair_vector__SWIG_2(i, int_byte_pair.getCPtr(int_byte_pairVar), int_byte_pairVar), true);
    }
}
