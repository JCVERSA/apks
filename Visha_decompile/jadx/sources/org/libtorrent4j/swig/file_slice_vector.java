package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class file_slice_vector extends AbstractList<file_slice> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public file_slice_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(file_slice file_sliceVar) {
        libtorrent_jni.file_slice_vector_doAdd__SWIG_0(this.swigCPtr, this, file_slice.getCPtr(file_sliceVar), file_sliceVar);
    }

    private int doCapacity() {
        return libtorrent_jni.file_slice_vector_doCapacity(this.swigCPtr, this);
    }

    private file_slice doGet(int i) {
        return new file_slice(libtorrent_jni.file_slice_vector_doGet(this.swigCPtr, this, i), false);
    }

    private file_slice doRemove(int i) {
        return new file_slice(libtorrent_jni.file_slice_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.file_slice_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.file_slice_vector_doReserve(this.swigCPtr, this, i);
    }

    private file_slice doSet(int i, file_slice file_sliceVar) {
        return new file_slice(libtorrent_jni.file_slice_vector_doSet(this.swigCPtr, this, i, file_slice.getCPtr(file_sliceVar), file_sliceVar), true);
    }

    private int doSize() {
        return libtorrent_jni.file_slice_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(file_slice_vector file_slice_vectorVar) {
        if (file_slice_vectorVar == null) {
            return 0L;
        }
        return file_slice_vectorVar.swigCPtr;
    }

    public static long swigRelease(file_slice_vector file_slice_vectorVar) {
        if (file_slice_vectorVar == null) {
            return 0L;
        }
        if (!file_slice_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = file_slice_vectorVar.swigCPtr;
        file_slice_vectorVar.swigCMemOwn = false;
        file_slice_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.file_slice_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_file_slice_vector(j);
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
        return libtorrent_jni.file_slice_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, file_slice file_sliceVar) {
        libtorrent_jni.file_slice_vector_doAdd__SWIG_1(this.swigCPtr, this, i, file_slice.getCPtr(file_sliceVar), file_sliceVar);
    }

    @Override
    public file_slice get(int i) {
        return doGet(i);
    }

    @Override
    public file_slice remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public file_slice set(int i, file_slice file_sliceVar) {
        return doSet(i, file_sliceVar);
    }

    @Override
    public boolean add(file_slice file_sliceVar) {
        ((AbstractList) this).modCount++;
        doAdd(file_sliceVar);
        return true;
    }

    public file_slice_vector(file_slice[] file_sliceVarArr) {
        this();
        doReserve(file_sliceVarArr.length);
        for (file_slice file_sliceVar : file_sliceVarArr) {
            doAdd(file_sliceVar);
        }
    }

    @Override
    public void add(int i, file_slice file_sliceVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, file_sliceVar);
    }

    public file_slice_vector(Iterable<file_slice> iterable) {
        this();
        Iterator<file_slice> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public file_slice_vector() {
        this(libtorrent_jni.new_file_slice_vector__SWIG_0(), true);
    }

    public file_slice_vector(file_slice_vector file_slice_vectorVar) {
        this(libtorrent_jni.new_file_slice_vector__SWIG_1(getCPtr(file_slice_vectorVar), file_slice_vectorVar), true);
    }

    public file_slice_vector(int i, file_slice file_sliceVar) {
        this(libtorrent_jni.new_file_slice_vector__SWIG_2(i, file_slice.getCPtr(file_sliceVar), file_sliceVar), true);
    }
}
