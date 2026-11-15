package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class udp_endpoint_vector extends AbstractList<udp_endpoint> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public udp_endpoint_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(udp_endpoint udp_endpointVar) {
        libtorrent_jni.udp_endpoint_vector_doAdd__SWIG_0(this.swigCPtr, this, udp_endpoint.getCPtr(udp_endpointVar), udp_endpointVar);
    }

    private int doCapacity() {
        return libtorrent_jni.udp_endpoint_vector_doCapacity(this.swigCPtr, this);
    }

    private udp_endpoint doGet(int i) {
        return new udp_endpoint(libtorrent_jni.udp_endpoint_vector_doGet(this.swigCPtr, this, i), false);
    }

    private udp_endpoint doRemove(int i) {
        return new udp_endpoint(libtorrent_jni.udp_endpoint_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.udp_endpoint_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.udp_endpoint_vector_doReserve(this.swigCPtr, this, i);
    }

    private udp_endpoint doSet(int i, udp_endpoint udp_endpointVar) {
        return new udp_endpoint(libtorrent_jni.udp_endpoint_vector_doSet(this.swigCPtr, this, i, udp_endpoint.getCPtr(udp_endpointVar), udp_endpointVar), true);
    }

    private int doSize() {
        return libtorrent_jni.udp_endpoint_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(udp_endpoint_vector udp_endpoint_vectorVar) {
        if (udp_endpoint_vectorVar == null) {
            return 0L;
        }
        return udp_endpoint_vectorVar.swigCPtr;
    }

    public static long swigRelease(udp_endpoint_vector udp_endpoint_vectorVar) {
        if (udp_endpoint_vectorVar == null) {
            return 0L;
        }
        if (!udp_endpoint_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = udp_endpoint_vectorVar.swigCPtr;
        udp_endpoint_vectorVar.swigCMemOwn = false;
        udp_endpoint_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.udp_endpoint_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_udp_endpoint_vector(j);
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
        return libtorrent_jni.udp_endpoint_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, udp_endpoint udp_endpointVar) {
        libtorrent_jni.udp_endpoint_vector_doAdd__SWIG_1(this.swigCPtr, this, i, udp_endpoint.getCPtr(udp_endpointVar), udp_endpointVar);
    }

    @Override
    public udp_endpoint get(int i) {
        return doGet(i);
    }

    @Override
    public udp_endpoint remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public udp_endpoint set(int i, udp_endpoint udp_endpointVar) {
        return doSet(i, udp_endpointVar);
    }

    @Override
    public boolean add(udp_endpoint udp_endpointVar) {
        ((AbstractList) this).modCount++;
        doAdd(udp_endpointVar);
        return true;
    }

    public udp_endpoint_vector(udp_endpoint[] udp_endpointVarArr) {
        this();
        doReserve(udp_endpointVarArr.length);
        for (udp_endpoint udp_endpointVar : udp_endpointVarArr) {
            doAdd(udp_endpointVar);
        }
    }

    @Override
    public void add(int i, udp_endpoint udp_endpointVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, udp_endpointVar);
    }

    public udp_endpoint_vector(Iterable<udp_endpoint> iterable) {
        this();
        Iterator<udp_endpoint> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public udp_endpoint_vector() {
        this(libtorrent_jni.new_udp_endpoint_vector__SWIG_0(), true);
    }

    public udp_endpoint_vector(udp_endpoint_vector udp_endpoint_vectorVar) {
        this(libtorrent_jni.new_udp_endpoint_vector__SWIG_1(getCPtr(udp_endpoint_vectorVar), udp_endpoint_vectorVar), true);
    }

    public udp_endpoint_vector(int i, udp_endpoint udp_endpointVar) {
        this(libtorrent_jni.new_udp_endpoint_vector__SWIG_2(i, udp_endpoint.getCPtr(udp_endpointVar), udp_endpointVar), true);
    }
}
