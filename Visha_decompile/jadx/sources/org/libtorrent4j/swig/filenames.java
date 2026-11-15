package org.libtorrent4j.swig;

public class filenames {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public filenames(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(filenames filenamesVar) {
        if (filenamesVar == null) {
            return 0L;
        }
        return filenamesVar.swigCPtr;
    }

    public static long swigRelease(filenames filenamesVar) {
        if (filenamesVar == null) {
            return 0L;
        }
        if (!filenamesVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = filenamesVar.swigCPtr;
        filenamesVar.swigCMemOwn = false;
        filenamesVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_filenames(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public int end_file() {
        return libtorrent_jni.filenames_end_file(this.swigCPtr, this);
    }

    public int end_piece() {
        return libtorrent_jni.filenames_end_piece(this.swigCPtr, this);
    }

    public boolean file_absolute_path(int i) {
        return libtorrent_jni.filenames_file_absolute_path(this.swigCPtr, this, i);
    }

    public file_flags_t file_flags(int i) {
        return new file_flags_t(libtorrent_jni.filenames_file_flags(this.swigCPtr, this, i), true);
    }

    public long file_offset(int i) {
        return libtorrent_jni.filenames_file_offset(this.swigCPtr, this, i);
    }

    public String file_path(int i, String str) {
        return libtorrent_jni.filenames_file_path__SWIG_0(this.swigCPtr, this, i, str);
    }

    public long file_size(int i) {
        return libtorrent_jni.filenames_file_size(this.swigCPtr, this, i);
    }

    public void finalize() {
        delete();
    }

    public file_slice_vector map_block(int i, long j, long j2) {
        return new file_slice_vector(libtorrent_jni.filenames_map_block(this.swigCPtr, this, i, j, j2), true);
    }

    public peer_request map_file(int i, long j, int i2) {
        return new peer_request(libtorrent_jni.filenames_map_file(this.swigCPtr, this, i, j, i2), true);
    }

    public int num_files() {
        return libtorrent_jni.filenames_num_files(this.swigCPtr, this);
    }

    public int num_pieces() {
        return libtorrent_jni.filenames_num_pieces(this.swigCPtr, this);
    }

    public boolean pad_file_at(int i) {
        return libtorrent_jni.filenames_pad_file_at(this.swigCPtr, this, i);
    }

    public int piece_length() {
        return libtorrent_jni.filenames_piece_length(this.swigCPtr, this);
    }

    public sha256_hash root(int i) {
        return new sha256_hash(libtorrent_jni.filenames_root(this.swigCPtr, this, i), true);
    }

    public String symlink(int i) {
        return libtorrent_jni.filenames_symlink(this.swigCPtr, this, i);
    }

    public String file_path(int i) {
        return libtorrent_jni.filenames_file_path__SWIG_1(this.swigCPtr, this, i);
    }

    public filenames(file_storage file_storageVar, renamed_files renamed_filesVar) {
        this(libtorrent_jni.new_filenames(file_storage.getCPtr(file_storageVar), file_storageVar, renamed_files.getCPtr(renamed_filesVar), renamed_filesVar), true);
    }
}
