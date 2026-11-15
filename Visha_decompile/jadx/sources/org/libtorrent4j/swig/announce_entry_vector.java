package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class announce_entry_vector extends AbstractList<announce_entry> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public announce_entry_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(announce_entry announce_entryVar) {
        libtorrent_jni.announce_entry_vector_doAdd__SWIG_0(this.swigCPtr, this, announce_entry.getCPtr(announce_entryVar), announce_entryVar);
    }

    private int doCapacity() {
        return libtorrent_jni.announce_entry_vector_doCapacity(this.swigCPtr, this);
    }

    private announce_entry doGet(int i) {
        return new announce_entry(libtorrent_jni.announce_entry_vector_doGet(this.swigCPtr, this, i), false);
    }

    private announce_entry doRemove(int i) {
        return new announce_entry(libtorrent_jni.announce_entry_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.announce_entry_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.announce_entry_vector_doReserve(this.swigCPtr, this, i);
    }

    private announce_entry doSet(int i, announce_entry announce_entryVar) {
        return new announce_entry(libtorrent_jni.announce_entry_vector_doSet(this.swigCPtr, this, i, announce_entry.getCPtr(announce_entryVar), announce_entryVar), true);
    }

    private int doSize() {
        return libtorrent_jni.announce_entry_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(announce_entry_vector announce_entry_vectorVar) {
        if (announce_entry_vectorVar == null) {
            return 0L;
        }
        return announce_entry_vectorVar.swigCPtr;
    }

    public static long swigRelease(announce_entry_vector announce_entry_vectorVar) {
        if (announce_entry_vectorVar == null) {
            return 0L;
        }
        if (!announce_entry_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = announce_entry_vectorVar.swigCPtr;
        announce_entry_vectorVar.swigCMemOwn = false;
        announce_entry_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.announce_entry_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_announce_entry_vector(j);
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
        return libtorrent_jni.announce_entry_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, announce_entry announce_entryVar) {
        libtorrent_jni.announce_entry_vector_doAdd__SWIG_1(this.swigCPtr, this, i, announce_entry.getCPtr(announce_entryVar), announce_entryVar);
    }

    @Override
    public announce_entry get(int i) {
        return doGet(i);
    }

    @Override
    public announce_entry remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public announce_entry set(int i, announce_entry announce_entryVar) {
        return doSet(i, announce_entryVar);
    }

    @Override
    public boolean add(announce_entry announce_entryVar) {
        ((AbstractList) this).modCount++;
        doAdd(announce_entryVar);
        return true;
    }

    public announce_entry_vector(announce_entry[] announce_entryVarArr) {
        this();
        doReserve(announce_entryVarArr.length);
        for (announce_entry announce_entryVar : announce_entryVarArr) {
            doAdd(announce_entryVar);
        }
    }

    @Override
    public void add(int i, announce_entry announce_entryVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, announce_entryVar);
    }

    public announce_entry_vector(Iterable<announce_entry> iterable) {
        this();
        Iterator<announce_entry> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public announce_entry_vector() {
        this(libtorrent_jni.new_announce_entry_vector__SWIG_0(), true);
    }

    public announce_entry_vector(announce_entry_vector announce_entry_vectorVar) {
        this(libtorrent_jni.new_announce_entry_vector__SWIG_1(getCPtr(announce_entry_vectorVar), announce_entry_vectorVar), true);
    }

    public announce_entry_vector(int i, announce_entry announce_entryVar) {
        this(libtorrent_jni.new_announce_entry_vector__SWIG_2(i, announce_entry.getCPtr(announce_entryVar), announce_entryVar), true);
    }
}
