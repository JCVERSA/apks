package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class torrent_status_vector extends AbstractList<torrent_status> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public torrent_status_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(torrent_status torrent_statusVar) {
        libtorrent_jni.torrent_status_vector_doAdd__SWIG_0(this.swigCPtr, this, torrent_status.getCPtr(torrent_statusVar), torrent_statusVar);
    }

    private int doCapacity() {
        return libtorrent_jni.torrent_status_vector_doCapacity(this.swigCPtr, this);
    }

    private torrent_status doGet(int i) {
        return new torrent_status(libtorrent_jni.torrent_status_vector_doGet(this.swigCPtr, this, i), false);
    }

    private torrent_status doRemove(int i) {
        return new torrent_status(libtorrent_jni.torrent_status_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.torrent_status_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.torrent_status_vector_doReserve(this.swigCPtr, this, i);
    }

    private torrent_status doSet(int i, torrent_status torrent_statusVar) {
        return new torrent_status(libtorrent_jni.torrent_status_vector_doSet(this.swigCPtr, this, i, torrent_status.getCPtr(torrent_statusVar), torrent_statusVar), true);
    }

    private int doSize() {
        return libtorrent_jni.torrent_status_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(torrent_status_vector torrent_status_vectorVar) {
        if (torrent_status_vectorVar == null) {
            return 0L;
        }
        return torrent_status_vectorVar.swigCPtr;
    }

    public static long swigRelease(torrent_status_vector torrent_status_vectorVar) {
        if (torrent_status_vectorVar == null) {
            return 0L;
        }
        if (!torrent_status_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = torrent_status_vectorVar.swigCPtr;
        torrent_status_vectorVar.swigCMemOwn = false;
        torrent_status_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.torrent_status_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_torrent_status_vector(j);
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
        return libtorrent_jni.torrent_status_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, torrent_status torrent_statusVar) {
        libtorrent_jni.torrent_status_vector_doAdd__SWIG_1(this.swigCPtr, this, i, torrent_status.getCPtr(torrent_statusVar), torrent_statusVar);
    }

    @Override
    public torrent_status get(int i) {
        return doGet(i);
    }

    @Override
    public torrent_status remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public torrent_status set(int i, torrent_status torrent_statusVar) {
        return doSet(i, torrent_statusVar);
    }

    @Override
    public boolean add(torrent_status torrent_statusVar) {
        ((AbstractList) this).modCount++;
        doAdd(torrent_statusVar);
        return true;
    }

    public torrent_status_vector(torrent_status[] torrent_statusVarArr) {
        this();
        doReserve(torrent_statusVarArr.length);
        for (torrent_status torrent_statusVar : torrent_statusVarArr) {
            doAdd(torrent_statusVar);
        }
    }

    @Override
    public void add(int i, torrent_status torrent_statusVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, torrent_statusVar);
    }

    public torrent_status_vector(Iterable<torrent_status> iterable) {
        this();
        Iterator<torrent_status> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public torrent_status_vector() {
        this(libtorrent_jni.new_torrent_status_vector__SWIG_0(), true);
    }

    public torrent_status_vector(torrent_status_vector torrent_status_vectorVar) {
        this(libtorrent_jni.new_torrent_status_vector__SWIG_1(getCPtr(torrent_status_vectorVar), torrent_status_vectorVar), true);
    }

    public torrent_status_vector(int i, torrent_status torrent_statusVar) {
        this(libtorrent_jni.new_torrent_status_vector__SWIG_2(i, torrent_status.getCPtr(torrent_statusVar), torrent_statusVar), true);
    }
}
