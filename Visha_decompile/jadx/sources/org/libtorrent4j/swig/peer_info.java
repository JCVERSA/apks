package org.libtorrent4j.swig;

public class peer_info {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;
    public static final peer_flags_t interesting = new peer_flags_t(libtorrent_jni.peer_info_interesting_get(), false);
    public static final peer_flags_t choked = new peer_flags_t(libtorrent_jni.peer_info_choked_get(), false);
    public static final peer_flags_t remote_interested = new peer_flags_t(libtorrent_jni.peer_info_remote_interested_get(), false);
    public static final peer_flags_t remote_choked = new peer_flags_t(libtorrent_jni.peer_info_remote_choked_get(), false);
    public static final peer_flags_t supports_extensions = new peer_flags_t(libtorrent_jni.peer_info_supports_extensions_get(), false);
    public static final peer_flags_t outgoing_connection = new peer_flags_t(libtorrent_jni.peer_info_outgoing_connection_get(), false);
    public static final peer_flags_t local_connection = new peer_flags_t(libtorrent_jni.peer_info_local_connection_get(), false);
    public static final peer_flags_t handshake = new peer_flags_t(libtorrent_jni.peer_info_handshake_get(), false);
    public static final peer_flags_t connecting = new peer_flags_t(libtorrent_jni.peer_info_connecting_get(), false);
    public static final peer_flags_t on_parole = new peer_flags_t(libtorrent_jni.peer_info_on_parole_get(), false);
    public static final peer_flags_t seed = new peer_flags_t(libtorrent_jni.peer_info_seed_get(), false);
    public static final peer_flags_t optimistic_unchoke = new peer_flags_t(libtorrent_jni.peer_info_optimistic_unchoke_get(), false);
    public static final peer_flags_t snubbed = new peer_flags_t(libtorrent_jni.peer_info_snubbed_get(), false);
    public static final peer_flags_t upload_only = new peer_flags_t(libtorrent_jni.peer_info_upload_only_get(), false);
    public static final peer_flags_t endgame_mode = new peer_flags_t(libtorrent_jni.peer_info_endgame_mode_get(), false);
    public static final peer_flags_t holepunched = new peer_flags_t(libtorrent_jni.peer_info_holepunched_get(), false);
    public static final peer_flags_t i2p_socket = new peer_flags_t(libtorrent_jni.peer_info_i2p_socket_get(), false);
    public static final peer_flags_t utp_socket = new peer_flags_t(libtorrent_jni.peer_info_utp_socket_get(), false);
    public static final peer_flags_t ssl_socket = new peer_flags_t(libtorrent_jni.peer_info_ssl_socket_get(), false);
    public static final peer_flags_t rc4_encrypted = new peer_flags_t(libtorrent_jni.peer_info_rc4_encrypted_get(), false);
    public static final peer_flags_t plaintext_encrypted = new peer_flags_t(libtorrent_jni.peer_info_plaintext_encrypted_get(), false);
    public static final peer_source_flags_t tracker = new peer_source_flags_t(libtorrent_jni.peer_info_tracker_get(), false);
    public static final peer_source_flags_t dht = new peer_source_flags_t(libtorrent_jni.peer_info_dht_get(), false);
    public static final peer_source_flags_t pex = new peer_source_flags_t(libtorrent_jni.peer_info_pex_get(), false);
    public static final peer_source_flags_t lsd = new peer_source_flags_t(libtorrent_jni.peer_info_lsd_get(), false);
    public static final peer_source_flags_t resume_data = new peer_source_flags_t(libtorrent_jni.peer_info_resume_data_get(), false);
    public static final peer_source_flags_t incoming = new peer_source_flags_t(libtorrent_jni.peer_info_incoming_get(), false);
    public static final connection_type_t standard_bittorrent = new connection_type_t(libtorrent_jni.peer_info_standard_bittorrent_get(), false);
    public static final connection_type_t web_seed = new connection_type_t(libtorrent_jni.peer_info_web_seed_get(), false);
    public static final connection_type_t http_seed = new connection_type_t(libtorrent_jni.peer_info_http_seed_get(), false);
    public static final bandwidth_state_flags_t bw_idle = new bandwidth_state_flags_t(libtorrent_jni.peer_info_bw_idle_get(), false);
    public static final bandwidth_state_flags_t bw_limit = new bandwidth_state_flags_t(libtorrent_jni.peer_info_bw_limit_get(), false);
    public static final bandwidth_state_flags_t bw_network = new bandwidth_state_flags_t(libtorrent_jni.peer_info_bw_network_get(), false);
    public static final bandwidth_state_flags_t bw_disk = new bandwidth_state_flags_t(libtorrent_jni.peer_info_bw_disk_get(), false);

