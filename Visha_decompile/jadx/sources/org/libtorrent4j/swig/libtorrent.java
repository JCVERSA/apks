package org.libtorrent4j.swig;

public class libtorrent {
    public static String alert_name(int i) {
        return libtorrent_jni.alert_name(i);
    }

    public static boolean arm_neon_support() {
        return libtorrent_jni.arm_neon_support();
    }

    public static String boost_lib_version() {
        return libtorrent_jni.boost_lib_version();
    }

    public static settings_pack default_settings() {
        return new settings_pack(libtorrent_jni.default_settings(), true);
    }

    public static String device_for_address(session sessionVar, address addressVar, error_code error_codeVar) {
        return libtorrent_jni.device_for_address(session.getCPtr(sessionVar), sessionVar, address.getCPtr(addressVar), addressVar, error_code.getCPtr(error_codeVar), error_codeVar);
    }

    public static byte_vector ed25519_add_scalar_public(byte_vector byte_vectorVar, byte_vector byte_vectorVar2) {
        return new byte_vector(libtorrent_jni.ed25519_add_scalar_public(byte_vector.getCPtr(byte_vectorVar), byte_vectorVar, byte_vector.getCPtr(byte_vectorVar2), byte_vectorVar2), true);
    }

    public static byte_vector ed25519_add_scalar_secret(byte_vector byte_vectorVar, byte_vector byte_vectorVar2) {
        return new byte_vector(libtorrent_jni.ed25519_add_scalar_secret(byte_vector.getCPtr(byte_vectorVar), byte_vectorVar, byte_vector.getCPtr(byte_vectorVar2), byte_vectorVar2), true);
    }

    public static byte_vector_byte_vector_pair ed25519_create_keypair(byte_vector byte_vectorVar) {
        return new byte_vector_byte_vector_pair(libtorrent_jni.ed25519_create_keypair(byte_vector.getCPtr(byte_vectorVar), byte_vectorVar), true);
    }

    public static byte_array_32 ed25519_create_seed() {
        return new byte_array_32(libtorrent_jni.ed25519_create_seed(), true);
    }

    public static byte_vector ed25519_key_exchange(byte_vector byte_vectorVar, byte_vector byte_vectorVar2) {
        return new byte_vector(libtorrent_jni.ed25519_key_exchange(byte_vector.getCPtr(byte_vectorVar), byte_vectorVar, byte_vector.getCPtr(byte_vectorVar2), byte_vectorVar2), true);
    }

    public static byte_vector ed25519_sign(byte_vector byte_vectorVar, byte_vector byte_vectorVar2, byte_vector byte_vectorVar3) {
        return new byte_vector(libtorrent_jni.ed25519_sign(byte_vector.getCPtr(byte_vectorVar), byte_vectorVar, byte_vector.getCPtr(byte_vectorVar2), byte_vectorVar2, byte_vector.getCPtr(byte_vectorVar3), byte_vectorVar3), true);
    }

    public static boolean ed25519_verify(byte_vector byte_vectorVar, byte_vector byte_vectorVar2, byte_vector byte_vectorVar3) {
        return libtorrent_jni.ed25519_verify(byte_vector.getCPtr(byte_vectorVar), byte_vectorVar, byte_vector.getCPtr(byte_vectorVar2), byte_vectorVar2, byte_vector.getCPtr(byte_vectorVar3), byte_vectorVar3);
    }

    public static ip_interface_vector enum_net_interfaces(session sessionVar) {
        return new ip_interface_vector(libtorrent_jni.enum_net_interfaces(session.getCPtr(sessionVar), sessionVar), true);
    }

    public static ip_route_vector enum_routes(session sessionVar) {
        return new ip_route_vector(libtorrent_jni.enum_routes(session.getCPtr(sessionVar), sessionVar), true);
    }

