package org.libtorrent4j.swig;

public class torrent_info {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public torrent_info(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static torrent_info create_torrent_info(bdecode_node bdecode_nodeVar, error_code error_codeVar, load_torrent_limits load_torrent_limitsVar) {
        return new torrent_info(libtorrent_jni.torrent_info_create_torrent_info__SWIG_0(bdecode_node.getCPtr(bdecode_nodeVar), bdecode_nodeVar, error_code.getCPtr(error_codeVar), error_codeVar, load_torrent_limits.getCPtr(load_torrent_limitsVar), load_torrent_limitsVar), true);
    }

    public static long getCPtr(torrent_info torrent_infoVar) {
        if (torrent_infoVar == null) {
            return 0L;
        }
        return torrent_infoVar.swigCPtr;
    }

    public static long swigRelease(torrent_info torrent_infoVar) {
        if (torrent_infoVar == null) {
            return 0L;
        }
        if (!torrent_infoVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = torrent_infoVar.swigCPtr;
        torrent_infoVar.swigCMemOwn = false;
        torrent_infoVar.delete();
        return j;
    }

    public int blocks_per_piece() {
        return libtorrent_jni.torrent_info_blocks_per_piece(this.swigCPtr, this);
    }

    public string_vector collections() {
        return new string_vector(libtorrent_jni.torrent_info_collections(this.swigCPtr, this), true);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_torrent_info(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public int end_piece() {
        return libtorrent_jni.torrent_info_end_piece(this.swigCPtr, this);
    }

    public file_storage files_impl() {
        return new file_storage(libtorrent_jni.torrent_info_files_impl(this.swigCPtr, this), false);
    }

    public void finalize() {
        delete();
    }

    public byte_span get_info_section() {
        return new byte_span(libtorrent_jni.torrent_info_get_info_section(this.swigCPtr, this), true);
    }

    public sha1_hash hash_for_piece(int i) {
        return new sha1_hash(libtorrent_jni.torrent_info_hash_for_piece(this.swigCPtr, this, i), true);
    }

    public bdecode_node info(String str) {
        return new bdecode_node(libtorrent_jni.torrent_info_info(this.swigCPtr, this, str), true);
    }

    public sha1_hash info_hash() {
        return new sha1_hash(libtorrent_jni.torrent_info_info_hash(this.swigCPtr, this), true);
    }

    public info_hash_t info_hashes() {
        return new info_hash_t(libtorrent_jni.torrent_info_info_hashes(this.swigCPtr, this), false);
    }

    public void internal_set_collections(string_vector string_vectorVar) {
        libtorrent_jni.torrent_info_internal_set_collections(this.swigCPtr, this, string_vector.getCPtr(string_vectorVar), string_vectorVar);
    }

    public void internal_set_similar(sha1_hash_vector sha1_hash_vectorVar) {
        libtorrent_jni.torrent_info_internal_set_similar(this.swigCPtr, this, sha1_hash_vector.getCPtr(sha1_hash_vectorVar), sha1_hash_vectorVar);
    }

    public boolean is_i2p() {
        return libtorrent_jni.torrent_info_is_i2p(this.swigCPtr, this);
    }

    public boolean is_loaded() {
        return libtorrent_jni.torrent_info_is_loaded(this.swigCPtr, this);
    }

    public boolean is_valid() {
        return libtorrent_jni.torrent_info_is_valid(this.swigCPtr, this);
    }

    public int last_piece() {
        return libtorrent_jni.torrent_info_last_piece(this.swigCPtr, this);
    }

    public file_storage layout() {
        return new file_storage(libtorrent_jni.torrent_info_layout(this.swigCPtr, this), false);
    }

    public file_slice_vector map_block(int i, long j, int i2) {
        return new file_slice_vector(libtorrent_jni.torrent_info_map_block(this.swigCPtr, this, i, j, i2), true);
    }

    public peer_request map_file(int i, long j, int i2) {
        return new peer_request(libtorrent_jni.torrent_info_map_file(this.swigCPtr, this, i, j, i2), true);
    }

    public String name() {
        return libtorrent_jni.torrent_info_name(this.swigCPtr, this);
    }

    public int num_files() {
        return libtorrent_jni.torrent_info_num_files(this.swigCPtr, this);
    }

    public int num_pieces() {
        return libtorrent_jni.torrent_info_num_pieces(this.swigCPtr, this);
    }

    public int piece_length() {
        return libtorrent_jni.torrent_info_piece_length(this.swigCPtr, this);
    }

    public int piece_size(int i) {
        return libtorrent_jni.torrent_info_piece_size(this.swigCPtr, this, i);
    }

    public boolean priv() {
        return libtorrent_jni.torrent_info_priv(this.swigCPtr, this);
    }

    public sha1_hash_vector similar_torrents() {
        return new sha1_hash_vector(libtorrent_jni.torrent_info_similar_torrents(this.swigCPtr, this), true);
    }

    public long size_on_disk() {
        return libtorrent_jni.torrent_info_size_on_disk(this.swigCPtr, this);
    }

    public long total_size() {
        return libtorrent_jni.torrent_info_total_size(this.swigCPtr, this);
    }

    public boolean v1() {
        return libtorrent_jni.torrent_info_v1(this.swigCPtr, this);
    }

    public boolean v2() {
        return libtorrent_jni.torrent_info_v2(this.swigCPtr, this);
    }

    public static torrent_info create_torrent_info(bdecode_node bdecode_nodeVar, error_code error_codeVar) {
        return new torrent_info(libtorrent_jni.torrent_info_create_torrent_info__SWIG_1(bdecode_node.getCPtr(bdecode_nodeVar), bdecode_nodeVar, error_code.getCPtr(error_codeVar), error_codeVar), true);
    }

    public torrent_info(info_hash_t info_hash_tVar) {
        this(libtorrent_jni.new_torrent_info__SWIG_0(info_hash_t.getCPtr(info_hash_tVar), info_hash_tVar), true);
    }

    public torrent_info(torrent_info torrent_infoVar) {
        this(libtorrent_jni.new_torrent_info__SWIG_1(getCPtr(torrent_infoVar), torrent_infoVar), true);
    }
}
