package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class bitfield_vector extends AbstractList<bitfield> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public bitfield_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(bitfield bitfieldVar) {
        libtorrent_jni.bitfield_vector_doAdd__SWIG_0(this.swigCPtr, this, bitfield.getCPtr(bitfieldVar), bitfieldVar);
    }

    private int doCapacity() {
        return libtorrent_jni.bitfield_vector_doCapacity(this.swigCPtr, this);
    }

    private bitfield doGet(int i) {
        return new bitfield(libtorrent_jni.bitfield_vector_doGet(this.swigCPtr, this, i), false);
    }

    private bitfield doRemove(int i) {
        return new bitfield(libtorrent_jni.bitfield_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.bitfield_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.bitfield_vector_doReserve(this.swigCPtr, this, i);
    }

    private bitfield doSet(int i, bitfield bitfieldVar) {
        return new bitfield(libtorrent_jni.bitfield_vector_doSet(this.swigCPtr, this, i, bitfield.getCPtr(bitfieldVar), bitfieldVar), true);
    }

    private int doSize() {
        return libtorrent_jni.bitfield_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(bitfield_vector bitfield_vectorVar) {
        if (bitfield_vectorVar == null) {
            return 0L;
        }
        return bitfield_vectorVar.swigCPtr;
    }

    public static long swigRelease(bitfield_vector bitfield_vectorVar) {
        if (bitfield_vectorVar == null) {
            return 0L;
        }
        if (!bitfield_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = bitfield_vectorVar.swigCPtr;
        bitfield_vectorVar.swigCMemOwn = false;
        bitfield_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.bitfield_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_bitfield_vector(j);
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
        return libtorrent_jni.bitfield_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, bitfield bitfieldVar) {
        libtorrent_jni.bitfield_vector_doAdd__SWIG_1(this.swigCPtr, this, i, bitfield.getCPtr(bitfieldVar), bitfieldVar);
    }

    @Override
    public bitfield get(int i) {
        return doGet(i);
    }

    @Override
    public bitfield remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public bitfield set(int i, bitfield bitfieldVar) {
        return doSet(i, bitfieldVar);
    }

    @Override
    public boolean add(bitfield bitfieldVar) {
        ((AbstractList) this).modCount++;
        doAdd(bitfieldVar);
        return true;
    }

    public bitfield_vector(bitfield[] bitfieldVarArr) {
        this();
        doReserve(bitfieldVarArr.length);
        for (bitfield bitfieldVar : bitfieldVarArr) {
            doAdd(bitfieldVar);
        }
    }

    @Override
    public void add(int i, bitfield bitfieldVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, bitfieldVar);
    }

    public bitfield_vector(Iterable<bitfield> iterable) {
        this();
        Iterator<bitfield> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public bitfield_vector() {
        this(libtorrent_jni.new_bitfield_vector__SWIG_0(), true);
    }

    public bitfield_vector(bitfield_vector bitfield_vectorVar) {
        this(libtorrent_jni.new_bitfield_vector__SWIG_1(getCPtr(bitfield_vectorVar), bitfield_vectorVar), true);
    }

    public bitfield_vector(int i, bitfield bitfieldVar) {
        this(libtorrent_jni.new_bitfield_vector__SWIG_2(i, bitfield.getCPtr(bitfieldVar), bitfieldVar), true);
    }
}