    public static boolean eq(info_hash_t info_hash_tVar, info_hash_t info_hash_tVar2) {
        return libtorrent_jni.eq(info_hash_t.getCPtr(info_hash_tVar), info_hash_tVar, info_hash_t.getCPtr(info_hash_tVar2), info_hash_tVar2);
    }

    public static int find_metric_idx_ex(String str) {
        return libtorrent_jni.find_metric_idx_ex(str);
    }

    public static String generate_fingerprint(String str, int i, int i2, int i3, int i4) {
        return libtorrent_jni.generate_fingerprint__SWIG_0(str, i, i2, i3, i4);
    }

    public static int getAbi_alert_count() {
        return libtorrent_jni.abi_alert_count_get();
    }

    public static torrent_flags_t getAll() {
        long jAll_get = libtorrent_jni.all_get();
        if (jAll_get == 0) {
            return null;
        }
        return new torrent_flags_t(jAll_get, false);
    }

    public static write_torrent_flags_t getAllow_missing_piece_layer() {
        long jAllow_missing_piece_layer_get = libtorrent_jni.allow_missing_piece_layer_get();
        if (jAllow_missing_piece_layer_get == 0) {
            return null;
        }
        return new write_torrent_flags_t(jAllow_missing_piece_layer_get, false);
    }

    public static torrent_flags_t getApply_ip_filter() {
        long jApply_ip_filter_get = libtorrent_jni.apply_ip_filter_get();
        if (jApply_ip_filter_get == 0) {
            return null;
        }
        return new torrent_flags_t(jApply_ip_filter_get, false);
    }

    public static torrent_flags_t getAuto_managed() {
        long jAuto_managed_get = libtorrent_jni.auto_managed_get();
        if (jAuto_managed_get == 0) {
            return null;
        }
        return new torrent_flags_t(jAuto_managed_get, false);
    }

    public static alert_category_t getBlock_progress() {
        long jBlock_progress_get = libtorrent_jni.block_progress_get();
        if (jBlock_progress_get == 0) {
            return null;
        }
        return new alert_category_t(jBlock_progress_get, false);
    }

    public static alert_category_t getConnect() {
        long jConnect_get = libtorrent_jni.connect_get();
        if (jConnect_get == 0) {
            return null;
        }
        return new alert_category_t(jConnect_get, false);
    }

    public static torrent_flags_t getDefault_dont_download() {
        long jDefault_dont_download_get = libtorrent_jni.default_dont_download_get();
        if (jDefault_dont_download_get == 0) {
            return null;
        }
        return new torrent_flags_t(jDefault_dont_download_get, false);
    }

    public static torrent_flags_t getDefault_flags() {
        long jDefault_flags_get = libtorrent_jni.default_flags_get();
        if (jDefault_flags_get == 0) {
            return null;
        }
        return new torrent_flags_t(jDefault_flags_get, false);
    }

    public static alert_category_t getDht() {
        long jDht_get = libtorrent_jni.dht_get();
        if (jDht_get == 0) {
            return null;
        }
        return new alert_category_t(jDht_get, false);
    }

    public static alert_category_t getDht_log() {
        long jDht_log_get = libtorrent_jni.dht_log_get();
        if (jDht_log_get == 0) {
            return null;
        }
        return new alert_category_t(jDht_log_get, false);
    }

    public static alert_category_t getDht_operation() {
        long jDht_operation_get = libtorrent_jni.dht_operation_get();
        if (jDht_operation_get == 0) {
            return null;
        }
        return new alert_category_t(jDht_operation_get, false);
    }

    public static torrent_flags_t getDisable_dht() {
        long jDisable_dht_get = libtorrent_jni.disable_dht_get();
        if (jDisable_dht_get == 0) {
            return null;
        }
        return new torrent_flags_t(jDisable_dht_get, false);
    }

    public static torrent_flags_t getDisable_lsd() {
        long jDisable_lsd_get = libtorrent_jni.disable_lsd_get();
        if (jDisable_lsd_get == 0) {
            return null;
        }
        return new torrent_flags_t(jDisable_lsd_get, false);
    }

