package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class sha256_hash_vector_vector extends AbstractList<sha256_hash_vector> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public sha256_hash_vector_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(sha256_hash_vector sha256_hash_vectorVar) {
        libtorrent_jni.sha256_hash_vector_vector_doAdd__SWIG_0(this.swigCPtr, this, sha256_hash_vector.getCPtr(sha256_hash_vectorVar), sha256_hash_vectorVar);
    }

    private int doCapacity() {
        return libtorrent_jni.sha256_hash_vector_vector_doCapacity(this.swigCPtr, this);
    }

    private sha256_hash_vector doGet(int i) {
        return new sha256_hash_vector(libtorrent_jni.sha256_hash_vector_vector_doGet(this.swigCPtr, this, i), false);
    }

    private sha256_hash_vector doRemove(int i) {
        return new sha256_hash_vector(libtorrent_jni.sha256_hash_vector_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.sha256_hash_vector_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.sha256_hash_vector_vector_doReserve(this.swigCPtr, this, i);
    }

    private sha256_hash_vector doSet(int i, sha256_hash_vector sha256_hash_vectorVar) {
        return new sha256_hash_vector(libtorrent_jni.sha256_hash_vector_vector_doSet(this.swigCPtr, this, i, sha256_hash_vector.getCPtr(sha256_hash_vectorVar), sha256_hash_vectorVar), true);
    }

    private int doSize() {
        return libtorrent_jni.sha256_hash_vector_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(sha256_hash_vector_vector sha256_hash_vector_vectorVar) {
        if (sha256_hash_vector_vectorVar == null) {
            return 0L;
        }
        return sha256_hash_vector_vectorVar.swigCPtr;
    }

    public static long swigRelease(sha256_hash_vector_vector sha256_hash_vector_vectorVar) {
        if (sha256_hash_vector_vectorVar == null) {
            return 0L;
        }
        if (!sha256_hash_vector_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = sha256_hash_vector_vectorVar.swigCPtr;
        sha256_hash_vector_vectorVar.swigCMemOwn = false;
        sha256_hash_vector_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.sha256_hash_vector_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_sha256_hash_vector_vector(j);
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
        return libtorrent_jni.sha256_hash_vector_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, sha256_hash_vector sha256_hash_vectorVar) {
        libtorrent_jni.sha256_hash_vector_vector_doAdd__SWIG_1(this.swigCPtr, this, i, sha256_hash_vector.getCPtr(sha256_hash_vectorVar), sha256_hash_vectorVar);
    }

    @Override
    public sha256_hash_vector get(int i) {
        return doGet(i);
    }

    @Override
    public sha256_hash_vector remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public sha256_hash_vector set(int i, sha256_hash_vector sha256_hash_vectorVar) {
        return doSet(i, sha256_hash_vectorVar);
    }

    @Override
    public boolean add(sha256_hash_vector sha256_hash_vectorVar) {
        ((AbstractList) this).modCount++;
        doAdd(sha256_hash_vectorVar);
        return true;
    }

    public sha256_hash_vector_vector(sha256_hash_vector[] sha256_hash_vectorVarArr) {
        this();
        doReserve(sha256_hash_vectorVarArr.length);
        for (sha256_hash_vector sha256_hash_vectorVar : sha256_hash_vectorVarArr) {
            doAdd(sha256_hash_vectorVar);
        }
    }

    @Override
    public void add(int i, sha256_hash_vector sha256_hash_vectorVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, sha256_hash_vectorVar);
    }

    public sha256_hash_vector_vector(Iterable<sha256_hash_vector> iterable) {
        this();
        Iterator<sha256_hash_vector> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public sha256_hash_vector_vector() {
        this(libtorrent_jni.new_sha256_hash_vector_vector__SWIG_0(), true);
    }

    public sha256_hash_vector_vector(sha256_hash_vector_vector sha256_hash_vector_vectorVar) {
        this(libtorrent_jni.new_sha256_hash_vector_vector__SWIG_1(getCPtr(sha256_hash_vector_vectorVar), sha256_hash_vector_vectorVar), true);
    }

    public sha256_hash_vector_vector(int i, sha256_hash_vector sha256_hash_vectorVar) {
        this(libtorrent_jni.new_sha256_hash_vector_vector__SWIG_2(i, sha256_hash_vector.getCPtr(sha256_hash_vectorVar), sha256_hash_vectorVar), true);
    }
}
