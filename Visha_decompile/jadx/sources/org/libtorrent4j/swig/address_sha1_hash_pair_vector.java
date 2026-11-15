package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class address_sha1_hash_pair_vector extends AbstractList<address_sha1_hash_pair> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public address_sha1_hash_pair_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(address_sha1_hash_pair address_sha1_hash_pairVar) {
        libtorrent_jni.address_sha1_hash_pair_vector_doAdd__SWIG_0(this.swigCPtr, this, address_sha1_hash_pair.getCPtr(address_sha1_hash_pairVar), address_sha1_hash_pairVar);
    }

    private int doCapacity() {
        return libtorrent_jni.address_sha1_hash_pair_vector_doCapacity(this.swigCPtr, this);
    }

    private address_sha1_hash_pair doGet(int i) {
        return new address_sha1_hash_pair(libtorrent_jni.address_sha1_hash_pair_vector_doGet(this.swigCPtr, this, i), false);
    }

    private address_sha1_hash_pair doRemove(int i) {
        return new address_sha1_hash_pair(libtorrent_jni.address_sha1_hash_pair_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.address_sha1_hash_pair_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.address_sha1_hash_pair_vector_doReserve(this.swigCPtr, this, i);
    }

    private address_sha1_hash_pair doSet(int i, address_sha1_hash_pair address_sha1_hash_pairVar) {
        return new address_sha1_hash_pair(libtorrent_jni.address_sha1_hash_pair_vector_doSet(this.swigCPtr, this, i, address_sha1_hash_pair.getCPtr(address_sha1_hash_pairVar), address_sha1_hash_pairVar), true);
    }

    private int doSize() {
        return libtorrent_jni.address_sha1_hash_pair_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(address_sha1_hash_pair_vector address_sha1_hash_pair_vectorVar) {
        if (address_sha1_hash_pair_vectorVar == null) {
            return 0L;
        }
        return address_sha1_hash_pair_vectorVar.swigCPtr;
    }

    public static long swigRelease(address_sha1_hash_pair_vector address_sha1_hash_pair_vectorVar) {
        if (address_sha1_hash_pair_vectorVar == null) {
            return 0L;
        }
        if (!address_sha1_hash_pair_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = address_sha1_hash_pair_vectorVar.swigCPtr;
        address_sha1_hash_pair_vectorVar.swigCMemOwn = false;
        address_sha1_hash_pair_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.address_sha1_hash_pair_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_address_sha1_hash_pair_vector(j);
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
        return libtorrent_jni.address_sha1_hash_pair_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, address_sha1_hash_pair address_sha1_hash_pairVar) {
        libtorrent_jni.address_sha1_hash_pair_vector_doAdd__SWIG_1(this.swigCPtr, this, i, address_sha1_hash_pair.getCPtr(address_sha1_hash_pairVar), address_sha1_hash_pairVar);
    }

    @Override
    public address_sha1_hash_pair get(int i) {
        return doGet(i);
    }

    @Override
    public address_sha1_hash_pair remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public address_sha1_hash_pair set(int i, address_sha1_hash_pair address_sha1_hash_pairVar) {
        return doSet(i, address_sha1_hash_pairVar);
    }

    @Override
    public boolean add(address_sha1_hash_pair address_sha1_hash_pairVar) {
        ((AbstractList) this).modCount++;
        doAdd(address_sha1_hash_pairVar);
        return true;
    }

    public address_sha1_hash_pair_vector(address_sha1_hash_pair[] address_sha1_hash_pairVarArr) {
        this();
        doReserve(address_sha1_hash_pairVarArr.length);
        for (address_sha1_hash_pair address_sha1_hash_pairVar : address_sha1_hash_pairVarArr) {
            doAdd(address_sha1_hash_pairVar);
        }
    }

    @Override
    public void add(int i, address_sha1_hash_pair address_sha1_hash_pairVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, address_sha1_hash_pairVar);
    }

    public address_sha1_hash_pair_vector(Iterable<address_sha1_hash_pair> iterable) {
        this();
        Iterator<address_sha1_hash_pair> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public address_sha1_hash_pair_vector() {
        this(libtorrent_jni.new_address_sha1_hash_pair_vector__SWIG_0(), true);
    }

    public address_sha1_hash_pair_vector(address_sha1_hash_pair_vector address_sha1_hash_pair_vectorVar) {
        this(libtorrent_jni.new_address_sha1_hash_pair_vector__SWIG_1(getCPtr(address_sha1_hash_pair_vectorVar), address_sha1_hash_pair_vectorVar), true);
    }

    public address_sha1_hash_pair_vector(int i, address_sha1_hash_pair address_sha1_hash_pairVar) {
        this(libtorrent_jni.new_address_sha1_hash_pair_vector__SWIG_2(i, address_sha1_hash_pair.getCPtr(address_sha1_hash_pairVar), address_sha1_hash_pairVar), true);
    }
}
