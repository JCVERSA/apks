package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class entry_vector extends AbstractList<entry> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public entry_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(entry entryVar) {
        libtorrent_jni.entry_vector_doAdd__SWIG_0(this.swigCPtr, this, entry.getCPtr(entryVar), entryVar);
    }

    private int doCapacity() {
        return libtorrent_jni.entry_vector_doCapacity(this.swigCPtr, this);
    }

    private entry doGet(int i) {
        return new entry(libtorrent_jni.entry_vector_doGet(this.swigCPtr, this, i), false);
    }

    private entry doRemove(int i) {
        return new entry(libtorrent_jni.entry_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.entry_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.entry_vector_doReserve(this.swigCPtr, this, i);
    }

    private entry doSet(int i, entry entryVar) {
        return new entry(libtorrent_jni.entry_vector_doSet(this.swigCPtr, this, i, entry.getCPtr(entryVar), entryVar), true);
    }

    private int doSize() {
        return libtorrent_jni.entry_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(entry_vector entry_vectorVar) {
        if (entry_vectorVar == null) {
            return 0L;
        }
        return entry_vectorVar.swigCPtr;
    }

    public static long swigRelease(entry_vector entry_vectorVar) {
        if (entry_vectorVar == null) {
            return 0L;
        }
        if (!entry_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = entry_vectorVar.swigCPtr;
        entry_vectorVar.swigCMemOwn = false;
        entry_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.entry_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_entry_vector(j);
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
        return libtorrent_jni.entry_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, entry entryVar) {
        libtorrent_jni.entry_vector_doAdd__SWIG_1(this.swigCPtr, this, i, entry.getCPtr(entryVar), entryVar);
    }

    @Override
    public entry get(int i) {
        return doGet(i);
    }

    @Override
    public entry remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public entry set(int i, entry entryVar) {
        return doSet(i, entryVar);
    }

    @Override
    public boolean add(entry entryVar) {
        ((AbstractList) this).modCount++;
        doAdd(entryVar);
        return true;
    }

    public entry_vector(entry[] entryVarArr) {
        this();
        doReserve(entryVarArr.length);
        for (entry entryVar : entryVarArr) {
            doAdd(entryVar);
        }
    }

    @Override
    public void add(int i, entry entryVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, entryVar);
    }

    public entry_vector(Iterable<entry> iterable) {
        this();
        Iterator<entry> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public entry_vector() {
        this(libtorrent_jni.new_entry_vector__SWIG_0(), true);
    }

    public entry_vector(entry_vector entry_vectorVar) {
        this(libtorrent_jni.new_entry_vector__SWIG_1(getCPtr(entry_vectorVar), entry_vectorVar), true);
    }

    public entry_vector(int i, entry entryVar) {
        this(libtorrent_jni.new_entry_vector__SWIG_2(i, entry.getCPtr(entryVar), entryVar), true);
    }
}