    public static torrent_flags_t getDisable_pex() {
        long jDisable_pex_get = libtorrent_jni.disable_pex_get();
        if (jDisable_pex_get == 0) {
            return null;
        }
        return new torrent_flags_t(jDisable_pex_get, false);
    }

    public static torrent_flags_t getDuplicate_is_error() {
        long jDuplicate_is_error_get = libtorrent_jni.duplicate_is_error_get();
        if (jDuplicate_is_error_get == 0) {
            return null;
        }
        return new torrent_flags_t(jDuplicate_is_error_get, false);
    }

    public static alert_category_t getError() {
        long jError_get = libtorrent_jni.error_get();
        if (jError_get == 0) {
            return null;
        }
        return new alert_category_t(jError_get, false);
    }

    public static alert_category_t getFile_progress() {
        long jFile_progress_get = libtorrent_jni.file_progress_get();
        if (jFile_progress_get == 0) {
            return null;
        }
        return new alert_category_t(jFile_progress_get, false);
    }

    public static torrent_flags_t getI2p_torrent() {
        long jI2p_torrent_get = libtorrent_jni.i2p_torrent_get();
        if (jI2p_torrent_get == 0) {
            return null;
        }
        return new torrent_flags_t(jI2p_torrent_get, false);
    }

    public static write_torrent_flags_t getInclude_dht_nodes() {
        long jInclude_dht_nodes_get = libtorrent_jni.include_dht_nodes_get();
        if (jInclude_dht_nodes_get == 0) {
            return null;
        }
        return new write_torrent_flags_t(jInclude_dht_nodes_get, false);
    }

    public static alert_category_t getIncoming_request() {
        long jIncoming_request_get = libtorrent_jni.incoming_request_get();
        if (jIncoming_request_get == 0) {
            return null;
        }
        return new alert_category_t(jIncoming_request_get, false);
    }

    public static alert_category_t getIp_block() {
        long jIp_block_get = libtorrent_jni.ip_block_get();
        if (jIp_block_get == 0) {
            return null;
        }
        return new alert_category_t(jIp_block_get, false);
    }

    public static torrent_flags_t getNeed_save_resume() {
        long jNeed_save_resume_get = libtorrent_jni.need_save_resume_get();
        if (jNeed_save_resume_get == 0) {
            return null;
        }
        return new torrent_flags_t(jNeed_save_resume_get, false);
    }

    public static write_torrent_flags_t getNo_http_seeds() {
        long jNo_http_seeds_get = libtorrent_jni.no_http_seeds_get();
        if (jNo_http_seeds_get == 0) {
            return null;
        }
        return new write_torrent_flags_t(jNo_http_seeds_get, false);
    }

    public static torrent_flags_t getNo_verify_files() {
        long jNo_verify_files_get = libtorrent_jni.no_verify_files_get();
        if (jNo_verify_files_get == 0) {
            return null;
        }
        return new torrent_flags_t(jNo_verify_files_get, false);
    }

    public static int getNum_alert_types() {
        return libtorrent_jni.num_alert_types_get();
    }

    public static long getNum_protocols() {
        return libtorrent_jni.num_protocols_get();
    }

    public static torrent_flags_t getPaused() {
        long jPaused_get = libtorrent_jni.paused_get();
        if (jPaused_get == 0) {
            return null;
        }
        return new torrent_flags_t(jPaused_get, false);
    }

    public static alert_category_t getPeer() {
        long jPeer_get = libtorrent_jni.peer_get();
        if (jPeer_get == 0) {
            return null;
        }
        return new alert_category_t(jPeer_get, false);
    }

    public static alert_category_t getPeer_log() {
        long jPeer_log_get = libtorrent_jni.peer_log_get();
        if (jPeer_log_get == 0) {
            return null;
        }
        return new alert_category_t(jPeer_log_get, false);
    }

