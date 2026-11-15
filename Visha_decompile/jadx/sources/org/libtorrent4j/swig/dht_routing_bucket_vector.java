package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class dht_routing_bucket_vector extends AbstractList<dht_routing_bucket> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public dht_routing_bucket_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(dht_routing_bucket dht_routing_bucketVar) {
        libtorrent_jni.dht_routing_bucket_vector_doAdd__SWIG_0(this.swigCPtr, this, dht_routing_bucket.getCPtr(dht_routing_bucketVar), dht_routing_bucketVar);
    }

    private int doCapacity() {
        return libtorrent_jni.dht_routing_bucket_vector_doCapacity(this.swigCPtr, this);
    }

    private dht_routing_bucket doGet(int i) {
        return new dht_routing_bucket(libtorrent_jni.dht_routing_bucket_vector_doGet(this.swigCPtr, this, i), false);
    }

    private dht_routing_bucket doRemove(int i) {
        return new dht_routing_bucket(libtorrent_jni.dht_routing_bucket_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.dht_routing_bucket_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.dht_routing_bucket_vector_doReserve(this.swigCPtr, this, i);
    }

    private dht_routing_bucket doSet(int i, dht_routing_bucket dht_routing_bucketVar) {
        return new dht_routing_bucket(libtorrent_jni.dht_routing_bucket_vector_doSet(this.swigCPtr, this, i, dht_routing_bucket.getCPtr(dht_routing_bucketVar), dht_routing_bucketVar), true);
    }

    private int doSize() {
        return libtorrent_jni.dht_routing_bucket_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(dht_routing_bucket_vector dht_routing_bucket_vectorVar) {
        if (dht_routing_bucket_vectorVar == null) {
            return 0L;
        }
        return dht_routing_bucket_vectorVar.swigCPtr;
    }

    public static long swigRelease(dht_routing_bucket_vector dht_routing_bucket_vectorVar) {
        if (dht_routing_bucket_vectorVar == null) {
            return 0L;
        }
        if (!dht_routing_bucket_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = dht_routing_bucket_vectorVar.swigCPtr;
        dht_routing_bucket_vectorVar.swigCMemOwn = false;
        dht_routing_bucket_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.dht_routing_bucket_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_dht_routing_bucket_vector(j);
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
        return libtorrent_jni.dht_routing_bucket_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, dht_routing_bucket dht_routing_bucketVar) {
        libtorrent_jni.dht_routing_bucket_vector_doAdd__SWIG_1(this.swigCPtr, this, i, dht_routing_bucket.getCPtr(dht_routing_bucketVar), dht_routing_bucketVar);
    }

    @Override
    public dht_routing_bucket get(int i) {
        return doGet(i);
    }

    @Override
    public dht_routing_bucket remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public dht_routing_bucket set(int i, dht_routing_bucket dht_routing_bucketVar) {
        return doSet(i, dht_routing_bucketVar);
    }

    @Override
    public boolean add(dht_routing_bucket dht_routing_bucketVar) {
        ((AbstractList) this).modCount++;
        doAdd(dht_routing_bucketVar);
        return true;
    }

    public dht_routing_bucket_vector(dht_routing_bucket[] dht_routing_bucketVarArr) {
        this();
        doReserve(dht_routing_bucketVarArr.length);
        for (dht_routing_bucket dht_routing_bucketVar : dht_routing_bucketVarArr) {
            doAdd(dht_routing_bucketVar);
        }
    }

    @Override
    public void add(int i, dht_routing_bucket dht_routing_bucketVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, dht_routing_bucketVar);
    }

    public dht_routing_bucket_vector(Iterable<dht_routing_bucket> iterable) {
        this();
        Iterator<dht_routing_bucket> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public dht_routing_bucket_vector() {
        this(libtorrent_jni.new_dht_routing_bucket_vector__SWIG_0(), true);
    }

    public dht_routing_bucket_vector(dht_routing_bucket_vector dht_routing_bucket_vectorVar) {
        this(libtorrent_jni.new_dht_routing_bucket_vector__SWIG_1(getCPtr(dht_routing_bucket_vectorVar), dht_routing_bucket_vectorVar), true);
    }

    public dht_routing_bucket_vector(int i, dht_routing_bucket dht_routing_bucketVar) {
        this(libtorrent_jni.new_dht_routing_bucket_vector__SWIG_2(i, dht_routing_bucket.getCPtr(dht_routing_bucketVar), dht_routing_bucketVar), true);
    }
}
