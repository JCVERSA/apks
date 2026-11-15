package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class tcp_endpoint_vector extends AbstractList<tcp_endpoint> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public tcp_endpoint_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(tcp_endpoint tcp_endpointVar) {
        libtorrent_jni.tcp_endpoint_vector_doAdd__SWIG_0(this.swigCPtr, this, tcp_endpoint.getCPtr(tcp_endpointVar), tcp_endpointVar);
    }

    private int doCapacity() {
        return libtorrent_jni.tcp_endpoint_vector_doCapacity(this.swigCPtr, this);
    }

    private tcp_endpoint doGet(int i) {
        return new tcp_endpoint(libtorrent_jni.tcp_endpoint_vector_doGet(this.swigCPtr, this, i), false);
    }

    private tcp_endpoint doRemove(int i) {
        return new tcp_endpoint(libtorrent_jni.tcp_endpoint_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.tcp_endpoint_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.tcp_endpoint_vector_doReserve(this.swigCPtr, this, i);
    }

    private tcp_endpoint doSet(int i, tcp_endpoint tcp_endpointVar) {
        return new tcp_endpoint(libtorrent_jni.tcp_endpoint_vector_doSet(this.swigCPtr, this, i, tcp_endpoint.getCPtr(tcp_endpointVar), tcp_endpointVar), true);
    }

    private int doSize() {
        return libtorrent_jni.tcp_endpoint_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(tcp_endpoint_vector tcp_endpoint_vectorVar) {
        if (tcp_endpoint_vectorVar == null) {
            return 0L;
        }
        return tcp_endpoint_vectorVar.swigCPtr;
    }

    public static long swigRelease(tcp_endpoint_vector tcp_endpoint_vectorVar) {
        if (tcp_endpoint_vectorVar == null) {
            return 0L;
        }
        if (!tcp_endpoint_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = tcp_endpoint_vectorVar.swigCPtr;
        tcp_endpoint_vectorVar.swigCMemOwn = false;
        tcp_endpoint_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.tcp_endpoint_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_tcp_endpoint_vector(j);
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
        return libtorrent_jni.tcp_endpoint_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, tcp_endpoint tcp_endpointVar) {
        libtorrent_jni.tcp_endpoint_vector_doAdd__SWIG_1(this.swigCPtr, this, i, tcp_endpoint.getCPtr(tcp_endpointVar), tcp_endpointVar);
    }

    @Override
    public tcp_endpoint get(int i) {
        return doGet(i);
    }

    @Override
    public tcp_endpoint remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public tcp_endpoint set(int i, tcp_endpoint tcp_endpointVar) {
        return doSet(i, tcp_endpointVar);
    }

    @Override
    public boolean add(tcp_endpoint tcp_endpointVar) {
        ((AbstractList) this).modCount++;
        doAdd(tcp_endpointVar);
        return true;
    }

    public tcp_endpoint_vector(tcp_endpoint[] tcp_endpointVarArr) {
        this();
        doReserve(tcp_endpointVarArr.length);
        for (tcp_endpoint tcp_endpointVar : tcp_endpointVarArr) {
            doAdd(tcp_endpointVar);
        }
    }

    @Override
    public void add(int i, tcp_endpoint tcp_endpointVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, tcp_endpointVar);
    }

    public tcp_endpoint_vector(Iterable<tcp_endpoint> iterable) {
        this();
        Iterator<tcp_endpoint> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public tcp_endpoint_vector() {
        this(libtorrent_jni.new_tcp_endpoint_vector__SWIG_0(), true);
    }

    public tcp_endpoint_vector(tcp_endpoint_vector tcp_endpoint_vectorVar) {
        this(libtorrent_jni.new_tcp_endpoint_vector__SWIG_1(getCPtr(tcp_endpoint_vectorVar), tcp_endpoint_vectorVar), true);
    }

    public tcp_endpoint_vector(int i, tcp_endpoint tcp_endpointVar) {
        this(libtorrent_jni.new_tcp_endpoint_vector__SWIG_2(i, tcp_endpoint.getCPtr(tcp_endpointVar), tcp_endpointVar), true);
    }
}