    public peer_info(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(peer_info peer_infoVar) {
        if (peer_infoVar == null) {
            return 0L;
        }
        return peer_infoVar.swigCPtr;
    }

    public static long swigRelease(peer_info peer_infoVar) {
        if (peer_infoVar == null) {
            return 0L;
        }
        if (!peer_infoVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = peer_infoVar.swigCPtr;
        peer_infoVar.swigCMemOwn = false;
        peer_infoVar.delete();
        return j;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_peer_info(j);
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

    public int getBusy_requests() {
        return libtorrent_jni.peer_info_busy_requests_get(this.swigCPtr, this);
    }

    public connection_type_t getConnection_type() {
        long jPeer_info_connection_type_get = libtorrent_jni.peer_info_connection_type_get(this.swigCPtr, this);
        if (jPeer_info_connection_type_get == 0) {
            return null;
        }
        return new connection_type_t(jPeer_info_connection_type_get, false);
    }

    public int getDown_speed() {
        return libtorrent_jni.peer_info_down_speed_get(this.swigCPtr, this);
    }

    public int getDownload_queue_length() {
        return libtorrent_jni.peer_info_download_queue_length_get(this.swigCPtr, this);
    }

    public int getDownload_rate_peak() {
        return libtorrent_jni.peer_info_download_rate_peak_get(this.swigCPtr, this);
    }

    public int getDownloading_block_index() {
        return libtorrent_jni.peer_info_downloading_block_index_get(this.swigCPtr, this);
    }

    public int getDownloading_piece_index() {
        return libtorrent_jni.peer_info_downloading_piece_index_get(this.swigCPtr, this);
    }

    public int getDownloading_progress() {
        return libtorrent_jni.peer_info_downloading_progress_get(this.swigCPtr, this);
    }

    public int getDownloading_total() {
        return libtorrent_jni.peer_info_downloading_total_get(this.swigCPtr, this);
    }

    public int getFailcount() {
        return libtorrent_jni.peer_info_failcount_get(this.swigCPtr, this);
    }

    public peer_flags_t getFlags() {
        long jPeer_info_flags_get = libtorrent_jni.peer_info_flags_get(this.swigCPtr, this);
        if (jPeer_info_flags_get == 0) {
            return null;
        }
        return new peer_flags_t(jPeer_info_flags_get, false);
    }

    public int getNum_hashfails() {
        return libtorrent_jni.peer_info_num_hashfails_get(this.swigCPtr, this);
    }

    public int getNum_pieces() {
        return libtorrent_jni.peer_info_num_pieces_get(this.swigCPtr, this);
    }

    public int getPayload_down_speed() {
        return libtorrent_jni.peer_info_payload_down_speed_get(this.swigCPtr, this);
    }

    public int getPayload_up_speed() {
        return libtorrent_jni.peer_info_payload_up_speed_get(this.swigCPtr, this);
    }

    public int getPending_disk_bytes() {
        return libtorrent_jni.peer_info_pending_disk_bytes_get(this.swigCPtr, this);
    }

    public int getPending_disk_read_bytes() {
        return libtorrent_jni.peer_info_pending_disk_read_bytes_get(this.swigCPtr, this);
    }

    public sha1_hash getPid() {
        long jPeer_info_pid_get = libtorrent_jni.peer_info_pid_get(this.swigCPtr, this);
        if (jPeer_info_pid_get == 0) {
            return null;
        }
        return new sha1_hash(jPeer_info_pid_get, false);
    }

    public float getProgress() {
        return libtorrent_jni.peer_info_progress_get(this.swigCPtr, this);
    }

    public int getProgress_ppm() {
        return libtorrent_jni.peer_info_progress_ppm_get(this.swigCPtr, this);
    }

    public int getQueue_bytes() {
        return libtorrent_jni.peer_info_queue_bytes_get(this.swigCPtr, this);
    }

    public bandwidth_state_flags_t getRead_state() {
        long jPeer_info_read_state_get = libtorrent_jni.peer_info_read_state_get(this.swigCPtr, this);
        if (jPeer_info_read_state_get == 0) {
            return null;
        }
        return new bandwidth_state_flags_t(jPeer_info_read_state_get, false);
    }

    public int getReceive_buffer_size() {
        return libtorrent_jni.peer_info_receive_buffer_size_get(this.swigCPtr, this);
    }

    public int getReceive_buffer_watermark() {
        return libtorrent_jni.peer_info_receive_buffer_watermark_get(this.swigCPtr, this);
    }

    public int getReceive_quota() {
        return libtorrent_jni.peer_info_receive_quota_get(this.swigCPtr, this);
    }

    public int getRequest_timeout() {
        return libtorrent_jni.peer_info_request_timeout_get(this.swigCPtr, this);
    }

    public int getRequests_in_buffer() {
        return libtorrent_jni.peer_info_requests_in_buffer_get(this.swigCPtr, this);
    }

    public int getRtt() {
        return libtorrent_jni.peer_info_rtt_get(this.swigCPtr, this);
    }

    public int getSend_buffer_size() {
        return libtorrent_jni.peer_info_send_buffer_size_get(this.swigCPtr, this);
    }

    public int getSend_quota() {
        return libtorrent_jni.peer_info_send_quota_get(this.swigCPtr, this);
    }

    public peer_source_flags_t getSource() {
        long jPeer_info_source_get = libtorrent_jni.peer_info_source_get(this.swigCPtr, this);
        if (jPeer_info_source_get == 0) {
            return null;
        }
        return new peer_source_flags_t(jPeer_info_source_get, false);
    }

    public int getTarget_dl_queue_length() {
        return libtorrent_jni.peer_info_target_dl_queue_length_get(this.swigCPtr, this);
    }

    public int getTimed_out_requests() {
        return libtorrent_jni.peer_info_timed_out_requests_get(this.swigCPtr, this);
    }

    public long getTotal_download() {
        return libtorrent_jni.peer_info_total_download_get(this.swigCPtr, this);
    }

    public long getTotal_upload() {
        return libtorrent_jni.peer_info_total_upload_get(this.swigCPtr, this);
    }

    public int getUp_speed() {
        return libtorrent_jni.peer_info_up_speed_get(this.swigCPtr, this);
    }

    public int getUpload_queue_length() {
        return libtorrent_jni.peer_info_upload_queue_length_get(this.swigCPtr, this);
    }

    public int getUpload_rate_peak() {
        return libtorrent_jni.peer_info_upload_rate_peak_get(this.swigCPtr, this);
    }

    public int getUsed_receive_buffer() {
        return libtorrent_jni.peer_info_used_receive_buffer_get(this.swigCPtr, this);
    }

    public int getUsed_send_buffer() {
        return libtorrent_jni.peer_info_used_send_buffer_get(this.swigCPtr, this);
    }

    public bandwidth_state_flags_t getWrite_state() {
        long jPeer_info_write_state_get = libtorrent_jni.peer_info_write_state_get(this.swigCPtr, this);
        if (jPeer_info_write_state_get == 0) {
            return null;
        }
        return new bandwidth_state_flags_t(jPeer_info_write_state_get, false);
    }

    public byte_vector get_client() {
        return new byte_vector(libtorrent_jni.peer_info_get_client(this.swigCPtr, this), true);
    }

    public long get_download_queue_time() {
        return libtorrent_jni.peer_info_get_download_queue_time(this.swigCPtr, this);
    }

    public int get_flags() {
        return libtorrent_jni.peer_info_get_flags(this.swigCPtr, this);
    }

    public long get_last_active() {
        return libtorrent_jni.peer_info_get_last_active(this.swigCPtr, this);
    }

    public long get_last_request() {
        return libtorrent_jni.peer_info_get_last_request(this.swigCPtr, this);
    }

    public bitfield get_pieces() {
        return new bitfield(libtorrent_jni.peer_info_get_pieces(this.swigCPtr, this), true);
    }

    public byte get_read_state() {
        return libtorrent_jni.peer_info_get_read_state(this.swigCPtr, this);
    }

    public byte get_source() {
        return libtorrent_jni.peer_info_get_source(this.swigCPtr, this);
    }

    public byte get_write_state() {
        return libtorrent_jni.peer_info_get_write_state(this.swigCPtr, this);
    }

    public tcp_endpoint local_endpoint() {
        return new tcp_endpoint(libtorrent_jni.peer_info_local_endpoint(this.swigCPtr, this), true);
    }

    public tcp_endpoint remote_endpoint() {
        return new tcp_endpoint(libtorrent_jni.peer_info_remote_endpoint(this.swigCPtr, this), true);
    }

    public void setBusy_requests(int i) {
        libtorrent_jni.peer_info_busy_requests_set(this.swigCPtr, this, i);
    }

    public void setConnection_type(connection_type_t connection_type_tVar) {
        libtorrent_jni.peer_info_connection_type_set(this.swigCPtr, this, connection_type_t.getCPtr(connection_type_tVar), connection_type_tVar);
    }

    public void setDown_speed(int i) {
        libtorrent_jni.peer_info_down_speed_set(this.swigCPtr, this, i);
    }

    public void setDownload_queue_length(int i) {
        libtorrent_jni.peer_info_download_queue_length_set(this.swigCPtr, this, i);
    }

    public void setDownload_rate_peak(int i) {
        libtorrent_jni.peer_info_download_rate_peak_set(this.swigCPtr, this, i);
    }

    public void setDownloading_block_index(int i) {
        libtorrent_jni.peer_info_downloading_block_index_set(this.swigCPtr, this, i);
    }

    public void setDownloading_piece_index(int i) {
        libtorrent_jni.peer_info_downloading_piece_index_set(this.swigCPtr, this, i);
    }

    public void setDownloading_progress(int i) {
        libtorrent_jni.peer_info_downloading_progress_set(this.swigCPtr, this, i);
    }

    public void setDownloading_total(int i) {
        libtorrent_jni.peer_info_downloading_total_set(this.swigCPtr, this, i);
    }

    public void setFailcount(int i) {
        libtorrent_jni.peer_info_failcount_set(this.swigCPtr, this, i);
    }

    public void setFlags(peer_flags_t peer_flags_tVar) {
        libtorrent_jni.peer_info_flags_set(this.swigCPtr, this, peer_flags_t.getCPtr(peer_flags_tVar), peer_flags_tVar);
    }

    public void setNum_hashfails(int i) {
        libtorrent_jni.peer_info_num_hashfails_set(this.swigCPtr, this, i);
    }

    public void setNum_pieces(int i) {
        libtorrent_jni.peer_info_num_pieces_set(this.swigCPtr, this, i);
    }

    public void setPayload_down_speed(int i) {
        libtorrent_jni.peer_info_payload_down_speed_set(this.swigCPtr, this, i);
    }

    public void setPayload_up_speed(int i) {
        libtorrent_jni.peer_info_payload_up_speed_set(this.swigCPtr, this, i);
    }

    public void setPending_disk_bytes(int i) {
        libtorrent_jni.peer_info_pending_disk_bytes_set(this.swigCPtr, this, i);
    }

    public void setPending_disk_read_bytes(int i) {
        libtorrent_jni.peer_info_pending_disk_read_bytes_set(this.swigCPtr, this, i);
    }

    public void setPid(sha1_hash sha1_hashVar) {
        libtorrent_jni.peer_info_pid_set(this.swigCPtr, this, sha1_hash.getCPtr(sha1_hashVar), sha1_hashVar);
    }

    public void setProgress(float f) {
        libtorrent_jni.peer_info_progress_set(this.swigCPtr, this, f);
    }

    public void setProgress_ppm(int i) {
        libtorrent_jni.peer_info_progress_ppm_set(this.swigCPtr, this, i);
    }

    public void setQueue_bytes(int i) {
        libtorrent_jni.peer_info_queue_bytes_set(this.swigCPtr, this, i);
    }

    public void setRead_state(bandwidth_state_flags_t bandwidth_state_flags_tVar) {
        libtorrent_jni.peer_info_read_state_set(this.swigCPtr, this, bandwidth_state_flags_t.getCPtr(bandwidth_state_flags_tVar), bandwidth_state_flags_tVar);
    }

    public void setReceive_buffer_size(int i) {
        libtorrent_jni.peer_info_receive_buffer_size_set(this.swigCPtr, this, i);
    }

    public void setReceive_buffer_watermark(int i) {
        libtorrent_jni.peer_info_receive_buffer_watermark_set(this.swigCPtr, this, i);
    }

    public void setReceive_quota(int i) {
        libtorrent_jni.peer_info_receive_quota_set(this.swigCPtr, this, i);
    }

    public void setRequest_timeout(int i) {
        libtorrent_jni.peer_info_request_timeout_set(this.swigCPtr, this, i);
    }

    public void setRequests_in_buffer(int i) {
        libtorrent_jni.peer_info_requests_in_buffer_set(this.swigCPtr, this, i);
    }

    public void setRtt(int i) {
        libtorrent_jni.peer_info_rtt_set(this.swigCPtr, this, i);
    }

    public void setSend_buffer_size(int i) {
        libtorrent_jni.peer_info_send_buffer_size_set(this.swigCPtr, this, i);
    }

    public void setSend_quota(int i) {
        libtorrent_jni.peer_info_send_quota_set(this.swigCPtr, this, i);
    }

    public void setSource(peer_source_flags_t peer_source_flags_tVar) {
        libtorrent_jni.peer_info_source_set(this.swigCPtr, this, peer_source_flags_t.getCPtr(peer_source_flags_tVar), peer_source_flags_tVar);
    }

    public void setTarget_dl_queue_length(int i) {
        libtorrent_jni.peer_info_target_dl_queue_length_set(this.swigCPtr, this, i);
    }

    public void setTimed_out_requests(int i) {
        libtorrent_jni.peer_info_timed_out_requests_set(this.swigCPtr, this, i);
    }

    public void setTotal_download(long j) {
        libtorrent_jni.peer_info_total_download_set(this.swigCPtr, this, j);
    }

    public void setTotal_upload(long j) {
        libtorrent_jni.peer_info_total_upload_set(this.swigCPtr, this, j);
    }

    public void setUp_speed(int i) {
        libtorrent_jni.peer_info_up_speed_set(this.swigCPtr, this, i);
    }

    public void setUpload_queue_length(int i) {
        libtorrent_jni.peer_info_upload_queue_length_set(this.swigCPtr, this, i);
    }

    public void setUpload_rate_peak(int i) {
        libtorrent_jni.peer_info_upload_rate_peak_set(this.swigCPtr, this, i);
    }

    public void setUsed_receive_buffer(int i) {
        libtorrent_jni.peer_info_used_receive_buffer_set(this.swigCPtr, this, i);
    }

    public void setUsed_send_buffer(int i) {
        libtorrent_jni.peer_info_used_send_buffer_set(this.swigCPtr, this, i);
    }

    public void setWrite_state(bandwidth_state_flags_t bandwidth_state_flags_tVar) {
        libtorrent_jni.peer_info_write_state_set(this.swigCPtr, this, bandwidth_state_flags_t.getCPtr(bandwidth_state_flags_tVar), bandwidth_state_flags_tVar);
    }

    public void set_endpoints(tcp_endpoint tcp_endpointVar, tcp_endpoint tcp_endpointVar2) {
        libtorrent_jni.peer_info_set_endpoints(this.swigCPtr, this, tcp_endpoint.getCPtr(tcp_endpointVar), tcp_endpointVar, tcp_endpoint.getCPtr(tcp_endpointVar2), tcp_endpointVar2);
    }

    public peer_info() {
        this(libtorrent_jni.new_peer_info__SWIG_0(), true);
    }

    public peer_info(peer_info peer_infoVar) {
        this(libtorrent_jni.new_peer_info__SWIG_1(getCPtr(peer_infoVar), peer_infoVar), true);
    }
}