    public static alert_category_t getPerformance_warning() {
        long jPerformance_warning_get = libtorrent_jni.performance_warning_get();
        if (jPerformance_warning_get == 0) {
            return null;
        }
        return new alert_category_t(jPerformance_warning_get, false);
    }

    public static pex_flags_t getPex_encryption() {
        long jPex_encryption_get = libtorrent_jni.pex_encryption_get();
        if (jPex_encryption_get == 0) {
            return null;
        }
        return new pex_flags_t(jPex_encryption_get, false);
    }

    public static pex_flags_t getPex_holepunch() {
        long jPex_holepunch_get = libtorrent_jni.pex_holepunch_get();
        if (jPex_holepunch_get == 0) {
            return null;
        }
        return new pex_flags_t(jPex_holepunch_get, false);
    }

    public static pex_flags_t getPex_lt_v2() {
        long jPex_lt_v2_get = libtorrent_jni.pex_lt_v2_get();
        if (jPex_lt_v2_get == 0) {
            return null;
        }
        return new pex_flags_t(jPex_lt_v2_get, false);
    }

    public static pex_flags_t getPex_seed() {
        long jPex_seed_get = libtorrent_jni.pex_seed_get();
        if (jPex_seed_get == 0) {
            return null;
        }
        return new pex_flags_t(jPex_seed_get, false);
    }

    public static pex_flags_t getPex_utp() {
        long jPex_utp_get = libtorrent_jni.pex_utp_get();
        if (jPex_utp_get == 0) {
            return null;
        }
        return new pex_flags_t(jPex_utp_get, false);
    }

    public static alert_category_t getPicker_log() {
        long jPicker_log_get = libtorrent_jni.picker_log_get();
        if (jPicker_log_get == 0) {
            return null;
        }
        return new alert_category_t(jPicker_log_get, false);
    }

    public static alert_category_t getPiece_progress() {
        long jPiece_progress_get = libtorrent_jni.piece_progress_get();
        if (jPiece_progress_get == 0) {
            return null;
        }
        return new alert_category_t(jPiece_progress_get, false);
    }

    public static alert_category_t getPort_mapping() {
        long jPort_mapping_get = libtorrent_jni.port_mapping_get();
        if (jPort_mapping_get == 0) {
            return null;
        }
        return new alert_category_t(jPort_mapping_get, false);
    }

    public static alert_category_t getPort_mapping_log() {
        long jPort_mapping_log_get = libtorrent_jni.port_mapping_log_get();
        if (jPort_mapping_log_get == 0) {
            return null;
        }
        return new alert_category_t(jPort_mapping_log_get, false);
    }

    public static torrent_flags_t getSeed_mode() {
        long jSeed_mode_get = libtorrent_jni.seed_mode_get();
        if (jSeed_mode_get == 0) {
            return null;
        }
        return new torrent_flags_t(jSeed_mode_get, false);
    }

    public static torrent_flags_t getSequential_download() {
        long jSequential_download_get = libtorrent_jni.sequential_download_get();
        if (jSequential_download_get == 0) {
            return null;
        }
        return new torrent_flags_t(jSequential_download_get, false);
    }

    public static alert_category_t getSession_log() {
        long jSession_log_get = libtorrent_jni.session_log_get();
        if (jSession_log_get == 0) {
            return null;
        }
        return new alert_category_t(jSession_log_get, false);
    }

    public static torrent_flags_t getShare_mode() {
        long jShare_mode_get = libtorrent_jni.share_mode_get();
        if (jShare_mode_get == 0) {
            return null;
        }
        return new torrent_flags_t(jShare_mode_get, false);
    }

    public static alert_category_t getStats() {
        long jStats_get = libtorrent_jni.stats_get();
        if (jStats_get == 0) {
            return null;
        }
        return new alert_category_t(jStats_get, false);
    }

    public static alert_category_t getStatus() {
        long jStatus_get = libtorrent_jni.status_get();
        if (jStatus_get == 0) {
            return null;
        }
        return new alert_category_t(jStatus_get, false);
    }

