package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class sha1_hash_vector extends AbstractList<sha1_hash> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public sha1_hash_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(sha1_hash sha1_hashVar) {
        libtorrent_jni.sha1_hash_vector_doAdd__SWIG_0(this.swigCPtr, this, sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar);
    }

    private int doCapacity() {
        return libtorrent_jni.sha1_hash_vector_doCapacity(this.swigCPtr, this);
    }

    private sha1_hash doGet(int i) {
        return new sha1_hash(libtorrent_jni.sha1_hash_vector_doGet(this.swigCPtr, this, i), false);
    }

    private sha1_hash doRemove(int i) {
        return new sha1_hash(libtorrent_jni.sha1_hash_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.sha1_hash_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.sha1_hash_vector_doReserve(this.swigCPtr, this, i);
    }

    private sha1_hash doSet(int i, sha1_hash sha1_hashVar) {
        return new sha1_hash(libtorrent_jni.sha1_hash_vector_doSet(this.swigCPtr, this, i, sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar), true);
    }

    private int doSize() {
        return libtorrent_jni.sha1_hash_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(sha1_hash_vector sha1_hash_vectorVar) {
        if (sha1_hash_vectorVar == null) {
            return 0L;
        }
        return sha1_hash_vectorVar.swigCPtr;
    }

    public static long swigRelease(sha1_hash_vector sha1_hash_vectorVar) {
        if (sha1_hash_vectorVar == null) {
            return 0L;
        }
        if (!sha1_hash_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = sha1_hash_vectorVar.swigCPtr;
        sha1_hash_vectorVar.swigCMemOwn = false;
        sha1_hash_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.sha1_hash_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_sha1_hash_vector(j);
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
        return libtorrent_jni.sha1_hash_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, sha1_hash sha1_hashVar) {
        libtorrent_jni.sha1_hash_vector_doAdd__SWIG_1(this.swigCPtr, this, i, sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar);
    }

    @Override
    public sha1_hash get(int i) {
        return doGet(i);
    }

    @Override
    public sha1_hash remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public sha1_hash set(int i, sha1_hash sha1_hashVar) {
        return doSet(i, sha1_hashVar);
    }

    @Override
    public boolean add(sha1_hash sha1_hashVar) {
        ((AbstractList) this).modCount++;
        doAdd(sha1_hashVar);
        return true;
    }

    public sha1_hash_vector(sha1_hash[] sha1_hashVarArr) {
        this();
        doReserve(sha1_hashVarArr.length);
        for (sha1_hash sha1_hashVar : sha1_hashVarArr) {
            doAdd(sha1_hashVar);
        }
    }

    @Override
    public void add(int i, sha1_hash sha1_hashVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, sha1_hashVar);
    }

    public sha1_hash_vector(Iterable<sha1_hash> iterable) {
        this();
        Iterator<sha1_hash> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public sha1_hash_vector() {
        this(libtorrent_jni.new_sha1_hash_vector__SWIG_0(), true);
    }

    public sha1_hash_vector(sha1_hash_vector sha1_hash_vectorVar) {
        this(libtorrent_jni.new_sha1_hash_vector__SWIG_1(getCPtr(sha1_hash_vectorVar), sha1_hash_vectorVar), true);
    }

    public sha1_hash_vector(int i, sha1_hash sha1_hashVar) {
        this(libtorrent_jni.new_sha1_hash_vector__SWIG_2(i, sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar), true);
    }
}
