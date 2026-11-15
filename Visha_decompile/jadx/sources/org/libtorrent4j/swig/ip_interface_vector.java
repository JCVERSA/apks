package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class ip_interface_vector extends AbstractList<ip_interface> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public ip_interface_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(ip_interface ip_interfaceVar) {
        libtorrent_jni.ip_interface_vector_doAdd__SWIG_0(this.swigCPtr, this, ip_interface.getCPtr(ip_interfaceVar), ip_interfaceVar);
    }

    private int doCapacity() {
        return libtorrent_jni.ip_interface_vector_doCapacity(this.swigCPtr, this);
    }

    private ip_interface doGet(int i) {
        return new ip_interface(libtorrent_jni.ip_interface_vector_doGet(this.swigCPtr, this, i), false);
    }

    private ip_interface doRemove(int i) {
        return new ip_interface(libtorrent_jni.ip_interface_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.ip_interface_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.ip_interface_vector_doReserve(this.swigCPtr, this, i);
    }

    private ip_interface doSet(int i, ip_interface ip_interfaceVar) {
        return new ip_interface(libtorrent_jni.ip_interface_vector_doSet(this.swigCPtr, this, i, ip_interface.getCPtr(ip_interfaceVar), ip_interfaceVar), true);
    }

    private int doSize() {
        return libtorrent_jni.ip_interface_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(ip_interface_vector ip_interface_vectorVar) {
        if (ip_interface_vectorVar == null) {
            return 0L;
        }
        return ip_interface_vectorVar.swigCPtr;
    }

    public static long swigRelease(ip_interface_vector ip_interface_vectorVar) {
        if (ip_interface_vectorVar == null) {
            return 0L;
        }
        if (!ip_interface_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = ip_interface_vectorVar.swigCPtr;
        ip_interface_vectorVar.swigCMemOwn = false;
        ip_interface_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.ip_interface_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_ip_interface_vector(j);
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
        return libtorrent_jni.ip_interface_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, ip_interface ip_interfaceVar) {
        libtorrent_jni.ip_interface_vector_doAdd__SWIG_1(this.swigCPtr, this, i, ip_interface.getCPtr(ip_interfaceVar), ip_interfaceVar);
    }

    @Override
    public ip_interface get(int i) {
        return doGet(i);
    }

    @Override
    public ip_interface remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public ip_interface set(int i, ip_interface ip_interfaceVar) {
        return doSet(i, ip_interfaceVar);
    }

    @Override
    public boolean add(ip_interface ip_interfaceVar) {
        ((AbstractList) this).modCount++;
        doAdd(ip_interfaceVar);
        return true;
    }

    public ip_interface_vector(ip_interface[] ip_interfaceVarArr) {
        this();
        doReserve(ip_interfaceVarArr.length);
        for (ip_interface ip_interfaceVar : ip_interfaceVarArr) {
            doAdd(ip_interfaceVar);
        }
    }

    @Override
    public void add(int i, ip_interface ip_interfaceVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, ip_interfaceVar);
    }

    public ip_interface_vector(Iterable<ip_interface> iterable) {
        this();
        Iterator<ip_interface> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public ip_interface_vector() {
        this(libtorrent_jni.new_ip_interface_vector__SWIG_0(), true);
    }

    public ip_interface_vector(ip_interface_vector ip_interface_vectorVar) {
        this(libtorrent_jni.new_ip_interface_vector__SWIG_1(getCPtr(ip_interface_vectorVar), ip_interface_vectorVar), true);
    }

    public ip_interface_vector(int i, ip_interface ip_interfaceVar) {
        this(libtorrent_jni.new_ip_interface_vector__SWIG_2(i, ip_interface.getCPtr(ip_interfaceVar), ip_interfaceVar), true);
    }
}
