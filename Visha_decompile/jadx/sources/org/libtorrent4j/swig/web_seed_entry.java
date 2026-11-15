package org.libtorrent4j.swig;

public class web_seed_entry {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public web_seed_entry(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(web_seed_entry web_seed_entryVar) {
        if (web_seed_entryVar == null) {
            return 0L;
        }
        return web_seed_entryVar.swigCPtr;
    }

    public static long swigRelease(web_seed_entry web_seed_entryVar) {
        if (web_seed_entryVar == null) {
            return 0L;
        }
        if (!web_seed_entryVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = web_seed_entryVar.swigCPtr;
        web_seed_entryVar.swigCMemOwn = false;
        web_seed_entryVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_web_seed_entry(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean eq(web_seed_entry web_seed_entryVar) {
        return libtorrent_jni.web_seed_entry_eq(this.swigCPtr, this, getCPtr(web_seed_entryVar), web_seed_entryVar);
    }

    public void finalize() {
        delete();
    }

    public String getAuth() {
        return libtorrent_jni.web_seed_entry_auth_get(this.swigCPtr, this);
    }

    public string_string_pair_vector getExtra_headers() {
        long jWeb_seed_entry_extra_headers_get = libtorrent_jni.web_seed_entry_extra_headers_get(this.swigCPtr, this);
        if (jWeb_seed_entry_extra_headers_get == 0) {
            return null;
        }
        return new string_string_pair_vector(jWeb_seed_entry_extra_headers_get, false);
    }

    public String getUrl() {
        return libtorrent_jni.web_seed_entry_url_get(this.swigCPtr, this);
    }

    public boolean lt(web_seed_entry web_seed_entryVar) {
        return libtorrent_jni.web_seed_entry_lt(this.swigCPtr, this, getCPtr(web_seed_entryVar), web_seed_entryVar);
    }

    public void setAuth(String str) {
        libtorrent_jni.web_seed_entry_auth_set(this.swigCPtr, this, str);
    }

    public void setExtra_headers(string_string_pair_vector string_string_pair_vectorVar) {
        libtorrent_jni.web_seed_entry_extra_headers_set(this.swigCPtr, this, string_string_pair_vector.getCPtr(string_string_pair_vectorVar), string_string_pair_vectorVar);
    }

    public void setUrl(String str) {
        libtorrent_jni.web_seed_entry_url_set(this.swigCPtr, this, str);
    }

    public web_seed_entry(String str, String str2, string_string_pair_vector string_string_pair_vectorVar) {
        this(libtorrent_jni.new_web_seed_entry__SWIG_0(str, str2, string_string_pair_vector.getCPtr(string_string_pair_vectorVar), string_string_pair_vectorVar), true);
    }

    public web_seed_entry(String str, String str2) {
        this(libtorrent_jni.new_web_seed_entry__SWIG_1(str, str2), true);
    }

    public web_seed_entry(String str) {
        this(libtorrent_jni.new_web_seed_entry__SWIG_2(str), true);
    }

    public web_seed_entry(web_seed_entry web_seed_entryVar) {
        this(libtorrent_jni.new_web_seed_entry__SWIG_3(getCPtr(web_seed_entryVar), web_seed_entryVar), true);
    }
}
