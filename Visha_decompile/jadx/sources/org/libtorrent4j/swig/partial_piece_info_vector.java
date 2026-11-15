package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class partial_piece_info_vector extends AbstractList<partial_piece_info> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public partial_piece_info_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(partial_piece_info partial_piece_infoVar) {
        libtorrent_jni.partial_piece_info_vector_doAdd__SWIG_0(this.swigCPtr, this, partial_piece_info.getCPtr(partial_piece_infoVar), partial_piece_infoVar);
    }

    private int doCapacity() {
        return libtorrent_jni.partial_piece_info_vector_doCapacity(this.swigCPtr, this);
    }

    private partial_piece_info doGet(int i) {
        return new partial_piece_info(libtorrent_jni.partial_piece_info_vector_doGet(this.swigCPtr, this, i), false);
    }

    private partial_piece_info doRemove(int i) {
        return new partial_piece_info(libtorrent_jni.partial_piece_info_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.partial_piece_info_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.partial_piece_info_vector_doReserve(this.swigCPtr, this, i);
    }

    private partial_piece_info doSet(int i, partial_piece_info partial_piece_infoVar) {
        return new partial_piece_info(libtorrent_jni.partial_piece_info_vector_doSet(this.swigCPtr, this, i, partial_piece_info.getCPtr(partial_piece_infoVar), partial_piece_infoVar), true);
    }

    private int doSize() {
        return libtorrent_jni.partial_piece_info_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(partial_piece_info_vector partial_piece_info_vectorVar) {
        if (partial_piece_info_vectorVar == null) {
            return 0L;
        }
        return partial_piece_info_vectorVar.swigCPtr;
    }

    public static long swigRelease(partial_piece_info_vector partial_piece_info_vectorVar) {
        if (partial_piece_info_vectorVar == null) {
            return 0L;
        }
        if (!partial_piece_info_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = partial_piece_info_vectorVar.swigCPtr;
        partial_piece_info_vectorVar.swigCMemOwn = false;
        partial_piece_info_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.partial_piece_info_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_partial_piece_info_vector(j);
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
        return libtorrent_jni.partial_piece_info_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, partial_piece_info partial_piece_infoVar) {
        libtorrent_jni.partial_piece_info_vector_doAdd__SWIG_1(this.swigCPtr, this, i, partial_piece_info.getCPtr(partial_piece_infoVar), partial_piece_infoVar);
    }

    @Override
    public partial_piece_info get(int i) {
        return doGet(i);
    }

    @Override
    public partial_piece_info remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public partial_piece_info set(int i, partial_piece_info partial_piece_infoVar) {
        return doSet(i, partial_piece_infoVar);
    }

    @Override
    public boolean add(partial_piece_info partial_piece_infoVar) {
        ((AbstractList) this).modCount++;
        doAdd(partial_piece_infoVar);
        return true;
    }

    public partial_piece_info_vector(partial_piece_info[] partial_piece_infoVarArr) {
        this();
        doReserve(partial_piece_infoVarArr.length);
        for (partial_piece_info partial_piece_infoVar : partial_piece_infoVarArr) {
            doAdd(partial_piece_infoVar);
        }
    }

    @Override
    public void add(int i, partial_piece_info partial_piece_infoVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, partial_piece_infoVar);
    }

    public partial_piece_info_vector(Iterable<partial_piece_info> iterable) {
        this();
        Iterator<partial_piece_info> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public partial_piece_info_vector() {
        this(libtorrent_jni.new_partial_piece_info_vector__SWIG_0(), true);
    }

    public partial_piece_info_vector(partial_piece_info_vector partial_piece_info_vectorVar) {
        this(libtorrent_jni.new_partial_piece_info_vector__SWIG_1(getCPtr(partial_piece_info_vectorVar), partial_piece_info_vectorVar), true);
    }

    public partial_piece_info_vector(int i, partial_piece_info partial_piece_infoVar) {
        this(libtorrent_jni.new_partial_piece_info_vector__SWIG_2(i, partial_piece_info.getCPtr(partial_piece_infoVar), partial_piece_infoVar), true);
    }
}