    public static torrent_flags_t getStop_when_ready() {
        long jStop_when_ready_get = libtorrent_jni.stop_when_ready_get();
        if (jStop_when_ready_get == 0) {
            return null;
        }
        return new torrent_flags_t(jStop_when_ready_get, false);
    }

    public static alert_category_t getStorage() {
        long jStorage_get = libtorrent_jni.storage_get();
        if (jStorage_get == 0) {
            return null;
        }
        return new alert_category_t(jStorage_get, false);
    }

    public static torrent_flags_t getSuper_seeding() {
        long jSuper_seeding_get = libtorrent_jni.super_seeding_get();
        if (jSuper_seeding_get == 0) {
            return null;
        }
        return new torrent_flags_t(jSuper_seeding_get, false);
    }

    public static alert_category_t getTorrent_log() {
        long j = libtorrent_jni.torrent_log_get();
        if (j == 0) {
            return null;
        }
        return new alert_category_t(j, false);
    }

    public static alert_category_t getTracker() {
        long jTracker_get = libtorrent_jni.tracker_get();
        if (jTracker_get == 0) {
            return null;
        }
        return new alert_category_t(jTracker_get, false);
    }

    public static torrent_flags_t getUpdate_subscribe() {
        long jUpdate_subscribe_get = libtorrent_jni.update_subscribe_get();
        if (jUpdate_subscribe_get == 0) {
            return null;
        }
        return new torrent_flags_t(jUpdate_subscribe_get, false);
    }

    public static alert_category_t getUpload() {
        long jUpload_get = libtorrent_jni.upload_get();
        if (jUpload_get == 0) {
            return null;
        }
        return new alert_category_t(jUpload_get, false);
    }

    public static torrent_flags_t getUpload_mode() {
        long jUpload_mode_get = libtorrent_jni.upload_mode_get();
        if (jUpload_mode_get == 0) {
            return null;
        }
        return new torrent_flags_t(jUpload_mode_get, false);
    }

    public static int getUser_alert_id() {
        return libtorrent_jni.user_alert_id_get();
    }

    public static address get_gateway(ip_interface ip_interfaceVar, ip_route_vector ip_route_vectorVar) {
        return new address(libtorrent_jni.get_gateway(ip_interface.getCPtr(ip_interfaceVar), ip_interfaceVar, ip_route_vector.getCPtr(ip_route_vectorVar), ip_route_vectorVar), true);
    }

    public static settings_pack high_performance_seed() {
        return new settings_pack(libtorrent_jni.high_performance_seed(), true);
    }

    public static create_file_entry_vector list_files_ex(String str, list_files_listener list_files_listenerVar, create_flags_t create_flags_tVar) {
        return new create_file_entry_vector(libtorrent_jni.list_files_ex(str, list_files_listener.getCPtr(list_files_listenerVar), list_files_listenerVar, create_flags_t.getCPtr(create_flags_tVar), create_flags_tVar), true);
    }

    public static add_torrent_params load_torrent_file(String str, error_code error_codeVar, load_torrent_limits load_torrent_limitsVar) {
        return new add_torrent_params(libtorrent_jni.load_torrent_file__SWIG_0(str, error_code.getCPtr(error_codeVar), error_codeVar, load_torrent_limits.getCPtr(load_torrent_limitsVar), load_torrent_limitsVar), true);
    }

    public static add_torrent_params load_torrent_parsed(bdecode_node bdecode_nodeVar, error_code error_codeVar, load_torrent_limits load_torrent_limitsVar) {
        return new add_torrent_params(libtorrent_jni.load_torrent_parsed__SWIG_0(bdecode_node.getCPtr(bdecode_nodeVar), bdecode_nodeVar, error_code.getCPtr(error_codeVar), error_codeVar, load_torrent_limits.getCPtr(load_torrent_limitsVar), load_torrent_limitsVar), true);
    }

