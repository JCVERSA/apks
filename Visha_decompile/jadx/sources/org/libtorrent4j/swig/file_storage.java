package org.libtorrent4j.swig;

public class file_storage {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;
    public static final long max_file_size = libtorrent_jni.file_storage_max_file_size_get();
    public static final long max_file_offset = libtorrent_jni.file_storage_max_file_offset_get();
    public static final int max_num_pieces = libtorrent_jni.file_storage_max_num_pieces_get();
    public static final int max_piece_size = libtorrent_jni.file_storage_max_piece_size_get();
    public static final file_flags_t flag_pad_file = new file_flags_t(libtorrent_jni.file_storage_flag_pad_file_get(), false);
    public static final file_flags_t flag_hidden = new file_flags_t(libtorrent_jni.file_storage_flag_hidden_get(), false);
    public static final file_flags_t flag_executable = new file_flags_t(libtorrent_jni.file_storage_flag_executable_get(), false);
    public static final file_flags_t flag_symlink = new file_flags_t(libtorrent_jni.file_storage_flag_symlink_get(), false);

    public file_storage(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(file_storage file_storageVar) {
        if (file_storageVar == null) {
            return 0L;
        }
        return file_storageVar.swigCPtr;
    }

    public static long swigRelease(file_storage file_storageVar) {
        if (file_storageVar == null) {
            return 0L;
        }
        if (!file_storageVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = file_storageVar.swigCPtr;
        file_storageVar.swigCMemOwn = false;
        file_storageVar.delete();
        return j;
    }

    public void add_file_ex(error_code error_codeVar, String str, long j, file_flags_t file_flags_tVar, long j2, String str2) {
        libtorrent_jni.file_storage_add_file_ex__SWIG_0(this.swigCPtr, this, error_code.getCPtr(error_codeVar), error_codeVar, str, j, file_flags_t.getCPtr(file_flags_tVar), file_flags_tVar, j2, str2);
    }

    public int blocks_in_piece2(int i) {
        return libtorrent_jni.file_storage_blocks_in_piece2(this.swigCPtr, this, i);
    }

    public int blocks_per_piece() {
        return libtorrent_jni.file_storage_blocks_per_piece(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_file_storage(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public int end_file() {
        return libtorrent_jni.file_storage_end_file(this.swigCPtr, this);
    }

    public int end_piece() {
        return libtorrent_jni.file_storage_end_piece(this.swigCPtr, this);
    }

    public boolean file_absolute_path(int i) {
        return libtorrent_jni.file_storage_file_absolute_path(this.swigCPtr, this, i);
    }

    public int file_first_block_node(int i) {
        return libtorrent_jni.file_storage_file_first_block_node(this.swigCPtr, this, i);
    }

    public int file_first_piece_node(int i) {
        return libtorrent_jni.file_storage_file_first_piece_node(this.swigCPtr, this, i);
    }

    public file_flags_t file_flags(int i) {
        return new file_flags_t(libtorrent_jni.file_storage_file_flags(this.swigCPtr, this, i), true);
    }

    public int file_index_at_offset(long j) {
        return libtorrent_jni.file_storage_file_index_at_offset(this.swigCPtr, this, j);
    }

    public int file_index_at_piece(int i) {
        return libtorrent_jni.file_storage_file_index_at_piece(this.swigCPtr, this, i);
    }

    public int file_index_for_root(sha256_hash sha256_hashVar) {
        return libtorrent_jni.file_storage_file_index_for_root(this.swigCPtr, this, sha256_hash.getCPtr(sha256_hashVar), sha256_hashVar);
    }

    public String file_name_ex(int i) {
        return libtorrent_jni.file_storage_file_name_ex(this.swigCPtr, this, i);
    }

    public int file_num_blocks(int i) {
        return libtorrent_jni.file_storage_file_num_blocks(this.swigCPtr, this, i);
    }

    public int file_num_pieces(int i) {
        return libtorrent_jni.file_storage_file_num_pieces(this.swigCPtr, this, i);
    }

    public long file_offset(int i) {
        return libtorrent_jni.file_storage_file_offset(this.swigCPtr, this, i);
    }

    public String file_path(int i, String str) {
        return libtorrent_jni.file_storage_file_path__SWIG_0(this.swigCPtr, this, i, str);
    }

    public long file_size(int i) {
        return libtorrent_jni.file_storage_file_size(this.swigCPtr, this, i);
    }

    public void finalize() {
        delete();
    }

    public boolean is_valid() {
        return libtorrent_jni.file_storage_is_valid(this.swigCPtr, this);
    }

    public int last_file_index_at_piece(int i) {
        return libtorrent_jni.file_storage_last_file_index_at_piece(this.swigCPtr, this, i);
    }

    public int last_piece() {
        return libtorrent_jni.file_storage_last_piece(this.swigCPtr, this);
    }

    public int last_piece_index_at_file(int i) {
        return libtorrent_jni.file_storage_last_piece_index_at_file(this.swigCPtr, this, i);
    }

    public file_slice_vector map_block(int i, long j, long j2) {
        return new file_slice_vector(libtorrent_jni.file_storage_map_block(this.swigCPtr, this, i, j, j2), true);
    }

    public peer_request map_file(int i, long j, int i2) {
        return new peer_request(libtorrent_jni.file_storage_map_file(this.swigCPtr, this, i, j, i2), true);
    }

    public long mtime(int i) {
        return libtorrent_jni.file_storage_mtime(this.swigCPtr, this, i);
    }

    public String name() {
        return libtorrent_jni.file_storage_name(this.swigCPtr, this);
    }

    public int num_files() {
        return libtorrent_jni.file_storage_num_files(this.swigCPtr, this);
    }

    public int num_pieces() {
        return libtorrent_jni.file_storage_num_pieces(this.swigCPtr, this);
    }

    public boolean pad_file_at(int i) {
        return libtorrent_jni.file_storage_pad_file_at(this.swigCPtr, this, i);
    }

    public int piece_index_at_file(int i) {
        return libtorrent_jni.file_storage_piece_index_at_file(this.swigCPtr, this, i);
    }

    public int piece_length() {
        return libtorrent_jni.file_storage_piece_length(this.swigCPtr, this);
    }

    public int piece_size(int i) {
        return libtorrent_jni.file_storage_piece_size(this.swigCPtr, this, i);
    }

    public int piece_size2(int i) {
        return libtorrent_jni.file_storage_piece_size2(this.swigCPtr, this, i);
    }

    public void reserve(int i) {
        libtorrent_jni.file_storage_reserve(this.swigCPtr, this, i);
    }

    public sha256_hash root(int i) {
        return new sha256_hash(libtorrent_jni.file_storage_root(this.swigCPtr, this, i), true);
    }

    public String root_ptr(int i) {
        return libtorrent_jni.file_storage_root_ptr(this.swigCPtr, this, i);
    }

    public void sanitize_symlinks() {
        libtorrent_jni.file_storage_sanitize_symlinks(this.swigCPtr, this);
    }

    public void set_name(String str) {
        libtorrent_jni.file_storage_set_name(this.swigCPtr, this, str);
    }

    public void set_num_pieces(int i) {
        libtorrent_jni.file_storage_set_num_pieces(this.swigCPtr, this, i);
    }

    public void set_piece_length(int i) {
        libtorrent_jni.file_storage_set_piece_length(this.swigCPtr, this, i);
    }

    public long size_on_disk() {
        return libtorrent_jni.file_storage_size_on_disk(this.swigCPtr, this);
    }

    public void swap(file_storage file_storageVar) {
        libtorrent_jni.file_storage_swap(this.swigCPtr, this, getCPtr(file_storageVar), file_storageVar);
    }

    public String symlink(int i) {
        return libtorrent_jni.file_storage_symlink(this.swigCPtr, this, i);
    }

    public long total_size() {
        return libtorrent_jni.file_storage_total_size(this.swigCPtr, this);
    }

    public boolean v2() {
        return libtorrent_jni.file_storage_v2(this.swigCPtr, this);
    }

    public void add_file_ex(error_code error_codeVar, String str, long j, file_flags_t file_flags_tVar, long j2) {
        libtorrent_jni.file_storage_add_file_ex__SWIG_1(this.swigCPtr, this, error_code.getCPtr(error_codeVar), error_codeVar, str, j, file_flags_t.getCPtr(file_flags_tVar), file_flags_tVar, j2);
    }

    public String file_path(int i) {
        return libtorrent_jni.file_storage_file_path__SWIG_1(this.swigCPtr, this, i);
    }

    public void add_file_ex(error_code error_codeVar, String str, long j, file_flags_t file_flags_tVar) {
        libtorrent_jni.file_storage_add_file_ex__SWIG_2(this.swigCPtr, this, error_code.getCPtr(error_codeVar), error_codeVar, str, j, file_flags_t.getCPtr(file_flags_tVar), file_flags_tVar);
    }

    public file_storage() {
        this(libtorrent_jni.new_file_storage__SWIG_0(), true);
    }

    public void add_file_ex(error_code error_codeVar, String str, long j) {
        libtorrent_jni.file_storage_add_file_ex__SWIG_3(this.swigCPtr, this, error_code.getCPtr(error_codeVar), error_codeVar, str, j);
    }

    public file_storage(file_storage file_storageVar) {
        this(libtorrent_jni.new_file_storage__SWIG_1(getCPtr(file_storageVar), file_storageVar), true);
    }
}
