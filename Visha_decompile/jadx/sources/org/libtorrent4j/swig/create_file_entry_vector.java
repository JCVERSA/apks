package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class create_file_entry_vector extends AbstractList<create_file_entry> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public create_file_entry_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(create_file_entry create_file_entryVar) {
        libtorrent_jni.create_file_entry_vector_doAdd__SWIG_0(this.swigCPtr, this, create_file_entry.getCPtr(create_file_entryVar), create_file_entryVar);
    }

    private int doCapacity() {
        return libtorrent_jni.create_file_entry_vector_doCapacity(this.swigCPtr, this);
    }

    private create_file_entry doGet(int i) {
        return new create_file_entry(libtorrent_jni.create_file_entry_vector_doGet(this.swigCPtr, this, i), false);
    }

    private create_file_entry doRemove(int i) {
        return new create_file_entry(libtorrent_jni.create_file_entry_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.create_file_entry_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.create_file_entry_vector_doReserve(this.swigCPtr, this, i);
    }

    private create_file_entry doSet(int i, create_file_entry create_file_entryVar) {
        return new create_file_entry(libtorrent_jni.create_file_entry_vector_doSet(this.swigCPtr, this, i, create_file_entry.getCPtr(create_file_entryVar), create_file_entryVar), true);
    }

    private int doSize() {
        return libtorrent_jni.create_file_entry_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(create_file_entry_vector create_file_entry_vectorVar) {
        if (create_file_entry_vectorVar == null) {
            return 0L;
        }
        return create_file_entry_vectorVar.swigCPtr;
    }

    public static long swigRelease(create_file_entry_vector create_file_entry_vectorVar) {
        if (create_file_entry_vectorVar == null) {
            return 0L;
        }
        if (!create_file_entry_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = create_file_entry_vectorVar.swigCPtr;
        create_file_entry_vectorVar.swigCMemOwn = false;
        create_file_entry_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.create_file_entry_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_create_file_entry_vector(j);
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
        return libtorrent_jni.create_file_entry_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, create_file_entry create_file_entryVar) {
        libtorrent_jni.create_file_entry_vector_doAdd__SWIG_1(this.swigCPtr, this, i, create_file_entry.getCPtr(create_file_entryVar), create_file_entryVar);
    }

    @Override
    public create_file_entry get(int i) {
        return doGet(i);
    }

    @Override
    public create_file_entry remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public create_file_entry set(int i, create_file_entry create_file_entryVar) {
        return doSet(i, create_file_entryVar);
    }

    @Override
    public boolean add(create_file_entry create_file_entryVar) {
        ((AbstractList) this).modCount++;
        doAdd(create_file_entryVar);
        return true;
    }

    public create_file_entry_vector(create_file_entry[] create_file_entryVarArr) {
        this();
        doReserve(create_file_entryVarArr.length);
        for (create_file_entry create_file_entryVar : create_file_entryVarArr) {
            doAdd(create_file_entryVar);
        }
    }

    @Override
    public void add(int i, create_file_entry create_file_entryVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, create_file_entryVar);
    }

    public create_file_entry_vector(Iterable<create_file_entry> iterable) {
        this();
        Iterator<create_file_entry> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public create_file_entry_vector() {
        this(libtorrent_jni.new_create_file_entry_vector__SWIG_0(), true);
    }

    public create_file_entry_vector(create_file_entry_vector create_file_entry_vectorVar) {
        this(libtorrent_jni.new_create_file_entry_vector__SWIG_1(getCPtr(create_file_entry_vectorVar), create_file_entry_vectorVar), true);
    }

    public create_file_entry_vector(int i, create_file_entry create_file_entryVar) {
        this(libtorrent_jni.new_create_file_entry_vector__SWIG_2(i, create_file_entry.getCPtr(create_file_entryVar), create_file_entryVar), true);
    }
}
