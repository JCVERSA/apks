package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class peer_info_vector extends AbstractList<peer_info> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public peer_info_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(peer_info peer_infoVar) {
        libtorrent_jni.peer_info_vector_doAdd__SWIG_0(this.swigCPtr, this, peer_info.getCPtr(peer_infoVar), peer_infoVar);
    }

    private int doCapacity() {
        return libtorrent_jni.peer_info_vector_doCapacity(this.swigCPtr, this);
    }

    private peer_info doGet(int i) {
        return new peer_info(libtorrent_jni.peer_info_vector_doGet(this.swigCPtr, this, i), false);
    }

    private peer_info doRemove(int i) {
        return new peer_info(libtorrent_jni.peer_info_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.peer_info_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.peer_info_vector_doReserve(this.swigCPtr, this, i);
    }

    private peer_info doSet(int i, peer_info peer_infoVar) {
        return new peer_info(libtorrent_jni.peer_info_vector_doSet(this.swigCPtr, this, i, peer_info.getCPtr(peer_infoVar), peer_infoVar), true);
    }

    private int doSize() {
        return libtorrent_jni.peer_info_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(peer_info_vector peer_info_vectorVar) {
        if (peer_info_vectorVar == null) {
            return 0L;
        }
        return peer_info_vectorVar.swigCPtr;
    }

    public static long swigRelease(peer_info_vector peer_info_vectorVar) {
        if (peer_info_vectorVar == null) {
            return 0L;
        }
        if (!peer_info_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = peer_info_vectorVar.swigCPtr;
        peer_info_vectorVar.swigCMemOwn = false;
        peer_info_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.peer_info_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_peer_info_vector(j);
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
        return libtorrent_jni.peer_info_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, peer_info peer_infoVar) {
        libtorrent_jni.peer_info_vector_doAdd__SWIG_1(this.swigCPtr, this, i, peer_info.getCPtr(peer_infoVar), peer_infoVar);
    }

    @Override
    public peer_info get(int i) {
        return doGet(i);
    }

    @Override
    public peer_info remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public peer_info set(int i, peer_info peer_infoVar) {
        return doSet(i, peer_infoVar);
    }

    @Override
    public boolean add(peer_info peer_infoVar) {
        ((AbstractList) this).modCount++;
        doAdd(peer_infoVar);
        return true;
    }

    public peer_info_vector(peer_info[] peer_infoVarArr) {
        this();
        doReserve(peer_infoVarArr.length);
        for (peer_info peer_infoVar : peer_infoVarArr) {
            doAdd(peer_infoVar);
        }
    }

    @Override
    public void add(int i, peer_info peer_infoVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, peer_infoVar);
    }

    public peer_info_vector(Iterable<peer_info> iterable) {
        this();
        Iterator<peer_info> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public peer_info_vector() {
        this(libtorrent_jni.new_peer_info_vector__SWIG_0(), true);
    }

    public peer_info_vector(peer_info_vector peer_info_vectorVar) {
        this(libtorrent_jni.new_peer_info_vector__SWIG_1(getCPtr(peer_info_vectorVar), peer_info_vectorVar), true);
    }

    public peer_info_vector(int i, peer_info peer_infoVar) {
        this(libtorrent_jni.new_peer_info_vector__SWIG_2(i, peer_info.getCPtr(peer_infoVar), peer_infoVar), true);
    }
}
