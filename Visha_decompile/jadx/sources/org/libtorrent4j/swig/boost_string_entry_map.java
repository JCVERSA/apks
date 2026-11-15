package org.libtorrent4j.swig;

public class boost_string_entry_map {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public boost_string_entry_map(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(boost_string_entry_map boost_string_entry_mapVar) {
        if (boost_string_entry_mapVar == null) {
            return 0L;
        }
        return boost_string_entry_mapVar.swigCPtr;
    }

    public static long swigRelease(boost_string_entry_map boost_string_entry_mapVar) {
        if (boost_string_entry_mapVar == null) {
            return 0L;
        }
        if (!boost_string_entry_mapVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = boost_string_entry_mapVar.swigCPtr;
        boost_string_entry_mapVar.swigCMemOwn = false;
        boost_string_entry_mapVar.delete();
        return j;
    }

    public void clear() {
        libtorrent_jni.boost_string_entry_map_clear(this.swigCPtr, this);
    }

    public boolean contains(String str) {
        return libtorrent_jni.boost_string_entry_map_contains(this.swigCPtr, this, str);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_boost_string_entry_map(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean empty() {
        return libtorrent_jni.boost_string_entry_map_empty(this.swigCPtr, this);
    }

    public void finalize() {
        delete();
    }

    public entry get(String str) {
        return new entry(libtorrent_jni.boost_string_entry_map_get(this.swigCPtr, this, str), false);
    }

    public string_vector keys() {
        return new string_vector(libtorrent_jni.boost_string_entry_map_keys(this.swigCPtr, this), true);
    }

    public void put(String str, entry entryVar) {
        libtorrent_jni.boost_string_entry_map_put(this.swigCPtr, this, str, entry.getCPtr(entryVar), entryVar);
    }

    public void remove(String str) {
        libtorrent_jni.boost_string_entry_map_remove(this.swigCPtr, this, str);
    }

    public long size() {
        return libtorrent_jni.boost_string_entry_map_size(this.swigCPtr, this);
    }

    public boost_string_entry_map() {
        this(libtorrent_jni.new_boost_string_entry_map(), true);
    }
}
