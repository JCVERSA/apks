package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class ip_route_vector extends AbstractList<ip_route> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public ip_route_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(ip_route ip_routeVar) {
        libtorrent_jni.ip_route_vector_doAdd__SWIG_0(this.swigCPtr, this, ip_route.getCPtr(ip_routeVar), ip_routeVar);
    }

    private int doCapacity() {
        return libtorrent_jni.ip_route_vector_doCapacity(this.swigCPtr, this);
    }

    private ip_route doGet(int i) {
        return new ip_route(libtorrent_jni.ip_route_vector_doGet(this.swigCPtr, this, i), false);
    }

    private ip_route doRemove(int i) {
        return new ip_route(libtorrent_jni.ip_route_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.ip_route_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.ip_route_vector_doReserve(this.swigCPtr, this, i);
    }

    private ip_route doSet(int i, ip_route ip_routeVar) {
        return new ip_route(libtorrent_jni.ip_route_vector_doSet(this.swigCPtr, this, i, ip_route.getCPtr(ip_routeVar), ip_routeVar), true);
    }

    private int doSize() {
        return libtorrent_jni.ip_route_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(ip_route_vector ip_route_vectorVar) {
        if (ip_route_vectorVar == null) {
            return 0L;
        }
        return ip_route_vectorVar.swigCPtr;
    }

    public static long swigRelease(ip_route_vector ip_route_vectorVar) {
        if (ip_route_vectorVar == null) {
            return 0L;
        }
        if (!ip_route_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = ip_route_vectorVar.swigCPtr;
        ip_route_vectorVar.swigCMemOwn = false;
        ip_route_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.ip_route_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_ip_route_vector(j);
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
        return libtorrent_jni.ip_route_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, ip_route ip_routeVar) {
        libtorrent_jni.ip_route_vector_doAdd__SWIG_1(this.swigCPtr, this, i, ip_route.getCPtr(ip_routeVar), ip_routeVar);
    }

    @Override
    public ip_route get(int i) {
        return doGet(i);
    }

    @Override
    public ip_route remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public ip_route set(int i, ip_route ip_routeVar) {
        return doSet(i, ip_routeVar);
    }

    @Override
    public boolean add(ip_route ip_routeVar) {
        ((AbstractList) this).modCount++;
        doAdd(ip_routeVar);
        return true;
    }

    public ip_route_vector(ip_route[] ip_routeVarArr) {
        this();
        doReserve(ip_routeVarArr.length);
        for (ip_route ip_routeVar : ip_routeVarArr) {
            doAdd(ip_routeVar);
        }
    }

    @Override
    public void add(int i, ip_route ip_routeVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, ip_routeVar);
    }

    public ip_route_vector(Iterable<ip_route> iterable) {
        this();
        Iterator<ip_route> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public ip_route_vector() {
        this(libtorrent_jni.new_ip_route_vector__SWIG_0(), true);
    }

    public ip_route_vector(ip_route_vector ip_route_vectorVar) {
        this(libtorrent_jni.new_ip_route_vector__SWIG_1(getCPtr(ip_route_vectorVar), ip_route_vectorVar), true);
    }

    public ip_route_vector(int i, ip_route ip_routeVar) {
        this(libtorrent_jni.new_ip_route_vector__SWIG_2(i, ip_route.getCPtr(ip_routeVar), ip_routeVar), true);
    }
}
