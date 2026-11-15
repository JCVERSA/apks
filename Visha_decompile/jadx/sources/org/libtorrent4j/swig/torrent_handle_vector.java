package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class torrent_handle_vector extends AbstractList<torrent_handle> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public torrent_handle_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(torrent_handle torrent_handleVar) {
        libtorrent_jni.torrent_handle_vector_doAdd__SWIG_0(this.swigCPtr, this, torrent_handle.getCPtr(torrent_handleVar), torrent_handleVar);
    }

    private int doCapacity() {
        return libtorrent_jni.torrent_handle_vector_doCapacity(this.swigCPtr, this);
    }

    private torrent_handle doGet(int i) {
        return new torrent_handle(libtorrent_jni.torrent_handle_vector_doGet(this.swigCPtr, this, i), false);
    }

    private torrent_handle doRemove(int i) {
        return new torrent_handle(libtorrent_jni.torrent_handle_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.torrent_handle_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.torrent_handle_vector_doReserve(this.swigCPtr, this, i);
    }

    private torrent_handle doSet(int i, torrent_handle torrent_handleVar) {
        return new torrent_handle(libtorrent_jni.torrent_handle_vector_doSet(this.swigCPtr, this, i, torrent_handle.getCPtr(torrent_handleVar), torrent_handleVar), true);
    }

    private int doSize() {
        return libtorrent_jni.torrent_handle_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(torrent_handle_vector torrent_handle_vectorVar) {
        if (torrent_handle_vectorVar == null) {
            return 0L;
        }
        return torrent_handle_vectorVar.swigCPtr;
    }

    public static long swigRelease(torrent_handle_vector torrent_handle_vectorVar) {
        if (torrent_handle_vectorVar == null) {
            return 0L;
        }
        if (!torrent_handle_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = torrent_handle_vectorVar.swigCPtr;
        torrent_handle_vectorVar.swigCMemOwn = false;
        torrent_handle_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.torrent_handle_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_torrent_handle_vector(j);
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
        return libtorrent_jni.torrent_handle_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, torrent_handle torrent_handleVar) {
        libtorrent_jni.torrent_handle_vector_doAdd__SWIG_1(this.swigCPtr, this, i, torrent_handle.getCPtr(torrent_handleVar), torrent_handleVar);
    }

    @Override
    public torrent_handle get(int i) {
        return doGet(i);
    }

    @Override
    public torrent_handle remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public torrent_handle set(int i, torrent_handle torrent_handleVar) {
        return doSet(i, torrent_handleVar);
    }

    @Override
    public boolean add(torrent_handle torrent_handleVar) {
        ((AbstractList) this).modCount++;
        doAdd(torrent_handleVar);
        return true;
    }

    public torrent_handle_vector(torrent_handle[] torrent_handleVarArr) {
        this();
        doReserve(torrent_handleVarArr.length);
        for (torrent_handle torrent_handleVar : torrent_handleVarArr) {
            doAdd(torrent_handleVar);
        }
    }

    @Override
    public void add(int i, torrent_handle torrent_handleVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, torrent_handleVar);
    }

    public torrent_handle_vector(Iterable<torrent_handle> iterable) {
        this();
        Iterator<torrent_handle> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public torrent_handle_vector() {
        this(libtorrent_jni.new_torrent_handle_vector__SWIG_0(), true);
    }

    public torrent_handle_vector(torrent_handle_vector torrent_handle_vectorVar) {
        this(libtorrent_jni.new_torrent_handle_vector__SWIG_1(getCPtr(torrent_handle_vectorVar), torrent_handle_vectorVar), true);
    }

    public torrent_handle_vector(int i, torrent_handle torrent_handleVar) {
        this(libtorrent_jni.new_torrent_handle_vector__SWIG_2(i, torrent_handle.getCPtr(torrent_handleVar), torrent_handleVar), true);
    }
}
