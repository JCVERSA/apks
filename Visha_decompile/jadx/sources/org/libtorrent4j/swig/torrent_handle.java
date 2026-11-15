package org.libtorrent4j.swig;

public class torrent_handle {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;
    public static final add_piece_flags_t overwrite_existing = new add_piece_flags_t(libtorrent_jni.torrent_handle_overwrite_existing_get(), false);
    public static final status_flags_t query_distributed_copies = new status_flags_t(libtorrent_jni.torrent_handle_query_distributed_copies_get(), false);
    public static final status_flags_t query_accurate_download_counters = new status_flags_t(libtorrent_jni.torrent_handle_query_accurate_download_counters_get(), false);
    public static final status_flags_t query_last_seen_complete = new status_flags_t(libtorrent_jni.torrent_handle_query_last_seen_complete_get(), false);
    public static final status_flags_t query_pieces = new status_flags_t(libtorrent_jni.torrent_handle_query_pieces_get(), false);
    public static final status_flags_t query_verified_pieces = new status_flags_t(libtorrent_jni.torrent_handle_query_verified_pieces_get(), false);
    public static final status_flags_t query_torrent_file = new status_flags_t(libtorrent_jni.torrent_handle_query_torrent_file_get(), false);
    public static final status_flags_t query_name = new status_flags_t(libtorrent_jni.torrent_handle_query_name_get(), false);
    public static final status_flags_t query_save_path = new status_flags_t(libtorrent_jni.torrent_handle_query_save_path_get(), false);
    public static final deadline_flags_t alert_when_available = new deadline_flags_t(libtorrent_jni.torrent_handle_alert_when_available_get(), false);
    public static final file_progress_flags_t piece_granularity = new file_progress_flags_t(libtorrent_jni.torrent_handle_piece_granularity_get(), false);
    public static final pause_flags_t graceful_pause = new pause_flags_t(libtorrent_jni.torrent_handle_graceful_pause_get(), false);
    public static final resume_data_flags_t flush_disk_cache = new resume_data_flags_t(libtorrent_jni.torrent_handle_flush_disk_cache_get(), false);
    public static final resume_data_flags_t save_info_dict = new resume_data_flags_t(libtorrent_jni.torrent_handle_save_info_dict_get(), false);
    public static final resume_data_flags_t if_counters_changed = new resume_data_flags_t(libtorrent_jni.torrent_handle_if_counters_changed_get(), false);
    public static final resume_data_flags_t if_download_progress = new resume_data_flags_t(libtorrent_jni.torrent_handle_if_download_progress_get(), false);
    public static final resume_data_flags_t if_config_changed = new resume_data_flags_t(libtorrent_jni.torrent_handle_if_config_changed_get(), false);
    public static final resume_data_flags_t if_state_changed = new resume_data_flags_t(libtorrent_jni.torrent_handle_if_state_changed_get(), false);
    public static final resume_data_flags_t if_metadata_changed = new resume_data_flags_t(libtorrent_jni.torrent_handle_if_metadata_changed_get(), false);
    public static final resume_data_flags_t only_if_modified = new resume_data_flags_t(libtorrent_jni.torrent_handle_only_if_modified_get(), false);
    public static final reannounce_flags_t ignore_min_interval = new reannounce_flags_t(libtorrent_jni.torrent_handle_ignore_min_interval_get(), false);
    public static final reannounce_flags_t high_priority = new reannounce_flags_t(libtorrent_jni.torrent_handle_high_priority_get(), false);

