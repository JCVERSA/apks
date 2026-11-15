package org.libtorrent4j.swig;

public class address_sha1_hash_pair {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public address_sha1_hash_pair(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(address_sha1_hash_pair address_sha1_hash_pairVar) {
        if (address_sha1_hash_pairVar == null) {
            return 0L;
        }
        return address_sha1_hash_pairVar.swigCPtr;
    }

    public static long swigRelease(address_sha1_hash_pair address_sha1_hash_pairVar) {
        if (address_sha1_hash_pairVar == null) {
            return 0L;
        }
        if (!address_sha1_hash_pairVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = address_sha1_hash_pairVar.swigCPtr;
        address_sha1_hash_pairVar.swigCMemOwn = false;
        address_sha1_hash_pairVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_address_sha1_hash_pair(j);
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

    public address getFirst() {
        long jAddress_sha1_hash_pair_first_get = libtorrent_jni.address_sha1_hash_pair_first_get(this.swigCPtr, this);
        if (jAddress_sha1_hash_pair_first_get == 0) {
            return null;
        }
        return new address(jAddress_sha1_hash_pair_first_get, false);
    }

    public sha1_hash getSecond() {
        long jAddress_sha1_hash_pair_second_get = libtorrent_jni.address_sha1_hash_pair_second_get(this.swigCPtr, this);
        if (jAddress_sha1_hash_pair_second_get == 0) {
            return null;
        }
        return new sha1_hash(jAddress_sha1_hash_pair_second_get, false);
    }

    public void setFirst(address addressVar) {
        libtorrent_jni.address_sha1_hash_pair_first_set(this.swigCPtr, this, address.getCPtr(addressVar), addressVar);
    }

    public void setSecond(sha1_hash sha1_hashVar) {
        libtorrent_jni.address_sha1_hash_pair_second_set(this.swigCPtr, this, sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar);
    }

    public address_sha1_hash_pair() {
        this(libtorrent_jni.new_address_sha1_hash_pair__SWIG_0(), true);
    }

    public address_sha1_hash_pair(address addressVar, sha1_hash sha1_hashVar) {
        this(libtorrent_jni.new_address_sha1_hash_pair__SWIG_1(address.getCPtr(addressVar), addressVar, sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar), true);
    }

    public address_sha1_hash_pair(address_sha1_hash_pair address_sha1_hash_pairVar) {
        this(libtorrent_jni.new_address_sha1_hash_pair__SWIG_2(getCPtr(address_sha1_hash_pairVar), address_sha1_hash_pairVar), true);
    }
}
