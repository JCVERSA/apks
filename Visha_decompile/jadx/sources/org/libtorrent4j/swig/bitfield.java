package org.libtorrent4j.swig;

public class bitfield {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public bitfield(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(bitfield bitfieldVar) {
        if (bitfieldVar == null) {
            return 0L;
        }
        return bitfieldVar.swigCPtr;
    }

    public static long swigRelease(bitfield bitfieldVar) {
        if (bitfieldVar == null) {
            return 0L;
        }
        if (!bitfieldVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = bitfieldVar.swigCPtr;
        bitfieldVar.swigCMemOwn = false;
        bitfieldVar.delete();
        return j;
    }

    public boolean all_set() {
        return libtorrent_jni.bitfield_all_set(this.swigCPtr, this);
    }

    public void assign(byte_vector byte_vectorVar) {
        libtorrent_jni.bitfield_assign(this.swigCPtr, this, byte_vector.getCPtr(byte_vectorVar), byte_vectorVar);
    }

    public boolean at(int i) {
        return libtorrent_jni.bitfield_at(this.swigCPtr, this, i);
    }

    public void clear() {
        libtorrent_jni.bitfield_clear(this.swigCPtr, this);
    }

    public void clear_all() {
        libtorrent_jni.bitfield_clear_all(this.swigCPtr, this);
    }

    public void clear_bit(int i) {
        libtorrent_jni.bitfield_clear_bit(this.swigCPtr, this, i);
    }

    public int count() {
        return libtorrent_jni.bitfield_count(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_bitfield(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean empty() {
        return libtorrent_jni.bitfield_empty(this.swigCPtr, this);
    }

    public void finalize() {
        delete();
    }

    public int find_first_set() {
        return libtorrent_jni.bitfield_find_first_set(this.swigCPtr, this);
    }

    public int find_last_clear() {
        return libtorrent_jni.bitfield_find_last_clear(this.swigCPtr, this);
    }

    public boolean get_bit(int i) {
        return libtorrent_jni.bitfield_get_bit(this.swigCPtr, this, i);
    }

    public boolean none_set() {
        return libtorrent_jni.bitfield_none_set(this.swigCPtr, this);
    }

    public int num_words() {
        return libtorrent_jni.bitfield_num_words(this.swigCPtr, this);
    }

    public void resize(int i, boolean z) {
        libtorrent_jni.bitfield_resize__SWIG_0(this.swigCPtr, this, i, z);
    }

    public void set_all() {
        libtorrent_jni.bitfield_set_all(this.swigCPtr, this);
    }

    public void set_bit(int i) {
        libtorrent_jni.bitfield_set_bit(this.swigCPtr, this, i);
    }

    public int size() {
        return libtorrent_jni.bitfield_size(this.swigCPtr, this);
    }

    public void swap(bitfield bitfieldVar) {
        libtorrent_jni.bitfield_swap(this.swigCPtr, this, getCPtr(bitfieldVar), bitfieldVar);
    }

    public void resize(int i) {
        libtorrent_jni.bitfield_resize__SWIG_1(this.swigCPtr, this, i);
    }

    public bitfield() {
        this(libtorrent_jni.new_bitfield__SWIG_0(), true);
    }

    public bitfield(int i) {
        this(libtorrent_jni.new_bitfield__SWIG_1(i), true);
    }

    public bitfield(int i, boolean z) {
        this(libtorrent_jni.new_bitfield__SWIG_2(i, z), true);
    }

    public bitfield(bitfield bitfieldVar) {
        this(libtorrent_jni.new_bitfield__SWIG_3(getCPtr(bitfieldVar), bitfieldVar), true);
    }

    public bitfield(byte_vector byte_vectorVar) {
        this(libtorrent_jni.new_bitfield__SWIG_4(byte_vector.getCPtr(byte_vectorVar), byte_vectorVar), true);
    }
}
