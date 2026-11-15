package org.libtorrent4j.swig;

public class create_torrent {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;
    public static final create_flags_t modification_time = new create_flags_t(libtorrent_jni.create_torrent_modification_time_get(), false);
    public static final create_flags_t symlinks = new create_flags_t(libtorrent_jni.create_torrent_symlinks_get(), false);
    public static final create_flags_t v2_only = new create_flags_t(libtorrent_jni.create_torrent_v2_only_get(), false);
    public static final create_flags_t v1_only = new create_flags_t(libtorrent_jni.create_torrent_v1_only_get(), false);
    public static final create_flags_t canonical_files = new create_flags_t(libtorrent_jni.create_torrent_canonical_files_get(), false);
    public static final create_flags_t no_attributes = new create_flags_t(libtorrent_jni.create_torrent_no_attributes_get(), false);
    public static final create_flags_t canonical_files_no_tail_padding = new create_flags_t(libtorrent_jni.create_torrent_canonical_files_no_tail_padding_get(), false);
    public static final create_flags_t allow_odd_piece_size = new create_flags_t(libtorrent_jni.create_torrent_allow_odd_piece_size_get(), false);

    public create_torrent(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(create_torrent create_torrentVar) {
        if (create_torrentVar == null) {
            return 0L;
        }
        return create_torrentVar.swigCPtr;
    }

    public static long swigRelease(create_torrent create_torrentVar) {
        if (create_torrentVar == null) {
            return 0L;
        }
        if (!create_torrentVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = create_torrentVar.swigCPtr;
        create_torrentVar.swigCMemOwn = false;
        create_torrentVar.delete();
        return j;
    }

    public void add_collection(String str) {
        libtorrent_jni.create_torrent_add_collection(this.swigCPtr, this, str);
    }

    public void add_node(string_int_pair string_int_pairVar) {
        libtorrent_jni.create_torrent_add_node(this.swigCPtr, this, string_int_pair.getCPtr(string_int_pairVar), string_int_pairVar);
    }

    public void add_similar_torrent(sha1_hash sha1_hashVar) {
        libtorrent_jni.create_torrent_add_similar_torrent(this.swigCPtr, this, sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar);
    }

    public void add_tracker(String str) {
        libtorrent_jni.create_torrent_add_tracker__SWIG_0(this.swigCPtr, this, str);
    }

    public void add_url_seed(String str) {
        libtorrent_jni.create_torrent_add_url_seed(this.swigCPtr, this, str);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_create_torrent(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public int end_file() {
        return libtorrent_jni.create_torrent_end_file(this.swigCPtr, this);
    }

    public int end_piece() {
        return libtorrent_jni.create_torrent_end_piece(this.swigCPtr, this);
    }

    public create_file_entry file_at(int i) {
        return new create_file_entry(libtorrent_jni.create_torrent_file_at(this.swigCPtr, this, i), false);
    }

    public void finalize() {
        delete();
    }

    public entry generate() {
        return new entry(libtorrent_jni.create_torrent_generate(this.swigCPtr, this), true);
    }

    public boolean is_v1_only() {
        return libtorrent_jni.create_torrent_is_v1_only(this.swigCPtr, this);
    }

    public boolean is_v2_only() {
        return libtorrent_jni.create_torrent_is_v2_only(this.swigCPtr, this);
    }

    public int num_pieces() {
        return libtorrent_jni.create_torrent_num_pieces(this.swigCPtr, this);
    }

    public int piece_length() {
        return libtorrent_jni.create_torrent_piece_length(this.swigCPtr, this);
    }

    public int piece_size(int i) {
        return libtorrent_jni.create_torrent_piece_size(this.swigCPtr, this, i);
    }

    public boolean priv() {
        return libtorrent_jni.create_torrent_priv(this.swigCPtr, this);
    }

    public void set_comment(String str) {
        libtorrent_jni.create_torrent_set_comment(this.swigCPtr, this, str);
    }

    public void set_creation_date(long j) {
        libtorrent_jni.create_torrent_set_creation_date(this.swigCPtr, this, j);
    }

    public void set_creator(String str) {
        libtorrent_jni.create_torrent_set_creator(this.swigCPtr, this, str);
    }

    public void set_hash(int i, sha1_hash sha1_hashVar) {
        libtorrent_jni.create_torrent_set_hash(this.swigCPtr, this, i, sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar);
    }

    public void set_hash2(int i, int i2, sha256_hash sha256_hashVar) {
        libtorrent_jni.create_torrent_set_hash2(this.swigCPtr, this, i, i2, sha256_hash.getCPtr(sha256_hashVar), sha256_hashVar);
    }

    public void set_priv(boolean z) {
        libtorrent_jni.create_torrent_set_priv(this.swigCPtr, this, z);
    }

    public void set_root_cert(byte_vector byte_vectorVar) {
        libtorrent_jni.create_torrent_set_root_cert(this.swigCPtr, this, byte_vector.getCPtr(byte_vectorVar), byte_vectorVar);
    }

    public long total_size() {
        return libtorrent_jni.create_torrent_total_size(this.swigCPtr, this);
    }

    public void add_tracker(String str, int i) {
        libtorrent_jni.create_torrent_add_tracker__SWIG_1(this.swigCPtr, this, str, i);
    }

    public create_torrent(create_file_entry_vector create_file_entry_vectorVar, int i, create_flags_t create_flags_tVar) {
        this(libtorrent_jni.new_create_torrent__SWIG_0(create_file_entry_vector.getCPtr(create_file_entry_vectorVar), create_file_entry_vectorVar, i, create_flags_t.getCPtr(create_flags_tVar), create_flags_tVar), true);
    }

    public create_torrent(create_file_entry_vector create_file_entry_vectorVar, int i) {
        this(libtorrent_jni.new_create_torrent__SWIG_1(create_file_entry_vector.getCPtr(create_file_entry_vectorVar), create_file_entry_vectorVar, i), true);
    }

    public create_torrent(create_file_entry_vector create_file_entry_vectorVar) {
        this(libtorrent_jni.new_create_torrent__SWIG_2(create_file_entry_vector.getCPtr(create_file_entry_vectorVar), create_file_entry_vectorVar), true);
    }
}
