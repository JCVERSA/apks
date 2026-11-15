package org.libtorrent4j.swig;

public class create_file_entry {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public create_file_entry(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(create_file_entry create_file_entryVar) {
        if (create_file_entryVar == null) {
            return 0L;
        }
        return create_file_entryVar.swigCPtr;
    }

    public static long swigRelease(create_file_entry create_file_entryVar) {
        if (create_file_entryVar == null) {
            return 0L;
        }
        if (!create_file_entryVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = create_file_entryVar.swigCPtr;
        create_file_entryVar.swigCMemOwn = false;
        create_file_entryVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_create_file_entry(j);
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

    public String getFilename() {
        return libtorrent_jni.create_file_entry_filename_get(this.swigCPtr, this);
    }

    public file_flags_t getFlags() {
        long jCreate_file_entry_flags_get = libtorrent_jni.create_file_entry_flags_get(this.swigCPtr, this);
        if (jCreate_file_entry_flags_get == 0) {
            return null;
        }
        return new file_flags_t(jCreate_file_entry_flags_get, false);
    }

    public long getMtime() {
        return libtorrent_jni.create_file_entry_mtime_get(this.swigCPtr, this);
    }

    public long getSize() {
        return libtorrent_jni.create_file_entry_size_get(this.swigCPtr, this);
    }

    public String getSymlink() {
        return libtorrent_jni.create_file_entry_symlink_get(this.swigCPtr, this);
    }

    public void setFilename(String str) {
        libtorrent_jni.create_file_entry_filename_set(this.swigCPtr, this, str);
    }

    public void setFlags(file_flags_t file_flags_tVar) {
        libtorrent_jni.create_file_entry_flags_set(this.swigCPtr, this, file_flags_t.getCPtr(file_flags_tVar), file_flags_tVar);
    }

    public void setMtime(long j) {
        libtorrent_jni.create_file_entry_mtime_set(this.swigCPtr, this, j);
    }

    public void setSize(long j) {
        libtorrent_jni.create_file_entry_size_set(this.swigCPtr, this, j);
    }

    public void setSymlink(String str) {
        libtorrent_jni.create_file_entry_symlink_set(this.swigCPtr, this, str);
    }

    public create_file_entry(String str, long j, file_flags_t file_flags_tVar, long j2, String str2) {
        this(libtorrent_jni.new_create_file_entry__SWIG_0(str, j, file_flags_t.getCPtr(file_flags_tVar), file_flags_tVar, j2, str2), true);
    }

    public create_file_entry(String str, long j, file_flags_t file_flags_tVar, long j2) {
        this(libtorrent_jni.new_create_file_entry__SWIG_1(str, j, file_flags_t.getCPtr(file_flags_tVar), file_flags_tVar, j2), true);
    }

    public create_file_entry(String str, long j, file_flags_t file_flags_tVar) {
        this(libtorrent_jni.new_create_file_entry__SWIG_2(str, j, file_flags_t.getCPtr(file_flags_tVar), file_flags_tVar), true);
    }

    public create_file_entry(String str, long j) {
        this(libtorrent_jni.new_create_file_entry__SWIG_3(str, j), true);
    }
}
