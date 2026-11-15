package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class bool_vector_vector extends AbstractList<bool_vector> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public bool_vector_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(bool_vector bool_vectorVar) {
        libtorrent_jni.bool_vector_vector_doAdd__SWIG_0(this.swigCPtr, this, bool_vector.getCPtr(bool_vectorVar), bool_vectorVar);
    }

    private int doCapacity() {
        return libtorrent_jni.bool_vector_vector_doCapacity(this.swigCPtr, this);
    }

    private bool_vector doGet(int i) {
        return new bool_vector(libtorrent_jni.bool_vector_vector_doGet(this.swigCPtr, this, i), false);
    }

    private bool_vector doRemove(int i) {
        return new bool_vector(libtorrent_jni.bool_vector_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.bool_vector_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.bool_vector_vector_doReserve(this.swigCPtr, this, i);
    }

    private bool_vector doSet(int i, bool_vector bool_vectorVar) {
        return new bool_vector(libtorrent_jni.bool_vector_vector_doSet(this.swigCPtr, this, i, bool_vector.getCPtr(bool_vectorVar), bool_vectorVar), true);
    }

    private int doSize() {
        return libtorrent_jni.bool_vector_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(bool_vector_vector bool_vector_vectorVar) {
        if (bool_vector_vectorVar == null) {
            return 0L;
        }
        return bool_vector_vectorVar.swigCPtr;
    }

    public static long swigRelease(bool_vector_vector bool_vector_vectorVar) {
        if (bool_vector_vectorVar == null) {
            return 0L;
        }
        if (!bool_vector_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = bool_vector_vectorVar.swigCPtr;
        bool_vector_vectorVar.swigCMemOwn = false;
        bool_vector_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.bool_vector_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_bool_vector_vector(j);
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
        return libtorrent_jni.bool_vector_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, bool_vector bool_vectorVar) {
        libtorrent_jni.bool_vector_vector_doAdd__SWIG_1(this.swigCPtr, this, i, bool_vector.getCPtr(bool_vectorVar), bool_vectorVar);
    }

    @Override
    public bool_vector get(int i) {
        return doGet(i);
    }

    @Override
    public bool_vector remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public bool_vector set(int i, bool_vector bool_vectorVar) {
        return doSet(i, bool_vectorVar);
    }

    @Override
    public boolean add(bool_vector bool_vectorVar) {
        ((AbstractList) this).modCount++;
        doAdd(bool_vectorVar);
        return true;
    }

    public bool_vector_vector(bool_vector[] bool_vectorVarArr) {
        this();
        doReserve(bool_vectorVarArr.length);
        for (bool_vector bool_vectorVar : bool_vectorVarArr) {
            doAdd(bool_vectorVar);
        }
    }

    @Override
    public void add(int i, bool_vector bool_vectorVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, bool_vectorVar);
    }

    public bool_vector_vector(Iterable<bool_vector> iterable) {
        this();
        Iterator<bool_vector> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public bool_vector_vector() {
        this(libtorrent_jni.new_bool_vector_vector__SWIG_0(), true);
    }

    public bool_vector_vector(bool_vector_vector bool_vector_vectorVar) {
        this(libtorrent_jni.new_bool_vector_vector__SWIG_1(getCPtr(bool_vector_vectorVar), bool_vector_vectorVar), true);
    }

    public bool_vector_vector(int i, bool_vector bool_vectorVar) {
        this(libtorrent_jni.new_bool_vector_vector__SWIG_2(i, bool_vector.getCPtr(bool_vectorVar), bool_vectorVar), true);
    }
}
