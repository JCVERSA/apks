package org.libtorrent4j.swig;

public class sha256_hash {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public sha256_hash(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static int compare(sha256_hash sha256_hashVar, sha256_hash sha256_hashVar2) {
        return libtorrent_jni.sha256_hash_compare(getCPtr(sha256_hashVar), sha256_hashVar, getCPtr(sha256_hashVar2), sha256_hashVar2);
    }

    public static sha256_hash from_hex(String str) {
        return new sha256_hash(libtorrent_jni.sha256_hash_from_hex(str), true);
    }

    public static long getCPtr(sha256_hash sha256_hashVar) {
        if (sha256_hashVar == null) {
            return 0L;
        }
        return sha256_hashVar.swigCPtr;
    }

    public static sha256_hash max() {
        return new sha256_hash(libtorrent_jni.sha256_hash_max(), true);
    }

    public static sha256_hash min() {
        return new sha256_hash(libtorrent_jni.sha256_hash_min(), true);
    }

    public static long size() {
        return libtorrent_jni.sha256_hash_size();
    }

    public static long swigRelease(sha256_hash sha256_hashVar) {
        if (sha256_hashVar == null) {
            return 0L;
        }
        if (!sha256_hashVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = sha256_hashVar.swigCPtr;
        sha256_hashVar.swigCMemOwn = false;
        sha256_hashVar.delete();
        return j;
    }

    public sha256_hash and_(sha256_hash sha256_hashVar) {
        return new sha256_hash(libtorrent_jni.sha256_hash_and_(this.swigCPtr, this, getCPtr(sha256_hashVar), sha256_hashVar), true);
    }

    public void assign(byte_vector byte_vectorVar) {
        libtorrent_jni.sha256_hash_assign(this.swigCPtr, this, byte_vector.getCPtr(byte_vectorVar), byte_vectorVar);
    }

    public void clear() {
        libtorrent_jni.sha256_hash_clear(this.swigCPtr, this);
    }

    public int count_leading_zeroes() {
        return libtorrent_jni.sha256_hash_count_leading_zeroes(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_sha256_hash(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(sha256_hash sha256_hashVar) {
        return libtorrent_jni.sha256_hash_eq(this.swigCPtr, this, getCPtr(sha256_hashVar), sha256_hashVar);
    }

    public void finalize() {
        delete();
    }

    public int hash_code() {
        return libtorrent_jni.sha256_hash_hash_code(this.swigCPtr, this);
    }

    public sha256_hash inv() {
        return new sha256_hash(libtorrent_jni.sha256_hash_inv(this.swigCPtr, this), true);
    }

    public boolean is_all_zeros() {
        return libtorrent_jni.sha256_hash_is_all_zeros(this.swigCPtr, this);
    }

    public boolean lt(sha256_hash sha256_hashVar) {
        return libtorrent_jni.sha256_hash_lt(this.swigCPtr, this, getCPtr(sha256_hashVar), sha256_hashVar);
    }

    public boolean ne(sha256_hash sha256_hashVar) {
        return libtorrent_jni.sha256_hash_ne(this.swigCPtr, this, getCPtr(sha256_hashVar), sha256_hashVar);
    }

    public byte_vector to_bytes() {
        return new byte_vector(libtorrent_jni.sha256_hash_to_bytes(this.swigCPtr, this), true);
    }

    public String to_hex() {
        return libtorrent_jni.sha256_hash_to_hex(this.swigCPtr, this);
    }

    public sha256_hash xor_(sha256_hash sha256_hashVar) {
        return new sha256_hash(libtorrent_jni.sha256_hash_xor_(this.swigCPtr, this, getCPtr(sha256_hashVar), sha256_hashVar), true);
    }

    public sha256_hash() {
        this(libtorrent_jni.new_sha256_hash__SWIG_0(), true);
    }

    public sha256_hash(sha256_hash sha256_hashVar) {
        this(libtorrent_jni.new_sha256_hash__SWIG_1(getCPtr(sha256_hashVar), sha256_hashVar), true);
    }

    public sha256_hash(byte_vector byte_vectorVar) {
        this(libtorrent_jni.new_sha256_hash__SWIG_2(byte_vector.getCPtr(byte_vectorVar), byte_vectorVar), true);
    }
}
