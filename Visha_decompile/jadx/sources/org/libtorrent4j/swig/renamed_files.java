package org.libtorrent4j.swig;

public class renamed_files {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public renamed_files(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(renamed_files renamed_filesVar) {
        if (renamed_filesVar == null) {
            return 0L;
        }
        return renamed_filesVar.swigCPtr;
    }

    public static long swigRelease(renamed_files renamed_filesVar) {
        if (renamed_filesVar == null) {
            return 0L;
        }
        if (!renamed_filesVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = renamed_filesVar.swigCPtr;
        renamed_filesVar.swigCMemOwn = false;
        renamed_filesVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_renamed_files(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public int_string_map export_filenames_ex() {
        return new int_string_map(libtorrent_jni.renamed_files_export_filenames_ex(this.swigCPtr, this), true);
    }

    public boolean file_absolute_path(file_storage file_storageVar, int i) {
        return libtorrent_jni.renamed_files_file_absolute_path(this.swigCPtr, this, file_storage.getCPtr(file_storageVar), file_storageVar, i);
    }

    public String file_name_ex(file_storage file_storageVar, int i) {
        return libtorrent_jni.renamed_files_file_name_ex(this.swigCPtr, this, file_storage.getCPtr(file_storageVar), file_storageVar, i);
    }

    public String file_path(file_storage file_storageVar, int i, String str) {
        return libtorrent_jni.renamed_files_file_path__SWIG_0(this.swigCPtr, this, file_storage.getCPtr(file_storageVar), file_storageVar, i, str);
    }

    public void finalize() {
        delete();
    }

    public void import_filenames_ex(file_storage file_storageVar, int_string_map int_string_mapVar) {
        libtorrent_jni.renamed_files_import_filenames_ex(this.swigCPtr, this, file_storage.getCPtr(file_storageVar), file_storageVar, int_string_map.getCPtr(int_string_mapVar), int_string_mapVar);
    }

    public void rename_file(file_storage file_storageVar, int i, String str) {
        libtorrent_jni.renamed_files_rename_file(this.swigCPtr, this, file_storage.getCPtr(file_storageVar), file_storageVar, i, str);
    }

    public String file_path(file_storage file_storageVar, int i) {
        return libtorrent_jni.renamed_files_file_path__SWIG_1(this.swigCPtr, this, file_storage.getCPtr(file_storageVar), file_storageVar, i);
    }

    public renamed_files() {
        this(libtorrent_jni.new_renamed_files(), true);
    }
}
