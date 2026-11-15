package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class bool_vector extends AbstractList<Boolean> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public bool_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(boolean z) {
        libtorrent_jni.bool_vector_doAdd__SWIG_0(this.swigCPtr, this, z);
    }

    private int doCapacity() {
        return libtorrent_jni.bool_vector_doCapacity(this.swigCPtr, this);
    }

    private boolean doGet(int i) {
        return libtorrent_jni.bool_vector_doGet(this.swigCPtr, this, i);
    }

    private boolean doRemove(int i) {
        return libtorrent_jni.bool_vector_doRemove(this.swigCPtr, this, i);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.bool_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.bool_vector_doReserve(this.swigCPtr, this, i);
    }

    private boolean doSet(int i, boolean z) {
        return libtorrent_jni.bool_vector_doSet(this.swigCPtr, this, i, z);
    }

    private int doSize() {
        return libtorrent_jni.bool_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(bool_vector bool_vectorVar) {
        if (bool_vectorVar == null) {
            return 0L;
        }
        return bool_vectorVar.swigCPtr;
    }

    public static long swigRelease(bool_vector bool_vectorVar) {
        if (bool_vectorVar == null) {
            return 0L;
        }
        if (!bool_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = bool_vectorVar.swigCPtr;
        bool_vectorVar.swigCMemOwn = false;
        bool_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.bool_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_bool_vector(j);
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
        return libtorrent_jni.bool_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, boolean z) {
        libtorrent_jni.bool_vector_doAdd__SWIG_1(this.swigCPtr, this, i, z);
    }

    @Override
    public Boolean get(int i) {
        return Boolean.valueOf(doGet(i));
    }

    @Override
    public Boolean remove(int i) {
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(doRemove(i));
    }

    @Override
    public Boolean set(int i, Boolean bool) {
        return Boolean.valueOf(doSet(i, bool.booleanValue()));
    }

    @Override
    public boolean add(Boolean bool) {
        ((AbstractList) this).modCount++;
        doAdd(bool.booleanValue());
        return true;
    }

    public bool_vector(boolean[] zArr) {
        this();
        doReserve(zArr.length);
        for (boolean z : zArr) {
            doAdd(z);
        }
    }

    @Override
    public void add(int i, Boolean bool) {
        ((AbstractList) this).modCount++;
        doAdd(i, bool.booleanValue());
    }

    public bool_vector(Iterable<Boolean> iterable) {
        this();
        Iterator<Boolean> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next().booleanValue());
        }
    }

    public bool_vector() {
        this(libtorrent_jni.new_bool_vector__SWIG_0(), true);
    }

    public bool_vector(bool_vector bool_vectorVar) {
        this(libtorrent_jni.new_bool_vector__SWIG_1(getCPtr(bool_vectorVar), bool_vectorVar), true);
    }

    public bool_vector(int i, boolean z) {
        this(libtorrent_jni.new_bool_vector__SWIG_2(i, z), true);
    }
}
