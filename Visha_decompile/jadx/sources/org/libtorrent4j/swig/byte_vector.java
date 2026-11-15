package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class byte_vector extends AbstractList<Byte> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public byte_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(byte b) {
        libtorrent_jni.byte_vector_doAdd__SWIG_0(this.swigCPtr, this, b);
    }

    private int doCapacity() {
        return libtorrent_jni.byte_vector_doCapacity(this.swigCPtr, this);
    }

    private byte doGet(int i) {
        return libtorrent_jni.byte_vector_doGet(this.swigCPtr, this, i);
    }

    private byte doRemove(int i) {
        return libtorrent_jni.byte_vector_doRemove(this.swigCPtr, this, i);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.byte_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.byte_vector_doReserve(this.swigCPtr, this, i);
    }

    private byte doSet(int i, byte b) {
        return libtorrent_jni.byte_vector_doSet(this.swigCPtr, this, i, b);
    }

    private int doSize() {
        return libtorrent_jni.byte_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(byte_vector byte_vectorVar) {
        if (byte_vectorVar == null) {
            return 0L;
        }
        return byte_vectorVar.swigCPtr;
    }

    public static long swigRelease(byte_vector byte_vectorVar) {
        if (byte_vectorVar == null) {
            return 0L;
        }
        if (!byte_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = byte_vectorVar.swigCPtr;
        byte_vectorVar.swigCMemOwn = false;
        byte_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.byte_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_byte_vector(j);
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
        return libtorrent_jni.byte_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, byte b) {
        libtorrent_jni.byte_vector_doAdd__SWIG_1(this.swigCPtr, this, i, b);
    }

    @Override
    public Byte get(int i) {
        return Byte.valueOf(doGet(i));
    }

    @Override
    public Byte remove(int i) {
        ((AbstractList) this).modCount++;
        return Byte.valueOf(doRemove(i));
    }

    @Override
    public Byte set(int i, Byte b) {
        return Byte.valueOf(doSet(i, b.byteValue()));
    }

    @Override
    public boolean add(Byte b) {
        ((AbstractList) this).modCount++;
        doAdd(b.byteValue());
        return true;
    }

    public byte_vector(byte[] bArr) {
        this();
        doReserve(bArr.length);
        for (byte b : bArr) {
            doAdd(b);
        }
    }

    @Override
    public void add(int i, Byte b) {
        ((AbstractList) this).modCount++;
        doAdd(i, b.byteValue());
    }

    public byte_vector(Iterable<Byte> iterable) {
        this();
        Iterator<Byte> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next().byteValue());
        }
    }

    public byte_vector() {
        this(libtorrent_jni.new_byte_vector__SWIG_0(), true);
    }

    public byte_vector(byte_vector byte_vectorVar) {
        this(libtorrent_jni.new_byte_vector__SWIG_1(getCPtr(byte_vectorVar), byte_vectorVar), true);
    }

    public byte_vector(int i, byte b) {
        this(libtorrent_jni.new_byte_vector__SWIG_2(i, b), true);
    }
}
