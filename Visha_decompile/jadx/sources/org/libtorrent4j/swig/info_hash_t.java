package org.libtorrent4j.swig;

public class info_hash_t {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public info_hash_t(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(info_hash_t info_hash_tVar) {
        if (info_hash_tVar == null) {
            return 0L;
        }
        return info_hash_tVar.swigCPtr;
    }

    public static long swigRelease(info_hash_t info_hash_tVar) {
        if (info_hash_tVar == null) {
            return 0L;
        }
        if (!info_hash_tVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = info_hash_tVar.swigCPtr;
        info_hash_tVar.swigCMemOwn = false;
        info_hash_tVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_info_hash_t(j);
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

    public sha1_hash get(protocol_version protocol_versionVar) {
        return new sha1_hash(libtorrent_jni.info_hash_t_get(this.swigCPtr, this, protocol_versionVar.swigValue()), true);
    }

    public sha1_hash getV1() {
        long jInfo_hash_t_v1_get = libtorrent_jni.info_hash_t_v1_get(this.swigCPtr, this);
        if (jInfo_hash_t_v1_get == 0) {
            return null;
        }
        return new sha1_hash(jInfo_hash_t_v1_get, false);
    }

    public sha256_hash getV2() {
        long jInfo_hash_t_v2_get = libtorrent_jni.info_hash_t_v2_get(this.swigCPtr, this);
        if (jInfo_hash_t_v2_get == 0) {
            return null;
        }
        return new sha256_hash(jInfo_hash_t_v2_get, false);
    }

    public sha1_hash get_best() {
        return new sha1_hash(libtorrent_jni.info_hash_t_get_best(this.swigCPtr, this), true);
    }

    public boolean has(protocol_version protocol_versionVar) {
        return libtorrent_jni.info_hash_t_has(this.swigCPtr, this, protocol_versionVar.swigValue());
    }

    public boolean has_v1() {
        return libtorrent_jni.info_hash_t_has_v1(this.swigCPtr, this);
    }

    public boolean has_v2() {
        return libtorrent_jni.info_hash_t_has_v2(this.swigCPtr, this);
    }

    public boolean lt(info_hash_t info_hash_tVar) {
        return libtorrent_jni.info_hash_t_lt(this.swigCPtr, this, getCPtr(info_hash_tVar), info_hash_tVar);
    }

    public boolean op_eq(info_hash_t info_hash_tVar) {
        return libtorrent_jni.info_hash_t_op_eq(this.swigCPtr, this, getCPtr(info_hash_tVar), info_hash_tVar);
    }

    public boolean op_ne(info_hash_t info_hash_tVar) {
        return libtorrent_jni.info_hash_t_op_ne(this.swigCPtr, this, getCPtr(info_hash_tVar), info_hash_tVar);
    }

    public void setV1(sha1_hash sha1_hashVar) {
        libtorrent_jni.info_hash_t_v1_set(this.swigCPtr, this, sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar);
    }

    public void setV2(sha256_hash sha256_hashVar) {
        libtorrent_jni.info_hash_t_v2_set(this.swigCPtr, this, sha256_hash.getCPtr(sha256_hashVar), sha256_hashVar);
    }

    public info_hash_t() {
        this(libtorrent_jni.new_info_hash_t__SWIG_0(), true);
    }

    public info_hash_t(sha1_hash sha1_hashVar) {
        this(libtorrent_jni.new_info_hash_t__SWIG_1(sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar), true);
    }

    public info_hash_t(sha256_hash sha256_hashVar) {
        this(libtorrent_jni.new_info_hash_t__SWIG_2(sha256_hash.getCPtr(sha256_hashVar), sha256_hashVar), true);
    }

    public info_hash_t(sha1_hash sha1_hashVar, sha256_hash sha256_hashVar) {
        this(libtorrent_jni.new_info_hash_t__SWIG_3(sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar, sha256_hash.getCPtr(sha256_hashVar), sha256_hashVar), true);
    }

    public info_hash_t(info_hash_t info_hash_tVar) {
        this(libtorrent_jni.new_info_hash_t__SWIG_4(getCPtr(info_hash_tVar), info_hash_tVar), true);
    }
}
