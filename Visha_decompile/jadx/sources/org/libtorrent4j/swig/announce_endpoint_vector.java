package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class announce_endpoint_vector extends AbstractList<announce_endpoint> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public announce_endpoint_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(announce_endpoint announce_endpointVar) {
        libtorrent_jni.announce_endpoint_vector_doAdd__SWIG_0(this.swigCPtr, this, announce_endpoint.getCPtr(announce_endpointVar), announce_endpointVar);
    }

    private int doCapacity() {
        return libtorrent_jni.announce_endpoint_vector_doCapacity(this.swigCPtr, this);
    }

    private announce_endpoint doGet(int i) {
        return new announce_endpoint(libtorrent_jni.announce_endpoint_vector_doGet(this.swigCPtr, this, i), false);
    }

    private announce_endpoint doRemove(int i) {
        return new announce_endpoint(libtorrent_jni.announce_endpoint_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.announce_endpoint_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.announce_endpoint_vector_doReserve(this.swigCPtr, this, i);
    }

    private announce_endpoint doSet(int i, announce_endpoint announce_endpointVar) {
        return new announce_endpoint(libtorrent_jni.announce_endpoint_vector_doSet(this.swigCPtr, this, i, announce_endpoint.getCPtr(announce_endpointVar), announce_endpointVar), true);
    }

    private int doSize() {
        return libtorrent_jni.announce_endpoint_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(announce_endpoint_vector announce_endpoint_vectorVar) {
        if (announce_endpoint_vectorVar == null) {
            return 0L;
        }
        return announce_endpoint_vectorVar.swigCPtr;
    }

    public static long swigRelease(announce_endpoint_vector announce_endpoint_vectorVar) {
        if (announce_endpoint_vectorVar == null) {
            return 0L;
        }
        if (!announce_endpoint_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = announce_endpoint_vectorVar.swigCPtr;
        announce_endpoint_vectorVar.swigCMemOwn = false;
        announce_endpoint_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.announce_endpoint_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_announce_endpoint_vector(j);
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
        return libtorrent_jni.announce_endpoint_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, announce_endpoint announce_endpointVar) {
        libtorrent_jni.announce_endpoint_vector_doAdd__SWIG_1(this.swigCPtr, this, i, announce_endpoint.getCPtr(announce_endpointVar), announce_endpointVar);
    }

    @Override
    public announce_endpoint get(int i) {
        return doGet(i);
    }

    @Override
    public announce_endpoint remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public announce_endpoint set(int i, announce_endpoint announce_endpointVar) {
        return doSet(i, announce_endpointVar);
    }

    @Override
    public boolean add(announce_endpoint announce_endpointVar) {
        ((AbstractList) this).modCount++;
        doAdd(announce_endpointVar);
        return true;
    }

    public announce_endpoint_vector(announce_endpoint[] announce_endpointVarArr) {
        this();
        doReserve(announce_endpointVarArr.length);
        for (announce_endpoint announce_endpointVar : announce_endpointVarArr) {
            doAdd(announce_endpointVar);
        }
    }

    @Override
    public void add(int i, announce_endpoint announce_endpointVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, announce_endpointVar);
    }

    public announce_endpoint_vector(Iterable<announce_endpoint> iterable) {
        this();
        Iterator<announce_endpoint> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public announce_endpoint_vector() {
        this(libtorrent_jni.new_announce_endpoint_vector__SWIG_0(), true);
    }

    public announce_endpoint_vector(announce_endpoint_vector announce_endpoint_vectorVar) {
        this(libtorrent_jni.new_announce_endpoint_vector__SWIG_1(getCPtr(announce_endpoint_vectorVar), announce_endpoint_vectorVar), true);
    }

    public announce_endpoint_vector(int i, announce_endpoint announce_endpointVar) {
        this(libtorrent_jni.new_announce_endpoint_vector__SWIG_2(i, announce_endpoint.getCPtr(announce_endpointVar), announce_endpointVar), true);
    }
}
