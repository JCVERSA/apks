package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class piece_block_vector extends AbstractList<piece_block> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public piece_block_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(piece_block piece_blockVar) {
        libtorrent_jni.piece_block_vector_doAdd__SWIG_0(this.swigCPtr, this, piece_block.getCPtr(piece_blockVar), piece_blockVar);
    }

    private int doCapacity() {
        return libtorrent_jni.piece_block_vector_doCapacity(this.swigCPtr, this);
    }

    private piece_block doGet(int i) {
        return new piece_block(libtorrent_jni.piece_block_vector_doGet(this.swigCPtr, this, i), false);
    }

    private piece_block doRemove(int i) {
        return new piece_block(libtorrent_jni.piece_block_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.piece_block_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.piece_block_vector_doReserve(this.swigCPtr, this, i);
    }

    private piece_block doSet(int i, piece_block piece_blockVar) {
        return new piece_block(libtorrent_jni.piece_block_vector_doSet(this.swigCPtr, this, i, piece_block.getCPtr(piece_blockVar), piece_blockVar), true);
    }

    private int doSize() {
        return libtorrent_jni.piece_block_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(piece_block_vector piece_block_vectorVar) {
        if (piece_block_vectorVar == null) {
            return 0L;
        }
        return piece_block_vectorVar.swigCPtr;
    }

    public static long swigRelease(piece_block_vector piece_block_vectorVar) {
        if (piece_block_vectorVar == null) {
            return 0L;
        }
        if (!piece_block_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = piece_block_vectorVar.swigCPtr;
        piece_block_vectorVar.swigCMemOwn = false;
        piece_block_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.piece_block_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_piece_block_vector(j);
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
        return libtorrent_jni.piece_block_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, piece_block piece_blockVar) {
        libtorrent_jni.piece_block_vector_doAdd__SWIG_1(this.swigCPtr, this, i, piece_block.getCPtr(piece_blockVar), piece_blockVar);
    }

    @Override
    public piece_block get(int i) {
        return doGet(i);
    }

    @Override
    public piece_block remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public piece_block set(int i, piece_block piece_blockVar) {
        return doSet(i, piece_blockVar);
    }

    @Override
    public boolean add(piece_block piece_blockVar) {
        ((AbstractList) this).modCount++;
        doAdd(piece_blockVar);
        return true;
    }

    public piece_block_vector(piece_block[] piece_blockVarArr) {
        this();
        doReserve(piece_blockVarArr.length);
        for (piece_block piece_blockVar : piece_blockVarArr) {
            doAdd(piece_blockVar);
        }
    }

    @Override
    public void add(int i, piece_block piece_blockVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, piece_blockVar);
    }

    public piece_block_vector(Iterable<piece_block> iterable) {
        this();
        Iterator<piece_block> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public piece_block_vector() {
        this(libtorrent_jni.new_piece_block_vector__SWIG_0(), true);
    }

    public piece_block_vector(piece_block_vector piece_block_vectorVar) {
        this(libtorrent_jni.new_piece_block_vector__SWIG_1(getCPtr(piece_block_vectorVar), piece_block_vectorVar), true);
    }

    public piece_block_vector(int i, piece_block piece_blockVar) {
        this(libtorrent_jni.new_piece_block_vector__SWIG_2(i, piece_block.getCPtr(piece_blockVar), piece_blockVar), true);
    }
}
