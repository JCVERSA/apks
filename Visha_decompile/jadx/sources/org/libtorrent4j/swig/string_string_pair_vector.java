package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class string_string_pair_vector extends AbstractList<string_string_pair> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public string_string_pair_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(string_string_pair string_string_pairVar) {
        libtorrent_jni.string_string_pair_vector_doAdd__SWIG_0(this.swigCPtr, this, string_string_pair.getCPtr(string_string_pairVar), string_string_pairVar);
    }

    private int doCapacity() {
        return libtorrent_jni.string_string_pair_vector_doCapacity(this.swigCPtr, this);
    }

    private string_string_pair doGet(int i) {
        return new string_string_pair(libtorrent_jni.string_string_pair_vector_doGet(this.swigCPtr, this, i), false);
    }

    private string_string_pair doRemove(int i) {
        return new string_string_pair(libtorrent_jni.string_string_pair_vector_doRemove(this.swigCPtr, this, i), true);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.string_string_pair_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.string_string_pair_vector_doReserve(this.swigCPtr, this, i);
    }

    private string_string_pair doSet(int i, string_string_pair string_string_pairVar) {
        return new string_string_pair(libtorrent_jni.string_string_pair_vector_doSet(this.swigCPtr, this, i, string_string_pair.getCPtr(string_string_pairVar), string_string_pairVar), true);
    }

    private int doSize() {
        return libtorrent_jni.string_string_pair_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(string_string_pair_vector string_string_pair_vectorVar) {
        if (string_string_pair_vectorVar == null) {
            return 0L;
        }
        return string_string_pair_vectorVar.swigCPtr;
    }

    public static long swigRelease(string_string_pair_vector string_string_pair_vectorVar) {
        if (string_string_pair_vectorVar == null) {
            return 0L;
        }
        if (!string_string_pair_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = string_string_pair_vectorVar.swigCPtr;
        string_string_pair_vectorVar.swigCMemOwn = false;
        string_string_pair_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.string_string_pair_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_string_string_pair_vector(j);
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
        return libtorrent_jni.string_string_pair_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, string_string_pair string_string_pairVar) {
        libtorrent_jni.string_string_pair_vector_doAdd__SWIG_1(this.swigCPtr, this, i, string_string_pair.getCPtr(string_string_pairVar), string_string_pairVar);
    }

    @Override
    public string_string_pair get(int i) {
        return doGet(i);
    }

    @Override
    public string_string_pair remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public string_string_pair set(int i, string_string_pair string_string_pairVar) {
        return doSet(i, string_string_pairVar);
    }

    @Override
    public boolean add(string_string_pair string_string_pairVar) {
        ((AbstractList) this).modCount++;
        doAdd(string_string_pairVar);
        return true;
    }

    public string_string_pair_vector(string_string_pair[] string_string_pairVarArr) {
        this();
        doReserve(string_string_pairVarArr.length);
        for (string_string_pair string_string_pairVar : string_string_pairVarArr) {
            doAdd(string_string_pairVar);
        }
    }

    @Override
    public void add(int i, string_string_pair string_string_pairVar) {
        ((AbstractList) this).modCount++;
        doAdd(i, string_string_pairVar);
    }

    public string_string_pair_vector(Iterable<string_string_pair> iterable) {
        this();
        Iterator<string_string_pair> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public string_string_pair_vector() {
        this(libtorrent_jni.new_string_string_pair_vector__SWIG_0(), true);
    }

    public string_string_pair_vector(string_string_pair_vector string_string_pair_vectorVar) {
        this(libtorrent_jni.new_string_string_pair_vector__SWIG_1(getCPtr(string_string_pair_vectorVar), string_string_pair_vectorVar), true);
    }

    public string_string_pair_vector(int i, string_string_pair string_string_pairVar) {
        this(libtorrent_jni.new_string_string_pair_vector__SWIG_2(i, string_string_pair.getCPtr(string_string_pairVar), string_string_pairVar), true);
    }
}
