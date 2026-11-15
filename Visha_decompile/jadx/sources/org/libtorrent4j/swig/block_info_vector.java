package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class block_info_vector extends AbstractList<block_info> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public block_info_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(block_info block_infoVar) {
        libtorrent_jni.block_info_vector_doAdd__SWIG_0(this.swigCPtr, this, block_info.getCPtr(block_infoVar), block_infoVar);
    }

    private int doCapacity() {
        return libtorrent_jni.block_info_vector_doCapacity(this.swigCPtr, this);
    }

    private block_info doGet(int i) {
        return new block_info(libtorrent_jni.block_info_vector_doGet(this.swigCPtr, this, i), false);
    }

    private block_info doRemove(int i) {
        return new block_info(libtorrent_jni.block_info_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.block_info_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.block_info_vector_doReserve(this.swigCPtr, this, i);
    }

    private block_info doSet(int i, block_info block_infoVar) {
        return new block_info(libtorrent_jni.block_info_vector_doSet(this.swigCPtr, this, i, block_info.getCPtr(block_infoVar), block_infoVar), true);
    }

    private int doSize() {
        return libtorrent_jni.block_info_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(block_info_vector block_info_vectorVar) {
        if (block_info_vectorVar == null) {
            return 0L;
        }
        return block_info_vectorVar.swigCPtr;
    }

    public static long swigRelease(block_info_vector block_info_vectorVar) {
        if (block_info_vectorVar == null) {
            return 0L;
        }
        if (!block_info_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = block_info_vectorVar.swigCPtr;
        block_info_vectorVar.swigCMemOwn = false;
        block_info_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.block_info_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_block_info_vector(j);
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
        return libtorrent_jni.block_info_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, block_info block_infoVar) {
        libtorrent_jni.block_info_vector_doAdd__SWIG_1(this.swigCPtr, this, i, block_info.getCPtr(block_infoVar), block_infoVar);
    }

    @Override
    public block_info get(int i) {
        return doGet(i);
    }

    @Override
    public block_info remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public block_info set(int i, block_info block_infoVar) {
        return doSet(i, block_infoVar);
    }

    @Override
    public boolean add(block_info block_infoVar) {
        ((AbstractList) this).modCount++;
        doAdd(block_infoVar);
        return true;
    }

    public block_info_vector(block_info[] block_infoVarArr) {
        this();
        doReserve(block_infoVarArr.length);
        for (block_info block_infoVar : block_infoVarArr) {
            doAdd(block_infoVar);
        }
    }

    @Override
    public void add(int i, block_info block_infoVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, block_infoVar);
    }

    public block_info_vector(Iterable<block_info> iterable) {
        this();
        Iterator<block_info> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public block_info_vector() {
        this(libtorrent_jni.new_block_info_vector__SWIG_0(), true);
    }

    public block_info_vector(block_info_vector block_info_vectorVar) {
        this(libtorrent_jni.new_block_info_vector__SWIG_1(getCPtr(block_info_vectorVar), block_info_vectorVar), true);
    }

    public block_info_vector(int i, block_info block_infoVar) {
        this(libtorrent_jni.new_block_info_vector__SWIG_2(i, block_info.getCPtr(block_infoVar), block_infoVar), true);
    }
}
