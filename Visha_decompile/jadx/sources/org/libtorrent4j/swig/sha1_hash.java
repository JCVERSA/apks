package org.libtorrent4j.swig;

public class sha1_hash {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public sha1_hash(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static int compare(sha1_hash sha1_hashVar, sha1_hash sha1_hashVar2) {
        return libtorrent_jni.sha1_hash_compare(getCPtr(sha1_hashVar), sha1_hashVar, getCPtr(sha1_hashVar2), sha1_hashVar2);
    }

    public static sha1_hash from_hex(String str) {
        return new sha1_hash(libtorrent_jni.sha1_hash_from_hex(str), true);
    }

    public static long getCPtr(sha1_hash sha1_hashVar) {
        if (sha1_hashVar == null) {
            return 0L;
        }
        return sha1_hashVar.swigCPtr;
    }

    public static sha1_hash max() {
        return new sha1_hash(libtorrent_jni.sha1_hash_max(), true);
    }

    public static sha1_hash min() {
        return new sha1_hash(libtorrent_jni.sha1_hash_min(), true);
    }

    public static long size() {
        return libtorrent_jni.sha1_hash_size();
    }

    public static long swigRelease(sha1_hash sha1_hashVar) {
        if (sha1_hashVar == null) {
            return 0L;
        }
        if (!sha1_hashVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = sha1_hashVar.swigCPtr;
        sha1_hashVar.swigCMemOwn = false;
        sha1_hashVar.delete();
        return j;
    }

    public sha1_hash and_(sha1_hash sha1_hashVar) {
        return new sha1_hash(libtorrent_jni.sha1_hash_and_(this.swigCPtr, this, getCPtr(sha1_hashVar), sha1_hashVar), true);
    }

    public void assign(byte_vector byte_vectorVar) {
        libtorrent_jni.sha1_hash_assign(this.swigCPtr, this, byte_vector.getCPtr(byte_vectorVar), byte_vectorVar);
    }

    public void clear() {
        libtorrent_jni.sha1_hash_clear(this.swigCPtr, this);
    }

    public int count_leading_zeroes() {
        return libtorrent_jni.sha1_hash_count_leading_zeroes(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_sha1_hash(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(sha1_hash sha1_hashVar) {
        return libtorrent_jni.sha1_hash_eq(this.swigCPtr, this, getCPtr(sha1_hashVar), sha1_hashVar);
    }

    public void finalize() {
        delete();
    }

    public int hash_code() {
        return libtorrent_jni.sha1_hash_hash_code(this.swigCPtr, this);
    }

    public sha1_hash inv() {
        return new sha1_hash(libtorrent_jni.sha1_hash_inv(this.swigCPtr, this), true);
    }

    public boolean is_all_zeros() {
        return libtorrent_jni.sha1_hash_is_all_zeros(this.swigCPtr, this);
    }

    public boolean lt(sha1_hash sha1_hashVar) {
        return libtorrent_jni.sha1_hash_lt(this.swigCPtr, this, getCPtr(sha1_hashVar), sha1_hashVar);
    }

    public boolean ne(sha1_hash sha1_hashVar) {
        return libtorrent_jni.sha1_hash_ne(this.swigCPtr, this, getCPtr(sha1_hashVar), sha1_hashVar);
    }

    public byte_vector to_bytes() {
        return new byte_vector(libtorrent_jni.sha1_hash_to_bytes(this.swigCPtr, this), true);
    }

    public String to_hex() {
        return libtorrent_jni.sha1_hash_to_hex(this.swigCPtr, this);
    }

    public sha1_hash xor_(sha1_hash sha1_hashVar) {
        return new sha1_hash(libtorrent_jni.sha1_hash_xor_(this.swigCPtr, this, getCPtr(sha1_hashVar), sha1_hashVar), true);
    }

    public sha1_hash() {
        this(libtorrent_jni.new_sha1_hash__SWIG_0(), true);
    }

    public sha1_hash(sha1_hash sha1_hashVar) {
        this(libtorrent_jni.new_sha1_hash__SWIG_1(getCPtr(sha1_hashVar), sha1_hashVar), true);
    }

    public sha1_hash(byte_vector byte_vectorVar) {
        this(libtorrent_jni.new_sha1_hash__SWIG_2(byte_vector.getCPtr(byte_vectorVar), byte_vectorVar), true);
    }
}
