package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class dht_lookup_vector extends AbstractList<dht_lookup> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public dht_lookup_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(dht_lookup dht_lookupVar) {
        libtorrent_jni.dht_lookup_vector_doAdd__SWIG_0(this.swigCPtr, this, dht_lookup.getCPtr(dht_lookupVar), dht_lookupVar);
    }

    private int doCapacity() {
        return libtorrent_jni.dht_lookup_vector_doCapacity(this.swigCPtr, this);
    }

    private dht_lookup doGet(int i) {
        return new dht_lookup(libtorrent_jni.dht_lookup_vector_doGet(this.swigCPtr, this, i), false);
    }

    private dht_lookup doRemove(int i) {
        return new dht_lookup(libtorrent_jni.dht_lookup_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.dht_lookup_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.dht_lookup_vector_doReserve(this.swigCPtr, this, i);
    }

    private dht_lookup doSet(int i, dht_lookup dht_lookupVar) {
        return new dht_lookup(libtorrent_jni.dht_lookup_vector_doSet(this.swigCPtr, this, i, dht_lookup.getCPtr(dht_lookupVar), dht_lookupVar), true);
    }

    private int doSize() {
        return libtorrent_jni.dht_lookup_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(dht_lookup_vector dht_lookup_vectorVar) {
        if (dht_lookup_vectorVar == null) {
            return 0L;
        }
        return dht_lookup_vectorVar.swigCPtr;
    }

    public static long swigRelease(dht_lookup_vector dht_lookup_vectorVar) {
        if (dht_lookup_vectorVar == null) {
            return 0L;
        }
        if (!dht_lookup_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = dht_lookup_vectorVar.swigCPtr;
        dht_lookup_vectorVar.swigCMemOwn = false;
        dht_lookup_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.dht_lookup_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_dht_lookup_vector(j);
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
        return libtorrent_jni.dht_lookup_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, dht_lookup dht_lookupVar) {
        libtorrent_jni.dht_lookup_vector_doAdd__SWIG_1(this.swigCPtr, this, i, dht_lookup.getCPtr(dht_lookupVar), dht_lookupVar);
    }

    @Override
    public dht_lookup get(int i) {
        return doGet(i);
    }

    @Override
    public dht_lookup remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public dht_lookup set(int i, dht_lookup dht_lookupVar) {
        return doSet(i, dht_lookupVar);
    }

    @Override
    public boolean add(dht_lookup dht_lookupVar) {
        ((AbstractList) this).modCount++;
        doAdd(dht_lookupVar);
        return true;
    }

    public dht_lookup_vector(dht_lookup[] dht_lookupVarArr) {
        this();
        doReserve(dht_lookupVarArr.length);
        for (dht_lookup dht_lookupVar : dht_lookupVarArr) {
            doAdd(dht_lookupVar);
        }
    }

    @Override
    public void add(int i, dht_lookup dht_lookupVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, dht_lookupVar);
    }

    public dht_lookup_vector(Iterable<dht_lookup> iterable) {
        this();
        Iterator<dht_lookup> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public dht_lookup_vector() {
        this(libtorrent_jni.new_dht_lookup_vector__SWIG_0(), true);
    }

    public dht_lookup_vector(dht_lookup_vector dht_lookup_vectorVar) {
        this(libtorrent_jni.new_dht_lookup_vector__SWIG_1(getCPtr(dht_lookup_vectorVar), dht_lookup_vectorVar), true);
    }

    public dht_lookup_vector(int i, dht_lookup dht_lookupVar) {
        this(libtorrent_jni.new_dht_lookup_vector__SWIG_2(i, dht_lookup.getCPtr(dht_lookupVar), dht_lookupVar), true);
    }
}
