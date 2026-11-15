package org.libtorrent4j.swig;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.RandomAccess;

public class string_vector extends AbstractList<String> implements RandomAccess {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public string_vector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    private void doAdd(String str) {
        libtorrent_jni.string_vector_doAdd__SWIG_0(this.swigCPtr, this, str);
    }

    private int doCapacity() {
        return libtorrent_jni.string_vector_doCapacity(this.swigCPtr, this);
    }

    private String doGet(int i) {
        return libtorrent_jni.string_vector_doGet(this.swigCPtr, this, i);
    }

    private String doRemove(int i) {
        return libtorrent_jni.string_vector_doRemove(this.swigCPtr, this, i);
    }

    private void doRemoveRange(int i, int i2) {
        libtorrent_jni.string_vector_doRemoveRange(this.swigCPtr, this, i, i2);
    }

    private void doReserve(int i) {
        libtorrent_jni.string_vector_doReserve(this.swigCPtr, this, i);
    }

    private String doSet(int i, String str) {
        return libtorrent_jni.string_vector_doSet(this.swigCPtr, this, i, str);
    }

    private int doSize() {
        return libtorrent_jni.string_vector_doSize(this.swigCPtr, this);
    }

    public static long getCPtr(string_vector string_vectorVar) {
        if (string_vectorVar == null) {
            return 0L;
        }
        return string_vectorVar.swigCPtr;
    }

    public static long swigRelease(string_vector string_vectorVar) {
        if (string_vectorVar == null) {
            return 0L;
        }
        if (!string_vectorVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = string_vectorVar.swigCPtr;
        string_vectorVar.swigCMemOwn = false;
        string_vectorVar.delete();
        return j;
    }

    public int capacity() {
        return doCapacity();
    }

    @Override
    public void clear() {
        libtorrent_jni.string_vector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_string_vector(j);
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
        return libtorrent_jni.string_vector_isEmpty(this.swigCPtr, this);
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

    private void doAdd(int i, String str) {
        libtorrent_jni.string_vector_doAdd__SWIG_1(this.swigCPtr, this, i, str);
    }

    @Override
    public String get(int i) {
        return doGet(i);
    }

    @Override
    public String remove(int i) {
        ((AbstractList) this).modCount++;
        return doRemove(i);
    }

    @Override
    public String set(int i, String str) {
        return doSet(i, str);
    }

    @Override
    public boolean add(String str) {
        ((AbstractList) this).modCount++;
        doAdd(str);
        return true;
    }

    public string_vector(String[] strArr) {
        this();
        doReserve(strArr.length);
        for (String str : strArr) {
            doAdd(str);
        }
    }

    @Override
    public void add(int i, String str) {
        ((AbstractList) this).modCount++;
        doAdd(i, str);
    }

    public string_vector(Iterable<String> iterable) {
        this();
        Iterator<String> it = iterable.iterator();
        while (it.hasNext()) {
            doAdd(it.next());
        }
    }

    public string_vector() {
        this(libtorrent_jni.new_string_vector__SWIG_0(), true);
    }

    public string_vector(string_vector string_vectorVar) {
        this(libtorrent_jni.new_string_vector__SWIG_1(getCPtr(string_vectorVar), string_vectorVar), true);
    }

    public string_vector(int i, String str) {
        this(libtorrent_jni.new_string_vector__SWIG_2(i, str), true);
    }
}
