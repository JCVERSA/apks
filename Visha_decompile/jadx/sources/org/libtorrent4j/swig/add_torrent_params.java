package org.libtorrent4j.swig;

public class add_torrent_params {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public add_torrent_params(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(add_torrent_params add_torrent_paramsVar) {
        if (add_torrent_paramsVar == null) {
            return 0L;
        }
        return add_torrent_paramsVar.swigCPtr;
    }

    public static add_torrent_params load_torrent_buffer(byte_vector byte_vectorVar, error_code error_codeVar, load_torrent_limits load_torrent_limitsVar) {
        return new add_torrent_params(libtorrent_jni.add_torrent_params_load_torrent_buffer__SWIG_0(byte_vector.getCPtr(byte_vectorVar), byte_vectorVar, error_code.getCPtr(error_codeVar), error_codeVar, load_torrent_limits.getCPtr(load_torrent_limitsVar), load_torrent_limitsVar), true);
    }

    public static add_torrent_params load_torrent_file(String str, error_code error_codeVar, load_torrent_limits load_torrent_limitsVar) {
        return new add_torrent_params(libtorrent_jni.add_torrent_params_load_torrent_file__SWIG_0(str, error_code.getCPtr(error_codeVar), error_codeVar, load_torrent_limits.getCPtr(load_torrent_limitsVar), load_torrent_limitsVar), true);
    }

    public static add_torrent_params load_torrent_native_buffer(long j, int i, error_code error_codeVar, load_torrent_limits load_torrent_limitsVar) {
        return new add_torrent_params(libtorrent_jni.add_torrent_params_load_torrent_native_buffer__SWIG_0(j, i, error_code.getCPtr(error_codeVar), error_codeVar, load_torrent_limits.getCPtr(load_torrent_limitsVar), load_torrent_limitsVar), true);
    }

    public static add_torrent_params load_torrent_parsed(bdecode_node bdecode_nodeVar, error_code error_codeVar, load_torrent_limits load_torrent_limitsVar) {
        return new add_torrent_params(libtorrent_jni.add_torrent_params_load_torrent_parsed__SWIG_0(bdecode_node.getCPtr(bdecode_nodeVar), bdecode_nodeVar, error_code.getCPtr(error_codeVar), error_codeVar, load_torrent_limits.getCPtr(load_torrent_limitsVar), load_torrent_limitsVar), true);
    }

    public static long swigRelease(add_torrent_params add_torrent_paramsVar) {
        if (add_torrent_paramsVar == null) {
            return 0L;
        }
        if (!add_torrent_paramsVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = add_torrent_paramsVar.swigCPtr;
        add_torrent_paramsVar.swigCMemOwn = false;
        add_torrent_paramsVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_add_torrent_params(j);
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

    public int getActive_time() {
        return libtorrent_jni.add_torrent_params_active_time_get(this.swigCPtr, this);
    }

    public long getAdded_time() {
        return libtorrent_jni.add_torrent_params_added_time_get(this.swigCPtr, this);
    }

    public tcp_endpoint_vector getBanned_peers() {
        long jAdd_torrent_params_banned_peers_get = libtorrent_jni.add_torrent_params_banned_peers_get(this.swigCPtr, this);
        if (jAdd_torrent_params_banned_peers_get == 0) {
            return null;
        }
        return new tcp_endpoint_vector(jAdd_torrent_params_banned_peers_get, false);
    }

    public String getComment() {
        return libtorrent_jni.add_torrent_params_comment_get(this.swigCPtr, this);
    }

    public long getCompleted_time() {
        return libtorrent_jni.add_torrent_params_completed_time_get(this.swigCPtr, this);
    }

    public String getCreated_by() {
        return libtorrent_jni.add_torrent_params_created_by_get(this.swigCPtr, this);
    }

    public long getCreation_date() {
        return libtorrent_jni.add_torrent_params_creation_date_get(this.swigCPtr, this);
    }

    public string_int_pair_vector getDht_nodes() {
        long jAdd_torrent_params_dht_nodes_get = libtorrent_jni.add_torrent_params_dht_nodes_get(this.swigCPtr, this);
        if (jAdd_torrent_params_dht_nodes_get == 0) {
            return null;
        }
        return new string_int_pair_vector(jAdd_torrent_params_dht_nodes_get, false);
    }

    public int getDownload_limit() {
        return libtorrent_jni.add_torrent_params_download_limit_get(this.swigCPtr, this);
    }

    public int getFinished_time() {
        return libtorrent_jni.add_torrent_params_finished_time_get(this.swigCPtr, this);
    }

    public torrent_flags_t getFlags() {
        long jAdd_torrent_params_flags_get = libtorrent_jni.add_torrent_params_flags_get(this.swigCPtr, this);
        if (jAdd_torrent_params_flags_get == 0) {
            return null;
        }
        return new torrent_flags_t(jAdd_torrent_params_flags_get, false);
    }

    public info_hash_t getInfo_hashes() {
        long jAdd_torrent_params_info_hashes_get = libtorrent_jni.add_torrent_params_info_hashes_get(this.swigCPtr, this);
        if (jAdd_torrent_params_info_hashes_get == 0) {
            return null;
        }
        return new info_hash_t(jAdd_torrent_params_info_hashes_get, false);
    }

    public long getLast_download() {
        return libtorrent_jni.add_torrent_params_last_download_get(this.swigCPtr, this);
    }

    public long getLast_seen_complete() {
        return libtorrent_jni.add_torrent_params_last_seen_complete_get(this.swigCPtr, this);
    }

    public long getLast_upload() {
        return libtorrent_jni.add_torrent_params_last_upload_get(this.swigCPtr, this);
    }

    public int getMax_connections() {
        return libtorrent_jni.add_torrent_params_max_connections_get(this.swigCPtr, this);
    }

    public int getMax_uploads() {
        return libtorrent_jni.add_torrent_params_max_uploads_get(this.swigCPtr, this);
    }

    public String getName() {
        return libtorrent_jni.add_torrent_params_name_get(this.swigCPtr, this);
    }

    public int getNum_complete() {
        return libtorrent_jni.add_torrent_params_num_complete_get(this.swigCPtr, this);
    }

    public int getNum_downloaded() {
        return libtorrent_jni.add_torrent_params_num_downloaded_get(this.swigCPtr, this);
    }

    public int getNum_incomplete() {
        return libtorrent_jni.add_torrent_params_num_incomplete_get(this.swigCPtr, this);
    }

    public String getPart_file_dir() {
        return libtorrent_jni.add_torrent_params_part_file_dir_get(this.swigCPtr, this);
    }

    public tcp_endpoint_vector getPeers() {
        long jAdd_torrent_params_peers_get = libtorrent_jni.add_torrent_params_peers_get(this.swigCPtr, this);
        if (jAdd_torrent_params_peers_get == 0) {
            return null;
        }
        return new tcp_endpoint_vector(jAdd_torrent_params_peers_get, false);
    }

    public String getSave_path() {
        return libtorrent_jni.add_torrent_params_save_path_get(this.swigCPtr, this);
    }

    public int getSeeding_time() {
        return libtorrent_jni.add_torrent_params_seeding_time_get(this.swigCPtr, this);
    }

    public storage_mode_t getStorage_mode() {
        return storage_mode_t.swigToEnum(libtorrent_jni.add_torrent_params_storage_mode_get(this.swigCPtr, this));
    }

    public long getTotal_downloaded() {
        return libtorrent_jni.add_torrent_params_total_downloaded_get(this.swigCPtr, this);
    }

    public long getTotal_uploaded() {
        return libtorrent_jni.add_torrent_params_total_uploaded_get(this.swigCPtr, this);
    }

    public int_vector getTracker_tiers() {
        long jAdd_torrent_params_tracker_tiers_get = libtorrent_jni.add_torrent_params_tracker_tiers_get(this.swigCPtr, this);
        if (jAdd_torrent_params_tracker_tiers_get == 0) {
            return null;
        }
        return new int_vector(jAdd_torrent_params_tracker_tiers_get, false);
    }

    public String getTrackerid() {
        return libtorrent_jni.add_torrent_params_trackerid_get(this.swigCPtr, this);
    }

    public string_vector getTrackers() {
        long jAdd_torrent_params_trackers_get = libtorrent_jni.add_torrent_params_trackers_get(this.swigCPtr, this);
        if (jAdd_torrent_params_trackers_get == 0) {
            return null;
        }
        return new string_vector(jAdd_torrent_params_trackers_get, false);
    }

    public int getUpload_limit() {
        return libtorrent_jni.add_torrent_params_upload_limit_get(this.swigCPtr, this);
    }

    public string_vector getUrl_seeds() {
        long jAdd_torrent_params_url_seeds_get = libtorrent_jni.add_torrent_params_url_seeds_get(this.swigCPtr, this);
        if (jAdd_torrent_params_url_seeds_get == 0) {
            return null;
        }
        return new string_vector(jAdd_torrent_params_url_seeds_get, false);
    }

    public client_data_t getUserdata() {
        long jAdd_torrent_params_userdata_get = libtorrent_jni.add_torrent_params_userdata_get(this.swigCPtr, this);
        if (jAdd_torrent_params_userdata_get == 0) {
            return null;
        }
        return new client_data_t(jAdd_torrent_params_userdata_get, false);
    }

    public int getVersion() {
        return libtorrent_jni.add_torrent_params_version_get(this.swigCPtr, this);
    }

    public byte_vector get_file_priorities() {
        return new byte_vector(libtorrent_jni.add_torrent_params_get_file_priorities(this.swigCPtr, this), true);
    }

    public bitfield get_have_pieces() {
        return new bitfield(libtorrent_jni.add_torrent_params_get_have_pieces(this.swigCPtr, this), true);
    }

    public bitfield_vector get_merkle_tree_mask() {
        return new bitfield_vector(libtorrent_jni.add_torrent_params_get_merkle_tree_mask(this.swigCPtr, this), true);
    }

    public sha256_hash_vector_vector get_merkle_trees() {
        return new sha256_hash_vector_vector(libtorrent_jni.add_torrent_params_get_merkle_trees(this.swigCPtr, this), true);
    }

    public byte_vector get_piece_priorities() {
        return new byte_vector(libtorrent_jni.add_torrent_params_get_piece_priorities(this.swigCPtr, this), true);
    }

    public int_string_map get_renamed_files() {
        return new int_string_map(libtorrent_jni.add_torrent_params_get_renamed_files(this.swigCPtr, this), true);
    }

    public int_bitfield_map get_unfinished_pieces() {
        return new int_bitfield_map(libtorrent_jni.add_torrent_params_get_unfinished_pieces(this.swigCPtr, this), true);
    }

    public bitfield_vector get_verified_leaf_hashes() {
        return new bitfield_vector(libtorrent_jni.add_torrent_params_get_verified_leaf_hashes(this.swigCPtr, this), true);
    }

    public bitfield get_verified_pieces() {
        return new bitfield(libtorrent_jni.add_torrent_params_get_verified_pieces(this.swigCPtr, this), true);
    }

    public void setActive_time(int i) {
        libtorrent_jni.add_torrent_params_active_time_set(this.swigCPtr, this, i);
    }

    public void setAdded_time(long j) {
        libtorrent_jni.add_torrent_params_added_time_set(this.swigCPtr, this, j);
    }

    public void setBanned_peers(tcp_endpoint_vector tcp_endpoint_vectorVar) {
        libtorrent_jni.add_torrent_params_banned_peers_set(this.swigCPtr, this, tcp_endpoint_vector.getCPtr(tcp_endpoint_vectorVar), tcp_endpoint_vectorVar);
    }

    public void setComment(String str) {
        libtorrent_jni.add_torrent_params_comment_set(this.swigCPtr, this, str);
    }

    public void setCompleted_time(long j) {
        libtorrent_jni.add_torrent_params_completed_time_set(this.swigCPtr, this, j);
    }

    public void setCreated_by(String str) {
        libtorrent_jni.add_torrent_params_created_by_set(this.swigCPtr, this, str);
    }

    public void setCreation_date(long j) {
        libtorrent_jni.add_torrent_params_creation_date_set(this.swigCPtr, this, j);
    }

    public void setDht_nodes(string_int_pair_vector string_int_pair_vectorVar) {
        libtorrent_jni.add_torrent_params_dht_nodes_set(this.swigCPtr, this, string_int_pair_vector.getCPtr(string_int_pair_vectorVar), string_int_pair_vectorVar);
    }

    public void setDownload_limit(int i) {
        libtorrent_jni.add_torrent_params_download_limit_set(this.swigCPtr, this, i);
    }

    public void setFinished_time(int i) {
        libtorrent_jni.add_torrent_params_finished_time_set(this.swigCPtr, this, i);
    }

    public void setFlags(torrent_flags_t torrent_flags_tVar) {
        libtorrent_jni.add_torrent_params_flags_set(this.swigCPtr, this, torrent_flags_t.getCPtr(torrent_flags_tVar), torrent_flags_tVar);
    }

    public void setInfo_hashes(info_hash_t info_hash_tVar) {
        libtorrent_jni.add_torrent_params_info_hashes_set(this.swigCPtr, this, info_hash_t.getCPtr(info_hash_tVar), info_hash_tVar);
    }

    public void setLast_download(long j) {
        libtorrent_jni.add_torrent_params_last_download_set(this.swigCPtr, this, j);
    }

    public void setLast_seen_complete(long j) {
        libtorrent_jni.add_torrent_params_last_seen_complete_set(this.swigCPtr, this, j);
    }

    public void setLast_upload(long j) {
        libtorrent_jni.add_torrent_params_last_upload_set(this.swigCPtr, this, j);
    }

    public void setMax_connections(int i) {
        libtorrent_jni.add_torrent_params_max_connections_set(this.swigCPtr, this, i);
    }

    public void setMax_uploads(int i) {
        libtorrent_jni.add_torrent_params_max_uploads_set(this.swigCPtr, this, i);
    }

    public void setName(String str) {
        libtorrent_jni.add_torrent_params_name_set(this.swigCPtr, this, str);
    }

    public void setNum_complete(int i) {
        libtorrent_jni.add_torrent_params_num_complete_set(this.swigCPtr, this, i);
    }

    public void setNum_downloaded(int i) {
        libtorrent_jni.add_torrent_params_num_downloaded_set(this.swigCPtr, this, i);
    }

    public void setNum_incomplete(int i) {
        libtorrent_jni.add_torrent_params_num_incomplete_set(this.swigCPtr, this, i);
    }

    public void setPart_file_dir(String str) {
        libtorrent_jni.add_torrent_params_part_file_dir_set(this.swigCPtr, this, str);
    }

    public void setPeers(tcp_endpoint_vector tcp_endpoint_vectorVar) {
        libtorrent_jni.add_torrent_params_peers_set(this.swigCPtr, this, tcp_endpoint_vector.getCPtr(tcp_endpoint_vectorVar), tcp_endpoint_vectorVar);
    }

    public void setSave_path(String str) {
        libtorrent_jni.add_torrent_params_save_path_set(this.swigCPtr, this, str);
    }

    public void setSeeding_time(int i) {
        libtorrent_jni.add_torrent_params_seeding_time_set(this.swigCPtr, this, i);
    }

    public void setStorage_mode(storage_mode_t storage_mode_tVar) {
        libtorrent_jni.add_torrent_params_storage_mode_set(this.swigCPtr, this, storage_mode_tVar.swigValue());
    }

    public void setTotal_downloaded(long j) {
        libtorrent_jni.add_torrent_params_total_downloaded_set(this.swigCPtr, this, j);
    }

    public void setTotal_uploaded(long j) {
        libtorrent_jni.add_torrent_params_total_uploaded_set(this.swigCPtr, this, j);
    }

    public void setTracker_tiers(int_vector int_vectorVar) {
        libtorrent_jni.add_torrent_params_tracker_tiers_set(this.swigCPtr, this, int_vector.getCPtr(int_vectorVar), int_vectorVar);
    }

    public void setTrackerid(String str) {
        libtorrent_jni.add_torrent_params_trackerid_set(this.swigCPtr, this, str);
    }

    public void setTrackers(string_vector string_vectorVar) {
        libtorrent_jni.add_torrent_params_trackers_set(this.swigCPtr, this, string_vector.getCPtr(string_vectorVar), string_vectorVar);
    }

    public void setUpload_limit(int i) {
        libtorrent_jni.add_torrent_params_upload_limit_set(this.swigCPtr, this, i);
    }

    public void setUrl_seeds(string_vector string_vectorVar) {
        libtorrent_jni.add_torrent_params_url_seeds_set(this.swigCPtr, this, string_vector.getCPtr(string_vectorVar), string_vectorVar);
    }

    public void setUserdata(client_data_t client_data_tVar) {
        libtorrent_jni.add_torrent_params_userdata_set(this.swigCPtr, this, client_data_t.getCPtr(client_data_tVar), client_data_tVar);
    }

    public void setVersion(int i) {
        libtorrent_jni.add_torrent_params_version_set(this.swigCPtr, this, i);
    }

    public void set_file_priorities(byte_vector byte_vectorVar) {
        libtorrent_jni.add_torrent_params_set_file_priorities(this.swigCPtr, this, byte_vector.getCPtr(byte_vectorVar), byte_vectorVar);
    }

    public void set_have_pieces(bitfield bitfieldVar) {
        libtorrent_jni.add_torrent_params_set_have_pieces(this.swigCPtr, this, bitfield.getCPtr(bitfieldVar), bitfieldVar);
    }

    public void set_merkle_tree_mask(bitfield_vector bitfield_vectorVar) {
        libtorrent_jni.add_torrent_params_set_merkle_tree_mask(this.swigCPtr, this, bitfield_vector.getCPtr(bitfield_vectorVar), bitfield_vectorVar);
    }

    public void set_merkle_trees(sha256_hash_vector_vector sha256_hash_vector_vectorVar) {
        libtorrent_jni.add_torrent_params_set_merkle_trees(this.swigCPtr, this, sha256_hash_vector_vector.getCPtr(sha256_hash_vector_vectorVar), sha256_hash_vector_vectorVar);
    }

    public void set_piece_priorities(byte_vector byte_vectorVar) {
        libtorrent_jni.add_torrent_params_set_piece_priorities(this.swigCPtr, this, byte_vector.getCPtr(byte_vectorVar), byte_vectorVar);
    }

    public void set_renamed_files(int_string_map int_string_mapVar) {
        libtorrent_jni.add_torrent_params_set_renamed_files(this.swigCPtr, this, int_string_map.getCPtr(int_string_mapVar), int_string_mapVar);
    }

    public void set_ti(torrent_info torrent_infoVar) {
        libtorrent_jni.add_torrent_params_set_ti(this.swigCPtr, this, torrent_info.getCPtr(torrent_infoVar), torrent_infoVar);
    }

    public void set_unfinished_pieces(int_bitfield_map int_bitfield_mapVar) {
        libtorrent_jni.add_torrent_params_set_unfinished_pieces(this.swigCPtr, this, int_bitfield_map.getCPtr(int_bitfield_mapVar), int_bitfield_mapVar);
    }

    public void set_verified_leaf_hashes(bitfield_vector bitfield_vectorVar) {
        libtorrent_jni.add_torrent_params_set_verified_leaf_hashes(this.swigCPtr, this, bitfield_vector.getCPtr(bitfield_vectorVar), bitfield_vectorVar);
    }

    public void set_verified_pieces(bitfield bitfieldVar) {
        libtorrent_jni.add_torrent_params_set_verified_pieces(this.swigCPtr, this, bitfield.getCPtr(bitfieldVar), bitfieldVar);
    }

    public torrent_info ti_ptr() {
        long jAdd_torrent_params_ti_ptr = libtorrent_jni.add_torrent_params_ti_ptr(this.swigCPtr, this);
        if (jAdd_torrent_params_ti_ptr == 0) {
            return null;
        }
        return new torrent_info(jAdd_torrent_params_ti_ptr, false);
    }

    public static add_torrent_params load_torrent_buffer(byte_vector byte_vectorVar, error_code error_codeVar) {
        return new add_torrent_params(libtorrent_jni.add_torrent_params_load_torrent_buffer__SWIG_1(byte_vector.getCPtr(byte_vectorVar), byte_vectorVar, error_code.getCPtr(error_codeVar), error_codeVar), true);
    }

    public static add_torrent_params load_torrent_file(String str, error_code error_codeVar) {
        return new add_torrent_params(libtorrent_jni.add_torrent_params_load_torrent_file__SWIG_1(str, error_code.getCPtr(error_codeVar), error_codeVar), true);
    }

    public static add_torrent_params load_torrent_native_buffer(long j, int i, error_code error_codeVar) {
        return new add_torrent_params(libtorrent_jni.add_torrent_params_load_torrent_native_buffer__SWIG_1(j, i, error_code.getCPtr(error_codeVar), error_codeVar), true);
    }

    public static add_torrent_params load_torrent_parsed(bdecode_node bdecode_nodeVar, error_code error_codeVar) {
        return new add_torrent_params(libtorrent_jni.add_torrent_params_load_torrent_parsed__SWIG_1(bdecode_node.getCPtr(bdecode_nodeVar), bdecode_nodeVar, error_code.getCPtr(error_codeVar), error_codeVar), true);
    }

    public add_torrent_params() {
        this(libtorrent_jni.new_add_torrent_params__SWIG_0(), true);
    }

    public add_torrent_params(add_torrent_params add_torrent_paramsVar) {
        this(libtorrent_jni.new_add_torrent_params__SWIG_1(swigRelease(add_torrent_paramsVar), add_torrent_paramsVar), true);
    }
}