    public torrent_handle(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(torrent_handle torrent_handleVar) {
        if (torrent_handleVar == null) {
            return 0L;
        }
        return torrent_handleVar.swigCPtr;
    }

    public static long swigRelease(torrent_handle torrent_handleVar) {
        if (torrent_handleVar == null) {
            return 0L;
        }
        if (!torrent_handleVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = torrent_handleVar.swigCPtr;
        torrent_handleVar.swigCMemOwn = false;
        torrent_handleVar.delete();
        return j;
    }

    public void add_piece_bytes(int i, byte_vector byte_vectorVar, add_piece_flags_t add_piece_flags_tVar) {
        libtorrent_jni.torrent_handle_add_piece_bytes__SWIG_0(this.swigCPtr, this, i, byte_vector.getCPtr(byte_vectorVar), byte_vectorVar, add_piece_flags_t.getCPtr(add_piece_flags_tVar), add_piece_flags_tVar);
    }

    public void add_tracker(announce_entry announce_entryVar) {
        libtorrent_jni.torrent_handle_add_tracker(this.swigCPtr, this, announce_entry.getCPtr(announce_entryVar), announce_entryVar);
    }

    public void add_url_seed(String str) {
        libtorrent_jni.torrent_handle_add_url_seed(this.swigCPtr, this, str);
    }

    public void clear_error() {
        libtorrent_jni.torrent_handle_clear_error(this.swigCPtr, this);
    }

    public void clear_peers() {
        libtorrent_jni.torrent_handle_clear_peers(this.swigCPtr, this);
    }

    public void clear_piece_deadlines() {
        libtorrent_jni.torrent_handle_clear_piece_deadlines(this.swigCPtr, this);
    }

    public void connect_peer(tcp_endpoint tcp_endpointVar, peer_source_flags_t peer_source_flags_tVar, pex_flags_t pex_flags_tVar) {
        libtorrent_jni.torrent_handle_connect_peer__SWIG_0(this.swigCPtr, this, tcp_endpoint.getCPtr(tcp_endpointVar), tcp_endpointVar, peer_source_flags_t.getCPtr(peer_source_flags_tVar), peer_source_flags_tVar, pex_flags_t.getCPtr(pex_flags_tVar), pex_flags_tVar);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_torrent_handle(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public int download_limit() {
        return libtorrent_jni.torrent_handle_download_limit(this.swigCPtr, this);
    }

    public boolean eq(torrent_handle torrent_handleVar) {
        return libtorrent_jni.torrent_handle_eq(this.swigCPtr, this, getCPtr(torrent_handleVar), torrent_handleVar);
    }

    public byte file_priority_ex(int i) {
        return libtorrent_jni.torrent_handle_file_priority_ex__SWIG_0(this.swigCPtr, this, i);
    }

    public void file_progress(int64_vector int64_vectorVar, file_progress_flags_t file_progress_flags_tVar) {
        libtorrent_jni.torrent_handle_file_progress__SWIG_0(this.swigCPtr, this, int64_vector.getCPtr(int64_vectorVar), int64_vectorVar, file_progress_flags_t.getCPtr(file_progress_flags_tVar), file_progress_flags_tVar);
    }

    public void finalize() {
        delete();
    }

    public torrent_flags_t flags() {
        return new torrent_flags_t(libtorrent_jni.torrent_handle_flags(this.swigCPtr, this), true);
    }

    public void flush_cache() {
        libtorrent_jni.torrent_handle_flush_cache(this.swigCPtr, this);
    }

    public void force_dht_announce() {
        libtorrent_jni.torrent_handle_force_dht_announce(this.swigCPtr, this);
    }

    public void force_lsd_announce() {
        libtorrent_jni.torrent_handle_force_lsd_announce(this.swigCPtr, this);
    }

    public void force_reannounce(int i, int i2, reannounce_flags_t reannounce_flags_tVar) {
        libtorrent_jni.torrent_handle_force_reannounce__SWIG_0(this.swigCPtr, this, i, i2, reannounce_flags_t.getCPtr(reannounce_flags_tVar), reannounce_flags_tVar);
    }

    public void force_recheck() {
        libtorrent_jni.torrent_handle_force_recheck(this.swigCPtr, this);
    }

    public partial_piece_info_vector get_download_queue() {
        return new partial_piece_info_vector(libtorrent_jni.torrent_handle_get_download_queue__SWIG_0(this.swigCPtr, this), true);
    }

    public byte_vector get_file_priorities_ex() {
        return new byte_vector(libtorrent_jni.torrent_handle_get_file_priorities_ex(this.swigCPtr, this), true);
    }

    public void get_peer_info(peer_info_vector peer_info_vectorVar) {
        libtorrent_jni.torrent_handle_get_peer_info(this.swigCPtr, this, peer_info_vector.getCPtr(peer_info_vectorVar), peer_info_vectorVar);
    }

    public byte_vector get_piece_priorities_ex() {
        return new byte_vector(libtorrent_jni.torrent_handle_get_piece_priorities_ex(this.swigCPtr, this), true);
    }

    public add_torrent_params get_resume_data(resume_data_flags_t resume_data_flags_tVar) {
        return new add_torrent_params(libtorrent_jni.torrent_handle_get_resume_data__SWIG_0(this.swigCPtr, this, resume_data_flags_t.getCPtr(resume_data_flags_tVar), resume_data_flags_tVar), true);
    }

    public string_vector get_url_seeds() {
        return new string_vector(libtorrent_jni.torrent_handle_get_url_seeds(this.swigCPtr, this), true);
    }

    public boolean have_piece(int i) {
        return libtorrent_jni.torrent_handle_have_piece(this.swigCPtr, this, i);
    }

    public long id() {
        return libtorrent_jni.torrent_handle_id(this.swigCPtr, this);
    }

    public boolean in_session() {
        return libtorrent_jni.torrent_handle_in_session(this.swigCPtr, this);
    }

    public sha1_hash info_hash() {
        return new sha1_hash(libtorrent_jni.torrent_handle_info_hash(this.swigCPtr, this), true);
    }

    public info_hash_t info_hashes() {
        return new info_hash_t(libtorrent_jni.torrent_handle_info_hashes(this.swigCPtr, this), true);
    }

    public boolean is_valid() {
        return libtorrent_jni.torrent_handle_is_valid(this.swigCPtr, this);
    }

    public boolean lt(torrent_handle torrent_handleVar) {
        return libtorrent_jni.torrent_handle_lt(this.swigCPtr, this, getCPtr(torrent_handleVar), torrent_handleVar);
    }

    public int max_connections() {
        return libtorrent_jni.torrent_handle_max_connections(this.swigCPtr, this);
    }

    public int max_uploads() {
        return libtorrent_jni.torrent_handle_max_uploads(this.swigCPtr, this);
    }

    public void move_storage(String str, move_flags_t move_flags_tVar) {
        libtorrent_jni.torrent_handle_move_storage__SWIG_0(this.swigCPtr, this, str, move_flags_tVar.swigValue());
    }

    public boolean ne(torrent_handle torrent_handleVar) {
        return libtorrent_jni.torrent_handle_ne(this.swigCPtr, this, getCPtr(torrent_handleVar), torrent_handleVar);
    }

    public boolean need_save_resume_data() {
        return libtorrent_jni.torrent_handle_need_save_resume_data__SWIG_0(this.swigCPtr, this);
    }

    public void pause(pause_flags_t pause_flags_tVar) {
        libtorrent_jni.torrent_handle_pause__SWIG_0(this.swigCPtr, this, pause_flags_t.getCPtr(pause_flags_tVar), pause_flags_tVar);
    }

    public void piece_availability(int_vector int_vectorVar) {
        libtorrent_jni.torrent_handle_piece_availability(this.swigCPtr, this, int_vector.getCPtr(int_vectorVar), int_vectorVar);
    }

    public sha256_hash_vector_vector piece_layers() {
        return new sha256_hash_vector_vector(libtorrent_jni.torrent_handle_piece_layers(this.swigCPtr, this), true);
    }

    public byte piece_priority_ex(int i) {
        return libtorrent_jni.torrent_handle_piece_priority_ex__SWIG_0(this.swigCPtr, this, i);
    }

    public void post_download_queue() {
        libtorrent_jni.torrent_handle_post_download_queue(this.swigCPtr, this);
    }

    public void post_file_progress(file_progress_flags_t file_progress_flags_tVar) {
        libtorrent_jni.torrent_handle_post_file_progress(this.swigCPtr, this, file_progress_flags_t.getCPtr(file_progress_flags_tVar), file_progress_flags_tVar);
    }

    public void post_peer_info() {
        libtorrent_jni.torrent_handle_post_peer_info(this.swigCPtr, this);
    }

    public void post_piece_availability() {
        libtorrent_jni.torrent_handle_post_piece_availability(this.swigCPtr, this);
    }

    public void post_status(status_flags_t status_flags_tVar) {
        libtorrent_jni.torrent_handle_post_status__SWIG_0(this.swigCPtr, this, status_flags_t.getCPtr(status_flags_tVar), status_flags_tVar);
    }

    public void post_trackers() {
        libtorrent_jni.torrent_handle_post_trackers(this.swigCPtr, this);
    }

    public void prioritize_files_ex(byte_vector byte_vectorVar) {
        libtorrent_jni.torrent_handle_prioritize_files_ex(this.swigCPtr, this, byte_vector.getCPtr(byte_vectorVar), byte_vectorVar);
    }

    public void prioritize_pieces_ex(byte_vector byte_vectorVar) {
        libtorrent_jni.torrent_handle_prioritize_pieces_ex__SWIG_0(this.swigCPtr, this, byte_vector.getCPtr(byte_vectorVar), byte_vectorVar);
    }

    public void queue_position_bottom() {
        libtorrent_jni.torrent_handle_queue_position_bottom(this.swigCPtr, this);
    }

    public void queue_position_down() {
        libtorrent_jni.torrent_handle_queue_position_down(this.swigCPtr, this);
    }

    public int queue_position_ex() {
        return libtorrent_jni.torrent_handle_queue_position_ex(this.swigCPtr, this);
    }

    public void queue_position_set_ex(int i) {
        libtorrent_jni.torrent_handle_queue_position_set_ex(this.swigCPtr, this, i);
    }

    public void queue_position_top() {
        libtorrent_jni.torrent_handle_queue_position_top(this.swigCPtr, this);
    }

    public void queue_position_up() {
        libtorrent_jni.torrent_handle_queue_position_up(this.swigCPtr, this);
    }

    public void read_piece(int i) {
        libtorrent_jni.torrent_handle_read_piece(this.swigCPtr, this, i);
    }

    public void remove_url_seed(String str) {
        libtorrent_jni.torrent_handle_remove_url_seed(this.swigCPtr, this, str);
    }

    public void rename_file(int i, String str) {
        libtorrent_jni.torrent_handle_rename_file(this.swigCPtr, this, i, str);
    }

    public void replace_trackers(announce_entry_vector announce_entry_vectorVar) {
        libtorrent_jni.torrent_handle_replace_trackers(this.swigCPtr, this, announce_entry_vector.getCPtr(announce_entry_vectorVar), announce_entry_vectorVar);
    }

    public void reset_piece_deadline(int i) {
        libtorrent_jni.torrent_handle_reset_piece_deadline(this.swigCPtr, this, i);
    }

    public void resume() {
        libtorrent_jni.torrent_handle_resume(this.swigCPtr, this);
    }

    public void save_resume_data(resume_data_flags_t resume_data_flags_tVar) {
        libtorrent_jni.torrent_handle_save_resume_data__SWIG_0(this.swigCPtr, this, resume_data_flags_t.getCPtr(resume_data_flags_tVar), resume_data_flags_tVar);
    }

    public void scrape_tracker(int i) {
        libtorrent_jni.torrent_handle_scrape_tracker__SWIG_0(this.swigCPtr, this, i);
    }

    public void set_download_limit(int i) {
        libtorrent_jni.torrent_handle_set_download_limit(this.swigCPtr, this, i);
    }

    public void set_flags(torrent_flags_t torrent_flags_tVar, torrent_flags_t torrent_flags_tVar2) {
        libtorrent_jni.torrent_handle_set_flags__SWIG_0(this.swigCPtr, this, torrent_flags_t.getCPtr(torrent_flags_tVar), torrent_flags_tVar, torrent_flags_t.getCPtr(torrent_flags_tVar2), torrent_flags_tVar2);
    }

    public void set_max_connections(int i) {
        libtorrent_jni.torrent_handle_set_max_connections(this.swigCPtr, this, i);
    }

    public void set_max_uploads(int i) {
        libtorrent_jni.torrent_handle_set_max_uploads(this.swigCPtr, this, i);
    }

    public void set_piece_deadline(int i, int i2, deadline_flags_t deadline_flags_tVar) {
        libtorrent_jni.torrent_handle_set_piece_deadline__SWIG_0(this.swigCPtr, this, i, i2, deadline_flags_t.getCPtr(deadline_flags_tVar), deadline_flags_tVar);
    }

    public void set_sequential_range(int i, int i2) {
        libtorrent_jni.torrent_handle_set_sequential_range__SWIG_0(this.swigCPtr, this, i, i2);
    }

    public void set_ssl_certificate(String str, String str2, String str3, String str4) {
        libtorrent_jni.torrent_handle_set_ssl_certificate__SWIG_0(this.swigCPtr, this, str, str2, str3, str4);
    }

    public void set_ssl_certificate_buffer_ex(byte_vector byte_vectorVar, byte_vector byte_vectorVar2, byte_vector byte_vectorVar3) {
        libtorrent_jni.torrent_handle_set_ssl_certificate_buffer_ex(this.swigCPtr, this, byte_vector.getCPtr(byte_vectorVar), byte_vectorVar, byte_vector.getCPtr(byte_vectorVar2), byte_vectorVar2, byte_vector.getCPtr(byte_vectorVar3), byte_vectorVar3);
    }

    public void set_upload_limit(int i) {
        libtorrent_jni.torrent_handle_set_upload_limit(this.swigCPtr, this, i);
    }

    public torrent_status status(status_flags_t status_flags_tVar) {
        return new torrent_status(libtorrent_jni.torrent_handle_status__SWIG_0(this.swigCPtr, this, status_flags_t.getCPtr(status_flags_tVar), status_flags_tVar), true);
    }

    public torrent_info torrent_file_ptr() {
        long j = libtorrent_jni.torrent_handle_torrent_file_ptr(this.swigCPtr, this);
        if (j == 0) {
            return null;
        }
        return new torrent_info(j, false);
    }

    public announce_entry_vector trackers() {
        return new announce_entry_vector(libtorrent_jni.torrent_handle_trackers(this.swigCPtr, this), true);
    }

    public void unset_flags(torrent_flags_t torrent_flags_tVar) {
        libtorrent_jni.torrent_handle_unset_flags(this.swigCPtr, this, torrent_flags_t.getCPtr(torrent_flags_tVar), torrent_flags_tVar);
    }

    public int upload_limit() {
        return libtorrent_jni.torrent_handle_upload_limit(this.swigCPtr, this);
    }

    public client_data_t userdata() {
        return new client_data_t(libtorrent_jni.torrent_handle_userdata(this.swigCPtr, this), true);
    }

    public void add_piece_bytes(int i, byte_vector byte_vectorVar) {
        libtorrent_jni.torrent_handle_add_piece_bytes__SWIG_1(this.swigCPtr, this, i, byte_vector.getCPtr(byte_vectorVar), byte_vectorVar);
    }

    public void connect_peer(tcp_endpoint tcp_endpointVar, peer_source_flags_t peer_source_flags_tVar) {
        libtorrent_jni.torrent_handle_connect_peer__SWIG_1(this.swigCPtr, this, tcp_endpoint.getCPtr(tcp_endpointVar), tcp_endpointVar, peer_source_flags_t.getCPtr(peer_source_flags_tVar), peer_source_flags_tVar);
    }

    public void file_priority_ex(int i, byte b) {
        libtorrent_jni.torrent_handle_file_priority_ex__SWIG_1(this.swigCPtr, this, i, b);
    }

    public void file_progress(int64_vector int64_vectorVar) {
        libtorrent_jni.torrent_handle_file_progress__SWIG_1(this.swigCPtr, this, int64_vector.getCPtr(int64_vectorVar), int64_vectorVar);
    }

    public void force_reannounce(int i, int i2) {
        libtorrent_jni.torrent_handle_force_reannounce__SWIG_1(this.swigCPtr, this, i, i2);
    }

    public void get_download_queue(partial_piece_info_vector partial_piece_info_vectorVar) {
        libtorrent_jni.torrent_handle_get_download_queue__SWIG_1(this.swigCPtr, this, partial_piece_info_vector.getCPtr(partial_piece_info_vectorVar), partial_piece_info_vectorVar);
    }

    public add_torrent_params get_resume_data() {
        return new add_torrent_params(libtorrent_jni.torrent_handle_get_resume_data__SWIG_1(this.swigCPtr, this), true);
    }

    public void move_storage(String str) {
        libtorrent_jni.torrent_handle_move_storage__SWIG_1(this.swigCPtr, this, str);
    }

    public boolean need_save_resume_data(resume_data_flags_t resume_data_flags_tVar) {
        return libtorrent_jni.torrent_handle_need_save_resume_data__SWIG_1(this.swigCPtr, this, resume_data_flags_t.getCPtr(resume_data_flags_tVar), resume_data_flags_tVar);
    }

    public void pause() {
        libtorrent_jni.torrent_handle_pause__SWIG_1(this.swigCPtr, this);
    }

    public void piece_priority_ex(int i, byte b) {
        libtorrent_jni.torrent_handle_piece_priority_ex__SWIG_1(this.swigCPtr, this, i, b);
    }

    public void post_status() {
        libtorrent_jni.torrent_handle_post_status__SWIG_1(this.swigCPtr, this);
    }

    public void prioritize_pieces_ex(int_byte_pair_vector int_byte_pair_vectorVar) {
        libtorrent_jni.torrent_handle_prioritize_pieces_ex__SWIG_1(this.swigCPtr, this, int_byte_pair_vector.getCPtr(int_byte_pair_vectorVar), int_byte_pair_vectorVar);
    }

    public void save_resume_data() {
        libtorrent_jni.torrent_handle_save_resume_data__SWIG_1(this.swigCPtr, this);
    }

    public void scrape_tracker() {
        libtorrent_jni.torrent_handle_scrape_tracker__SWIG_1(this.swigCPtr, this);
    }

    public void set_flags(torrent_flags_t torrent_flags_tVar) {
        libtorrent_jni.torrent_handle_set_flags__SWIG_1(this.swigCPtr, this, torrent_flags_t.getCPtr(torrent_flags_tVar), torrent_flags_tVar);
    }

    public void set_piece_deadline(int i, int i2) {
        libtorrent_jni.torrent_handle_set_piece_deadline__SWIG_1(this.swigCPtr, this, i, i2);
    }

    public void set_sequential_range(int i) {
        libtorrent_jni.torrent_handle_set_sequential_range__SWIG_1(this.swigCPtr, this, i);
    }

    public void set_ssl_certificate(String str, String str2, String str3) {
        libtorrent_jni.torrent_handle_set_ssl_certificate__SWIG_1(this.swigCPtr, this, str, str2, str3);
    }

    public torrent_status status() {
        return new torrent_status(libtorrent_jni.torrent_handle_status__SWIG_1(this.swigCPtr, this), true);
    }

    public void connect_peer(tcp_endpoint tcp_endpointVar) {
        libtorrent_jni.torrent_handle_connect_peer__SWIG_2(this.swigCPtr, this, tcp_endpoint.getCPtr(tcp_endpointVar), tcp_endpointVar);
    }

    public int64_vector file_progress(file_progress_flags_t file_progress_flags_tVar) {
        return new int64_vector(libtorrent_jni.torrent_handle_file_progress__SWIG_2(this.swigCPtr, this, file_progress_flags_t.getCPtr(file_progress_flags_tVar), file_progress_flags_tVar), true);
    }

    public void force_reannounce(int i, String str, reannounce_flags_t reannounce_flags_tVar) {
        libtorrent_jni.torrent_handle_force_reannounce__SWIG_2(this.swigCPtr, this, i, str, reannounce_flags_t.getCPtr(reannounce_flags_tVar), reannounce_flags_tVar);
    }

    public void scrape_tracker(String str) {
        libtorrent_jni.torrent_handle_scrape_tracker__SWIG_2(this.swigCPtr, this, str);
    }

    public int64_vector file_progress() {
        return new int64_vector(libtorrent_jni.torrent_handle_file_progress__SWIG_3(this.swigCPtr, this), true);
    }

    public void force_reannounce(int i, String str) {
        libtorrent_jni.torrent_handle_force_reannounce__SWIG_3(this.swigCPtr, this, i, str);
    }

    public void force_reannounce(int i, reannounce_flags_t reannounce_flags_tVar) {
        libtorrent_jni.torrent_handle_force_reannounce__SWIG_4(this.swigCPtr, this, i, reannounce_flags_t.getCPtr(reannounce_flags_tVar), reannounce_flags_tVar);
    }

    public void force_reannounce(int i) {
        libtorrent_jni.torrent_handle_force_reannounce__SWIG_5(this.swigCPtr, this, i);
    }

    public void force_reannounce() {
        libtorrent_jni.torrent_handle_force_reannounce__SWIG_6(this.swigCPtr, this);
    }
}