    public static String make_magnet_uri(add_torrent_params add_torrent_paramsVar) {
        return libtorrent_jni.make_magnet_uri(add_torrent_params.getCPtr(add_torrent_paramsVar), add_torrent_paramsVar);
    }

    public static String make_magnet_uri_from_torrent_handle(torrent_handle torrent_handleVar) {
        return libtorrent_jni.make_magnet_uri_from_torrent_handle(torrent_handle.getCPtr(torrent_handleVar), torrent_handleVar);
    }

    public static settings_pack min_memory_usage() {
        return new settings_pack(libtorrent_jni.min_memory_usage(), true);
    }

    public static String name_for_setting(int i) {
        return libtorrent_jni.name_for_setting(i);
    }

    public static boolean ne(info_hash_t info_hash_tVar, info_hash_t info_hash_tVar2) {
        return libtorrent_jni.ne(info_hash_t.getCPtr(info_hash_tVar), info_hash_tVar, info_hash_t.getCPtr(info_hash_tVar2), info_hash_tVar2);
    }

    public static String openssl_version_text() {
        return libtorrent_jni.openssl_version_text();
    }

    public static String operation_name(operation_t operation_tVar) {
        return libtorrent_jni.operation_name(operation_tVar.swigValue());
    }

    public static add_torrent_params parse_magnet_uri(String str, error_code error_codeVar) {
        return new add_torrent_params(libtorrent_jni.parse_magnet_uri(str, error_code.getCPtr(error_codeVar), error_codeVar), true);
    }

    public static String print_entry(bdecode_node bdecode_nodeVar, boolean z, int i) {
        return libtorrent_jni.print_entry__SWIG_0(bdecode_node.getCPtr(bdecode_nodeVar), bdecode_nodeVar, z, i);
    }

    public static add_torrent_params read_resume_data(bdecode_node bdecode_nodeVar, error_code error_codeVar, int i) {
        return new add_torrent_params(libtorrent_jni.read_resume_data__SWIG_0(bdecode_node.getCPtr(bdecode_nodeVar), bdecode_nodeVar, error_code.getCPtr(error_codeVar), error_codeVar, i), true);
    }

    public static add_torrent_params read_resume_data_ex(byte_vector byte_vectorVar, error_code error_codeVar, load_torrent_limits load_torrent_limitsVar) {
        return new add_torrent_params(libtorrent_jni.read_resume_data_ex__SWIG_0(byte_vector.getCPtr(byte_vectorVar), byte_vectorVar, error_code.getCPtr(error_codeVar), error_codeVar, load_torrent_limits.getCPtr(load_torrent_limitsVar), load_torrent_limitsVar), true);
    }

    public static stats_metric_vector session_stats_metrics() {
        return new stats_metric_vector(libtorrent_jni.session_stats_metrics(), true);
    }

    public static void set_piece_hashes_ex(create_torrent create_torrentVar, String str, set_piece_hashes_listener set_piece_hashes_listenerVar, error_code error_codeVar) {
        libtorrent_jni.set_piece_hashes_ex(create_torrent.getCPtr(create_torrentVar), create_torrentVar, str, set_piece_hashes_listener.getCPtr(set_piece_hashes_listenerVar), set_piece_hashes_listenerVar, error_code.getCPtr(error_codeVar), error_codeVar);
    }

    public static String version() {
        return libtorrent_jni.version();
    }

    public static entry write_resume_data(add_torrent_params add_torrent_paramsVar) {
        return new entry(libtorrent_jni.write_resume_data(add_torrent_params.getCPtr(add_torrent_paramsVar), add_torrent_paramsVar), true);
    }

    public static byte_vector write_resume_data_buf_ex(add_torrent_params add_torrent_paramsVar) {
        return new byte_vector(libtorrent_jni.write_resume_data_buf_ex(add_torrent_params.getCPtr(add_torrent_paramsVar), add_torrent_paramsVar), true);
    }

