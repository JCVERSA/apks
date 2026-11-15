package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class web_seed_entry_vector extends AbstractList<web_seed_entry> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public web_seed_entry_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(web_seed_entry web_seed_entryVar) {
        libtorrent_jni.web_seed_entry_vector_doAdd__SWIG_0(this.swigCPtr, this, web_seed_entry.getCPtr(web_seed_entryVar), web_seed_entryVar);
    }

    private int doCapacity() {
        return libtorrent_jni.web_seed_entry_vector_doCapacity(this.swigCPtr, this);
    }

    private web_seed_entry doGet(int i) {
        return new web_seed_entry(libtorrent_jni.web_seed_entry_vector_doGet(this.swigCPtr, this, i), false);
    }

    private web_seed_entry doRemove(int i) {
        return new web_seed_entry(libtorrent_jni.web_seed_entry_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.web_seed_entry_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.web_seed_entry_vector_doReserve(this.swigCPtr, this, i);
    }

    private web_seed_entry doSet(int i, web_seed_entry web_seed_entryVar) {
        return new web_seed_entry(libtorrent_jni.web_seed_entry_vector_doSet(this.swigCPtr, this, i, web_seed_entry.getCPtr(web_seed_entryVar), web_seed_entryVar), true);
    }

    private int doSize() {
        return libtorrent_jni.web_seed_entry_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(web_seed_entry_vector web_seed_entry_vectorVar) {
        if (web_seed_entry_vectorVar == null) {
            return 0L;
        }
        return web_seed_entry_vectorVar.swigCPtr;
    }

    public static long swigRelease(web_seed_entry_vector web_seed_entry_vectorVar) {
        if (web_seed_entry_vectorVar == null) {
            return 0L;
        }
        if (!web_seed_entry_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = web_seed_entry_vectorVar.swigCPtr;
        web_seed_entry_vectorVar.swigCMemOwn = false;
        web_seed_entry_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.web_seed_entry_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_web_seed_entry_vector(j);
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
        return libtorrent_jni.web_seed_entry_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, web_seed_entry web_seed_entryVar) {
        libtorrent_jni.web_seed_entry_vector_doAdd__SWIG_1(this.swigCPtr, this, i, web_seed_entry.getCPtr(web_seed_entryVar), web_seed_entryVar);
    }

    @Override
    public web_seed_entry get(int i) {
        return doGet(i);
    }

    @Override
    public web_seed_entry remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public web_seed_entry set(int i, web_seed_entry web_seed_entryVar) {
        return doSet(i, web_seed_entryVar);
    }

    @Override
    public boolean add(web_seed_entry web_seed_entryVar) {
        ((AbstractList) this).modCount++;
        doAdd(web_seed_entryVar);
        return true;
    }

    public web_seed_entry_vector(web_seed_entry[] web_seed_entryVarArr) {
        this();
        doReserve(web_seed_entryVarArr.length);
        for (web_seed_entry web_seed_entryVar : web_seed_entryVarArr) {
            doAdd(web_seed_entryVar);
        }
    }

    @Override
    public void add(int i, web_seed_entry web_seed_entryVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, web_seed_entryVar);
    }

    public web_seed_entry_vector(Iterable<web_seed_entry> iterable) {
        this();
        Iterator<web_seed_entry> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public web_seed_entry_vector() {
        this(libtorrent_jni.new_web_seed_entry_vector__SWIG_0(), true);
    }

    public web_seed_entry_vector(web_seed_entry_vector web_seed_entry_vectorVar) {
        this(libtorrent_jni.new_web_seed_entry_vector__SWIG_1(getCPtr(web_seed_entry_vectorVar), web_seed_entry_vectorVar), true);
    }

    public web_seed_entry_vector(int i, web_seed_entry web_seed_entryVar) {
        this(libtorrent_jni.new_web_seed_entry_vector__SWIG_2(i, web_seed_entry.getCPtr(web_seed_entryVar), web_seed_entryVar), true);
    }
}