    public static entry write_torrent_file(add_torrent_params add_torrent_paramsVar) {
        return new entry(libtorrent_jni.write_torrent_file__SWIG_0(add_torrent_params.getCPtr(add_torrent_paramsVar), add_torrent_paramsVar), true);
    }

    public static byte_vector write_torrent_file_buf_ex(add_torrent_params add_torrent_paramsVar) {
        return new byte_vector(libtorrent_jni.write_torrent_file_buf_ex(add_torrent_params.getCPtr(add_torrent_paramsVar), add_torrent_paramsVar), true);
    }

    public static String generate_fingerprint(String str, int i, int i2, int i3) {
        return libtorrent_jni.generate_fingerprint__SWIG_1(str, i, i2, i3);
    }

    public static add_torrent_params load_torrent_file(String str, load_torrent_limits load_torrent_limitsVar) {
        return new add_torrent_params(libtorrent_jni.load_torrent_file__SWIG_1(str, load_torrent_limits.getCPtr(load_torrent_limitsVar), load_torrent_limitsVar), true);
    }

    public static add_torrent_params load_torrent_parsed(bdecode_node bdecode_nodeVar, load_torrent_limits load_torrent_limitsVar) {
        return new add_torrent_params(libtorrent_jni.load_torrent_parsed__SWIG_1(bdecode_node.getCPtr(bdecode_nodeVar), bdecode_nodeVar, load_torrent_limits.getCPtr(load_torrent_limitsVar), load_torrent_limitsVar), true);
    }

    public static String print_entry(bdecode_node bdecode_nodeVar, boolean z) {
        return libtorrent_jni.print_entry__SWIG_1(bdecode_node.getCPtr(bdecode_nodeVar), bdecode_nodeVar, z);
    }

    public static add_torrent_params read_resume_data(bdecode_node bdecode_nodeVar, error_code error_codeVar) {
        return new add_torrent_params(libtorrent_jni.read_resume_data__SWIG_1(bdecode_node.getCPtr(bdecode_nodeVar), bdecode_nodeVar, error_code.getCPtr(error_codeVar), error_codeVar), true);
    }

    public static add_torrent_params read_resume_data_ex(byte_vector byte_vectorVar, error_code error_codeVar) {
        return new add_torrent_params(libtorrent_jni.read_resume_data_ex__SWIG_1(byte_vector.getCPtr(byte_vectorVar), byte_vectorVar, error_code.getCPtr(error_codeVar), error_codeVar), true);
    }

    public static entry write_torrent_file(add_torrent_params add_torrent_paramsVar, write_torrent_flags_t write_torrent_flags_tVar) {
        return new entry(libtorrent_jni.write_torrent_file__SWIG_1(add_torrent_params.getCPtr(add_torrent_paramsVar), add_torrent_paramsVar, write_torrent_flags_t.getCPtr(write_torrent_flags_tVar), write_torrent_flags_tVar), true);
    }

    public static String generate_fingerprint(String str, int i, int i2) {
        return libtorrent_jni.generate_fingerprint__SWIG_2(str, i, i2);
    }

    public static add_torrent_params load_torrent_file(String str) {
        return new add_torrent_params(libtorrent_jni.load_torrent_file__SWIG_2(str), true);
    }

    public static add_torrent_params load_torrent_parsed(bdecode_node bdecode_nodeVar) {
        return new add_torrent_params(libtorrent_jni.load_torrent_parsed__SWIG_2(bdecode_node.getCPtr(bdecode_nodeVar), bdecode_nodeVar), true);
    }

    public static String print_entry(bdecode_node bdecode_nodeVar) {
        return libtorrent_jni.print_entry__SWIG_2(bdecode_node.getCPtr(bdecode_nodeVar), bdecode_nodeVar);
    }

    public static String generate_fingerprint(String str, int i) {
        return libtorrent_jni.generate_fingerprint__SWIG_3(str, i);
    }
}
