.class public Lorg/libtorrent4j/swig/libtorrent_jni;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, ""

    :try_start_0
    const-string v1, "libtorrent4j.jni.path"

    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "torrent4j"

    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "windows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->swig_module_init()V

    return-void

    :goto_2
    new-instance v1, Ljava/lang/LinkageError;

    const-string v2, "Look for your architecture binary instructions at: https://github.com/aldenml/libtorrent4j"

    invoke-direct {v1, v2, v0}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SwigDirector_alert_notify_callback_on_alert(Lorg/libtorrent4j/swig/alert_notify_callback;)V
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/alert_notify_callback;->on_alert()V

    return-void
.end method

.method public static SwigDirector_list_files_listener_pred(Lorg/libtorrent4j/swig/list_files_listener;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/list_files_listener;->pred(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static SwigDirector_set_piece_hashes_listener_progress(Lorg/libtorrent4j/swig/set_piece_hashes_listener;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/set_piece_hashes_listener;->progress(I)V

    return-void
.end method

.method public static final native abi_alert_count_get()I
.end method

.method public static final native accepted_get()I
.end method

.method public static final native add_piece_flags_t_all()J
.end method

.method public static final native add_piece_flags_t_and_(JLorg/libtorrent4j/swig/add_piece_flags_t;JLorg/libtorrent4j/swig/add_piece_flags_t;)J
.end method

.method public static final native add_piece_flags_t_eq(JLorg/libtorrent4j/swig/add_piece_flags_t;JLorg/libtorrent4j/swig/add_piece_flags_t;)Z
.end method

.method public static final native add_piece_flags_t_from_int(I)J
.end method

.method public static final native add_piece_flags_t_inv(JLorg/libtorrent4j/swig/add_piece_flags_t;)J
.end method

.method public static final native add_piece_flags_t_ne(JLorg/libtorrent4j/swig/add_piece_flags_t;JLorg/libtorrent4j/swig/add_piece_flags_t;)Z
.end method

.method public static final native add_piece_flags_t_non_zero(JLorg/libtorrent4j/swig/add_piece_flags_t;)Z
.end method

.method public static final native add_piece_flags_t_or_(JLorg/libtorrent4j/swig/add_piece_flags_t;JLorg/libtorrent4j/swig/add_piece_flags_t;)J
.end method

.method public static final native add_piece_flags_t_to_int(JLorg/libtorrent4j/swig/add_piece_flags_t;)I
.end method

.method public static final native add_piece_flags_t_xor_(JLorg/libtorrent4j/swig/add_piece_flags_t;JLorg/libtorrent4j/swig/add_piece_flags_t;)J
.end method

.method public static final native add_torrent_alert_SWIGUpcast(J)J
.end method

.method public static final native add_torrent_alert_alert_type_get()I
.end method

.method public static final native add_torrent_alert_category(JLorg/libtorrent4j/swig/add_torrent_alert;)J
.end method

.method public static final native add_torrent_alert_error_get(JLorg/libtorrent4j/swig/add_torrent_alert;)J
.end method

.method public static final native add_torrent_alert_error_set(JLorg/libtorrent4j/swig/add_torrent_alert;JLorg/libtorrent4j/swig/error_code;)V
.end method

.method public static final native add_torrent_alert_message(JLorg/libtorrent4j/swig/add_torrent_alert;)Ljava/lang/String;
.end method

.method public static final native add_torrent_alert_params_get(JLorg/libtorrent4j/swig/add_torrent_alert;)J
.end method

.method public static final native add_torrent_alert_params_set(JLorg/libtorrent4j/swig/add_torrent_alert;JLorg/libtorrent4j/swig/add_torrent_params;)V
.end method

.method public static final native add_torrent_alert_priority_get()I
.end method

.method public static final native add_torrent_alert_static_category_get()J
.end method

.method public static final native add_torrent_alert_type(JLorg/libtorrent4j/swig/add_torrent_alert;)I
.end method

.method public static final native add_torrent_alert_what(JLorg/libtorrent4j/swig/add_torrent_alert;)Ljava/lang/String;
.end method

.method public static final native add_torrent_params_active_time_get(JLorg/libtorrent4j/swig/add_torrent_params;)I
.end method

.method public static final native add_torrent_params_active_time_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V
.end method

.method public static final native add_torrent_params_added_time_get(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_added_time_set(JLorg/libtorrent4j/swig/add_torrent_params;J)V
.end method

.method public static final native add_torrent_params_banned_peers_get(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_banned_peers_set(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/tcp_endpoint_vector;)V
.end method

.method public static final native add_torrent_params_comment_get(JLorg/libtorrent4j/swig/add_torrent_params;)Ljava/lang/String;
.end method

.method public static final native add_torrent_params_comment_set(JLorg/libtorrent4j/swig/add_torrent_params;Ljava/lang/String;)V
.end method

.method public static final native add_torrent_params_completed_time_get(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_completed_time_set(JLorg/libtorrent4j/swig/add_torrent_params;J)V
.end method

.method public static final native add_torrent_params_created_by_get(JLorg/libtorrent4j/swig/add_torrent_params;)Ljava/lang/String;
.end method

.method public static final native add_torrent_params_created_by_set(JLorg/libtorrent4j/swig/add_torrent_params;Ljava/lang/String;)V
.end method

.method public static final native add_torrent_params_creation_date_get(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_creation_date_set(JLorg/libtorrent4j/swig/add_torrent_params;J)V
.end method

.method public static final native add_torrent_params_dht_nodes_get(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_dht_nodes_set(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/string_int_pair_vector;)V
.end method

.method public static final native add_torrent_params_download_limit_get(JLorg/libtorrent4j/swig/add_torrent_params;)I
.end method

.method public static final native add_torrent_params_download_limit_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V
.end method

.method public static final native add_torrent_params_finished_time_get(JLorg/libtorrent4j/swig/add_torrent_params;)I
.end method

.method public static final native add_torrent_params_finished_time_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V
.end method

.method public static final native add_torrent_params_flags_get(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_flags_set(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/torrent_flags_t;)V
.end method

.method public static final native add_torrent_params_get_file_priorities(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_get_have_pieces(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_get_merkle_tree_mask(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_get_merkle_trees(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_get_piece_priorities(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_get_renamed_files(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_get_unfinished_pieces(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_get_verified_leaf_hashes(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_get_verified_pieces(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_info_hashes_get(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_info_hashes_set(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/info_hash_t;)V
.end method

.method public static final native add_torrent_params_last_download_get(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_last_download_set(JLorg/libtorrent4j/swig/add_torrent_params;J)V
.end method

.method public static final native add_torrent_params_last_seen_complete_get(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_last_seen_complete_set(JLorg/libtorrent4j/swig/add_torrent_params;J)V
.end method

.method public static final native add_torrent_params_last_upload_get(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_last_upload_set(JLorg/libtorrent4j/swig/add_torrent_params;J)V
.end method

.method public static final native add_torrent_params_load_torrent_buffer__SWIG_0(JLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/error_code;JLorg/libtorrent4j/swig/load_torrent_limits;)J
.end method

.method public static final native add_torrent_params_load_torrent_buffer__SWIG_1(JLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/error_code;)J
.end method

.method public static final native add_torrent_params_load_torrent_file__SWIG_0(Ljava/lang/String;JLorg/libtorrent4j/swig/error_code;JLorg/libtorrent4j/swig/load_torrent_limits;)J
.end method

.method public static final native add_torrent_params_load_torrent_file__SWIG_1(Ljava/lang/String;JLorg/libtorrent4j/swig/error_code;)J
.end method

.method public static final native add_torrent_params_load_torrent_native_buffer__SWIG_0(JIJLorg/libtorrent4j/swig/error_code;JLorg/libtorrent4j/swig/load_torrent_limits;)J
.end method

.method public static final native add_torrent_params_load_torrent_native_buffer__SWIG_1(JIJLorg/libtorrent4j/swig/error_code;)J
.end method

.method public static final native add_torrent_params_load_torrent_parsed__SWIG_0(JLorg/libtorrent4j/swig/bdecode_node;JLorg/libtorrent4j/swig/error_code;JLorg/libtorrent4j/swig/load_torrent_limits;)J
.end method

.method public static final native add_torrent_params_load_torrent_parsed__SWIG_1(JLorg/libtorrent4j/swig/bdecode_node;JLorg/libtorrent4j/swig/error_code;)J
.end method

.method public static final native add_torrent_params_max_connections_get(JLorg/libtorrent4j/swig/add_torrent_params;)I
.end method

.method public static final native add_torrent_params_max_connections_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V
.end method

.method public static final native add_torrent_params_max_uploads_get(JLorg/libtorrent4j/swig/add_torrent_params;)I
.end method

.method public static final native add_torrent_params_max_uploads_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V
.end method

.method public static final native add_torrent_params_name_get(JLorg/libtorrent4j/swig/add_torrent_params;)Ljava/lang/String;
.end method

.method public static final native add_torrent_params_name_set(JLorg/libtorrent4j/swig/add_torrent_params;Ljava/lang/String;)V
.end method

.method public static final native add_torrent_params_num_complete_get(JLorg/libtorrent4j/swig/add_torrent_params;)I
.end method

.method public static final native add_torrent_params_num_complete_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V
.end method

.method public static final native add_torrent_params_num_downloaded_get(JLorg/libtorrent4j/swig/add_torrent_params;)I
.end method

.method public static final native add_torrent_params_num_downloaded_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V
.end method

.method public static final native add_torrent_params_num_incomplete_get(JLorg/libtorrent4j/swig/add_torrent_params;)I
.end method

.method public static final native add_torrent_params_num_incomplete_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V
.end method

.method public static final native add_torrent_params_part_file_dir_get(JLorg/libtorrent4j/swig/add_torrent_params;)Ljava/lang/String;
.end method

.method public static final native add_torrent_params_part_file_dir_set(JLorg/libtorrent4j/swig/add_torrent_params;Ljava/lang/String;)V
.end method

.method public static final native add_torrent_params_peers_get(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_peers_set(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/tcp_endpoint_vector;)V
.end method

.method public static final native add_torrent_params_save_path_get(JLorg/libtorrent4j/swig/add_torrent_params;)Ljava/lang/String;
.end method

.method public static final native add_torrent_params_save_path_set(JLorg/libtorrent4j/swig/add_torrent_params;Ljava/lang/String;)V
.end method

.method public static final native add_torrent_params_seeding_time_get(JLorg/libtorrent4j/swig/add_torrent_params;)I
.end method

.method public static final native add_torrent_params_seeding_time_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V
.end method

.method public static final native add_torrent_params_set_file_priorities(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native add_torrent_params_set_have_pieces(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/bitfield;)V
.end method

.method public static final native add_torrent_params_set_merkle_tree_mask(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/bitfield_vector;)V
.end method

.method public static final native add_torrent_params_set_merkle_trees(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/sha256_hash_vector_vector;)V
.end method

.method public static final native add_torrent_params_set_piece_priorities(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native add_torrent_params_set_renamed_files(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/int_string_map;)V
.end method

.method public static final native add_torrent_params_set_ti(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/torrent_info;)V
.end method

.method public static final native add_torrent_params_set_unfinished_pieces(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/int_bitfield_map;)V
.end method

.method public static final native add_torrent_params_set_verified_leaf_hashes(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/bitfield_vector;)V
.end method

.method public static final native add_torrent_params_set_verified_pieces(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/bitfield;)V
.end method

.method public static final native add_torrent_params_storage_mode_get(JLorg/libtorrent4j/swig/add_torrent_params;)I
.end method

.method public static final native add_torrent_params_storage_mode_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V
.end method

.method public static final native add_torrent_params_ti_ptr(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_total_downloaded_get(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_total_downloaded_set(JLorg/libtorrent4j/swig/add_torrent_params;J)V
.end method

.method public static final native add_torrent_params_total_uploaded_get(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_total_uploaded_set(JLorg/libtorrent4j/swig/add_torrent_params;J)V
.end method

.method public static final native add_torrent_params_tracker_tiers_get(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_tracker_tiers_set(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/int_vector;)V
.end method

.method public static final native add_torrent_params_trackerid_get(JLorg/libtorrent4j/swig/add_torrent_params;)Ljava/lang/String;
.end method

.method public static final native add_torrent_params_trackerid_set(JLorg/libtorrent4j/swig/add_torrent_params;Ljava/lang/String;)V
.end method

.method public static final native add_torrent_params_trackers_get(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_trackers_set(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/string_vector;)V
.end method

.method public static final native add_torrent_params_upload_limit_get(JLorg/libtorrent4j/swig/add_torrent_params;)I
.end method

.method public static final native add_torrent_params_upload_limit_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V
.end method

.method public static final native add_torrent_params_url_seeds_get(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_url_seeds_set(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/string_vector;)V
.end method

.method public static final native add_torrent_params_userdata_get(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native add_torrent_params_userdata_set(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/client_data_t;)V
.end method

.method public static final native add_torrent_params_version_get(JLorg/libtorrent4j/swig/add_torrent_params;)I
.end method

.method public static final native add_torrent_params_version_set(JLorg/libtorrent4j/swig/add_torrent_params;I)V
.end method

.method public static final native address_compare(JLorg/libtorrent4j/swig/address;JLorg/libtorrent4j/swig/address;)I
.end method

.method public static final native address_from_string(Ljava/lang/String;JLorg/libtorrent4j/swig/error_code;)J
.end method

.method public static final native address_hash_code(JLorg/libtorrent4j/swig/address;)I
.end method

.method public static final native address_is_loopback(JLorg/libtorrent4j/swig/address;)Z
.end method

.method public static final native address_is_multicast(JLorg/libtorrent4j/swig/address;)Z
.end method

.method public static final native address_is_unspecified(JLorg/libtorrent4j/swig/address;)Z
.end method

.method public static final native address_is_v4(JLorg/libtorrent4j/swig/address;)Z
.end method

.method public static final native address_is_v6(JLorg/libtorrent4j/swig/address;)Z
.end method

.method public static final native address_op_lt(JLorg/libtorrent4j/swig/address;JLorg/libtorrent4j/swig/address;)Z
.end method

.method public static final native address_sha1_hash_pair_first_get(JLorg/libtorrent4j/swig/address_sha1_hash_pair;)J
.end method

.method public static final native address_sha1_hash_pair_first_set(JLorg/libtorrent4j/swig/address_sha1_hash_pair;JLorg/libtorrent4j/swig/address;)V
.end method

.method public static final native address_sha1_hash_pair_second_get(JLorg/libtorrent4j/swig/address_sha1_hash_pair;)J
.end method

.method public static final native address_sha1_hash_pair_second_set(JLorg/libtorrent4j/swig/address_sha1_hash_pair;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native address_sha1_hash_pair_vector_clear(JLorg/libtorrent4j/swig/address_sha1_hash_pair_vector;)V
.end method

.method public static final native address_sha1_hash_pair_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/address_sha1_hash_pair_vector;JLorg/libtorrent4j/swig/address_sha1_hash_pair;)V
.end method

.method public static final native address_sha1_hash_pair_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/address_sha1_hash_pair_vector;IJLorg/libtorrent4j/swig/address_sha1_hash_pair;)V
.end method

.method public static final native address_sha1_hash_pair_vector_doCapacity(JLorg/libtorrent4j/swig/address_sha1_hash_pair_vector;)I
.end method

.method public static final native address_sha1_hash_pair_vector_doGet(JLorg/libtorrent4j/swig/address_sha1_hash_pair_vector;I)J
.end method

.method public static final native address_sha1_hash_pair_vector_doRemove(JLorg/libtorrent4j/swig/address_sha1_hash_pair_vector;I)J
.end method

.method public static final native address_sha1_hash_pair_vector_doRemoveRange(JLorg/libtorrent4j/swig/address_sha1_hash_pair_vector;II)V
.end method

.method public static final native address_sha1_hash_pair_vector_doReserve(JLorg/libtorrent4j/swig/address_sha1_hash_pair_vector;I)V
.end method

.method public static final native address_sha1_hash_pair_vector_doSet(JLorg/libtorrent4j/swig/address_sha1_hash_pair_vector;IJLorg/libtorrent4j/swig/address_sha1_hash_pair;)J
.end method

.method public static final native address_sha1_hash_pair_vector_doSize(JLorg/libtorrent4j/swig/address_sha1_hash_pair_vector;)I
.end method

.method public static final native address_sha1_hash_pair_vector_isEmpty(JLorg/libtorrent4j/swig/address_sha1_hash_pair_vector;)Z
.end method

.method public static final native address_to_string(JLorg/libtorrent4j/swig/address;)Ljava/lang/String;
.end method

.method public static final native alert_all_categories_get()J
.end method

.method public static final native alert_block_progress_notification_get()J
.end method

.method public static final native alert_cast_to_add_torrent_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_alerts_dropped_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_block_downloading_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_block_finished_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_block_timeout_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_block_uploaded_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_cache_flushed_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_dht_announce_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_dht_bootstrap_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_dht_direct_response_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_dht_error_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_dht_get_peers_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_dht_get_peers_reply_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_dht_immutable_item_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_dht_live_nodes_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_dht_log_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_dht_mutable_item_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_dht_outgoing_get_peers_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_dht_pkt_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_dht_put_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_dht_reply_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_dht_sample_infohashes_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_dht_stats_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_external_ip_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_fastresume_rejected_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_file_completed_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_file_error_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_file_prio_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_file_progress_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_file_rename_failed_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_file_renamed_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_hash_failed_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_i2p_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_incoming_connection_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_incoming_request_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_invalid_request_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_listen_failed_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_listen_succeeded_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_log_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_lsd_error_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_lsd_peer_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_metadata_failed_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_metadata_received_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_oversized_file_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_peer_ban_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_peer_blocked_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_peer_connect_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_peer_disconnected_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_peer_error_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_peer_info_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_peer_log_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_peer_snubbed_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_peer_unsnubbed_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_performance_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_picker_log_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_piece_availability_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_piece_finished_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_piece_info_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_portmap_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_portmap_error_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_portmap_log_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_read_piece_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_request_dropped_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_save_resume_data_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_save_resume_data_failed_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_scrape_failed_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_scrape_reply_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_session_error_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_session_stats_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_session_stats_header_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_socks5_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_state_changed_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_state_update_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_storage_moved_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_storage_moved_failed_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_torrent_checked_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_torrent_conflict_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_torrent_delete_failed_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_torrent_deleted_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_torrent_error_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_torrent_finished_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_torrent_log_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_torrent_need_cert_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_torrent_paused_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_torrent_removed_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_torrent_resumed_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_tracker_announce_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_tracker_error_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_tracker_list_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_tracker_reply_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_tracker_warning_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_trackerid_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_udp_error_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_unwanted_block_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_cast_to_url_seed_alert(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_category(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_category_t_all()J
.end method

.method public static final native alert_category_t_and_(JLorg/libtorrent4j/swig/alert_category_t;JLorg/libtorrent4j/swig/alert_category_t;)J
.end method

.method public static final native alert_category_t_eq(JLorg/libtorrent4j/swig/alert_category_t;JLorg/libtorrent4j/swig/alert_category_t;)Z
.end method

.method public static final native alert_category_t_from_int(I)J
.end method

.method public static final native alert_category_t_inv(JLorg/libtorrent4j/swig/alert_category_t;)J
.end method

.method public static final native alert_category_t_ne(JLorg/libtorrent4j/swig/alert_category_t;JLorg/libtorrent4j/swig/alert_category_t;)Z
.end method

.method public static final native alert_category_t_non_zero(JLorg/libtorrent4j/swig/alert_category_t;)Z
.end method

.method public static final native alert_category_t_or_(JLorg/libtorrent4j/swig/alert_category_t;JLorg/libtorrent4j/swig/alert_category_t;)J
.end method

.method public static final native alert_category_t_to_int(JLorg/libtorrent4j/swig/alert_category_t;)I
.end method

.method public static final native alert_category_t_xor_(JLorg/libtorrent4j/swig/alert_category_t;JLorg/libtorrent4j/swig/alert_category_t;)J
.end method

.method public static final native alert_connect_notification_get()J
.end method

.method public static final native alert_dht_log_notification_get()J
.end method

.method public static final native alert_dht_notification_get()J
.end method

.method public static final native alert_dht_operation_notification_get()J
.end method

.method public static final native alert_error_notification_get()J
.end method

.method public static final native alert_file_progress_notification_get()J
.end method

.method public static final native alert_get_timestamp(JLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_incoming_request_notification_get()J
.end method

.method public static final native alert_ip_block_notification_get()J
.end method

.method public static final native alert_message(JLorg/libtorrent4j/swig/alert;)Ljava/lang/String;
.end method

.method public static final native alert_name(I)Ljava/lang/String;
.end method

.method public static final native alert_notify_callback_change_ownership(Lorg/libtorrent4j/swig/alert_notify_callback;JZ)V
.end method

.method public static final native alert_notify_callback_director_connect(Lorg/libtorrent4j/swig/alert_notify_callback;JZZ)V
.end method

.method public static final native alert_notify_callback_on_alert(JLorg/libtorrent4j/swig/alert_notify_callback;)V
.end method

.method public static final native alert_notify_callback_on_alertSwigExplicitalert_notify_callback(JLorg/libtorrent4j/swig/alert_notify_callback;)V
.end method

.method public static final native alert_peer_log_notification_get()J
.end method

.method public static final native alert_peer_notification_get()J
.end method

.method public static final native alert_performance_warning_get()J
.end method

.method public static final native alert_picker_log_notification_get()J
.end method

.method public static final native alert_piece_progress_notification_get()J
.end method

.method public static final native alert_port_mapping_log_notification_get()J
.end method

.method public static final native alert_port_mapping_notification_get()J
.end method

.method public static final native alert_priority_normal_get()I
.end method

.method public static final native alert_ptr_vector_clear(JLorg/libtorrent4j/swig/alert_ptr_vector;)V
.end method

.method public static final native alert_ptr_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/alert_ptr_vector;JLorg/libtorrent4j/swig/alert;)V
.end method

.method public static final native alert_ptr_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/alert_ptr_vector;IJLorg/libtorrent4j/swig/alert;)V
.end method

.method public static final native alert_ptr_vector_doCapacity(JLorg/libtorrent4j/swig/alert_ptr_vector;)I
.end method

.method public static final native alert_ptr_vector_doGet(JLorg/libtorrent4j/swig/alert_ptr_vector;I)J
.end method

.method public static final native alert_ptr_vector_doRemove(JLorg/libtorrent4j/swig/alert_ptr_vector;I)J
.end method

.method public static final native alert_ptr_vector_doRemoveRange(JLorg/libtorrent4j/swig/alert_ptr_vector;II)V
.end method

.method public static final native alert_ptr_vector_doReserve(JLorg/libtorrent4j/swig/alert_ptr_vector;I)V
.end method

.method public static final native alert_ptr_vector_doSet(JLorg/libtorrent4j/swig/alert_ptr_vector;IJLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native alert_ptr_vector_doSize(JLorg/libtorrent4j/swig/alert_ptr_vector;)I
.end method

.method public static final native alert_ptr_vector_isEmpty(JLorg/libtorrent4j/swig/alert_ptr_vector;)Z
.end method

.method public static final native alert_session_log_notification_get()J
.end method

.method public static final native alert_status_notification_get()J
.end method

.method public static final native alert_storage_notification_get()J
.end method

.method public static final native alert_torrent_log_notification_get()J
.end method

.method public static final native alert_tracker_notification_get()J
.end method

.method public static final native alert_type(JLorg/libtorrent4j/swig/alert;)I
.end method

.method public static final native alert_upload_notification_get()J
.end method

.method public static final native alert_what(JLorg/libtorrent4j/swig/alert;)Ljava/lang/String;
.end method

.method public static final native alerts_dropped_alert_SWIGUpcast(J)J
.end method

.method public static final native alerts_dropped_alert_alert_type_get()I
.end method

.method public static final native alerts_dropped_alert_category(JLorg/libtorrent4j/swig/alerts_dropped_alert;)J
.end method

.method public static final native alerts_dropped_alert_dropped_alerts_get(JLorg/libtorrent4j/swig/alerts_dropped_alert;)J
.end method

.method public static final native alerts_dropped_alert_dropped_alerts_set(JLorg/libtorrent4j/swig/alerts_dropped_alert;JLorg/libtorrent4j/swig/bitset_128;)V
.end method

.method public static final native alerts_dropped_alert_message(JLorg/libtorrent4j/swig/alerts_dropped_alert;)Ljava/lang/String;
.end method

.method public static final native alerts_dropped_alert_priority_get()I
.end method

.method public static final native alerts_dropped_alert_static_category_get()J
.end method

.method public static final native alerts_dropped_alert_type(JLorg/libtorrent4j/swig/alerts_dropped_alert;)I
.end method

.method public static final native alerts_dropped_alert_what(JLorg/libtorrent4j/swig/alerts_dropped_alert;)Ljava/lang/String;
.end method

.method public static final native all_get()J
.end method

.method public static final native allow_missing_piece_layer_get()J
.end method

.method public static final native announce_endpoint_enabled_get(JLorg/libtorrent4j/swig/announce_endpoint;)Z
.end method

.method public static final native announce_endpoint_enabled_set(JLorg/libtorrent4j/swig/announce_endpoint;Z)V
.end method

.method public static final native announce_endpoint_get_infohash_v1(JLorg/libtorrent4j/swig/announce_endpoint;)J
.end method

.method public static final native announce_endpoint_get_infohash_v2(JLorg/libtorrent4j/swig/announce_endpoint;)J
.end method

.method public static final native announce_endpoint_local_endpoint_get(JLorg/libtorrent4j/swig/announce_endpoint;)J
.end method

.method public static final native announce_endpoint_local_endpoint_set(JLorg/libtorrent4j/swig/announce_endpoint;JLorg/libtorrent4j/swig/tcp_endpoint;)V
.end method

.method public static final native announce_endpoint_vector_clear(JLorg/libtorrent4j/swig/announce_endpoint_vector;)V
.end method

.method public static final native announce_endpoint_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/announce_endpoint_vector;JLorg/libtorrent4j/swig/announce_endpoint;)V
.end method

.method public static final native announce_endpoint_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/announce_endpoint_vector;IJLorg/libtorrent4j/swig/announce_endpoint;)V
.end method

.method public static final native announce_endpoint_vector_doCapacity(JLorg/libtorrent4j/swig/announce_endpoint_vector;)I
.end method

.method public static final native announce_endpoint_vector_doGet(JLorg/libtorrent4j/swig/announce_endpoint_vector;I)J
.end method

.method public static final native announce_endpoint_vector_doRemove(JLorg/libtorrent4j/swig/announce_endpoint_vector;I)J
.end method

.method public static final native announce_endpoint_vector_doRemoveRange(JLorg/libtorrent4j/swig/announce_endpoint_vector;II)V
.end method

.method public static final native announce_endpoint_vector_doReserve(JLorg/libtorrent4j/swig/announce_endpoint_vector;I)V
.end method

.method public static final native announce_endpoint_vector_doSet(JLorg/libtorrent4j/swig/announce_endpoint_vector;IJLorg/libtorrent4j/swig/announce_endpoint;)J
.end method

.method public static final native announce_endpoint_vector_doSize(JLorg/libtorrent4j/swig/announce_endpoint_vector;)I
.end method

.method public static final native announce_endpoint_vector_isEmpty(JLorg/libtorrent4j/swig/announce_endpoint_vector;)Z
.end method

.method public static final native announce_entry_endpoints_get(JLorg/libtorrent4j/swig/announce_entry;)J
.end method

.method public static final native announce_entry_endpoints_set(JLorg/libtorrent4j/swig/announce_entry;JLorg/libtorrent4j/swig/announce_endpoint_vector;)V
.end method

.method public static final native announce_entry_fail_limit_get(JLorg/libtorrent4j/swig/announce_entry;)S
.end method

.method public static final native announce_entry_fail_limit_set(JLorg/libtorrent4j/swig/announce_entry;S)V
.end method

.method public static final native announce_entry_source_client_get()I
.end method

.method public static final native announce_entry_source_get(JLorg/libtorrent4j/swig/announce_entry;)S
.end method

.method public static final native announce_entry_source_magnet_link_get()I
.end method

.method public static final native announce_entry_source_set(JLorg/libtorrent4j/swig/announce_entry;S)V
.end method

.method public static final native announce_entry_source_tex_get()I
.end method

.method public static final native announce_entry_source_torrent_get()I
.end method

.method public static final native announce_entry_tier_get(JLorg/libtorrent4j/swig/announce_entry;)S
.end method

.method public static final native announce_entry_tier_set(JLorg/libtorrent4j/swig/announce_entry;S)V
.end method

.method public static final native announce_entry_trackerid_get(JLorg/libtorrent4j/swig/announce_entry;)Ljava/lang/String;
.end method

.method public static final native announce_entry_trackerid_set(JLorg/libtorrent4j/swig/announce_entry;Ljava/lang/String;)V
.end method

.method public static final native announce_entry_url_get(JLorg/libtorrent4j/swig/announce_entry;)Ljava/lang/String;
.end method

.method public static final native announce_entry_url_set(JLorg/libtorrent4j/swig/announce_entry;Ljava/lang/String;)V
.end method

.method public static final native announce_entry_vector_clear(JLorg/libtorrent4j/swig/announce_entry_vector;)V
.end method

.method public static final native announce_entry_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/announce_entry_vector;JLorg/libtorrent4j/swig/announce_entry;)V
.end method

.method public static final native announce_entry_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/announce_entry_vector;IJLorg/libtorrent4j/swig/announce_entry;)V
.end method

.method public static final native announce_entry_vector_doCapacity(JLorg/libtorrent4j/swig/announce_entry_vector;)I
.end method

.method public static final native announce_entry_vector_doGet(JLorg/libtorrent4j/swig/announce_entry_vector;I)J
.end method

.method public static final native announce_entry_vector_doRemove(JLorg/libtorrent4j/swig/announce_entry_vector;I)J
.end method

.method public static final native announce_entry_vector_doRemoveRange(JLorg/libtorrent4j/swig/announce_entry_vector;II)V
.end method

.method public static final native announce_entry_vector_doReserve(JLorg/libtorrent4j/swig/announce_entry_vector;I)V
.end method

.method public static final native announce_entry_vector_doSet(JLorg/libtorrent4j/swig/announce_entry_vector;IJLorg/libtorrent4j/swig/announce_entry;)J
.end method

.method public static final native announce_entry_vector_doSize(JLorg/libtorrent4j/swig/announce_entry_vector;)I
.end method

.method public static final native announce_entry_vector_isEmpty(JLorg/libtorrent4j/swig/announce_entry_vector;)Z
.end method

.method public static final native announce_entry_verified_get(JLorg/libtorrent4j/swig/announce_entry;)Z
.end method

.method public static final native announce_entry_verified_set(JLorg/libtorrent4j/swig/announce_entry;Z)V
.end method

.method public static final native announce_infohash_complete_sent_get(JLorg/libtorrent4j/swig/announce_infohash;)Z
.end method

.method public static final native announce_infohash_complete_sent_set(JLorg/libtorrent4j/swig/announce_infohash;Z)V
.end method

.method public static final native announce_infohash_fails_get(JLorg/libtorrent4j/swig/announce_infohash;)S
.end method

.method public static final native announce_infohash_fails_set(JLorg/libtorrent4j/swig/announce_infohash;S)V
.end method

.method public static final native announce_infohash_get_min_announce(JLorg/libtorrent4j/swig/announce_infohash;)J
.end method

.method public static final native announce_infohash_get_next_announce(JLorg/libtorrent4j/swig/announce_infohash;)J
.end method

.method public static final native announce_infohash_last_error_get(JLorg/libtorrent4j/swig/announce_infohash;)J
.end method

.method public static final native announce_infohash_last_error_set(JLorg/libtorrent4j/swig/announce_infohash;JLorg/libtorrent4j/swig/error_code;)V
.end method

.method public static final native announce_infohash_message_get(JLorg/libtorrent4j/swig/announce_infohash;)Ljava/lang/String;
.end method

.method public static final native announce_infohash_message_set(JLorg/libtorrent4j/swig/announce_infohash;Ljava/lang/String;)V
.end method

.method public static final native announce_infohash_scrape_complete_get(JLorg/libtorrent4j/swig/announce_infohash;)I
.end method

.method public static final native announce_infohash_scrape_complete_set(JLorg/libtorrent4j/swig/announce_infohash;I)V
.end method

.method public static final native announce_infohash_scrape_downloaded_get(JLorg/libtorrent4j/swig/announce_infohash;)I
.end method

.method public static final native announce_infohash_scrape_downloaded_set(JLorg/libtorrent4j/swig/announce_infohash;I)V
.end method

.method public static final native announce_infohash_scrape_incomplete_get(JLorg/libtorrent4j/swig/announce_infohash;)I
.end method

.method public static final native announce_infohash_scrape_incomplete_set(JLorg/libtorrent4j/swig/announce_infohash;I)V
.end method

.method public static final native announce_infohash_start_sent_get(JLorg/libtorrent4j/swig/announce_infohash;)Z
.end method

.method public static final native announce_infohash_start_sent_set(JLorg/libtorrent4j/swig/announce_infohash;Z)V
.end method

.method public static final native announce_infohash_triggered_manually_get(JLorg/libtorrent4j/swig/announce_infohash;)Z
.end method

.method public static final native announce_infohash_triggered_manually_set(JLorg/libtorrent4j/swig/announce_infohash;Z)V
.end method

.method public static final native announce_infohash_updating_get(JLorg/libtorrent4j/swig/announce_infohash;)Z
.end method

.method public static final native announce_infohash_updating_set(JLorg/libtorrent4j/swig/announce_infohash;Z)V
.end method

.method public static final native apply_ip_filter_get()J
.end method

.method public static final native arm_neon_support()Z
.end method

.method public static final native auto_managed_get()J
.end method

.method public static final native bad_gateway_get()I
.end method

.method public static final native bad_request_get()I
.end method

.method public static final native bandwidth_state_flags_t_all()J
.end method

.method public static final native bandwidth_state_flags_t_and_(JLorg/libtorrent4j/swig/bandwidth_state_flags_t;JLorg/libtorrent4j/swig/bandwidth_state_flags_t;)J
.end method

.method public static final native bandwidth_state_flags_t_eq(JLorg/libtorrent4j/swig/bandwidth_state_flags_t;JLorg/libtorrent4j/swig/bandwidth_state_flags_t;)Z
.end method

.method public static final native bandwidth_state_flags_t_from_int(I)J
.end method

.method public static final native bandwidth_state_flags_t_inv(JLorg/libtorrent4j/swig/bandwidth_state_flags_t;)J
.end method

.method public static final native bandwidth_state_flags_t_ne(JLorg/libtorrent4j/swig/bandwidth_state_flags_t;JLorg/libtorrent4j/swig/bandwidth_state_flags_t;)Z
.end method

.method public static final native bandwidth_state_flags_t_non_zero(JLorg/libtorrent4j/swig/bandwidth_state_flags_t;)Z
.end method

.method public static final native bandwidth_state_flags_t_or_(JLorg/libtorrent4j/swig/bandwidth_state_flags_t;JLorg/libtorrent4j/swig/bandwidth_state_flags_t;)J
.end method

.method public static final native bandwidth_state_flags_t_to_int(JLorg/libtorrent4j/swig/bandwidth_state_flags_t;)I
.end method

.method public static final native bandwidth_state_flags_t_xor_(JLorg/libtorrent4j/swig/bandwidth_state_flags_t;JLorg/libtorrent4j/swig/bandwidth_state_flags_t;)J
.end method

.method public static final native bdecode_no_error_get()I
.end method

.method public static final native bdecode_node_bdecode__SWIG_0(JLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/bdecode_node;JLorg/libtorrent4j/swig/error_code;)I
.end method

.method public static final native bdecode_node_bdecode__SWIG_1(JIJLorg/libtorrent4j/swig/bdecode_node;JLorg/libtorrent4j/swig/error_code;)I
.end method

.method public static final native bdecode_node_bdecode_node_pair_first_get(JLorg/libtorrent4j/swig/bdecode_node_bdecode_node_pair;)J
.end method

.method public static final native bdecode_node_bdecode_node_pair_first_set(JLorg/libtorrent4j/swig/bdecode_node_bdecode_node_pair;JLorg/libtorrent4j/swig/bdecode_node;)V
.end method

.method public static final native bdecode_node_bdecode_node_pair_second_get(JLorg/libtorrent4j/swig/bdecode_node_bdecode_node_pair;)J
.end method

.method public static final native bdecode_node_bdecode_node_pair_second_set(JLorg/libtorrent4j/swig/bdecode_node_bdecode_node_pair;JLorg/libtorrent4j/swig/bdecode_node;)V
.end method

.method public static final native bdecode_node_clear(JLorg/libtorrent4j/swig/bdecode_node;)V
.end method

.method public static final native bdecode_node_data_offset(JLorg/libtorrent4j/swig/bdecode_node;)J
.end method

.method public static final native bdecode_node_dict_at_node(JLorg/libtorrent4j/swig/bdecode_node;I)J
.end method

.method public static final native bdecode_node_dict_find_dict_ex(JLorg/libtorrent4j/swig/bdecode_node;Ljava/lang/String;)J
.end method

.method public static final native bdecode_node_dict_find_ex(JLorg/libtorrent4j/swig/bdecode_node;Ljava/lang/String;)J
.end method

.method public static final native bdecode_node_dict_find_int_ex(JLorg/libtorrent4j/swig/bdecode_node;Ljava/lang/String;)J
.end method

.method public static final native bdecode_node_dict_find_int_value_ex__SWIG_0(JLorg/libtorrent4j/swig/bdecode_node;Ljava/lang/String;J)J
.end method

.method public static final native bdecode_node_dict_find_int_value_ex__SWIG_1(JLorg/libtorrent4j/swig/bdecode_node;Ljava/lang/String;)J
.end method

.method public static final native bdecode_node_dict_find_list_ex(JLorg/libtorrent4j/swig/bdecode_node;Ljava/lang/String;)J
.end method

.method public static final native bdecode_node_dict_find_string_ex(JLorg/libtorrent4j/swig/bdecode_node;Ljava/lang/String;)J
.end method

.method public static final native bdecode_node_dict_find_string_value_ex__SWIG_0(JLorg/libtorrent4j/swig/bdecode_node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native bdecode_node_dict_find_string_value_ex__SWIG_1(JLorg/libtorrent4j/swig/bdecode_node;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native bdecode_node_dict_size(JLorg/libtorrent4j/swig/bdecode_node;)I
.end method

.method public static final native bdecode_node_int_value(JLorg/libtorrent4j/swig/bdecode_node;)J
.end method

.method public static final native bdecode_node_list_at(JLorg/libtorrent4j/swig/bdecode_node;I)J
.end method

.method public static final native bdecode_node_list_int_value_at__SWIG_0(JLorg/libtorrent4j/swig/bdecode_node;IJ)J
.end method

.method public static final native bdecode_node_list_int_value_at__SWIG_1(JLorg/libtorrent4j/swig/bdecode_node;I)J
.end method

.method public static final native bdecode_node_list_size(JLorg/libtorrent4j/swig/bdecode_node;)I
.end method

.method public static final native bdecode_node_list_string_value_at_ex__SWIG_0(JLorg/libtorrent4j/swig/bdecode_node;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public static final native bdecode_node_list_string_value_at_ex__SWIG_1(JLorg/libtorrent4j/swig/bdecode_node;I)Ljava/lang/String;
.end method

.method public static final native bdecode_node_string_length(JLorg/libtorrent4j/swig/bdecode_node;)I
.end method

.method public static final native bdecode_node_string_offset(JLorg/libtorrent4j/swig/bdecode_node;)J
.end method

.method public static final native bdecode_node_string_value_ex(JLorg/libtorrent4j/swig/bdecode_node;)Ljava/lang/String;
.end method

.method public static final native bdecode_node_to_bool(JLorg/libtorrent4j/swig/bdecode_node;)Z
.end method

.method public static final native bdecode_node_to_string(JLorg/libtorrent4j/swig/bdecode_node;ZI)Ljava/lang/String;
.end method

.method public static final native bdecode_node_type(JLorg/libtorrent4j/swig/bdecode_node;)I
.end method

.method public static final native bitfield_all_set(JLorg/libtorrent4j/swig/bitfield;)Z
.end method

.method public static final native bitfield_assign(JLorg/libtorrent4j/swig/bitfield;JLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native bitfield_at(JLorg/libtorrent4j/swig/bitfield;I)Z
.end method

.method public static final native bitfield_clear(JLorg/libtorrent4j/swig/bitfield;)V
.end method

.method public static final native bitfield_clear_all(JLorg/libtorrent4j/swig/bitfield;)V
.end method

.method public static final native bitfield_clear_bit(JLorg/libtorrent4j/swig/bitfield;I)V
.end method

.method public static final native bitfield_count(JLorg/libtorrent4j/swig/bitfield;)I
.end method

.method public static final native bitfield_empty(JLorg/libtorrent4j/swig/bitfield;)Z
.end method

.method public static final native bitfield_find_first_set(JLorg/libtorrent4j/swig/bitfield;)I
.end method

.method public static final native bitfield_find_last_clear(JLorg/libtorrent4j/swig/bitfield;)I
.end method

.method public static final native bitfield_get_bit(JLorg/libtorrent4j/swig/bitfield;I)Z
.end method

.method public static final native bitfield_none_set(JLorg/libtorrent4j/swig/bitfield;)Z
.end method

.method public static final native bitfield_num_words(JLorg/libtorrent4j/swig/bitfield;)I
.end method

.method public static final native bitfield_resize__SWIG_0(JLorg/libtorrent4j/swig/bitfield;IZ)V
.end method

.method public static final native bitfield_resize__SWIG_1(JLorg/libtorrent4j/swig/bitfield;I)V
.end method

.method public static final native bitfield_set_all(JLorg/libtorrent4j/swig/bitfield;)V
.end method

.method public static final native bitfield_set_bit(JLorg/libtorrent4j/swig/bitfield;I)V
.end method

.method public static final native bitfield_size(JLorg/libtorrent4j/swig/bitfield;)I
.end method

.method public static final native bitfield_swap(JLorg/libtorrent4j/swig/bitfield;JLorg/libtorrent4j/swig/bitfield;)V
.end method

.method public static final native bitfield_vector_clear(JLorg/libtorrent4j/swig/bitfield_vector;)V
.end method

.method public static final native bitfield_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/bitfield_vector;JLorg/libtorrent4j/swig/bitfield;)V
.end method

.method public static final native bitfield_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/bitfield_vector;IJLorg/libtorrent4j/swig/bitfield;)V
.end method

.method public static final native bitfield_vector_doCapacity(JLorg/libtorrent4j/swig/bitfield_vector;)I
.end method

.method public static final native bitfield_vector_doGet(JLorg/libtorrent4j/swig/bitfield_vector;I)J
.end method

.method public static final native bitfield_vector_doRemove(JLorg/libtorrent4j/swig/bitfield_vector;I)J
.end method

.method public static final native bitfield_vector_doRemoveRange(JLorg/libtorrent4j/swig/bitfield_vector;II)V
.end method

.method public static final native bitfield_vector_doReserve(JLorg/libtorrent4j/swig/bitfield_vector;I)V
.end method

.method public static final native bitfield_vector_doSet(JLorg/libtorrent4j/swig/bitfield_vector;IJLorg/libtorrent4j/swig/bitfield;)J
.end method

.method public static final native bitfield_vector_doSize(JLorg/libtorrent4j/swig/bitfield_vector;)I
.end method

.method public static final native bitfield_vector_isEmpty(JLorg/libtorrent4j/swig/bitfield_vector;)Z
.end method

.method public static final native bitset_128_all(JLorg/libtorrent4j/swig/bitset_128;)Z
.end method

.method public static final native bitset_128_any(JLorg/libtorrent4j/swig/bitset_128;)Z
.end method

.method public static final native bitset_128_count(JLorg/libtorrent4j/swig/bitset_128;)J
.end method

.method public static final native bitset_128_get(JLorg/libtorrent4j/swig/bitset_128;J)Z
.end method

.method public static final native bitset_128_none(JLorg/libtorrent4j/swig/bitset_128;)Z
.end method

.method public static final native bitset_128_size(JLorg/libtorrent4j/swig/bitset_128;)J
.end method

.method public static final native bitset_128_test(JLorg/libtorrent4j/swig/bitset_128;J)Z
.end method

.method public static final native block_downloading_alert_SWIGUpcast(J)J
.end method

.method public static final native block_downloading_alert_alert_type_get()I
.end method

.method public static final native block_downloading_alert_block_index_get(JLorg/libtorrent4j/swig/block_downloading_alert;)I
.end method

.method public static final native block_downloading_alert_category(JLorg/libtorrent4j/swig/block_downloading_alert;)J
.end method

.method public static final native block_downloading_alert_message(JLorg/libtorrent4j/swig/block_downloading_alert;)Ljava/lang/String;
.end method

.method public static final native block_downloading_alert_piece_index_get(JLorg/libtorrent4j/swig/block_downloading_alert;)I
.end method

.method public static final native block_downloading_alert_priority_get()I
.end method

.method public static final native block_downloading_alert_static_category_get()J
.end method

.method public static final native block_downloading_alert_type(JLorg/libtorrent4j/swig/block_downloading_alert;)I
.end method

.method public static final native block_downloading_alert_what(JLorg/libtorrent4j/swig/block_downloading_alert;)Ljava/lang/String;
.end method

.method public static final native block_finished_alert_SWIGUpcast(J)J
.end method

.method public static final native block_finished_alert_alert_type_get()I
.end method

.method public static final native block_finished_alert_block_index_get(JLorg/libtorrent4j/swig/block_finished_alert;)I
.end method

.method public static final native block_finished_alert_category(JLorg/libtorrent4j/swig/block_finished_alert;)J
.end method

.method public static final native block_finished_alert_message(JLorg/libtorrent4j/swig/block_finished_alert;)Ljava/lang/String;
.end method

.method public static final native block_finished_alert_piece_index_get(JLorg/libtorrent4j/swig/block_finished_alert;)I
.end method

.method public static final native block_finished_alert_priority_get()I
.end method

.method public static final native block_finished_alert_static_category_get()J
.end method

.method public static final native block_finished_alert_type(JLorg/libtorrent4j/swig/block_finished_alert;)I
.end method

.method public static final native block_finished_alert_what(JLorg/libtorrent4j/swig/block_finished_alert;)Ljava/lang/String;
.end method

.method public static final native block_info_block_size_get(JLorg/libtorrent4j/swig/block_info;)J
.end method

.method public static final native block_info_block_size_set(JLorg/libtorrent4j/swig/block_info;J)V
.end method

.method public static final native block_info_bytes_progress_get(JLorg/libtorrent4j/swig/block_info;)J
.end method

.method public static final native block_info_bytes_progress_set(JLorg/libtorrent4j/swig/block_info;J)V
.end method

.method public static final native block_info_num_peers_get(JLorg/libtorrent4j/swig/block_info;)J
.end method

.method public static final native block_info_num_peers_set(JLorg/libtorrent4j/swig/block_info;J)V
.end method

.method public static final native block_info_peer(JLorg/libtorrent4j/swig/block_info;)J
.end method

.method public static final native block_info_set_peer(JLorg/libtorrent4j/swig/block_info;JLorg/libtorrent4j/swig/tcp_endpoint;)V
.end method

.method public static final native block_info_state_get(JLorg/libtorrent4j/swig/block_info;)J
.end method

.method public static final native block_info_state_set(JLorg/libtorrent4j/swig/block_info;J)V
.end method

.method public static final native block_info_vector_clear(JLorg/libtorrent4j/swig/block_info_vector;)V
.end method

.method public static final native block_info_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/block_info_vector;JLorg/libtorrent4j/swig/block_info;)V
.end method

.method public static final native block_info_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/block_info_vector;IJLorg/libtorrent4j/swig/block_info;)V
.end method

.method public static final native block_info_vector_doCapacity(JLorg/libtorrent4j/swig/block_info_vector;)I
.end method

.method public static final native block_info_vector_doGet(JLorg/libtorrent4j/swig/block_info_vector;I)J
.end method

.method public static final native block_info_vector_doRemove(JLorg/libtorrent4j/swig/block_info_vector;I)J
.end method

.method public static final native block_info_vector_doRemoveRange(JLorg/libtorrent4j/swig/block_info_vector;II)V
.end method

.method public static final native block_info_vector_doReserve(JLorg/libtorrent4j/swig/block_info_vector;I)V
.end method

.method public static final native block_info_vector_doSet(JLorg/libtorrent4j/swig/block_info_vector;IJLorg/libtorrent4j/swig/block_info;)J
.end method

.method public static final native block_info_vector_doSize(JLorg/libtorrent4j/swig/block_info_vector;)I
.end method

.method public static final native block_info_vector_isEmpty(JLorg/libtorrent4j/swig/block_info_vector;)Z
.end method

.method public static final native block_progress_get()J
.end method

.method public static final native block_timeout_alert_SWIGUpcast(J)J
.end method

.method public static final native block_timeout_alert_alert_type_get()I
.end method

.method public static final native block_timeout_alert_block_index_get(JLorg/libtorrent4j/swig/block_timeout_alert;)I
.end method

.method public static final native block_timeout_alert_category(JLorg/libtorrent4j/swig/block_timeout_alert;)J
.end method

.method public static final native block_timeout_alert_message(JLorg/libtorrent4j/swig/block_timeout_alert;)Ljava/lang/String;
.end method

.method public static final native block_timeout_alert_piece_index_get(JLorg/libtorrent4j/swig/block_timeout_alert;)I
.end method

.method public static final native block_timeout_alert_priority_get()I
.end method

.method public static final native block_timeout_alert_static_category_get()J
.end method

.method public static final native block_timeout_alert_type(JLorg/libtorrent4j/swig/block_timeout_alert;)I
.end method

.method public static final native block_timeout_alert_what(JLorg/libtorrent4j/swig/block_timeout_alert;)Ljava/lang/String;
.end method

.method public static final native block_uploaded_alert_SWIGUpcast(J)J
.end method

.method public static final native block_uploaded_alert_alert_type_get()I
.end method

.method public static final native block_uploaded_alert_block_index_get(JLorg/libtorrent4j/swig/block_uploaded_alert;)I
.end method

.method public static final native block_uploaded_alert_category(JLorg/libtorrent4j/swig/block_uploaded_alert;)J
.end method

.method public static final native block_uploaded_alert_message(JLorg/libtorrent4j/swig/block_uploaded_alert;)Ljava/lang/String;
.end method

.method public static final native block_uploaded_alert_piece_index_get(JLorg/libtorrent4j/swig/block_uploaded_alert;)I
.end method

.method public static final native block_uploaded_alert_priority_get()I
.end method

.method public static final native block_uploaded_alert_static_category_get()J
.end method

.method public static final native block_uploaded_alert_type(JLorg/libtorrent4j/swig/block_uploaded_alert;)I
.end method

.method public static final native block_uploaded_alert_what(JLorg/libtorrent4j/swig/block_uploaded_alert;)Ljava/lang/String;
.end method

.method public static final native bool_vector_clear(JLorg/libtorrent4j/swig/bool_vector;)V
.end method

.method public static final native bool_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/bool_vector;Z)V
.end method

.method public static final native bool_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/bool_vector;IZ)V
.end method

.method public static final native bool_vector_doCapacity(JLorg/libtorrent4j/swig/bool_vector;)I
.end method

.method public static final native bool_vector_doGet(JLorg/libtorrent4j/swig/bool_vector;I)Z
.end method

.method public static final native bool_vector_doRemove(JLorg/libtorrent4j/swig/bool_vector;I)Z
.end method

.method public static final native bool_vector_doRemoveRange(JLorg/libtorrent4j/swig/bool_vector;II)V
.end method

.method public static final native bool_vector_doReserve(JLorg/libtorrent4j/swig/bool_vector;I)V
.end method

.method public static final native bool_vector_doSet(JLorg/libtorrent4j/swig/bool_vector;IZ)Z
.end method

.method public static final native bool_vector_doSize(JLorg/libtorrent4j/swig/bool_vector;)I
.end method

.method public static final native bool_vector_isEmpty(JLorg/libtorrent4j/swig/bool_vector;)Z
.end method

.method public static final native bool_vector_vector_clear(JLorg/libtorrent4j/swig/bool_vector_vector;)V
.end method

.method public static final native bool_vector_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/bool_vector_vector;JLorg/libtorrent4j/swig/bool_vector;)V
.end method

.method public static final native bool_vector_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/bool_vector_vector;IJLorg/libtorrent4j/swig/bool_vector;)V
.end method

.method public static final native bool_vector_vector_doCapacity(JLorg/libtorrent4j/swig/bool_vector_vector;)I
.end method

.method public static final native bool_vector_vector_doGet(JLorg/libtorrent4j/swig/bool_vector_vector;I)J
.end method

.method public static final native bool_vector_vector_doRemove(JLorg/libtorrent4j/swig/bool_vector_vector;I)J
.end method

.method public static final native bool_vector_vector_doRemoveRange(JLorg/libtorrent4j/swig/bool_vector_vector;II)V
.end method

.method public static final native bool_vector_vector_doReserve(JLorg/libtorrent4j/swig/bool_vector_vector;I)V
.end method

.method public static final native bool_vector_vector_doSet(JLorg/libtorrent4j/swig/bool_vector_vector;IJLorg/libtorrent4j/swig/bool_vector;)J
.end method

.method public static final native bool_vector_vector_doSize(JLorg/libtorrent4j/swig/bool_vector_vector;)I
.end method

.method public static final native bool_vector_vector_isEmpty(JLorg/libtorrent4j/swig/bool_vector_vector;)Z
.end method

.method public static final native boost_lib_version()Ljava/lang/String;
.end method

.method public static final native boost_string_entry_map_clear(JLorg/libtorrent4j/swig/boost_string_entry_map;)V
.end method

.method public static final native boost_string_entry_map_contains(JLorg/libtorrent4j/swig/boost_string_entry_map;Ljava/lang/String;)Z
.end method

.method public static final native boost_string_entry_map_empty(JLorg/libtorrent4j/swig/boost_string_entry_map;)Z
.end method

.method public static final native boost_string_entry_map_get(JLorg/libtorrent4j/swig/boost_string_entry_map;Ljava/lang/String;)J
.end method

.method public static final native boost_string_entry_map_keys(JLorg/libtorrent4j/swig/boost_string_entry_map;)J
.end method

.method public static final native boost_string_entry_map_put(JLorg/libtorrent4j/swig/boost_string_entry_map;Ljava/lang/String;JLorg/libtorrent4j/swig/entry;)V
.end method

.method public static final native boost_string_entry_map_remove(JLorg/libtorrent4j/swig/boost_string_entry_map;Ljava/lang/String;)V
.end method

.method public static final native boost_string_entry_map_size(JLorg/libtorrent4j/swig/boost_string_entry_map;)J
.end method

.method public static final native byte_array_32_fill(JLorg/libtorrent4j/swig/byte_array_32;B)V
.end method

.method public static final native byte_array_32_get(JLorg/libtorrent4j/swig/byte_array_32;I)B
.end method

.method public static final native byte_array_32_isEmpty(JLorg/libtorrent4j/swig/byte_array_32;)Z
.end method

.method public static final native byte_array_32_set(JLorg/libtorrent4j/swig/byte_array_32;IB)V
.end method

.method public static final native byte_array_32_size(JLorg/libtorrent4j/swig/byte_array_32;)I
.end method

.method public static final native byte_array_64_fill(JLorg/libtorrent4j/swig/byte_array_64;B)V
.end method

.method public static final native byte_array_64_get(JLorg/libtorrent4j/swig/byte_array_64;I)B
.end method

.method public static final native byte_array_64_isEmpty(JLorg/libtorrent4j/swig/byte_array_64;)Z
.end method

.method public static final native byte_array_64_set(JLorg/libtorrent4j/swig/byte_array_64;IB)V
.end method

.method public static final native byte_array_64_size(JLorg/libtorrent4j/swig/byte_array_64;)I
.end method

.method public static final native byte_span_at(JLorg/libtorrent4j/swig/byte_span;J)B
.end method

.method public static final native byte_span_back(JLorg/libtorrent4j/swig/byte_span;)B
.end method

.method public static final native byte_span_empty(JLorg/libtorrent4j/swig/byte_span;)Z
.end method

.method public static final native byte_span_first(JLorg/libtorrent4j/swig/byte_span;J)J
.end method

.method public static final native byte_span_front(JLorg/libtorrent4j/swig/byte_span;)B
.end method

.method public static final native byte_span_last(JLorg/libtorrent4j/swig/byte_span;J)J
.end method

.method public static final native byte_span_size(JLorg/libtorrent4j/swig/byte_span;)J
.end method

.method public static final native byte_span_subspan__SWIG_0(JLorg/libtorrent4j/swig/byte_span;J)J
.end method

.method public static final native byte_span_subspan__SWIG_1(JLorg/libtorrent4j/swig/byte_span;JJ)J
.end method

.method public static final native byte_vector_byte_vector_pair_first_get(JLorg/libtorrent4j/swig/byte_vector_byte_vector_pair;)J
.end method

.method public static final native byte_vector_byte_vector_pair_first_set(JLorg/libtorrent4j/swig/byte_vector_byte_vector_pair;JLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native byte_vector_byte_vector_pair_second_get(JLorg/libtorrent4j/swig/byte_vector_byte_vector_pair;)J
.end method

.method public static final native byte_vector_byte_vector_pair_second_set(JLorg/libtorrent4j/swig/byte_vector_byte_vector_pair;JLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native byte_vector_clear(JLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native byte_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/byte_vector;B)V
.end method

.method public static final native byte_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/byte_vector;IB)V
.end method

.method public static final native byte_vector_doCapacity(JLorg/libtorrent4j/swig/byte_vector;)I
.end method

.method public static final native byte_vector_doGet(JLorg/libtorrent4j/swig/byte_vector;I)B
.end method

.method public static final native byte_vector_doRemove(JLorg/libtorrent4j/swig/byte_vector;I)B
.end method

.method public static final native byte_vector_doRemoveRange(JLorg/libtorrent4j/swig/byte_vector;II)V
.end method

.method public static final native byte_vector_doReserve(JLorg/libtorrent4j/swig/byte_vector;I)V
.end method

.method public static final native byte_vector_doSet(JLorg/libtorrent4j/swig/byte_vector;IB)B
.end method

.method public static final native byte_vector_doSize(JLorg/libtorrent4j/swig/byte_vector;)I
.end method

.method public static final native byte_vector_isEmpty(JLorg/libtorrent4j/swig/byte_vector;)Z
.end method

.method public static final native cache_flushed_alert_SWIGUpcast(J)J
.end method

.method public static final native cache_flushed_alert_alert_type_get()I
.end method

.method public static final native cache_flushed_alert_category(JLorg/libtorrent4j/swig/cache_flushed_alert;)J
.end method

.method public static final native cache_flushed_alert_priority_get()I
.end method

.method public static final native cache_flushed_alert_static_category_get()J
.end method

.method public static final native cache_flushed_alert_type(JLorg/libtorrent4j/swig/cache_flushed_alert;)I
.end method

.method public static final native cache_flushed_alert_what(JLorg/libtorrent4j/swig/cache_flushed_alert;)Ljava/lang/String;
.end method

.method public static final native client_data_t_get(JLorg/libtorrent4j/swig/client_data_t;)J
.end method

.method public static final native close_reason_t_encryption_error_get()I
.end method

.method public static final native close_reason_t_none_get()I
.end method

.method public static final native connect_get()J
.end method

.method public static final native connection_type_t_all()J
.end method

.method public static final native connection_type_t_and_(JLorg/libtorrent4j/swig/connection_type_t;JLorg/libtorrent4j/swig/connection_type_t;)J
.end method

.method public static final native connection_type_t_eq(JLorg/libtorrent4j/swig/connection_type_t;JLorg/libtorrent4j/swig/connection_type_t;)Z
.end method

.method public static final native connection_type_t_from_int(I)J
.end method

.method public static final native connection_type_t_inv(JLorg/libtorrent4j/swig/connection_type_t;)J
.end method

.method public static final native connection_type_t_ne(JLorg/libtorrent4j/swig/connection_type_t;JLorg/libtorrent4j/swig/connection_type_t;)Z
.end method

.method public static final native connection_type_t_non_zero(JLorg/libtorrent4j/swig/connection_type_t;)Z
.end method

.method public static final native connection_type_t_or_(JLorg/libtorrent4j/swig/connection_type_t;JLorg/libtorrent4j/swig/connection_type_t;)J
.end method

.method public static final native connection_type_t_to_int(JLorg/libtorrent4j/swig/connection_type_t;)I
.end method

.method public static final native connection_type_t_xor_(JLorg/libtorrent4j/swig/connection_type_t;JLorg/libtorrent4j/swig/connection_type_t;)J
.end method

.method public static final native cont_get()I
.end method

.method public static final native counters_at(JLorg/libtorrent4j/swig/counters;I)J
.end method

.method public static final native counters_blend_stats_counter(JLorg/libtorrent4j/swig/counters;IJI)V
.end method

.method public static final native counters_inc_stats_counter__SWIG_0(JLorg/libtorrent4j/swig/counters;IJ)J
.end method

.method public static final native counters_inc_stats_counter__SWIG_1(JLorg/libtorrent4j/swig/counters;I)J
.end method

.method public static final native counters_num_checking_torrents_get()I
.end method

.method public static final native counters_num_gauges_counters_get()I
.end method

.method public static final native counters_set_value(JLorg/libtorrent4j/swig/counters;IJ)V
.end method

.method public static final native create_file_entry_filename_get(JLorg/libtorrent4j/swig/create_file_entry;)Ljava/lang/String;
.end method

.method public static final native create_file_entry_filename_set(JLorg/libtorrent4j/swig/create_file_entry;Ljava/lang/String;)V
.end method

.method public static final native create_file_entry_flags_get(JLorg/libtorrent4j/swig/create_file_entry;)J
.end method

.method public static final native create_file_entry_flags_set(JLorg/libtorrent4j/swig/create_file_entry;JLorg/libtorrent4j/swig/file_flags_t;)V
.end method

.method public static final native create_file_entry_mtime_get(JLorg/libtorrent4j/swig/create_file_entry;)J
.end method

.method public static final native create_file_entry_mtime_set(JLorg/libtorrent4j/swig/create_file_entry;J)V
.end method

.method public static final native create_file_entry_size_get(JLorg/libtorrent4j/swig/create_file_entry;)J
.end method

.method public static final native create_file_entry_size_set(JLorg/libtorrent4j/swig/create_file_entry;J)V
.end method

.method public static final native create_file_entry_symlink_get(JLorg/libtorrent4j/swig/create_file_entry;)Ljava/lang/String;
.end method

.method public static final native create_file_entry_symlink_set(JLorg/libtorrent4j/swig/create_file_entry;Ljava/lang/String;)V
.end method

.method public static final native create_file_entry_vector_clear(JLorg/libtorrent4j/swig/create_file_entry_vector;)V
.end method

.method public static final native create_file_entry_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/create_file_entry_vector;JLorg/libtorrent4j/swig/create_file_entry;)V
.end method

.method public static final native create_file_entry_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/create_file_entry_vector;IJLorg/libtorrent4j/swig/create_file_entry;)V
.end method

.method public static final native create_file_entry_vector_doCapacity(JLorg/libtorrent4j/swig/create_file_entry_vector;)I
.end method

.method public static final native create_file_entry_vector_doGet(JLorg/libtorrent4j/swig/create_file_entry_vector;I)J
.end method

.method public static final native create_file_entry_vector_doRemove(JLorg/libtorrent4j/swig/create_file_entry_vector;I)J
.end method

.method public static final native create_file_entry_vector_doRemoveRange(JLorg/libtorrent4j/swig/create_file_entry_vector;II)V
.end method

.method public static final native create_file_entry_vector_doReserve(JLorg/libtorrent4j/swig/create_file_entry_vector;I)V
.end method

.method public static final native create_file_entry_vector_doSet(JLorg/libtorrent4j/swig/create_file_entry_vector;IJLorg/libtorrent4j/swig/create_file_entry;)J
.end method

.method public static final native create_file_entry_vector_doSize(JLorg/libtorrent4j/swig/create_file_entry_vector;)I
.end method

.method public static final native create_file_entry_vector_isEmpty(JLorg/libtorrent4j/swig/create_file_entry_vector;)Z
.end method

.method public static final native create_flags_t_all()J
.end method

.method public static final native create_flags_t_and_(JLorg/libtorrent4j/swig/create_flags_t;JLorg/libtorrent4j/swig/create_flags_t;)J
.end method

.method public static final native create_flags_t_eq(JLorg/libtorrent4j/swig/create_flags_t;JLorg/libtorrent4j/swig/create_flags_t;)Z
.end method

.method public static final native create_flags_t_from_int(I)J
.end method

.method public static final native create_flags_t_inv(JLorg/libtorrent4j/swig/create_flags_t;)J
.end method

.method public static final native create_flags_t_ne(JLorg/libtorrent4j/swig/create_flags_t;JLorg/libtorrent4j/swig/create_flags_t;)Z
.end method

.method public static final native create_flags_t_non_zero(JLorg/libtorrent4j/swig/create_flags_t;)Z
.end method

.method public static final native create_flags_t_or_(JLorg/libtorrent4j/swig/create_flags_t;JLorg/libtorrent4j/swig/create_flags_t;)J
.end method

.method public static final native create_flags_t_to_int(JLorg/libtorrent4j/swig/create_flags_t;)I
.end method

.method public static final native create_flags_t_xor_(JLorg/libtorrent4j/swig/create_flags_t;JLorg/libtorrent4j/swig/create_flags_t;)J
.end method

.method public static final native create_torrent_add_collection(JLorg/libtorrent4j/swig/create_torrent;Ljava/lang/String;)V
.end method

.method public static final native create_torrent_add_node(JLorg/libtorrent4j/swig/create_torrent;JLorg/libtorrent4j/swig/string_int_pair;)V
.end method

.method public static final native create_torrent_add_similar_torrent(JLorg/libtorrent4j/swig/create_torrent;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native create_torrent_add_tracker__SWIG_0(JLorg/libtorrent4j/swig/create_torrent;Ljava/lang/String;)V
.end method

.method public static final native create_torrent_add_tracker__SWIG_1(JLorg/libtorrent4j/swig/create_torrent;Ljava/lang/String;I)V
.end method

.method public static final native create_torrent_add_url_seed(JLorg/libtorrent4j/swig/create_torrent;Ljava/lang/String;)V
.end method

.method public static final native create_torrent_allow_odd_piece_size_get()J
.end method

.method public static final native create_torrent_canonical_files_get()J
.end method

.method public static final native create_torrent_canonical_files_no_tail_padding_get()J
.end method

.method public static final native create_torrent_end_file(JLorg/libtorrent4j/swig/create_torrent;)I
.end method

.method public static final native create_torrent_end_piece(JLorg/libtorrent4j/swig/create_torrent;)I
.end method

.method public static final native create_torrent_file_at(JLorg/libtorrent4j/swig/create_torrent;I)J
.end method

.method public static final native create_torrent_generate(JLorg/libtorrent4j/swig/create_torrent;)J
.end method

.method public static final native create_torrent_is_v1_only(JLorg/libtorrent4j/swig/create_torrent;)Z
.end method

.method public static final native create_torrent_is_v2_only(JLorg/libtorrent4j/swig/create_torrent;)Z
.end method

.method public static final native create_torrent_modification_time_get()J
.end method

.method public static final native create_torrent_no_attributes_get()J
.end method

.method public static final native create_torrent_num_pieces(JLorg/libtorrent4j/swig/create_torrent;)I
.end method

.method public static final native create_torrent_piece_length(JLorg/libtorrent4j/swig/create_torrent;)I
.end method

.method public static final native create_torrent_piece_size(JLorg/libtorrent4j/swig/create_torrent;I)I
.end method

.method public static final native create_torrent_priv(JLorg/libtorrent4j/swig/create_torrent;)Z
.end method

.method public static final native create_torrent_set_comment(JLorg/libtorrent4j/swig/create_torrent;Ljava/lang/String;)V
.end method

.method public static final native create_torrent_set_creation_date(JLorg/libtorrent4j/swig/create_torrent;J)V
.end method

.method public static final native create_torrent_set_creator(JLorg/libtorrent4j/swig/create_torrent;Ljava/lang/String;)V
.end method

.method public static final native create_torrent_set_hash(JLorg/libtorrent4j/swig/create_torrent;IJLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native create_torrent_set_hash2(JLorg/libtorrent4j/swig/create_torrent;IIJLorg/libtorrent4j/swig/sha256_hash;)V
.end method

.method public static final native create_torrent_set_priv(JLorg/libtorrent4j/swig/create_torrent;Z)V
.end method

.method public static final native create_torrent_set_root_cert(JLorg/libtorrent4j/swig/create_torrent;JLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native create_torrent_symlinks_get()J
.end method

.method public static final native create_torrent_total_size(JLorg/libtorrent4j/swig/create_torrent;)J
.end method

.method public static final native create_torrent_v1_only_get()J
.end method

.method public static final native create_torrent_v2_only_get()J
.end method

.method public static final native created_get()I
.end method

.method public static final native deadline_flags_t_all()J
.end method

.method public static final native deadline_flags_t_and_(JLorg/libtorrent4j/swig/deadline_flags_t;JLorg/libtorrent4j/swig/deadline_flags_t;)J
.end method

.method public static final native deadline_flags_t_eq(JLorg/libtorrent4j/swig/deadline_flags_t;JLorg/libtorrent4j/swig/deadline_flags_t;)Z
.end method

.method public static final native deadline_flags_t_from_int(I)J
.end method

.method public static final native deadline_flags_t_inv(JLorg/libtorrent4j/swig/deadline_flags_t;)J
.end method

.method public static final native deadline_flags_t_ne(JLorg/libtorrent4j/swig/deadline_flags_t;JLorg/libtorrent4j/swig/deadline_flags_t;)Z
.end method

.method public static final native deadline_flags_t_non_zero(JLorg/libtorrent4j/swig/deadline_flags_t;)Z
.end method

.method public static final native deadline_flags_t_or_(JLorg/libtorrent4j/swig/deadline_flags_t;JLorg/libtorrent4j/swig/deadline_flags_t;)J
.end method

.method public static final native deadline_flags_t_to_int(JLorg/libtorrent4j/swig/deadline_flags_t;)I
.end method

.method public static final native deadline_flags_t_xor_(JLorg/libtorrent4j/swig/deadline_flags_t;JLorg/libtorrent4j/swig/deadline_flags_t;)J
.end method

.method public static final native default_dont_download_get()J
.end method

.method public static final native default_flags_get()J
.end method

.method public static final native default_settings()J
.end method

.method public static final native delete_add_piece_flags_t(J)V
.end method

.method public static final native delete_add_torrent_alert(J)V
.end method

.method public static final native delete_add_torrent_params(J)V
.end method

.method public static final native delete_address(J)V
.end method

.method public static final native delete_address_sha1_hash_pair(J)V
.end method

.method public static final native delete_address_sha1_hash_pair_vector(J)V
.end method

.method public static final native delete_alert(J)V
.end method

.method public static final native delete_alert_category_t(J)V
.end method

.method public static final native delete_alert_notify_callback(J)V
.end method

.method public static final native delete_alert_ptr_vector(J)V
.end method

.method public static final native delete_alerts_dropped_alert(J)V
.end method

.method public static final native delete_announce_endpoint(J)V
.end method

.method public static final native delete_announce_endpoint_vector(J)V
.end method

.method public static final native delete_announce_entry(J)V
.end method

.method public static final native delete_announce_entry_vector(J)V
.end method

.method public static final native delete_announce_infohash(J)V
.end method

.method public static final native delete_bandwidth_state_flags_t(J)V
.end method

.method public static final native delete_bdecode_node(J)V
.end method

.method public static final native delete_bdecode_node_bdecode_node_pair(J)V
.end method

.method public static final native delete_bitfield(J)V
.end method

.method public static final native delete_bitfield_vector(J)V
.end method

.method public static final native delete_bitset_128(J)V
.end method

.method public static final native delete_block_downloading_alert(J)V
.end method

.method public static final native delete_block_finished_alert(J)V
.end method

.method public static final native delete_block_info(J)V
.end method

.method public static final native delete_block_info_vector(J)V
.end method

.method public static final native delete_block_timeout_alert(J)V
.end method

.method public static final native delete_block_uploaded_alert(J)V
.end method

.method public static final native delete_bool_vector(J)V
.end method

.method public static final native delete_bool_vector_vector(J)V
.end method

.method public static final native delete_boost_string_entry_map(J)V
.end method

.method public static final native delete_byte_array_32(J)V
.end method

.method public static final native delete_byte_array_64(J)V
.end method

.method public static final native delete_byte_span(J)V
.end method

.method public static final native delete_byte_vector(J)V
.end method

.method public static final native delete_byte_vector_byte_vector_pair(J)V
.end method

.method public static final native delete_cache_flushed_alert(J)V
.end method

.method public static final native delete_client_data_t(J)V
.end method

.method public static final native delete_connection_type_t(J)V
.end method

.method public static final native delete_counters(J)V
.end method

.method public static final native delete_create_file_entry(J)V
.end method

.method public static final native delete_create_file_entry_vector(J)V
.end method

.method public static final native delete_create_flags_t(J)V
.end method

.method public static final native delete_create_torrent(J)V
.end method

.method public static final native delete_deadline_flags_t(J)V
.end method

.method public static final native delete_dht_announce_alert(J)V
.end method

.method public static final native delete_dht_bootstrap_alert(J)V
.end method

.method public static final native delete_dht_direct_response_alert(J)V
.end method

.method public static final native delete_dht_error_alert(J)V
.end method

.method public static final native delete_dht_get_peers_alert(J)V
.end method

.method public static final native delete_dht_get_peers_reply_alert(J)V
.end method

.method public static final native delete_dht_immutable_item_alert(J)V
.end method

.method public static final native delete_dht_live_nodes_alert(J)V
.end method

.method public static final native delete_dht_log_alert(J)V
.end method

.method public static final native delete_dht_lookup(J)V
.end method

.method public static final native delete_dht_lookup_vector(J)V
.end method

.method public static final native delete_dht_mutable_item_alert(J)V
.end method

.method public static final native delete_dht_outgoing_get_peers_alert(J)V
.end method

.method public static final native delete_dht_pkt_alert(J)V
.end method

.method public static final native delete_dht_put_alert(J)V
.end method

.method public static final native delete_dht_reply_alert(J)V
.end method

.method public static final native delete_dht_routing_bucket(J)V
.end method

.method public static final native delete_dht_routing_bucket_vector(J)V
.end method

.method public static final native delete_dht_sample_infohashes_alert(J)V
.end method

.method public static final native delete_dht_state(J)V
.end method

.method public static final native delete_dht_stats_alert(J)V
.end method

.method public static final native delete_entry(J)V
.end method

.method public static final native delete_entry_vector(J)V
.end method

.method public static final native delete_error_code(J)V
.end method

.method public static final native delete_external_ip_alert(J)V
.end method

.method public static final native delete_fastresume_rejected_alert(J)V
.end method

.method public static final native delete_file_completed_alert(J)V
.end method

.method public static final native delete_file_error_alert(J)V
.end method

.method public static final native delete_file_flags_t(J)V
.end method

.method public static final native delete_file_prio_alert(J)V
.end method

.method public static final native delete_file_progress_alert(J)V
.end method

.method public static final native delete_file_progress_flags_t(J)V
.end method

.method public static final native delete_file_rename_failed_alert(J)V
.end method

.method public static final native delete_file_renamed_alert(J)V
.end method

.method public static final native delete_file_slice(J)V
.end method

.method public static final native delete_file_slice_vector(J)V
.end method

.method public static final native delete_file_storage(J)V
.end method

.method public static final native delete_filenames(J)V
.end method

.method public static final native delete_hash_failed_alert(J)V
.end method

.method public static final native delete_i2p_alert(J)V
.end method

.method public static final native delete_incoming_connection_alert(J)V
.end method

.method public static final native delete_incoming_request_alert(J)V
.end method

.method public static final native delete_info_hash_t(J)V
.end method

.method public static final native delete_int64_vector(J)V
.end method

.method public static final native delete_int_bitfield_map(J)V
.end method

.method public static final native delete_int_bitfield_map_Iterator(J)V
.end method

.method public static final native delete_int_byte_pair(J)V
.end method

.method public static final native delete_int_byte_pair_vector(J)V
.end method

.method public static final native delete_int_string_map(J)V
.end method

.method public static final native delete_int_string_map_Iterator(J)V
.end method

.method public static final native delete_int_vector(J)V
.end method

.method public static final native delete_invalid_request_alert(J)V
.end method

.method public static final native delete_ip_filter(J)V
.end method

.method public static final native delete_ip_interface(J)V
.end method

.method public static final native delete_ip_interface_vector(J)V
.end method

.method public static final native delete_ip_route(J)V
.end method

.method public static final native delete_ip_route_vector(J)V
.end method

.method public static final native delete_list_files_listener(J)V
.end method

.method public static final native delete_listen_failed_alert(J)V
.end method

.method public static final native delete_listen_succeeded_alert(J)V
.end method

.method public static final native delete_load_torrent_limits(J)V
.end method

.method public static final native delete_log_alert(J)V
.end method

.method public static final native delete_lsd_error_alert(J)V
.end method

.method public static final native delete_lsd_peer_alert(J)V
.end method

.method public static final native delete_metadata_failed_alert(J)V
.end method

.method public static final native delete_metadata_received_alert(J)V
.end method

.method public static final native delete_oversized_file_alert(J)V
.end method

.method public static final native delete_partial_piece_info(J)V
.end method

.method public static final native delete_partial_piece_info_vector(J)V
.end method

.method public static final native delete_pause_flags_t(J)V
.end method

.method public static final native delete_peer_alert(J)V
.end method

.method public static final native delete_peer_ban_alert(J)V
.end method

.method public static final native delete_peer_blocked_alert(J)V
.end method

.method public static final native delete_peer_class_info(J)V
.end method

.method public static final native delete_peer_class_type_filter(J)V
.end method

.method public static final native delete_peer_connect_alert(J)V
.end method

.method public static final native delete_peer_disconnected_alert(J)V
.end method

.method public static final native delete_peer_error_alert(J)V
.end method

.method public static final native delete_peer_flags_t(J)V
.end method

.method public static final native delete_peer_info(J)V
.end method

.method public static final native delete_peer_info_alert(J)V
.end method

.method public static final native delete_peer_info_vector(J)V
.end method

.method public static final native delete_peer_log_alert(J)V
.end method

.method public static final native delete_peer_request(J)V
.end method

.method public static final native delete_peer_snubbed_alert(J)V
.end method

.method public static final native delete_peer_source_flags_t(J)V
.end method

.method public static final native delete_peer_unsnubbed_alert(J)V
.end method

.method public static final native delete_performance_alert(J)V
.end method

.method public static final native delete_pex_flags_t(J)V
.end method

.method public static final native delete_picker_flags_t(J)V
.end method

.method public static final native delete_picker_log_alert(J)V
.end method

.method public static final native delete_piece_availability_alert(J)V
.end method

.method public static final native delete_piece_block(J)V
.end method

.method public static final native delete_piece_block_vector(J)V
.end method

.method public static final native delete_piece_finished_alert(J)V
.end method

.method public static final native delete_piece_info_alert(J)V
.end method

.method public static final native delete_port_filter(J)V
.end method

.method public static final native delete_portmap_alert(J)V
.end method

.method public static final native delete_portmap_error_alert(J)V
.end method

.method public static final native delete_portmap_log_alert(J)V
.end method

.method public static final native delete_read_piece_alert(J)V
.end method

.method public static final native delete_reannounce_flags_t(J)V
.end method

.method public static final native delete_remove_flags_t(J)V
.end method

.method public static final native delete_renamed_files(J)V
.end method

.method public static final native delete_reopen_network_flags_t(J)V
.end method

.method public static final native delete_request_dropped_alert(J)V
.end method

.method public static final native delete_resume_data_flags_t(J)V
.end method

.method public static final native delete_save_resume_data_alert(J)V
.end method

.method public static final native delete_save_resume_data_failed_alert(J)V
.end method

.method public static final native delete_save_state_flags_t(J)V
.end method

.method public static final native delete_scrape_failed_alert(J)V
.end method

.method public static final native delete_scrape_reply_alert(J)V
.end method

.method public static final native delete_session(J)V
.end method

.method public static final native delete_session_error_alert(J)V
.end method

.method public static final native delete_session_flags_t(J)V
.end method

.method public static final native delete_session_handle(J)V
.end method

.method public static final native delete_session_params(J)V
.end method

.method public static final native delete_session_proxy(J)V
.end method

.method public static final native delete_session_stats_alert(J)V
.end method

.method public static final native delete_session_stats_header_alert(J)V
.end method

.method public static final native delete_set_piece_hashes_listener(J)V
.end method

.method public static final native delete_settings_pack(J)V
.end method

.method public static final native delete_sha1_hash(J)V
.end method

.method public static final native delete_sha1_hash_udp_endpoint_pair(J)V
.end method

.method public static final native delete_sha1_hash_udp_endpoint_pair_vector(J)V
.end method

.method public static final native delete_sha1_hash_vector(J)V
.end method

.method public static final native delete_sha256_hash(J)V
.end method

.method public static final native delete_sha256_hash_vector(J)V
.end method

.method public static final native delete_sha256_hash_vector_vector(J)V
.end method

.method public static final native delete_socks5_alert(J)V
.end method

.method public static final native delete_state_changed_alert(J)V
.end method

.method public static final native delete_state_update_alert(J)V
.end method

.method public static final native delete_stats_metric(J)V
.end method

.method public static final native delete_stats_metric_vector(J)V
.end method

.method public static final native delete_status_flags_t(J)V
.end method

.method public static final native delete_storage_error(J)V
.end method

.method public static final native delete_storage_moved_alert(J)V
.end method

.method public static final native delete_storage_moved_failed_alert(J)V
.end method

.method public static final native delete_string_entry_map(J)V
.end method

.method public static final native delete_string_entry_map_Iterator(J)V
.end method

.method public static final native delete_string_int_pair(J)V
.end method

.method public static final native delete_string_int_pair_vector(J)V
.end method

.method public static final native delete_string_string_map(J)V
.end method

.method public static final native delete_string_string_map_Iterator(J)V
.end method

.method public static final native delete_string_string_pair(J)V
.end method

.method public static final native delete_string_string_pair_vector(J)V
.end method

.method public static final native delete_string_vector(J)V
.end method

.method public static final native delete_tcp_endpoint(J)V
.end method

.method public static final native delete_tcp_endpoint_vector(J)V
.end method

.method public static final native delete_torrent_alert(J)V
.end method

.method public static final native delete_torrent_checked_alert(J)V
.end method

.method public static final native delete_torrent_conflict_alert(J)V
.end method

.method public static final native delete_torrent_delete_failed_alert(J)V
.end method

.method public static final native delete_torrent_deleted_alert(J)V
.end method

.method public static final native delete_torrent_error_alert(J)V
.end method

.method public static final native delete_torrent_finished_alert(J)V
.end method

.method public static final native delete_torrent_flags_t(J)V
.end method

.method public static final native delete_torrent_handle(J)V
.end method

.method public static final native delete_torrent_handle_vector(J)V
.end method

.method public static final native delete_torrent_info(J)V
.end method

.method public static final native delete_torrent_log_alert(J)V
.end method

.method public static final native delete_torrent_need_cert_alert(J)V
.end method

.method public static final native delete_torrent_paused_alert(J)V
.end method

.method public static final native delete_torrent_removed_alert(J)V
.end method

.method public static final native delete_torrent_resumed_alert(J)V
.end method

.method public static final native delete_torrent_status(J)V
.end method

.method public static final native delete_torrent_status_vector(J)V
.end method

.method public static final native delete_tracker_alert(J)V
.end method

.method public static final native delete_tracker_announce_alert(J)V
.end method

.method public static final native delete_tracker_error_alert(J)V
.end method

.method public static final native delete_tracker_list_alert(J)V
.end method

.method public static final native delete_tracker_reply_alert(J)V
.end method

.method public static final native delete_tracker_warning_alert(J)V
.end method

.method public static final native delete_trackerid_alert(J)V
.end method

.method public static final native delete_udp_endpoint(J)V
.end method

.method public static final native delete_udp_endpoint_vector(J)V
.end method

.method public static final native delete_udp_error_alert(J)V
.end method

.method public static final native delete_unwanted_block_alert(J)V
.end method

.method public static final native delete_url_seed_alert(J)V
.end method

.method public static final native delete_web_seed_entry(J)V
.end method

.method public static final native delete_web_seed_entry_vector(J)V
.end method

.method public static final native delete_write_torrent_flags_t(J)V
.end method

.method public static final native device_for_address(JLorg/libtorrent4j/swig/session;JLorg/libtorrent4j/swig/address;JLorg/libtorrent4j/swig/error_code;)Ljava/lang/String;
.end method

.method public static final native dht_announce_alert_SWIGUpcast(J)J
.end method

.method public static final native dht_announce_alert_alert_type_get()I
.end method

.method public static final native dht_announce_alert_category(JLorg/libtorrent4j/swig/dht_announce_alert;)J
.end method

.method public static final native dht_announce_alert_get_ip(JLorg/libtorrent4j/swig/dht_announce_alert;)J
.end method

.method public static final native dht_announce_alert_info_hash_get(JLorg/libtorrent4j/swig/dht_announce_alert;)J
.end method

.method public static final native dht_announce_alert_info_hash_set(JLorg/libtorrent4j/swig/dht_announce_alert;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native dht_announce_alert_message(JLorg/libtorrent4j/swig/dht_announce_alert;)Ljava/lang/String;
.end method

.method public static final native dht_announce_alert_port_get(JLorg/libtorrent4j/swig/dht_announce_alert;)I
.end method

.method public static final native dht_announce_alert_port_set(JLorg/libtorrent4j/swig/dht_announce_alert;I)V
.end method

.method public static final native dht_announce_alert_priority_get()I
.end method

.method public static final native dht_announce_alert_static_category_get()J
.end method

.method public static final native dht_announce_alert_type(JLorg/libtorrent4j/swig/dht_announce_alert;)I
.end method

.method public static final native dht_announce_alert_what(JLorg/libtorrent4j/swig/dht_announce_alert;)Ljava/lang/String;
.end method

.method public static final native dht_bootstrap_alert_SWIGUpcast(J)J
.end method

.method public static final native dht_bootstrap_alert_alert_type_get()I
.end method

.method public static final native dht_bootstrap_alert_category(JLorg/libtorrent4j/swig/dht_bootstrap_alert;)J
.end method

.method public static final native dht_bootstrap_alert_message(JLorg/libtorrent4j/swig/dht_bootstrap_alert;)Ljava/lang/String;
.end method

.method public static final native dht_bootstrap_alert_priority_get()I
.end method

.method public static final native dht_bootstrap_alert_static_category_get()J
.end method

.method public static final native dht_bootstrap_alert_type(JLorg/libtorrent4j/swig/dht_bootstrap_alert;)I
.end method

.method public static final native dht_bootstrap_alert_what(JLorg/libtorrent4j/swig/dht_bootstrap_alert;)Ljava/lang/String;
.end method

.method public static final native dht_direct_response_alert_SWIGUpcast(J)J
.end method

.method public static final native dht_direct_response_alert_alert_type_get()I
.end method

.method public static final native dht_direct_response_alert_category(JLorg/libtorrent4j/swig/dht_direct_response_alert;)J
.end method

.method public static final native dht_direct_response_alert_get_endpoint(JLorg/libtorrent4j/swig/dht_direct_response_alert;)J
.end method

.method public static final native dht_direct_response_alert_message(JLorg/libtorrent4j/swig/dht_direct_response_alert;)Ljava/lang/String;
.end method

.method public static final native dht_direct_response_alert_priority_get()I
.end method

.method public static final native dht_direct_response_alert_response(JLorg/libtorrent4j/swig/dht_direct_response_alert;)J
.end method

.method public static final native dht_direct_response_alert_static_category_get()J
.end method

.method public static final native dht_direct_response_alert_type(JLorg/libtorrent4j/swig/dht_direct_response_alert;)I
.end method

.method public static final native dht_direct_response_alert_userdata_get(JLorg/libtorrent4j/swig/dht_direct_response_alert;)J
.end method

.method public static final native dht_direct_response_alert_userdata_set(JLorg/libtorrent4j/swig/dht_direct_response_alert;JLorg/libtorrent4j/swig/client_data_t;)V
.end method

.method public static final native dht_direct_response_alert_what(JLorg/libtorrent4j/swig/dht_direct_response_alert;)Ljava/lang/String;
.end method

.method public static final native dht_error_alert_SWIGUpcast(J)J
.end method

.method public static final native dht_error_alert_alert_type_get()I
.end method

.method public static final native dht_error_alert_category(JLorg/libtorrent4j/swig/dht_error_alert;)J
.end method

.method public static final native dht_error_alert_error_get(JLorg/libtorrent4j/swig/dht_error_alert;)J
.end method

.method public static final native dht_error_alert_error_set(JLorg/libtorrent4j/swig/dht_error_alert;JLorg/libtorrent4j/swig/error_code;)V
.end method

.method public static final native dht_error_alert_message(JLorg/libtorrent4j/swig/dht_error_alert;)Ljava/lang/String;
.end method

.method public static final native dht_error_alert_op_get(JLorg/libtorrent4j/swig/dht_error_alert;)I
.end method

.method public static final native dht_error_alert_op_set(JLorg/libtorrent4j/swig/dht_error_alert;I)V
.end method

.method public static final native dht_error_alert_priority_get()I
.end method

.method public static final native dht_error_alert_static_category_get()J
.end method

.method public static final native dht_error_alert_type(JLorg/libtorrent4j/swig/dht_error_alert;)I
.end method

.method public static final native dht_error_alert_what(JLorg/libtorrent4j/swig/dht_error_alert;)Ljava/lang/String;
.end method

.method public static final native dht_get()J
.end method

.method public static final native dht_get_peers_alert_SWIGUpcast(J)J
.end method

.method public static final native dht_get_peers_alert_alert_type_get()I
.end method

.method public static final native dht_get_peers_alert_category(JLorg/libtorrent4j/swig/dht_get_peers_alert;)J
.end method

.method public static final native dht_get_peers_alert_info_hash_get(JLorg/libtorrent4j/swig/dht_get_peers_alert;)J
.end method

.method public static final native dht_get_peers_alert_info_hash_set(JLorg/libtorrent4j/swig/dht_get_peers_alert;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native dht_get_peers_alert_message(JLorg/libtorrent4j/swig/dht_get_peers_alert;)Ljava/lang/String;
.end method

.method public static final native dht_get_peers_alert_priority_get()I
.end method

.method public static final native dht_get_peers_alert_static_category_get()J
.end method

.method public static final native dht_get_peers_alert_type(JLorg/libtorrent4j/swig/dht_get_peers_alert;)I
.end method

.method public static final native dht_get_peers_alert_what(JLorg/libtorrent4j/swig/dht_get_peers_alert;)Ljava/lang/String;
.end method

.method public static final native dht_get_peers_reply_alert_SWIGUpcast(J)J
.end method

.method public static final native dht_get_peers_reply_alert_alert_type_get()I
.end method

.method public static final native dht_get_peers_reply_alert_category(JLorg/libtorrent4j/swig/dht_get_peers_reply_alert;)J
.end method

.method public static final native dht_get_peers_reply_alert_info_hash_get(JLorg/libtorrent4j/swig/dht_get_peers_reply_alert;)J
.end method

.method public static final native dht_get_peers_reply_alert_info_hash_set(JLorg/libtorrent4j/swig/dht_get_peers_reply_alert;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native dht_get_peers_reply_alert_message(JLorg/libtorrent4j/swig/dht_get_peers_reply_alert;)Ljava/lang/String;
.end method

.method public static final native dht_get_peers_reply_alert_num_peers(JLorg/libtorrent4j/swig/dht_get_peers_reply_alert;)I
.end method

.method public static final native dht_get_peers_reply_alert_peers(JLorg/libtorrent4j/swig/dht_get_peers_reply_alert;)J
.end method

.method public static final native dht_get_peers_reply_alert_priority_get()I
.end method

.method public static final native dht_get_peers_reply_alert_static_category_get()J
.end method

.method public static final native dht_get_peers_reply_alert_type(JLorg/libtorrent4j/swig/dht_get_peers_reply_alert;)I
.end method

.method public static final native dht_get_peers_reply_alert_what(JLorg/libtorrent4j/swig/dht_get_peers_reply_alert;)Ljava/lang/String;
.end method

.method public static final native dht_immutable_item_alert_SWIGUpcast(J)J
.end method

.method public static final native dht_immutable_item_alert_alert_type_get()I
.end method

.method public static final native dht_immutable_item_alert_category(JLorg/libtorrent4j/swig/dht_immutable_item_alert;)J
.end method

.method public static final native dht_immutable_item_alert_item_get(JLorg/libtorrent4j/swig/dht_immutable_item_alert;)J
.end method

.method public static final native dht_immutable_item_alert_item_set(JLorg/libtorrent4j/swig/dht_immutable_item_alert;JLorg/libtorrent4j/swig/entry;)V
.end method

.method public static final native dht_immutable_item_alert_message(JLorg/libtorrent4j/swig/dht_immutable_item_alert;)Ljava/lang/String;
.end method

.method public static final native dht_immutable_item_alert_priority_get()I
.end method

.method public static final native dht_immutable_item_alert_static_category_get()J
.end method

.method public static final native dht_immutable_item_alert_target_get(JLorg/libtorrent4j/swig/dht_immutable_item_alert;)J
.end method

.method public static final native dht_immutable_item_alert_target_set(JLorg/libtorrent4j/swig/dht_immutable_item_alert;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native dht_immutable_item_alert_type(JLorg/libtorrent4j/swig/dht_immutable_item_alert;)I
.end method

.method public static final native dht_immutable_item_alert_what(JLorg/libtorrent4j/swig/dht_immutable_item_alert;)Ljava/lang/String;
.end method

.method public static final native dht_live_nodes_alert_SWIGUpcast(J)J
.end method

.method public static final native dht_live_nodes_alert_alert_type_get()I
.end method

.method public static final native dht_live_nodes_alert_category(JLorg/libtorrent4j/swig/dht_live_nodes_alert;)J
.end method

.method public static final native dht_live_nodes_alert_message(JLorg/libtorrent4j/swig/dht_live_nodes_alert;)Ljava/lang/String;
.end method

.method public static final native dht_live_nodes_alert_node_id_get(JLorg/libtorrent4j/swig/dht_live_nodes_alert;)J
.end method

.method public static final native dht_live_nodes_alert_node_id_set(JLorg/libtorrent4j/swig/dht_live_nodes_alert;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native dht_live_nodes_alert_nodes(JLorg/libtorrent4j/swig/dht_live_nodes_alert;)J
.end method

.method public static final native dht_live_nodes_alert_num_nodes(JLorg/libtorrent4j/swig/dht_live_nodes_alert;)I
.end method

.method public static final native dht_live_nodes_alert_priority_get()I
.end method

.method public static final native dht_live_nodes_alert_static_category_get()J
.end method

.method public static final native dht_live_nodes_alert_type(JLorg/libtorrent4j/swig/dht_live_nodes_alert;)I
.end method

.method public static final native dht_live_nodes_alert_what(JLorg/libtorrent4j/swig/dht_live_nodes_alert;)Ljava/lang/String;
.end method

.method public static final native dht_log_alert_SWIGUpcast(J)J
.end method

.method public static final native dht_log_alert_alert_type_get()I
.end method

.method public static final native dht_log_alert_category(JLorg/libtorrent4j/swig/dht_log_alert;)J
.end method

.method public static final native dht_log_alert_log_message(JLorg/libtorrent4j/swig/dht_log_alert;)Ljava/lang/String;
.end method

.method public static final native dht_log_alert_message(JLorg/libtorrent4j/swig/dht_log_alert;)Ljava/lang/String;
.end method

.method public static final native dht_log_alert_module_get(JLorg/libtorrent4j/swig/dht_log_alert;)I
.end method

.method public static final native dht_log_alert_module_set(JLorg/libtorrent4j/swig/dht_log_alert;I)V
.end method

.method public static final native dht_log_alert_priority_get()I
.end method

.method public static final native dht_log_alert_static_category_get()J
.end method

.method public static final native dht_log_alert_type(JLorg/libtorrent4j/swig/dht_log_alert;)I
.end method

.method public static final native dht_log_alert_what(JLorg/libtorrent4j/swig/dht_log_alert;)Ljava/lang/String;
.end method

.method public static final native dht_log_get()J
.end method

.method public static final native dht_lookup_branch_factor_get(JLorg/libtorrent4j/swig/dht_lookup;)I
.end method

.method public static final native dht_lookup_branch_factor_set(JLorg/libtorrent4j/swig/dht_lookup;I)V
.end method

.method public static final native dht_lookup_first_timeout_get(JLorg/libtorrent4j/swig/dht_lookup;)I
.end method

.method public static final native dht_lookup_first_timeout_set(JLorg/libtorrent4j/swig/dht_lookup;I)V
.end method

.method public static final native dht_lookup_get_type(JLorg/libtorrent4j/swig/dht_lookup;)Ljava/lang/String;
.end method

.method public static final native dht_lookup_last_sent_get(JLorg/libtorrent4j/swig/dht_lookup;)I
.end method

.method public static final native dht_lookup_last_sent_set(JLorg/libtorrent4j/swig/dht_lookup;I)V
.end method

.method public static final native dht_lookup_nodes_left_get(JLorg/libtorrent4j/swig/dht_lookup;)I
.end method

.method public static final native dht_lookup_nodes_left_set(JLorg/libtorrent4j/swig/dht_lookup;I)V
.end method

.method public static final native dht_lookup_outstanding_requests_get(JLorg/libtorrent4j/swig/dht_lookup;)I
.end method

.method public static final native dht_lookup_outstanding_requests_set(JLorg/libtorrent4j/swig/dht_lookup;I)V
.end method

.method public static final native dht_lookup_responses_get(JLorg/libtorrent4j/swig/dht_lookup;)I
.end method

.method public static final native dht_lookup_responses_set(JLorg/libtorrent4j/swig/dht_lookup;I)V
.end method

.method public static final native dht_lookup_target_get(JLorg/libtorrent4j/swig/dht_lookup;)J
.end method

.method public static final native dht_lookup_target_set(JLorg/libtorrent4j/swig/dht_lookup;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native dht_lookup_timeouts_get(JLorg/libtorrent4j/swig/dht_lookup;)I
.end method

.method public static final native dht_lookup_timeouts_set(JLorg/libtorrent4j/swig/dht_lookup;I)V
.end method

.method public static final native dht_lookup_vector_clear(JLorg/libtorrent4j/swig/dht_lookup_vector;)V
.end method

.method public static final native dht_lookup_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/dht_lookup_vector;JLorg/libtorrent4j/swig/dht_lookup;)V
.end method

.method public static final native dht_lookup_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/dht_lookup_vector;IJLorg/libtorrent4j/swig/dht_lookup;)V
.end method

.method public static final native dht_lookup_vector_doCapacity(JLorg/libtorrent4j/swig/dht_lookup_vector;)I
.end method

.method public static final native dht_lookup_vector_doGet(JLorg/libtorrent4j/swig/dht_lookup_vector;I)J
.end method

.method public static final native dht_lookup_vector_doRemove(JLorg/libtorrent4j/swig/dht_lookup_vector;I)J
.end method

.method public static final native dht_lookup_vector_doRemoveRange(JLorg/libtorrent4j/swig/dht_lookup_vector;II)V
.end method

.method public static final native dht_lookup_vector_doReserve(JLorg/libtorrent4j/swig/dht_lookup_vector;I)V
.end method

.method public static final native dht_lookup_vector_doSet(JLorg/libtorrent4j/swig/dht_lookup_vector;IJLorg/libtorrent4j/swig/dht_lookup;)J
.end method

.method public static final native dht_lookup_vector_doSize(JLorg/libtorrent4j/swig/dht_lookup_vector;)I
.end method

.method public static final native dht_lookup_vector_isEmpty(JLorg/libtorrent4j/swig/dht_lookup_vector;)Z
.end method

.method public static final native dht_mutable_item_alert_SWIGUpcast(J)J
.end method

.method public static final native dht_mutable_item_alert_alert_type_get()I
.end method

.method public static final native dht_mutable_item_alert_authoritative_get(JLorg/libtorrent4j/swig/dht_mutable_item_alert;)Z
.end method

.method public static final native dht_mutable_item_alert_authoritative_set(JLorg/libtorrent4j/swig/dht_mutable_item_alert;Z)V
.end method

.method public static final native dht_mutable_item_alert_category(JLorg/libtorrent4j/swig/dht_mutable_item_alert;)J
.end method

.method public static final native dht_mutable_item_alert_get_key(JLorg/libtorrent4j/swig/dht_mutable_item_alert;)J
.end method

.method public static final native dht_mutable_item_alert_get_salt(JLorg/libtorrent4j/swig/dht_mutable_item_alert;)J
.end method

.method public static final native dht_mutable_item_alert_get_seq(JLorg/libtorrent4j/swig/dht_mutable_item_alert;)J
.end method

.method public static final native dht_mutable_item_alert_get_signature(JLorg/libtorrent4j/swig/dht_mutable_item_alert;)J
.end method

.method public static final native dht_mutable_item_alert_item_get(JLorg/libtorrent4j/swig/dht_mutable_item_alert;)J
.end method

.method public static final native dht_mutable_item_alert_item_set(JLorg/libtorrent4j/swig/dht_mutable_item_alert;JLorg/libtorrent4j/swig/entry;)V
.end method

.method public static final native dht_mutable_item_alert_message(JLorg/libtorrent4j/swig/dht_mutable_item_alert;)Ljava/lang/String;
.end method

.method public static final native dht_mutable_item_alert_priority_get()I
.end method

.method public static final native dht_mutable_item_alert_salt_get(JLorg/libtorrent4j/swig/dht_mutable_item_alert;)Ljava/lang/String;
.end method

.method public static final native dht_mutable_item_alert_salt_set(JLorg/libtorrent4j/swig/dht_mutable_item_alert;Ljava/lang/String;)V
.end method

.method public static final native dht_mutable_item_alert_seq_get(JLorg/libtorrent4j/swig/dht_mutable_item_alert;)J
.end method

.method public static final native dht_mutable_item_alert_seq_set(JLorg/libtorrent4j/swig/dht_mutable_item_alert;J)V
.end method

.method public static final native dht_mutable_item_alert_static_category_get()J
.end method

.method public static final native dht_mutable_item_alert_type(JLorg/libtorrent4j/swig/dht_mutable_item_alert;)I
.end method

.method public static final native dht_mutable_item_alert_what(JLorg/libtorrent4j/swig/dht_mutable_item_alert;)Ljava/lang/String;
.end method

.method public static final native dht_operation_get()J
.end method

.method public static final native dht_outgoing_get_peers_alert_SWIGUpcast(J)J
.end method

.method public static final native dht_outgoing_get_peers_alert_alert_type_get()I
.end method

.method public static final native dht_outgoing_get_peers_alert_category(JLorg/libtorrent4j/swig/dht_outgoing_get_peers_alert;)J
.end method

.method public static final native dht_outgoing_get_peers_alert_get_endpoint(JLorg/libtorrent4j/swig/dht_outgoing_get_peers_alert;)J
.end method

.method public static final native dht_outgoing_get_peers_alert_info_hash_get(JLorg/libtorrent4j/swig/dht_outgoing_get_peers_alert;)J
.end method

.method public static final native dht_outgoing_get_peers_alert_info_hash_set(JLorg/libtorrent4j/swig/dht_outgoing_get_peers_alert;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native dht_outgoing_get_peers_alert_message(JLorg/libtorrent4j/swig/dht_outgoing_get_peers_alert;)Ljava/lang/String;
.end method

.method public static final native dht_outgoing_get_peers_alert_obfuscated_info_hash_get(JLorg/libtorrent4j/swig/dht_outgoing_get_peers_alert;)J
.end method

.method public static final native dht_outgoing_get_peers_alert_obfuscated_info_hash_set(JLorg/libtorrent4j/swig/dht_outgoing_get_peers_alert;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native dht_outgoing_get_peers_alert_priority_get()I
.end method

.method public static final native dht_outgoing_get_peers_alert_static_category_get()J
.end method

.method public static final native dht_outgoing_get_peers_alert_type(JLorg/libtorrent4j/swig/dht_outgoing_get_peers_alert;)I
.end method

.method public static final native dht_outgoing_get_peers_alert_what(JLorg/libtorrent4j/swig/dht_outgoing_get_peers_alert;)Ljava/lang/String;
.end method

.method public static final native dht_pkt_alert_SWIGUpcast(J)J
.end method

.method public static final native dht_pkt_alert_alert_type_get()I
.end method

.method public static final native dht_pkt_alert_category(JLorg/libtorrent4j/swig/dht_pkt_alert;)J
.end method

.method public static final native dht_pkt_alert_direction_get(JLorg/libtorrent4j/swig/dht_pkt_alert;)I
.end method

.method public static final native dht_pkt_alert_direction_set(JLorg/libtorrent4j/swig/dht_pkt_alert;I)V
.end method

.method public static final native dht_pkt_alert_get_node(JLorg/libtorrent4j/swig/dht_pkt_alert;)J
.end method

.method public static final native dht_pkt_alert_get_pkt_buf(JLorg/libtorrent4j/swig/dht_pkt_alert;)J
.end method

.method public static final native dht_pkt_alert_message(JLorg/libtorrent4j/swig/dht_pkt_alert;)Ljava/lang/String;
.end method

.method public static final native dht_pkt_alert_priority_get()I
.end method

.method public static final native dht_pkt_alert_static_category_get()J
.end method

.method public static final native dht_pkt_alert_type(JLorg/libtorrent4j/swig/dht_pkt_alert;)I
.end method

.method public static final native dht_pkt_alert_what(JLorg/libtorrent4j/swig/dht_pkt_alert;)Ljava/lang/String;
.end method

.method public static final native dht_put_alert_SWIGUpcast(J)J
.end method

.method public static final native dht_put_alert_alert_type_get()I
.end method

.method public static final native dht_put_alert_category(JLorg/libtorrent4j/swig/dht_put_alert;)J
.end method

.method public static final native dht_put_alert_get_public_key(JLorg/libtorrent4j/swig/dht_put_alert;)J
.end method

.method public static final native dht_put_alert_get_salt(JLorg/libtorrent4j/swig/dht_put_alert;)J
.end method

.method public static final native dht_put_alert_get_seq(JLorg/libtorrent4j/swig/dht_put_alert;)J
.end method

.method public static final native dht_put_alert_get_signature(JLorg/libtorrent4j/swig/dht_put_alert;)J
.end method

.method public static final native dht_put_alert_message(JLorg/libtorrent4j/swig/dht_put_alert;)Ljava/lang/String;
.end method

.method public static final native dht_put_alert_num_success_get(JLorg/libtorrent4j/swig/dht_put_alert;)I
.end method

.method public static final native dht_put_alert_num_success_set(JLorg/libtorrent4j/swig/dht_put_alert;I)V
.end method

.method public static final native dht_put_alert_priority_get()I
.end method

.method public static final native dht_put_alert_salt_get(JLorg/libtorrent4j/swig/dht_put_alert;)Ljava/lang/String;
.end method

.method public static final native dht_put_alert_salt_set(JLorg/libtorrent4j/swig/dht_put_alert;Ljava/lang/String;)V
.end method

.method public static final native dht_put_alert_seq_get(JLorg/libtorrent4j/swig/dht_put_alert;)J
.end method

.method public static final native dht_put_alert_seq_set(JLorg/libtorrent4j/swig/dht_put_alert;J)V
.end method

.method public static final native dht_put_alert_static_category_get()J
.end method

.method public static final native dht_put_alert_target_get(JLorg/libtorrent4j/swig/dht_put_alert;)J
.end method

.method public static final native dht_put_alert_target_set(JLorg/libtorrent4j/swig/dht_put_alert;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native dht_put_alert_type(JLorg/libtorrent4j/swig/dht_put_alert;)I
.end method

.method public static final native dht_put_alert_what(JLorg/libtorrent4j/swig/dht_put_alert;)Ljava/lang/String;
.end method

.method public static final native dht_reply_alert_SWIGUpcast(J)J
.end method

.method public static final native dht_reply_alert_alert_type_get()I
.end method

.method public static final native dht_reply_alert_category(JLorg/libtorrent4j/swig/dht_reply_alert;)J
.end method

.method public static final native dht_reply_alert_message(JLorg/libtorrent4j/swig/dht_reply_alert;)Ljava/lang/String;
.end method

.method public static final native dht_reply_alert_num_peers_get(JLorg/libtorrent4j/swig/dht_reply_alert;)I
.end method

.method public static final native dht_reply_alert_priority_get()I
.end method

.method public static final native dht_reply_alert_static_category_get()J
.end method

.method public static final native dht_reply_alert_type(JLorg/libtorrent4j/swig/dht_reply_alert;)I
.end method

.method public static final native dht_reply_alert_what(JLorg/libtorrent4j/swig/dht_reply_alert;)Ljava/lang/String;
.end method

.method public static final native dht_routing_bucket_last_active_get(JLorg/libtorrent4j/swig/dht_routing_bucket;)I
.end method

.method public static final native dht_routing_bucket_last_active_set(JLorg/libtorrent4j/swig/dht_routing_bucket;I)V
.end method

.method public static final native dht_routing_bucket_num_nodes_get(JLorg/libtorrent4j/swig/dht_routing_bucket;)I
.end method

.method public static final native dht_routing_bucket_num_nodes_set(JLorg/libtorrent4j/swig/dht_routing_bucket;I)V
.end method

.method public static final native dht_routing_bucket_num_replacements_get(JLorg/libtorrent4j/swig/dht_routing_bucket;)I
.end method

.method public static final native dht_routing_bucket_num_replacements_set(JLorg/libtorrent4j/swig/dht_routing_bucket;I)V
.end method

.method public static final native dht_routing_bucket_vector_clear(JLorg/libtorrent4j/swig/dht_routing_bucket_vector;)V
.end method

.method public static final native dht_routing_bucket_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/dht_routing_bucket_vector;JLorg/libtorrent4j/swig/dht_routing_bucket;)V
.end method

.method public static final native dht_routing_bucket_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/dht_routing_bucket_vector;IJLorg/libtorrent4j/swig/dht_routing_bucket;)V
.end method

.method public static final native dht_routing_bucket_vector_doCapacity(JLorg/libtorrent4j/swig/dht_routing_bucket_vector;)I
.end method

.method public static final native dht_routing_bucket_vector_doGet(JLorg/libtorrent4j/swig/dht_routing_bucket_vector;I)J
.end method

.method public static final native dht_routing_bucket_vector_doRemove(JLorg/libtorrent4j/swig/dht_routing_bucket_vector;I)J
.end method

.method public static final native dht_routing_bucket_vector_doRemoveRange(JLorg/libtorrent4j/swig/dht_routing_bucket_vector;II)V
.end method

.method public static final native dht_routing_bucket_vector_doReserve(JLorg/libtorrent4j/swig/dht_routing_bucket_vector;I)V
.end method

.method public static final native dht_routing_bucket_vector_doSet(JLorg/libtorrent4j/swig/dht_routing_bucket_vector;IJLorg/libtorrent4j/swig/dht_routing_bucket;)J
.end method

.method public static final native dht_routing_bucket_vector_doSize(JLorg/libtorrent4j/swig/dht_routing_bucket_vector;)I
.end method

.method public static final native dht_routing_bucket_vector_isEmpty(JLorg/libtorrent4j/swig/dht_routing_bucket_vector;)Z
.end method

.method public static final native dht_sample_infohashes_alert_SWIGUpcast(J)J
.end method

.method public static final native dht_sample_infohashes_alert_alert_type_get()I
.end method

.method public static final native dht_sample_infohashes_alert_category(JLorg/libtorrent4j/swig/dht_sample_infohashes_alert;)J
.end method

.method public static final native dht_sample_infohashes_alert_get_endpoint(JLorg/libtorrent4j/swig/dht_sample_infohashes_alert;)J
.end method

.method public static final native dht_sample_infohashes_alert_get_interval(JLorg/libtorrent4j/swig/dht_sample_infohashes_alert;)J
.end method

.method public static final native dht_sample_infohashes_alert_message(JLorg/libtorrent4j/swig/dht_sample_infohashes_alert;)Ljava/lang/String;
.end method

.method public static final native dht_sample_infohashes_alert_node_id_get(JLorg/libtorrent4j/swig/dht_sample_infohashes_alert;)J
.end method

.method public static final native dht_sample_infohashes_alert_node_id_set(JLorg/libtorrent4j/swig/dht_sample_infohashes_alert;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native dht_sample_infohashes_alert_nodes(JLorg/libtorrent4j/swig/dht_sample_infohashes_alert;)J
.end method

.method public static final native dht_sample_infohashes_alert_num_infohashes_get(JLorg/libtorrent4j/swig/dht_sample_infohashes_alert;)I
.end method

.method public static final native dht_sample_infohashes_alert_num_nodes(JLorg/libtorrent4j/swig/dht_sample_infohashes_alert;)I
.end method

.method public static final native dht_sample_infohashes_alert_num_samples(JLorg/libtorrent4j/swig/dht_sample_infohashes_alert;)I
.end method

.method public static final native dht_sample_infohashes_alert_priority_get()I
.end method

.method public static final native dht_sample_infohashes_alert_samples(JLorg/libtorrent4j/swig/dht_sample_infohashes_alert;)J
.end method

.method public static final native dht_sample_infohashes_alert_static_category_get()J
.end method

.method public static final native dht_sample_infohashes_alert_type(JLorg/libtorrent4j/swig/dht_sample_infohashes_alert;)I
.end method

.method public static final native dht_sample_infohashes_alert_what(JLorg/libtorrent4j/swig/dht_sample_infohashes_alert;)Ljava/lang/String;
.end method

.method public static final native dht_state_clear(JLorg/libtorrent4j/swig/dht_state;)V
.end method

.method public static final native dht_state_nids_get(JLorg/libtorrent4j/swig/dht_state;)J
.end method

.method public static final native dht_state_nids_set(JLorg/libtorrent4j/swig/dht_state;JLorg/libtorrent4j/swig/address_sha1_hash_pair_vector;)V
.end method

.method public static final native dht_state_nodes6_get(JLorg/libtorrent4j/swig/dht_state;)J
.end method

.method public static final native dht_state_nodes6_set(JLorg/libtorrent4j/swig/dht_state;JLorg/libtorrent4j/swig/udp_endpoint_vector;)V
.end method

.method public static final native dht_state_nodes_get(JLorg/libtorrent4j/swig/dht_state;)J
.end method

.method public static final native dht_state_nodes_set(JLorg/libtorrent4j/swig/dht_state;JLorg/libtorrent4j/swig/udp_endpoint_vector;)V
.end method

.method public static final native dht_stats_alert_SWIGUpcast(J)J
.end method

.method public static final native dht_stats_alert_active_requests_get(JLorg/libtorrent4j/swig/dht_stats_alert;)J
.end method

.method public static final native dht_stats_alert_active_requests_set(JLorg/libtorrent4j/swig/dht_stats_alert;JLorg/libtorrent4j/swig/dht_lookup_vector;)V
.end method

.method public static final native dht_stats_alert_alert_type_get()I
.end method

.method public static final native dht_stats_alert_category(JLorg/libtorrent4j/swig/dht_stats_alert;)J
.end method

.method public static final native dht_stats_alert_get_local_endpoint(JLorg/libtorrent4j/swig/dht_stats_alert;)J
.end method

.method public static final native dht_stats_alert_message(JLorg/libtorrent4j/swig/dht_stats_alert;)Ljava/lang/String;
.end method

.method public static final native dht_stats_alert_nid_get(JLorg/libtorrent4j/swig/dht_stats_alert;)J
.end method

.method public static final native dht_stats_alert_nid_set(JLorg/libtorrent4j/swig/dht_stats_alert;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native dht_stats_alert_priority_get()I
.end method

.method public static final native dht_stats_alert_routing_table_get(JLorg/libtorrent4j/swig/dht_stats_alert;)J
.end method

.method public static final native dht_stats_alert_routing_table_set(JLorg/libtorrent4j/swig/dht_stats_alert;JLorg/libtorrent4j/swig/dht_routing_bucket_vector;)V
.end method

.method public static final native dht_stats_alert_static_category_get()J
.end method

.method public static final native dht_stats_alert_type(JLorg/libtorrent4j/swig/dht_stats_alert;)I
.end method

.method public static final native dht_stats_alert_what(JLorg/libtorrent4j/swig/dht_stats_alert;)Ljava/lang/String;
.end method

.method public static final native directBufferAddress(Ljava/nio/Buffer;)J
.end method

.method public static final native directBufferCapacity(Ljava/nio/Buffer;)J
.end method

.method public static final native disable_dht_get()J
.end method

.method public static final native disable_lsd_get()J
.end method

.method public static final native disable_pex_get()J
.end method

.method public static final native duplicate_is_error_get()J
.end method

.method public static final native ed25519_add_scalar_public(JLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/byte_vector;)J
.end method

.method public static final native ed25519_add_scalar_secret(JLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/byte_vector;)J
.end method

.method public static final native ed25519_create_keypair(JLorg/libtorrent4j/swig/byte_vector;)J
.end method

.method public static final native ed25519_create_seed()J
.end method

.method public static final native ed25519_key_exchange(JLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/byte_vector;)J
.end method

.method public static final native ed25519_sign(JLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/byte_vector;)J
.end method

.method public static final native ed25519_verify(JLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/byte_vector;)Z
.end method

.method public static final native entry_bdecode(JLorg/libtorrent4j/swig/byte_vector;)J
.end method

.method public static final native entry_bencode(JLorg/libtorrent4j/swig/entry;)J
.end method

.method public static final native entry_dict(JLorg/libtorrent4j/swig/entry;)J
.end method

.method public static final native entry_from_preformatted_bytes(JLorg/libtorrent4j/swig/byte_vector;)J
.end method

.method public static final native entry_from_string_bytes(JLorg/libtorrent4j/swig/byte_vector;)J
.end method

.method public static final native entry_get(JLorg/libtorrent4j/swig/entry;Ljava/lang/String;)J
.end method

.method public static final native entry_integer(JLorg/libtorrent4j/swig/entry;)J
.end method

.method public static final native entry_list(JLorg/libtorrent4j/swig/entry;)J
.end method

.method public static final native entry_preformatted_bytes(JLorg/libtorrent4j/swig/entry;)J
.end method

.method public static final native entry_set__SWIG_0(JLorg/libtorrent4j/swig/entry;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static final native entry_set__SWIG_1(JLorg/libtorrent4j/swig/entry;Ljava/lang/String;JLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native entry_set__SWIG_2(JLorg/libtorrent4j/swig/entry;Ljava/lang/String;J)V
.end method

.method public static final native entry_set__SWIG_3(JLorg/libtorrent4j/swig/entry;Ljava/lang/String;JLorg/libtorrent4j/swig/entry;)V
.end method

.method public static final native entry_string(JLorg/libtorrent4j/swig/entry;)Ljava/lang/String;
.end method

.method public static final native entry_string_bytes(JLorg/libtorrent4j/swig/entry;)J
.end method

.method public static final native entry_to_string(JLorg/libtorrent4j/swig/entry;)Ljava/lang/String;
.end method

.method public static final native entry_type(JLorg/libtorrent4j/swig/entry;)I
.end method

.method public static final native entry_vector_clear(JLorg/libtorrent4j/swig/entry_vector;)V
.end method

.method public static final native entry_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/entry_vector;JLorg/libtorrent4j/swig/entry;)V
.end method

.method public static final native entry_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/entry_vector;IJLorg/libtorrent4j/swig/entry;)V
.end method

.method public static final native entry_vector_doCapacity(JLorg/libtorrent4j/swig/entry_vector;)I
.end method

.method public static final native entry_vector_doGet(JLorg/libtorrent4j/swig/entry_vector;I)J
.end method

.method public static final native entry_vector_doRemove(JLorg/libtorrent4j/swig/entry_vector;I)J
.end method

.method public static final native entry_vector_doRemoveRange(JLorg/libtorrent4j/swig/entry_vector;II)V
.end method

.method public static final native entry_vector_doReserve(JLorg/libtorrent4j/swig/entry_vector;I)V
.end method

.method public static final native entry_vector_doSet(JLorg/libtorrent4j/swig/entry_vector;IJLorg/libtorrent4j/swig/entry;)J
.end method

.method public static final native entry_vector_doSize(JLorg/libtorrent4j/swig/entry_vector;)I
.end method

.method public static final native entry_vector_isEmpty(JLorg/libtorrent4j/swig/entry_vector;)Z
.end method

.method public static final native enum_net_interfaces(JLorg/libtorrent4j/swig/session;)J
.end method

.method public static final native enum_routes(JLorg/libtorrent4j/swig/session;)J
.end method

.method public static final native eq(JLorg/libtorrent4j/swig/info_hash_t;JLorg/libtorrent4j/swig/info_hash_t;)Z
.end method

.method public static final native error_code_clear(JLorg/libtorrent4j/swig/error_code;)V
.end method

.method public static final native error_code_failed(JLorg/libtorrent4j/swig/error_code;)Z
.end method

.method public static final native error_code_message(JLorg/libtorrent4j/swig/error_code;)Ljava/lang/String;
.end method

.method public static final native error_code_to_bool(JLorg/libtorrent4j/swig/error_code;)Z
.end method

.method public static final native error_code_value(JLorg/libtorrent4j/swig/error_code;)I
.end method

.method public static final native error_get()J
.end method

.method public static final native external_ip_alert_SWIGUpcast(J)J
.end method

.method public static final native external_ip_alert_alert_type_get()I
.end method

.method public static final native external_ip_alert_category(JLorg/libtorrent4j/swig/external_ip_alert;)J
.end method

.method public static final native external_ip_alert_get_external_address(JLorg/libtorrent4j/swig/external_ip_alert;)J
.end method

.method public static final native external_ip_alert_message(JLorg/libtorrent4j/swig/external_ip_alert;)Ljava/lang/String;
.end method

.method public static final native external_ip_alert_priority_get()I
.end method

.method public static final native external_ip_alert_static_category_get()J
.end method

.method public static final native external_ip_alert_type(JLorg/libtorrent4j/swig/external_ip_alert;)I
.end method

.method public static final native external_ip_alert_what(JLorg/libtorrent4j/swig/external_ip_alert;)Ljava/lang/String;
.end method

.method public static final native fastresume_rejected_alert_SWIGUpcast(J)J
.end method

.method public static final native fastresume_rejected_alert_alert_type_get()I
.end method

.method public static final native fastresume_rejected_alert_category(JLorg/libtorrent4j/swig/fastresume_rejected_alert;)J
.end method

.method public static final native fastresume_rejected_alert_error_get(JLorg/libtorrent4j/swig/fastresume_rejected_alert;)J
.end method

.method public static final native fastresume_rejected_alert_error_set(JLorg/libtorrent4j/swig/fastresume_rejected_alert;JLorg/libtorrent4j/swig/error_code;)V
.end method

.method public static final native fastresume_rejected_alert_file_path(JLorg/libtorrent4j/swig/fastresume_rejected_alert;)Ljava/lang/String;
.end method

.method public static final native fastresume_rejected_alert_message(JLorg/libtorrent4j/swig/fastresume_rejected_alert;)Ljava/lang/String;
.end method

.method public static final native fastresume_rejected_alert_op_get(JLorg/libtorrent4j/swig/fastresume_rejected_alert;)I
.end method

.method public static final native fastresume_rejected_alert_op_set(JLorg/libtorrent4j/swig/fastresume_rejected_alert;I)V
.end method

.method public static final native fastresume_rejected_alert_priority_get()I
.end method

.method public static final native fastresume_rejected_alert_static_category_get()J
.end method

.method public static final native fastresume_rejected_alert_type(JLorg/libtorrent4j/swig/fastresume_rejected_alert;)I
.end method

.method public static final native fastresume_rejected_alert_what(JLorg/libtorrent4j/swig/fastresume_rejected_alert;)Ljava/lang/String;
.end method

.method public static final native file_completed_alert_SWIGUpcast(J)J
.end method

.method public static final native file_completed_alert_alert_type_get()I
.end method

.method public static final native file_completed_alert_category(JLorg/libtorrent4j/swig/file_completed_alert;)J
.end method

.method public static final native file_completed_alert_index_get(JLorg/libtorrent4j/swig/file_completed_alert;)I
.end method

.method public static final native file_completed_alert_message(JLorg/libtorrent4j/swig/file_completed_alert;)Ljava/lang/String;
.end method

.method public static final native file_completed_alert_priority_get()I
.end method

.method public static final native file_completed_alert_static_category_get()J
.end method

.method public static final native file_completed_alert_type(JLorg/libtorrent4j/swig/file_completed_alert;)I
.end method

.method public static final native file_completed_alert_what(JLorg/libtorrent4j/swig/file_completed_alert;)Ljava/lang/String;
.end method

.method public static final native file_error_alert_SWIGUpcast(J)J
.end method

.method public static final native file_error_alert_alert_type_get()I
.end method

.method public static final native file_error_alert_category(JLorg/libtorrent4j/swig/file_error_alert;)J
.end method

.method public static final native file_error_alert_error_get(JLorg/libtorrent4j/swig/file_error_alert;)J
.end method

.method public static final native file_error_alert_filename(JLorg/libtorrent4j/swig/file_error_alert;)Ljava/lang/String;
.end method

.method public static final native file_error_alert_message(JLorg/libtorrent4j/swig/file_error_alert;)Ljava/lang/String;
.end method

.method public static final native file_error_alert_op_get(JLorg/libtorrent4j/swig/file_error_alert;)I
.end method

.method public static final native file_error_alert_op_set(JLorg/libtorrent4j/swig/file_error_alert;I)V
.end method

.method public static final native file_error_alert_priority_get()I
.end method

.method public static final native file_error_alert_static_category_get()J
.end method

.method public static final native file_error_alert_type(JLorg/libtorrent4j/swig/file_error_alert;)I
.end method

.method public static final native file_error_alert_what(JLorg/libtorrent4j/swig/file_error_alert;)Ljava/lang/String;
.end method

.method public static final native file_flags_t_all()J
.end method

.method public static final native file_flags_t_and_(JLorg/libtorrent4j/swig/file_flags_t;JLorg/libtorrent4j/swig/file_flags_t;)J
.end method

.method public static final native file_flags_t_eq(JLorg/libtorrent4j/swig/file_flags_t;JLorg/libtorrent4j/swig/file_flags_t;)Z
.end method

.method public static final native file_flags_t_from_int(I)J
.end method

.method public static final native file_flags_t_inv(JLorg/libtorrent4j/swig/file_flags_t;)J
.end method

.method public static final native file_flags_t_ne(JLorg/libtorrent4j/swig/file_flags_t;JLorg/libtorrent4j/swig/file_flags_t;)Z
.end method

.method public static final native file_flags_t_non_zero(JLorg/libtorrent4j/swig/file_flags_t;)Z
.end method

.method public static final native file_flags_t_or_(JLorg/libtorrent4j/swig/file_flags_t;JLorg/libtorrent4j/swig/file_flags_t;)J
.end method

.method public static final native file_flags_t_to_int(JLorg/libtorrent4j/swig/file_flags_t;)I
.end method

.method public static final native file_flags_t_xor_(JLorg/libtorrent4j/swig/file_flags_t;JLorg/libtorrent4j/swig/file_flags_t;)J
.end method

.method public static final native file_prio_alert_SWIGUpcast(J)J
.end method

.method public static final native file_prio_alert_alert_type_get()I
.end method

.method public static final native file_prio_alert_category(JLorg/libtorrent4j/swig/file_prio_alert;)J
.end method

.method public static final native file_prio_alert_error_get(JLorg/libtorrent4j/swig/file_prio_alert;)J
.end method

.method public static final native file_prio_alert_error_set(JLorg/libtorrent4j/swig/file_prio_alert;JLorg/libtorrent4j/swig/error_code;)V
.end method

.method public static final native file_prio_alert_message(JLorg/libtorrent4j/swig/file_prio_alert;)Ljava/lang/String;
.end method

.method public static final native file_prio_alert_op_get(JLorg/libtorrent4j/swig/file_prio_alert;)I
.end method

.method public static final native file_prio_alert_op_set(JLorg/libtorrent4j/swig/file_prio_alert;I)V
.end method

.method public static final native file_prio_alert_priority_get()I
.end method

.method public static final native file_prio_alert_static_category_get()J
.end method

.method public static final native file_prio_alert_type(JLorg/libtorrent4j/swig/file_prio_alert;)I
.end method

.method public static final native file_prio_alert_what(JLorg/libtorrent4j/swig/file_prio_alert;)Ljava/lang/String;
.end method

.method public static final native file_progress_alert_SWIGUpcast(J)J
.end method

.method public static final native file_progress_alert_alert_type_get()I
.end method

.method public static final native file_progress_alert_category(JLorg/libtorrent4j/swig/file_progress_alert;)J
.end method

.method public static final native file_progress_alert_get_files(JLorg/libtorrent4j/swig/file_progress_alert;)J
.end method

.method public static final native file_progress_alert_message(JLorg/libtorrent4j/swig/file_progress_alert;)Ljava/lang/String;
.end method

.method public static final native file_progress_alert_priority_get()I
.end method

.method public static final native file_progress_alert_static_category_get()J
.end method

.method public static final native file_progress_alert_type(JLorg/libtorrent4j/swig/file_progress_alert;)I
.end method

.method public static final native file_progress_alert_what(JLorg/libtorrent4j/swig/file_progress_alert;)Ljava/lang/String;
.end method

.method public static final native file_progress_flags_t_all()J
.end method

.method public static final native file_progress_flags_t_and_(JLorg/libtorrent4j/swig/file_progress_flags_t;JLorg/libtorrent4j/swig/file_progress_flags_t;)J
.end method

.method public static final native file_progress_flags_t_eq(JLorg/libtorrent4j/swig/file_progress_flags_t;JLorg/libtorrent4j/swig/file_progress_flags_t;)Z
.end method

.method public static final native file_progress_flags_t_from_int(I)J
.end method

.method public static final native file_progress_flags_t_inv(JLorg/libtorrent4j/swig/file_progress_flags_t;)J
.end method

.method public static final native file_progress_flags_t_ne(JLorg/libtorrent4j/swig/file_progress_flags_t;JLorg/libtorrent4j/swig/file_progress_flags_t;)Z
.end method

.method public static final native file_progress_flags_t_non_zero(JLorg/libtorrent4j/swig/file_progress_flags_t;)Z
.end method

.method public static final native file_progress_flags_t_or_(JLorg/libtorrent4j/swig/file_progress_flags_t;JLorg/libtorrent4j/swig/file_progress_flags_t;)J
.end method

.method public static final native file_progress_flags_t_to_int(JLorg/libtorrent4j/swig/file_progress_flags_t;)I
.end method

.method public static final native file_progress_flags_t_xor_(JLorg/libtorrent4j/swig/file_progress_flags_t;JLorg/libtorrent4j/swig/file_progress_flags_t;)J
.end method

.method public static final native file_progress_get()J
.end method

.method public static final native file_rename_failed_alert_SWIGUpcast(J)J
.end method

.method public static final native file_rename_failed_alert_alert_type_get()I
.end method

.method public static final native file_rename_failed_alert_category(JLorg/libtorrent4j/swig/file_rename_failed_alert;)J
.end method

.method public static final native file_rename_failed_alert_error_get(JLorg/libtorrent4j/swig/file_rename_failed_alert;)J
.end method

.method public static final native file_rename_failed_alert_index_get(JLorg/libtorrent4j/swig/file_rename_failed_alert;)I
.end method

.method public static final native file_rename_failed_alert_message(JLorg/libtorrent4j/swig/file_rename_failed_alert;)Ljava/lang/String;
.end method

.method public static final native file_rename_failed_alert_priority_get()I
.end method

.method public static final native file_rename_failed_alert_static_category_get()J
.end method

.method public static final native file_rename_failed_alert_type(JLorg/libtorrent4j/swig/file_rename_failed_alert;)I
.end method

.method public static final native file_rename_failed_alert_what(JLorg/libtorrent4j/swig/file_rename_failed_alert;)Ljava/lang/String;
.end method

.method public static final native file_renamed_alert_SWIGUpcast(J)J
.end method

.method public static final native file_renamed_alert_alert_type_get()I
.end method

.method public static final native file_renamed_alert_category(JLorg/libtorrent4j/swig/file_renamed_alert;)J
.end method

.method public static final native file_renamed_alert_index_get(JLorg/libtorrent4j/swig/file_renamed_alert;)I
.end method

.method public static final native file_renamed_alert_message(JLorg/libtorrent4j/swig/file_renamed_alert;)Ljava/lang/String;
.end method

.method public static final native file_renamed_alert_new_name(JLorg/libtorrent4j/swig/file_renamed_alert;)Ljava/lang/String;
.end method

.method public static final native file_renamed_alert_old_name(JLorg/libtorrent4j/swig/file_renamed_alert;)Ljava/lang/String;
.end method

.method public static final native file_renamed_alert_priority_get()I
.end method

.method public static final native file_renamed_alert_static_category_get()J
.end method

.method public static final native file_renamed_alert_type(JLorg/libtorrent4j/swig/file_renamed_alert;)I
.end method

.method public static final native file_renamed_alert_what(JLorg/libtorrent4j/swig/file_renamed_alert;)Ljava/lang/String;
.end method

.method public static final native file_slice_file_index_get(JLorg/libtorrent4j/swig/file_slice;)I
.end method

.method public static final native file_slice_file_index_set(JLorg/libtorrent4j/swig/file_slice;I)V
.end method

.method public static final native file_slice_offset_get(JLorg/libtorrent4j/swig/file_slice;)J
.end method

.method public static final native file_slice_offset_set(JLorg/libtorrent4j/swig/file_slice;J)V
.end method

.method public static final native file_slice_size_get(JLorg/libtorrent4j/swig/file_slice;)J
.end method

.method public static final native file_slice_size_set(JLorg/libtorrent4j/swig/file_slice;J)V
.end method

.method public static final native file_slice_vector_clear(JLorg/libtorrent4j/swig/file_slice_vector;)V
.end method

.method public static final native file_slice_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/file_slice_vector;JLorg/libtorrent4j/swig/file_slice;)V
.end method

.method public static final native file_slice_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/file_slice_vector;IJLorg/libtorrent4j/swig/file_slice;)V
.end method

.method public static final native file_slice_vector_doCapacity(JLorg/libtorrent4j/swig/file_slice_vector;)I
.end method

.method public static final native file_slice_vector_doGet(JLorg/libtorrent4j/swig/file_slice_vector;I)J
.end method

.method public static final native file_slice_vector_doRemove(JLorg/libtorrent4j/swig/file_slice_vector;I)J
.end method

.method public static final native file_slice_vector_doRemoveRange(JLorg/libtorrent4j/swig/file_slice_vector;II)V
.end method

.method public static final native file_slice_vector_doReserve(JLorg/libtorrent4j/swig/file_slice_vector;I)V
.end method

.method public static final native file_slice_vector_doSet(JLorg/libtorrent4j/swig/file_slice_vector;IJLorg/libtorrent4j/swig/file_slice;)J
.end method

.method public static final native file_slice_vector_doSize(JLorg/libtorrent4j/swig/file_slice_vector;)I
.end method

.method public static final native file_slice_vector_isEmpty(JLorg/libtorrent4j/swig/file_slice_vector;)Z
.end method

.method public static final native file_storage_add_file_ex__SWIG_0(JLorg/libtorrent4j/swig/file_storage;JLorg/libtorrent4j/swig/error_code;Ljava/lang/String;JJLorg/libtorrent4j/swig/file_flags_t;JLjava/lang/String;)V
.end method

.method public static final native file_storage_add_file_ex__SWIG_1(JLorg/libtorrent4j/swig/file_storage;JLorg/libtorrent4j/swig/error_code;Ljava/lang/String;JJLorg/libtorrent4j/swig/file_flags_t;J)V
.end method

.method public static final native file_storage_add_file_ex__SWIG_2(JLorg/libtorrent4j/swig/file_storage;JLorg/libtorrent4j/swig/error_code;Ljava/lang/String;JJLorg/libtorrent4j/swig/file_flags_t;)V
.end method

.method public static final native file_storage_add_file_ex__SWIG_3(JLorg/libtorrent4j/swig/file_storage;JLorg/libtorrent4j/swig/error_code;Ljava/lang/String;J)V
.end method

.method public static final native file_storage_blocks_in_piece2(JLorg/libtorrent4j/swig/file_storage;I)I
.end method

.method public static final native file_storage_blocks_per_piece(JLorg/libtorrent4j/swig/file_storage;)I
.end method

.method public static final native file_storage_end_file(JLorg/libtorrent4j/swig/file_storage;)I
.end method

.method public static final native file_storage_end_piece(JLorg/libtorrent4j/swig/file_storage;)I
.end method

.method public static final native file_storage_file_absolute_path(JLorg/libtorrent4j/swig/file_storage;I)Z
.end method

.method public static final native file_storage_file_first_block_node(JLorg/libtorrent4j/swig/file_storage;I)I
.end method

.method public static final native file_storage_file_first_piece_node(JLorg/libtorrent4j/swig/file_storage;I)I
.end method

.method public static final native file_storage_file_flags(JLorg/libtorrent4j/swig/file_storage;I)J
.end method

.method public static final native file_storage_file_index_at_offset(JLorg/libtorrent4j/swig/file_storage;J)I
.end method

.method public static final native file_storage_file_index_at_piece(JLorg/libtorrent4j/swig/file_storage;I)I
.end method

.method public static final native file_storage_file_index_for_root(JLorg/libtorrent4j/swig/file_storage;JLorg/libtorrent4j/swig/sha256_hash;)I
.end method

.method public static final native file_storage_file_name_ex(JLorg/libtorrent4j/swig/file_storage;I)Ljava/lang/String;
.end method

.method public static final native file_storage_file_num_blocks(JLorg/libtorrent4j/swig/file_storage;I)I
.end method

.method public static final native file_storage_file_num_pieces(JLorg/libtorrent4j/swig/file_storage;I)I
.end method

.method public static final native file_storage_file_offset(JLorg/libtorrent4j/swig/file_storage;I)J
.end method

.method public static final native file_storage_file_path__SWIG_0(JLorg/libtorrent4j/swig/file_storage;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public static final native file_storage_file_path__SWIG_1(JLorg/libtorrent4j/swig/file_storage;I)Ljava/lang/String;
.end method

.method public static final native file_storage_file_size(JLorg/libtorrent4j/swig/file_storage;I)J
.end method

.method public static final native file_storage_flag_executable_get()J
.end method

.method public static final native file_storage_flag_hidden_get()J
.end method

.method public static final native file_storage_flag_pad_file_get()J
.end method

.method public static final native file_storage_flag_symlink_get()J
.end method

.method public static final native file_storage_is_valid(JLorg/libtorrent4j/swig/file_storage;)Z
.end method

.method public static final native file_storage_last_file_index_at_piece(JLorg/libtorrent4j/swig/file_storage;I)I
.end method

.method public static final native file_storage_last_piece(JLorg/libtorrent4j/swig/file_storage;)I
.end method

.method public static final native file_storage_last_piece_index_at_file(JLorg/libtorrent4j/swig/file_storage;I)I
.end method

.method public static final native file_storage_map_block(JLorg/libtorrent4j/swig/file_storage;IJJ)J
.end method

.method public static final native file_storage_map_file(JLorg/libtorrent4j/swig/file_storage;IJI)J
.end method

.method public static final native file_storage_max_file_offset_get()J
.end method

.method public static final native file_storage_max_file_size_get()J
.end method

.method public static final native file_storage_max_num_pieces_get()I
.end method

.method public static final native file_storage_max_piece_size_get()I
.end method

.method public static final native file_storage_mtime(JLorg/libtorrent4j/swig/file_storage;I)J
.end method

.method public static final native file_storage_name(JLorg/libtorrent4j/swig/file_storage;)Ljava/lang/String;
.end method

.method public static final native file_storage_num_files(JLorg/libtorrent4j/swig/file_storage;)I
.end method

.method public static final native file_storage_num_pieces(JLorg/libtorrent4j/swig/file_storage;)I
.end method

.method public static final native file_storage_pad_file_at(JLorg/libtorrent4j/swig/file_storage;I)Z
.end method

.method public static final native file_storage_piece_index_at_file(JLorg/libtorrent4j/swig/file_storage;I)I
.end method

.method public static final native file_storage_piece_length(JLorg/libtorrent4j/swig/file_storage;)I
.end method

.method public static final native file_storage_piece_size(JLorg/libtorrent4j/swig/file_storage;I)I
.end method

.method public static final native file_storage_piece_size2(JLorg/libtorrent4j/swig/file_storage;I)I
.end method

.method public static final native file_storage_reserve(JLorg/libtorrent4j/swig/file_storage;I)V
.end method

.method public static final native file_storage_root(JLorg/libtorrent4j/swig/file_storage;I)J
.end method

.method public static final native file_storage_root_ptr(JLorg/libtorrent4j/swig/file_storage;I)Ljava/lang/String;
.end method

.method public static final native file_storage_sanitize_symlinks(JLorg/libtorrent4j/swig/file_storage;)V
.end method

.method public static final native file_storage_set_name(JLorg/libtorrent4j/swig/file_storage;Ljava/lang/String;)V
.end method

.method public static final native file_storage_set_num_pieces(JLorg/libtorrent4j/swig/file_storage;I)V
.end method

.method public static final native file_storage_set_piece_length(JLorg/libtorrent4j/swig/file_storage;I)V
.end method

.method public static final native file_storage_size_on_disk(JLorg/libtorrent4j/swig/file_storage;)J
.end method

.method public static final native file_storage_swap(JLorg/libtorrent4j/swig/file_storage;JLorg/libtorrent4j/swig/file_storage;)V
.end method

.method public static final native file_storage_symlink(JLorg/libtorrent4j/swig/file_storage;I)Ljava/lang/String;
.end method

.method public static final native file_storage_total_size(JLorg/libtorrent4j/swig/file_storage;)J
.end method

.method public static final native file_storage_v2(JLorg/libtorrent4j/swig/file_storage;)Z
.end method

.method public static final native filenames_end_file(JLorg/libtorrent4j/swig/filenames;)I
.end method

.method public static final native filenames_end_piece(JLorg/libtorrent4j/swig/filenames;)I
.end method

.method public static final native filenames_file_absolute_path(JLorg/libtorrent4j/swig/filenames;I)Z
.end method

.method public static final native filenames_file_flags(JLorg/libtorrent4j/swig/filenames;I)J
.end method

.method public static final native filenames_file_offset(JLorg/libtorrent4j/swig/filenames;I)J
.end method

.method public static final native filenames_file_path__SWIG_0(JLorg/libtorrent4j/swig/filenames;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public static final native filenames_file_path__SWIG_1(JLorg/libtorrent4j/swig/filenames;I)Ljava/lang/String;
.end method

.method public static final native filenames_file_size(JLorg/libtorrent4j/swig/filenames;I)J
.end method

.method public static final native filenames_map_block(JLorg/libtorrent4j/swig/filenames;IJJ)J
.end method

.method public static final native filenames_map_file(JLorg/libtorrent4j/swig/filenames;IJI)J
.end method

.method public static final native filenames_num_files(JLorg/libtorrent4j/swig/filenames;)I
.end method

.method public static final native filenames_num_pieces(JLorg/libtorrent4j/swig/filenames;)I
.end method

.method public static final native filenames_pad_file_at(JLorg/libtorrent4j/swig/filenames;I)Z
.end method

.method public static final native filenames_piece_length(JLorg/libtorrent4j/swig/filenames;)I
.end method

.method public static final native filenames_root(JLorg/libtorrent4j/swig/filenames;I)J
.end method

.method public static final native filenames_symlink(JLorg/libtorrent4j/swig/filenames;I)Ljava/lang/String;
.end method

.method public static final native find_metric_idx_ex(Ljava/lang/String;)I
.end method

.method public static final native forbidden_get()I
.end method

.method public static final native generate_fingerprint__SWIG_0(Ljava/lang/String;IIII)Ljava/lang/String;
.end method

.method public static final native generate_fingerprint__SWIG_1(Ljava/lang/String;III)Ljava/lang/String;
.end method

.method public static final native generate_fingerprint__SWIG_2(Ljava/lang/String;II)Ljava/lang/String;
.end method

.method public static final native generate_fingerprint__SWIG_3(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public static final native get_gateway(JLorg/libtorrent4j/swig/ip_interface;JLorg/libtorrent4j/swig/ip_route_vector;)J
.end method

.method public static final native hash_failed_alert_SWIGUpcast(J)J
.end method

.method public static final native hash_failed_alert_alert_type_get()I
.end method

.method public static final native hash_failed_alert_category(JLorg/libtorrent4j/swig/hash_failed_alert;)J
.end method

.method public static final native hash_failed_alert_message(JLorg/libtorrent4j/swig/hash_failed_alert;)Ljava/lang/String;
.end method

.method public static final native hash_failed_alert_piece_index_get(JLorg/libtorrent4j/swig/hash_failed_alert;)I
.end method

.method public static final native hash_failed_alert_priority_get()I
.end method

.method public static final native hash_failed_alert_static_category_get()J
.end method

.method public static final native hash_failed_alert_type(JLorg/libtorrent4j/swig/hash_failed_alert;)I
.end method

.method public static final native hash_failed_alert_what(JLorg/libtorrent4j/swig/hash_failed_alert;)Ljava/lang/String;
.end method

.method public static final native high_performance_seed()J
.end method

.method public static final native http_parse_error_get()I
.end method

.method public static final native i2p_alert_SWIGUpcast(J)J
.end method

.method public static final native i2p_alert_alert_type_get()I
.end method

.method public static final native i2p_alert_category(JLorg/libtorrent4j/swig/i2p_alert;)J
.end method

.method public static final native i2p_alert_error_get(JLorg/libtorrent4j/swig/i2p_alert;)J
.end method

.method public static final native i2p_alert_error_set(JLorg/libtorrent4j/swig/i2p_alert;JLorg/libtorrent4j/swig/error_code;)V
.end method

.method public static final native i2p_alert_message(JLorg/libtorrent4j/swig/i2p_alert;)Ljava/lang/String;
.end method

.method public static final native i2p_alert_priority_get()I
.end method

.method public static final native i2p_alert_static_category_get()J
.end method

.method public static final native i2p_alert_type(JLorg/libtorrent4j/swig/i2p_alert;)I
.end method

.method public static final native i2p_alert_what(JLorg/libtorrent4j/swig/i2p_alert;)Ljava/lang/String;
.end method

.method public static final native i2p_torrent_get()J
.end method

.method public static final native include_dht_nodes_get()J
.end method

.method public static final native incoming_connection_alert_SWIGUpcast(J)J
.end method

.method public static final native incoming_connection_alert_alert_type_get()I
.end method

.method public static final native incoming_connection_alert_category(JLorg/libtorrent4j/swig/incoming_connection_alert;)J
.end method

.method public static final native incoming_connection_alert_get_endpoint(JLorg/libtorrent4j/swig/incoming_connection_alert;)J
.end method

.method public static final native incoming_connection_alert_message(JLorg/libtorrent4j/swig/incoming_connection_alert;)Ljava/lang/String;
.end method

.method public static final native incoming_connection_alert_priority_get()I
.end method

.method public static final native incoming_connection_alert_socket_type_get(JLorg/libtorrent4j/swig/incoming_connection_alert;)I
.end method

.method public static final native incoming_connection_alert_socket_type_set(JLorg/libtorrent4j/swig/incoming_connection_alert;I)V
.end method

.method public static final native incoming_connection_alert_static_category_get()J
.end method

.method public static final native incoming_connection_alert_type(JLorg/libtorrent4j/swig/incoming_connection_alert;)I
.end method

.method public static final native incoming_connection_alert_what(JLorg/libtorrent4j/swig/incoming_connection_alert;)Ljava/lang/String;
.end method

.method public static final native incoming_request_alert_SWIGUpcast(J)J
.end method

.method public static final native incoming_request_alert_alert_type_get()I
.end method

.method public static final native incoming_request_alert_category(JLorg/libtorrent4j/swig/incoming_request_alert;)J
.end method

.method public static final native incoming_request_alert_message(JLorg/libtorrent4j/swig/incoming_request_alert;)Ljava/lang/String;
.end method

.method public static final native incoming_request_alert_priority_get()I
.end method

.method public static final native incoming_request_alert_req_get(JLorg/libtorrent4j/swig/incoming_request_alert;)J
.end method

.method public static final native incoming_request_alert_req_set(JLorg/libtorrent4j/swig/incoming_request_alert;JLorg/libtorrent4j/swig/peer_request;)V
.end method

.method public static final native incoming_request_alert_static_category_get()J
.end method

.method public static final native incoming_request_alert_type(JLorg/libtorrent4j/swig/incoming_request_alert;)I
.end method

.method public static final native incoming_request_alert_what(JLorg/libtorrent4j/swig/incoming_request_alert;)Ljava/lang/String;
.end method

.method public static final native incoming_request_get()J
.end method

.method public static final native info_hash_t_get(JLorg/libtorrent4j/swig/info_hash_t;I)J
.end method

.method public static final native info_hash_t_get_best(JLorg/libtorrent4j/swig/info_hash_t;)J
.end method

.method public static final native info_hash_t_has(JLorg/libtorrent4j/swig/info_hash_t;I)Z
.end method

.method public static final native info_hash_t_has_v1(JLorg/libtorrent4j/swig/info_hash_t;)Z
.end method

.method public static final native info_hash_t_has_v2(JLorg/libtorrent4j/swig/info_hash_t;)Z
.end method

.method public static final native info_hash_t_lt(JLorg/libtorrent4j/swig/info_hash_t;JLorg/libtorrent4j/swig/info_hash_t;)Z
.end method

.method public static final native info_hash_t_op_eq(JLorg/libtorrent4j/swig/info_hash_t;JLorg/libtorrent4j/swig/info_hash_t;)Z
.end method

.method public static final native info_hash_t_op_ne(JLorg/libtorrent4j/swig/info_hash_t;JLorg/libtorrent4j/swig/info_hash_t;)Z
.end method

.method public static final native info_hash_t_v1_get(JLorg/libtorrent4j/swig/info_hash_t;)J
.end method

.method public static final native info_hash_t_v1_set(JLorg/libtorrent4j/swig/info_hash_t;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native info_hash_t_v2_get(JLorg/libtorrent4j/swig/info_hash_t;)J
.end method

.method public static final native info_hash_t_v2_set(JLorg/libtorrent4j/swig/info_hash_t;JLorg/libtorrent4j/swig/sha256_hash;)V
.end method

.method public static final native int64_vector_clear(JLorg/libtorrent4j/swig/int64_vector;)V
.end method

.method public static final native int64_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/int64_vector;J)V
.end method

.method public static final native int64_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/int64_vector;IJ)V
.end method

.method public static final native int64_vector_doCapacity(JLorg/libtorrent4j/swig/int64_vector;)I
.end method

.method public static final native int64_vector_doGet(JLorg/libtorrent4j/swig/int64_vector;I)J
.end method

.method public static final native int64_vector_doRemove(JLorg/libtorrent4j/swig/int64_vector;I)J
.end method

.method public static final native int64_vector_doRemoveRange(JLorg/libtorrent4j/swig/int64_vector;II)V
.end method

.method public static final native int64_vector_doReserve(JLorg/libtorrent4j/swig/int64_vector;I)V
.end method

.method public static final native int64_vector_doSet(JLorg/libtorrent4j/swig/int64_vector;IJ)J
.end method

.method public static final native int64_vector_doSize(JLorg/libtorrent4j/swig/int64_vector;)I
.end method

.method public static final native int64_vector_isEmpty(JLorg/libtorrent4j/swig/int64_vector;)Z
.end method

.method public static final native int_bitfield_map_Iterator_getKey(JLorg/libtorrent4j/swig/int_bitfield_map$Iterator;)I
.end method

.method public static final native int_bitfield_map_Iterator_getNextUnchecked(JLorg/libtorrent4j/swig/int_bitfield_map$Iterator;)J
.end method

.method public static final native int_bitfield_map_Iterator_getValue(JLorg/libtorrent4j/swig/int_bitfield_map$Iterator;)J
.end method

.method public static final native int_bitfield_map_Iterator_isNot(JLorg/libtorrent4j/swig/int_bitfield_map$Iterator;JLorg/libtorrent4j/swig/int_bitfield_map$Iterator;)Z
.end method

.method public static final native int_bitfield_map_Iterator_setValue(JLorg/libtorrent4j/swig/int_bitfield_map$Iterator;JLorg/libtorrent4j/swig/bitfield;)V
.end method

.method public static final native int_bitfield_map_begin(JLorg/libtorrent4j/swig/int_bitfield_map;)J
.end method

.method public static final native int_bitfield_map_clear(JLorg/libtorrent4j/swig/int_bitfield_map;)V
.end method

.method public static final native int_bitfield_map_containsImpl(JLorg/libtorrent4j/swig/int_bitfield_map;I)Z
.end method

.method public static final native int_bitfield_map_end(JLorg/libtorrent4j/swig/int_bitfield_map;)J
.end method

.method public static final native int_bitfield_map_find(JLorg/libtorrent4j/swig/int_bitfield_map;I)J
.end method

.method public static final native int_bitfield_map_isEmpty(JLorg/libtorrent4j/swig/int_bitfield_map;)Z
.end method

.method public static final native int_bitfield_map_putUnchecked(JLorg/libtorrent4j/swig/int_bitfield_map;IJLorg/libtorrent4j/swig/bitfield;)V
.end method

.method public static final native int_bitfield_map_removeUnchecked(JLorg/libtorrent4j/swig/int_bitfield_map;JLorg/libtorrent4j/swig/int_bitfield_map$Iterator;)V
.end method

.method public static final native int_bitfield_map_sizeImpl(JLorg/libtorrent4j/swig/int_bitfield_map;)I
.end method

.method public static final native int_byte_pair_first_get(JLorg/libtorrent4j/swig/int_byte_pair;)I
.end method

.method public static final native int_byte_pair_first_set(JLorg/libtorrent4j/swig/int_byte_pair;I)V
.end method

.method public static final native int_byte_pair_second_get(JLorg/libtorrent4j/swig/int_byte_pair;)B
.end method

.method public static final native int_byte_pair_second_set(JLorg/libtorrent4j/swig/int_byte_pair;B)V
.end method

.method public static final native int_byte_pair_vector_clear(JLorg/libtorrent4j/swig/int_byte_pair_vector;)V
.end method

.method public static final native int_byte_pair_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/int_byte_pair_vector;JLorg/libtorrent4j/swig/int_byte_pair;)V
.end method

.method public static final native int_byte_pair_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/int_byte_pair_vector;IJLorg/libtorrent4j/swig/int_byte_pair;)V
.end method

.method public static final native int_byte_pair_vector_doCapacity(JLorg/libtorrent4j/swig/int_byte_pair_vector;)I
.end method

.method public static final native int_byte_pair_vector_doGet(JLorg/libtorrent4j/swig/int_byte_pair_vector;I)J
.end method

.method public static final native int_byte_pair_vector_doRemove(JLorg/libtorrent4j/swig/int_byte_pair_vector;I)J
.end method

.method public static final native int_byte_pair_vector_doRemoveRange(JLorg/libtorrent4j/swig/int_byte_pair_vector;II)V
.end method

.method public static final native int_byte_pair_vector_doReserve(JLorg/libtorrent4j/swig/int_byte_pair_vector;I)V
.end method

.method public static final native int_byte_pair_vector_doSet(JLorg/libtorrent4j/swig/int_byte_pair_vector;IJLorg/libtorrent4j/swig/int_byte_pair;)J
.end method

.method public static final native int_byte_pair_vector_doSize(JLorg/libtorrent4j/swig/int_byte_pair_vector;)I
.end method

.method public static final native int_byte_pair_vector_isEmpty(JLorg/libtorrent4j/swig/int_byte_pair_vector;)Z
.end method

.method public static final native int_string_map_Iterator_getKey(JLorg/libtorrent4j/swig/int_string_map$Iterator;)I
.end method

.method public static final native int_string_map_Iterator_getNextUnchecked(JLorg/libtorrent4j/swig/int_string_map$Iterator;)J
.end method

.method public static final native int_string_map_Iterator_getValue(JLorg/libtorrent4j/swig/int_string_map$Iterator;)Ljava/lang/String;
.end method

.method public static final native int_string_map_Iterator_isNot(JLorg/libtorrent4j/swig/int_string_map$Iterator;JLorg/libtorrent4j/swig/int_string_map$Iterator;)Z
.end method

.method public static final native int_string_map_Iterator_setValue(JLorg/libtorrent4j/swig/int_string_map$Iterator;Ljava/lang/String;)V
.end method

.method public static final native int_string_map_begin(JLorg/libtorrent4j/swig/int_string_map;)J
.end method

.method public static final native int_string_map_clear(JLorg/libtorrent4j/swig/int_string_map;)V
.end method

.method public static final native int_string_map_containsImpl(JLorg/libtorrent4j/swig/int_string_map;I)Z
.end method

.method public static final native int_string_map_end(JLorg/libtorrent4j/swig/int_string_map;)J
.end method

.method public static final native int_string_map_find(JLorg/libtorrent4j/swig/int_string_map;I)J
.end method

.method public static final native int_string_map_isEmpty(JLorg/libtorrent4j/swig/int_string_map;)Z
.end method

.method public static final native int_string_map_putUnchecked(JLorg/libtorrent4j/swig/int_string_map;ILjava/lang/String;)V
.end method

.method public static final native int_string_map_removeUnchecked(JLorg/libtorrent4j/swig/int_string_map;JLorg/libtorrent4j/swig/int_string_map$Iterator;)V
.end method

.method public static final native int_string_map_sizeImpl(JLorg/libtorrent4j/swig/int_string_map;)I
.end method

.method public static final native int_vector_clear(JLorg/libtorrent4j/swig/int_vector;)V
.end method

.method public static final native int_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/int_vector;I)V
.end method

.method public static final native int_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/int_vector;II)V
.end method

.method public static final native int_vector_doCapacity(JLorg/libtorrent4j/swig/int_vector;)I
.end method

.method public static final native int_vector_doGet(JLorg/libtorrent4j/swig/int_vector;I)I
.end method

.method public static final native int_vector_doRemove(JLorg/libtorrent4j/swig/int_vector;I)I
.end method

.method public static final native int_vector_doRemoveRange(JLorg/libtorrent4j/swig/int_vector;II)V
.end method

.method public static final native int_vector_doReserve(JLorg/libtorrent4j/swig/int_vector;I)V
.end method

.method public static final native int_vector_doSet(JLorg/libtorrent4j/swig/int_vector;II)I
.end method

.method public static final native int_vector_doSize(JLorg/libtorrent4j/swig/int_vector;)I
.end method

.method public static final native int_vector_isEmpty(JLorg/libtorrent4j/swig/int_vector;)Z
.end method

.method public static final native internal_server_error_get()I
.end method

.method public static final native invalid_request_alert_SWIGUpcast(J)J
.end method

.method public static final native invalid_request_alert_alert_type_get()I
.end method

.method public static final native invalid_request_alert_category(JLorg/libtorrent4j/swig/invalid_request_alert;)J
.end method

.method public static final native invalid_request_alert_message(JLorg/libtorrent4j/swig/invalid_request_alert;)Ljava/lang/String;
.end method

.method public static final native invalid_request_alert_peer_interested_get(JLorg/libtorrent4j/swig/invalid_request_alert;)Z
.end method

.method public static final native invalid_request_alert_priority_get()I
.end method

.method public static final native invalid_request_alert_request_get(JLorg/libtorrent4j/swig/invalid_request_alert;)J
.end method

.method public static final native invalid_request_alert_static_category_get()J
.end method

.method public static final native invalid_request_alert_type(JLorg/libtorrent4j/swig/invalid_request_alert;)I
.end method

.method public static final native invalid_request_alert_we_have_get(JLorg/libtorrent4j/swig/invalid_request_alert;)Z
.end method

.method public static final native invalid_request_alert_what(JLorg/libtorrent4j/swig/invalid_request_alert;)Ljava/lang/String;
.end method

.method public static final native invalid_request_alert_withheld_get(JLorg/libtorrent4j/swig/invalid_request_alert;)Z
.end method

.method public static final native ip_block_get()J
.end method

.method public static final native ip_filter_access(JLorg/libtorrent4j/swig/ip_filter;JLorg/libtorrent4j/swig/address;)J
.end method

.method public static final native ip_filter_add_rule(JLorg/libtorrent4j/swig/ip_filter;JLorg/libtorrent4j/swig/address;JLorg/libtorrent4j/swig/address;J)V
.end method

.method public static final native ip_filter_blocked_get()I
.end method

.method public static final native ip_filter_empty(JLorg/libtorrent4j/swig/ip_filter;)Z
.end method

.method public static final native ip_interface_description_get(JLorg/libtorrent4j/swig/ip_interface;)J
.end method

.method public static final native ip_interface_description_set(JLorg/libtorrent4j/swig/ip_interface;JLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native ip_interface_friendly_name_get(JLorg/libtorrent4j/swig/ip_interface;)J
.end method

.method public static final native ip_interface_friendly_name_set(JLorg/libtorrent4j/swig/ip_interface;JLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native ip_interface_interface_address_get(JLorg/libtorrent4j/swig/ip_interface;)J
.end method

.method public static final native ip_interface_interface_address_set(JLorg/libtorrent4j/swig/ip_interface;JLorg/libtorrent4j/swig/address;)V
.end method

.method public static final native ip_interface_name_get(JLorg/libtorrent4j/swig/ip_interface;)J
.end method

.method public static final native ip_interface_name_set(JLorg/libtorrent4j/swig/ip_interface;JLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native ip_interface_netmask_get(JLorg/libtorrent4j/swig/ip_interface;)J
.end method

.method public static final native ip_interface_netmask_set(JLorg/libtorrent4j/swig/ip_interface;JLorg/libtorrent4j/swig/address;)V
.end method

.method public static final native ip_interface_preferred_get(JLorg/libtorrent4j/swig/ip_interface;)Z
.end method

.method public static final native ip_interface_preferred_set(JLorg/libtorrent4j/swig/ip_interface;Z)V
.end method

.method public static final native ip_interface_vector_clear(JLorg/libtorrent4j/swig/ip_interface_vector;)V
.end method

.method public static final native ip_interface_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/ip_interface_vector;JLorg/libtorrent4j/swig/ip_interface;)V
.end method

.method public static final native ip_interface_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/ip_interface_vector;IJLorg/libtorrent4j/swig/ip_interface;)V
.end method

.method public static final native ip_interface_vector_doCapacity(JLorg/libtorrent4j/swig/ip_interface_vector;)I
.end method

.method public static final native ip_interface_vector_doGet(JLorg/libtorrent4j/swig/ip_interface_vector;I)J
.end method

.method public static final native ip_interface_vector_doRemove(JLorg/libtorrent4j/swig/ip_interface_vector;I)J
.end method

.method public static final native ip_interface_vector_doRemoveRange(JLorg/libtorrent4j/swig/ip_interface_vector;II)V
.end method

.method public static final native ip_interface_vector_doReserve(JLorg/libtorrent4j/swig/ip_interface_vector;I)V
.end method

.method public static final native ip_interface_vector_doSet(JLorg/libtorrent4j/swig/ip_interface_vector;IJLorg/libtorrent4j/swig/ip_interface;)J
.end method

.method public static final native ip_interface_vector_doSize(JLorg/libtorrent4j/swig/ip_interface_vector;)I
.end method

.method public static final native ip_interface_vector_isEmpty(JLorg/libtorrent4j/swig/ip_interface_vector;)Z
.end method

.method public static final native ip_route_destination_get(JLorg/libtorrent4j/swig/ip_route;)J
.end method

.method public static final native ip_route_destination_set(JLorg/libtorrent4j/swig/ip_route;JLorg/libtorrent4j/swig/address;)V
.end method

.method public static final native ip_route_gateway_get(JLorg/libtorrent4j/swig/ip_route;)J
.end method

.method public static final native ip_route_gateway_set(JLorg/libtorrent4j/swig/ip_route;JLorg/libtorrent4j/swig/address;)V
.end method

.method public static final native ip_route_mtu_get(JLorg/libtorrent4j/swig/ip_route;)I
.end method

.method public static final native ip_route_mtu_set(JLorg/libtorrent4j/swig/ip_route;I)V
.end method

.method public static final native ip_route_name_get(JLorg/libtorrent4j/swig/ip_route;)J
.end method

.method public static final native ip_route_name_set(JLorg/libtorrent4j/swig/ip_route;JLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native ip_route_netmask_get(JLorg/libtorrent4j/swig/ip_route;)J
.end method

.method public static final native ip_route_netmask_set(JLorg/libtorrent4j/swig/ip_route;JLorg/libtorrent4j/swig/address;)V
.end method

.method public static final native ip_route_source_hint_get(JLorg/libtorrent4j/swig/ip_route;)J
.end method

.method public static final native ip_route_source_hint_set(JLorg/libtorrent4j/swig/ip_route;JLorg/libtorrent4j/swig/address;)V
.end method

.method public static final native ip_route_vector_clear(JLorg/libtorrent4j/swig/ip_route_vector;)V
.end method

.method public static final native ip_route_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/ip_route_vector;JLorg/libtorrent4j/swig/ip_route;)V
.end method

.method public static final native ip_route_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/ip_route_vector;IJLorg/libtorrent4j/swig/ip_route;)V
.end method

.method public static final native ip_route_vector_doCapacity(JLorg/libtorrent4j/swig/ip_route_vector;)I
.end method

.method public static final native ip_route_vector_doGet(JLorg/libtorrent4j/swig/ip_route_vector;I)J
.end method

.method public static final native ip_route_vector_doRemove(JLorg/libtorrent4j/swig/ip_route_vector;I)J
.end method

.method public static final native ip_route_vector_doRemoveRange(JLorg/libtorrent4j/swig/ip_route_vector;II)V
.end method

.method public static final native ip_route_vector_doReserve(JLorg/libtorrent4j/swig/ip_route_vector;I)V
.end method

.method public static final native ip_route_vector_doSet(JLorg/libtorrent4j/swig/ip_route_vector;IJLorg/libtorrent4j/swig/ip_route;)J
.end method

.method public static final native ip_route_vector_doSize(JLorg/libtorrent4j/swig/ip_route_vector;)I
.end method

.method public static final native ip_route_vector_isEmpty(JLorg/libtorrent4j/swig/ip_route_vector;)Z
.end method

.method public static final native libtorrent_no_error_get()I
.end method

.method public static final native list_files_ex(Ljava/lang/String;JLorg/libtorrent4j/swig/list_files_listener;JLorg/libtorrent4j/swig/create_flags_t;)J
.end method

.method public static final native list_files_listener_change_ownership(Lorg/libtorrent4j/swig/list_files_listener;JZ)V
.end method

.method public static final native list_files_listener_director_connect(Lorg/libtorrent4j/swig/list_files_listener;JZZ)V
.end method

.method public static final native list_files_listener_pred(JLorg/libtorrent4j/swig/list_files_listener;Ljava/lang/String;)Z
.end method

.method public static final native list_files_listener_predSwigExplicitlist_files_listener(JLorg/libtorrent4j/swig/list_files_listener;Ljava/lang/String;)Z
.end method

.method public static final native listen_failed_alert_SWIGUpcast(J)J
.end method

.method public static final native listen_failed_alert_alert_type_get()I
.end method

.method public static final native listen_failed_alert_category(JLorg/libtorrent4j/swig/listen_failed_alert;)J
.end method

.method public static final native listen_failed_alert_error_get(JLorg/libtorrent4j/swig/listen_failed_alert;)J
.end method

.method public static final native listen_failed_alert_get_address(JLorg/libtorrent4j/swig/listen_failed_alert;)J
.end method

.method public static final native listen_failed_alert_get_socket_type(JLorg/libtorrent4j/swig/listen_failed_alert;)I
.end method

.method public static final native listen_failed_alert_listen_interface(JLorg/libtorrent4j/swig/listen_failed_alert;)Ljava/lang/String;
.end method

.method public static final native listen_failed_alert_message(JLorg/libtorrent4j/swig/listen_failed_alert;)Ljava/lang/String;
.end method

.method public static final native listen_failed_alert_op_get(JLorg/libtorrent4j/swig/listen_failed_alert;)I
.end method

.method public static final native listen_failed_alert_op_set(JLorg/libtorrent4j/swig/listen_failed_alert;I)V
.end method

.method public static final native listen_failed_alert_port_get(JLorg/libtorrent4j/swig/listen_failed_alert;)I
.end method

.method public static final native listen_failed_alert_priority_get()I
.end method

.method public static final native listen_failed_alert_static_category_get()J
.end method

.method public static final native listen_failed_alert_type(JLorg/libtorrent4j/swig/listen_failed_alert;)I
.end method

.method public static final native listen_failed_alert_what(JLorg/libtorrent4j/swig/listen_failed_alert;)Ljava/lang/String;
.end method

.method public static final native listen_succeeded_alert_SWIGUpcast(J)J
.end method

.method public static final native listen_succeeded_alert_alert_type_get()I
.end method

.method public static final native listen_succeeded_alert_category(JLorg/libtorrent4j/swig/listen_succeeded_alert;)J
.end method

.method public static final native listen_succeeded_alert_get_address(JLorg/libtorrent4j/swig/listen_succeeded_alert;)J
.end method

.method public static final native listen_succeeded_alert_get_socket_type(JLorg/libtorrent4j/swig/listen_succeeded_alert;)I
.end method

.method public static final native listen_succeeded_alert_message(JLorg/libtorrent4j/swig/listen_succeeded_alert;)Ljava/lang/String;
.end method

.method public static final native listen_succeeded_alert_port_get(JLorg/libtorrent4j/swig/listen_succeeded_alert;)I
.end method

.method public static final native listen_succeeded_alert_priority_get()I
.end method

.method public static final native listen_succeeded_alert_static_category_get()J
.end method

.method public static final native listen_succeeded_alert_type(JLorg/libtorrent4j/swig/listen_succeeded_alert;)I
.end method

.method public static final native listen_succeeded_alert_what(JLorg/libtorrent4j/swig/listen_succeeded_alert;)Ljava/lang/String;
.end method

.method public static final native load_torrent_file__SWIG_0(Ljava/lang/String;JLorg/libtorrent4j/swig/error_code;JLorg/libtorrent4j/swig/load_torrent_limits;)J
.end method

.method public static final native load_torrent_file__SWIG_1(Ljava/lang/String;JLorg/libtorrent4j/swig/load_torrent_limits;)J
.end method

.method public static final native load_torrent_file__SWIG_2(Ljava/lang/String;)J
.end method

.method public static final native load_torrent_limits_max_buffer_size_get(JLorg/libtorrent4j/swig/load_torrent_limits;)I
.end method

.method public static final native load_torrent_limits_max_buffer_size_set(JLorg/libtorrent4j/swig/load_torrent_limits;I)V
.end method

.method public static final native load_torrent_limits_max_decode_depth_get(JLorg/libtorrent4j/swig/load_torrent_limits;)I
.end method

.method public static final native load_torrent_limits_max_decode_depth_set(JLorg/libtorrent4j/swig/load_torrent_limits;I)V
.end method

.method public static final native load_torrent_limits_max_decode_tokens_get(JLorg/libtorrent4j/swig/load_torrent_limits;)I
.end method

.method public static final native load_torrent_limits_max_decode_tokens_set(JLorg/libtorrent4j/swig/load_torrent_limits;I)V
.end method

.method public static final native load_torrent_limits_max_duplicate_filenames_get(JLorg/libtorrent4j/swig/load_torrent_limits;)I
.end method

.method public static final native load_torrent_limits_max_duplicate_filenames_set(JLorg/libtorrent4j/swig/load_torrent_limits;I)V
.end method

.method public static final native load_torrent_limits_max_pieces_get(JLorg/libtorrent4j/swig/load_torrent_limits;)I
.end method

.method public static final native load_torrent_limits_max_pieces_set(JLorg/libtorrent4j/swig/load_torrent_limits;I)V
.end method

.method public static final native load_torrent_parsed__SWIG_0(JLorg/libtorrent4j/swig/bdecode_node;JLorg/libtorrent4j/swig/error_code;JLorg/libtorrent4j/swig/load_torrent_limits;)J
.end method

.method public static final native load_torrent_parsed__SWIG_1(JLorg/libtorrent4j/swig/bdecode_node;JLorg/libtorrent4j/swig/load_torrent_limits;)J
.end method

.method public static final native load_torrent_parsed__SWIG_2(JLorg/libtorrent4j/swig/bdecode_node;)J
.end method

.method public static final native log_alert_SWIGUpcast(J)J
.end method

.method public static final native log_alert_alert_type_get()I
.end method

.method public static final native log_alert_category(JLorg/libtorrent4j/swig/log_alert;)J
.end method

.method public static final native log_alert_log_message(JLorg/libtorrent4j/swig/log_alert;)Ljava/lang/String;
.end method

.method public static final native log_alert_message(JLorg/libtorrent4j/swig/log_alert;)Ljava/lang/String;
.end method

.method public static final native log_alert_priority_get()I
.end method

.method public static final native log_alert_static_category_get()J
.end method

.method public static final native log_alert_type(JLorg/libtorrent4j/swig/log_alert;)I
.end method

.method public static final native log_alert_what(JLorg/libtorrent4j/swig/log_alert;)Ljava/lang/String;
.end method

.method public static final native lsd_error_alert_SWIGUpcast(J)J
.end method

.method public static final native lsd_error_alert_alert_type_get()I
.end method

.method public static final native lsd_error_alert_category(JLorg/libtorrent4j/swig/lsd_error_alert;)J
.end method

.method public static final native lsd_error_alert_error_get(JLorg/libtorrent4j/swig/lsd_error_alert;)J
.end method

.method public static final native lsd_error_alert_error_set(JLorg/libtorrent4j/swig/lsd_error_alert;JLorg/libtorrent4j/swig/error_code;)V
.end method

.method public static final native lsd_error_alert_message(JLorg/libtorrent4j/swig/lsd_error_alert;)Ljava/lang/String;
.end method

.method public static final native lsd_error_alert_priority_get()I
.end method

.method public static final native lsd_error_alert_static_category_get()J
.end method

.method public static final native lsd_error_alert_type(JLorg/libtorrent4j/swig/lsd_error_alert;)I
.end method

.method public static final native lsd_error_alert_what(JLorg/libtorrent4j/swig/lsd_error_alert;)Ljava/lang/String;
.end method

.method public static final native lsd_peer_alert_SWIGUpcast(J)J
.end method

.method public static final native lsd_peer_alert_alert_type_get()I
.end method

.method public static final native lsd_peer_alert_category(JLorg/libtorrent4j/swig/lsd_peer_alert;)J
.end method

.method public static final native lsd_peer_alert_message(JLorg/libtorrent4j/swig/lsd_peer_alert;)Ljava/lang/String;
.end method

.method public static final native lsd_peer_alert_priority_get()I
.end method

.method public static final native lsd_peer_alert_static_category_get()J
.end method

.method public static final native lsd_peer_alert_type(JLorg/libtorrent4j/swig/lsd_peer_alert;)I
.end method

.method public static final native lsd_peer_alert_what(JLorg/libtorrent4j/swig/lsd_peer_alert;)Ljava/lang/String;
.end method

.method public static final native make_magnet_uri(JLorg/libtorrent4j/swig/add_torrent_params;)Ljava/lang/String;
.end method

.method public static final native make_magnet_uri_from_torrent_handle(JLorg/libtorrent4j/swig/torrent_handle;)Ljava/lang/String;
.end method

.method public static final native metadata_failed_alert_SWIGUpcast(J)J
.end method

.method public static final native metadata_failed_alert_alert_type_get()I
.end method

.method public static final native metadata_failed_alert_category(JLorg/libtorrent4j/swig/metadata_failed_alert;)J
.end method

.method public static final native metadata_failed_alert_error_get(JLorg/libtorrent4j/swig/metadata_failed_alert;)J
.end method

.method public static final native metadata_failed_alert_message(JLorg/libtorrent4j/swig/metadata_failed_alert;)Ljava/lang/String;
.end method

.method public static final native metadata_failed_alert_priority_get()I
.end method

.method public static final native metadata_failed_alert_static_category_get()J
.end method

.method public static final native metadata_failed_alert_type(JLorg/libtorrent4j/swig/metadata_failed_alert;)I
.end method

.method public static final native metadata_failed_alert_what(JLorg/libtorrent4j/swig/metadata_failed_alert;)Ljava/lang/String;
.end method

.method public static final native metadata_received_alert_SWIGUpcast(J)J
.end method

.method public static final native metadata_received_alert_alert_type_get()I
.end method

.method public static final native metadata_received_alert_category(JLorg/libtorrent4j/swig/metadata_received_alert;)J
.end method

.method public static final native metadata_received_alert_message(JLorg/libtorrent4j/swig/metadata_received_alert;)Ljava/lang/String;
.end method

.method public static final native metadata_received_alert_priority_get()I
.end method

.method public static final native metadata_received_alert_static_category_get()J
.end method

.method public static final native metadata_received_alert_type(JLorg/libtorrent4j/swig/metadata_received_alert;)I
.end method

.method public static final native metadata_received_alert_what(JLorg/libtorrent4j/swig/metadata_received_alert;)Ljava/lang/String;
.end method

.method public static final native min_memory_usage()J
.end method

.method public static final native missing_file_sizes_get()I
.end method

.method public static final native moved_permanently_get()I
.end method

.method public static final native moved_temporarily_get()I
.end method

.method public static final native multiple_choices_get()I
.end method

.method public static final native name_for_setting(I)Ljava/lang/String;
.end method

.method public static final native ne(JLorg/libtorrent4j/swig/info_hash_t;JLorg/libtorrent4j/swig/info_hash_t;)Z
.end method

.method public static final native need_save_resume_get()J
.end method

.method public static final native new_add_piece_flags_t()J
.end method

.method public static final native new_add_torrent_params__SWIG_0()J
.end method

.method public static final native new_add_torrent_params__SWIG_1(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native new_address__SWIG_0()J
.end method

.method public static final native new_address__SWIG_1(JLorg/libtorrent4j/swig/address;)J
.end method

.method public static final native new_address_sha1_hash_pair__SWIG_0()J
.end method

.method public static final native new_address_sha1_hash_pair__SWIG_1(JLorg/libtorrent4j/swig/address;JLorg/libtorrent4j/swig/sha1_hash;)J
.end method

.method public static final native new_address_sha1_hash_pair__SWIG_2(JLorg/libtorrent4j/swig/address_sha1_hash_pair;)J
.end method

.method public static final native new_address_sha1_hash_pair_vector__SWIG_0()J
.end method

.method public static final native new_address_sha1_hash_pair_vector__SWIG_1(JLorg/libtorrent4j/swig/address_sha1_hash_pair_vector;)J
.end method

.method public static final native new_address_sha1_hash_pair_vector__SWIG_2(IJLorg/libtorrent4j/swig/address_sha1_hash_pair;)J
.end method

.method public static final native new_alert_category_t()J
.end method

.method public static final native new_alert_notify_callback()J
.end method

.method public static final native new_alert_ptr_vector__SWIG_0()J
.end method

.method public static final native new_alert_ptr_vector__SWIG_1(JLorg/libtorrent4j/swig/alert_ptr_vector;)J
.end method

.method public static final native new_alert_ptr_vector__SWIG_2(IJLorg/libtorrent4j/swig/alert;)J
.end method

.method public static final native new_announce_endpoint()J
.end method

.method public static final native new_announce_endpoint_vector__SWIG_0()J
.end method

.method public static final native new_announce_endpoint_vector__SWIG_1(JLorg/libtorrent4j/swig/announce_endpoint_vector;)J
.end method

.method public static final native new_announce_endpoint_vector__SWIG_2(IJLorg/libtorrent4j/swig/announce_endpoint;)J
.end method

.method public static final native new_announce_entry__SWIG_0()J
.end method

.method public static final native new_announce_entry__SWIG_1(JLorg/libtorrent4j/swig/announce_entry;)J
.end method

.method public static final native new_announce_entry__SWIG_2(Ljava/lang/String;)J
.end method

.method public static final native new_announce_entry_vector__SWIG_0()J
.end method

.method public static final native new_announce_entry_vector__SWIG_1(JLorg/libtorrent4j/swig/announce_entry_vector;)J
.end method

.method public static final native new_announce_entry_vector__SWIG_2(IJLorg/libtorrent4j/swig/announce_entry;)J
.end method

.method public static final native new_bandwidth_state_flags_t()J
.end method

.method public static final native new_bdecode_node__SWIG_0()J
.end method

.method public static final native new_bdecode_node__SWIG_1(JLorg/libtorrent4j/swig/bdecode_node;)J
.end method

.method public static final native new_bdecode_node_bdecode_node_pair__SWIG_0()J
.end method

.method public static final native new_bdecode_node_bdecode_node_pair__SWIG_1(JLorg/libtorrent4j/swig/bdecode_node;JLorg/libtorrent4j/swig/bdecode_node;)J
.end method

.method public static final native new_bdecode_node_bdecode_node_pair__SWIG_2(JLorg/libtorrent4j/swig/bdecode_node_bdecode_node_pair;)J
.end method

.method public static final native new_bitfield__SWIG_0()J
.end method

.method public static final native new_bitfield__SWIG_1(I)J
.end method

.method public static final native new_bitfield__SWIG_2(IZ)J
.end method

.method public static final native new_bitfield__SWIG_3(JLorg/libtorrent4j/swig/bitfield;)J
.end method

.method public static final native new_bitfield__SWIG_4(JLorg/libtorrent4j/swig/byte_vector;)J
.end method

.method public static final native new_bitfield_vector__SWIG_0()J
.end method

.method public static final native new_bitfield_vector__SWIG_1(JLorg/libtorrent4j/swig/bitfield_vector;)J
.end method

.method public static final native new_bitfield_vector__SWIG_2(IJLorg/libtorrent4j/swig/bitfield;)J
.end method

.method public static final native new_bitset_128()J
.end method

.method public static final native new_block_info()J
.end method

.method public static final native new_block_info_vector__SWIG_0()J
.end method

.method public static final native new_block_info_vector__SWIG_1(JLorg/libtorrent4j/swig/block_info_vector;)J
.end method

.method public static final native new_block_info_vector__SWIG_2(IJLorg/libtorrent4j/swig/block_info;)J
.end method

.method public static final native new_bool_vector__SWIG_0()J
.end method

.method public static final native new_bool_vector__SWIG_1(JLorg/libtorrent4j/swig/bool_vector;)J
.end method

.method public static final native new_bool_vector__SWIG_2(IZ)J
.end method

.method public static final native new_bool_vector_vector__SWIG_0()J
.end method

.method public static final native new_bool_vector_vector__SWIG_1(JLorg/libtorrent4j/swig/bool_vector_vector;)J
.end method

.method public static final native new_bool_vector_vector__SWIG_2(IJLorg/libtorrent4j/swig/bool_vector;)J
.end method

.method public static final native new_boost_string_entry_map()J
.end method

.method public static final native new_byte_array_32__SWIG_0()J
.end method

.method public static final native new_byte_array_32__SWIG_1(JLorg/libtorrent4j/swig/byte_array_32;)J
.end method

.method public static final native new_byte_array_64__SWIG_0()J
.end method

.method public static final native new_byte_array_64__SWIG_1(JLorg/libtorrent4j/swig/byte_array_64;)J
.end method

.method public static final native new_byte_vector__SWIG_0()J
.end method

.method public static final native new_byte_vector__SWIG_1(JLorg/libtorrent4j/swig/byte_vector;)J
.end method

.method public static final native new_byte_vector__SWIG_2(IB)J
.end method

.method public static final native new_byte_vector_byte_vector_pair__SWIG_0()J
.end method

.method public static final native new_byte_vector_byte_vector_pair__SWIG_1(JLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/byte_vector;)J
.end method

.method public static final native new_byte_vector_byte_vector_pair__SWIG_2(JLorg/libtorrent4j/swig/byte_vector_byte_vector_pair;)J
.end method

.method public static final native new_client_data_t__SWIG_0()J
.end method

.method public static final native new_client_data_t__SWIG_1(J)J
.end method

.method public static final native new_connection_type_t()J
.end method

.method public static final native new_counters__SWIG_0()J
.end method

.method public static final native new_counters__SWIG_1(JLorg/libtorrent4j/swig/counters;)J
.end method

.method public static final native new_create_file_entry__SWIG_0(Ljava/lang/String;JJLorg/libtorrent4j/swig/file_flags_t;JLjava/lang/String;)J
.end method

.method public static final native new_create_file_entry__SWIG_1(Ljava/lang/String;JJLorg/libtorrent4j/swig/file_flags_t;J)J
.end method

.method public static final native new_create_file_entry__SWIG_2(Ljava/lang/String;JJLorg/libtorrent4j/swig/file_flags_t;)J
.end method

.method public static final native new_create_file_entry__SWIG_3(Ljava/lang/String;J)J
.end method

.method public static final native new_create_file_entry_vector__SWIG_0()J
.end method

.method public static final native new_create_file_entry_vector__SWIG_1(JLorg/libtorrent4j/swig/create_file_entry_vector;)J
.end method

.method public static final native new_create_file_entry_vector__SWIG_2(IJLorg/libtorrent4j/swig/create_file_entry;)J
.end method

.method public static final native new_create_flags_t()J
.end method

.method public static final native new_create_torrent__SWIG_0(JLorg/libtorrent4j/swig/create_file_entry_vector;IJLorg/libtorrent4j/swig/create_flags_t;)J
.end method

.method public static final native new_create_torrent__SWIG_1(JLorg/libtorrent4j/swig/create_file_entry_vector;I)J
.end method

.method public static final native new_create_torrent__SWIG_2(JLorg/libtorrent4j/swig/create_file_entry_vector;)J
.end method

.method public static final native new_deadline_flags_t()J
.end method

.method public static final native new_dht_lookup()J
.end method

.method public static final native new_dht_lookup_vector__SWIG_0()J
.end method

.method public static final native new_dht_lookup_vector__SWIG_1(JLorg/libtorrent4j/swig/dht_lookup_vector;)J
.end method

.method public static final native new_dht_lookup_vector__SWIG_2(IJLorg/libtorrent4j/swig/dht_lookup;)J
.end method

.method public static final native new_dht_routing_bucket()J
.end method

.method public static final native new_dht_routing_bucket_vector__SWIG_0()J
.end method

.method public static final native new_dht_routing_bucket_vector__SWIG_1(JLorg/libtorrent4j/swig/dht_routing_bucket_vector;)J
.end method

.method public static final native new_dht_routing_bucket_vector__SWIG_2(IJLorg/libtorrent4j/swig/dht_routing_bucket;)J
.end method

.method public static final native new_dht_state()J
.end method

.method public static final native new_entry__SWIG_0(JLorg/libtorrent4j/swig/boost_string_entry_map;)J
.end method

.method public static final native new_entry__SWIG_1(Ljava/lang/String;)J
.end method

.method public static final native new_entry__SWIG_2(JLorg/libtorrent4j/swig/entry_vector;)J
.end method

.method public static final native new_entry__SWIG_3(J)J
.end method

.method public static final native new_entry__SWIG_4(I)J
.end method

.method public static final native new_entry__SWIG_5(JLorg/libtorrent4j/swig/entry;)J
.end method

.method public static final native new_entry__SWIG_6()J
.end method

.method public static final native new_entry_vector__SWIG_0()J
.end method

.method public static final native new_entry_vector__SWIG_1(JLorg/libtorrent4j/swig/entry_vector;)J
.end method

.method public static final native new_entry_vector__SWIG_2(IJLorg/libtorrent4j/swig/entry;)J
.end method

.method public static final native new_error_code()J
.end method

.method public static final native new_file_flags_t()J
.end method

.method public static final native new_file_progress_flags_t()J
.end method

.method public static final native new_file_slice()J
.end method

.method public static final native new_file_slice_vector__SWIG_0()J
.end method

.method public static final native new_file_slice_vector__SWIG_1(JLorg/libtorrent4j/swig/file_slice_vector;)J
.end method

.method public static final native new_file_slice_vector__SWIG_2(IJLorg/libtorrent4j/swig/file_slice;)J
.end method

.method public static final native new_file_storage__SWIG_0()J
.end method

.method public static final native new_file_storage__SWIG_1(JLorg/libtorrent4j/swig/file_storage;)J
.end method

.method public static final native new_filenames(JLorg/libtorrent4j/swig/file_storage;JLorg/libtorrent4j/swig/renamed_files;)J
.end method

.method public static final native new_info_hash_t__SWIG_0()J
.end method

.method public static final native new_info_hash_t__SWIG_1(JLorg/libtorrent4j/swig/sha1_hash;)J
.end method

.method public static final native new_info_hash_t__SWIG_2(JLorg/libtorrent4j/swig/sha256_hash;)J
.end method

.method public static final native new_info_hash_t__SWIG_3(JLorg/libtorrent4j/swig/sha1_hash;JLorg/libtorrent4j/swig/sha256_hash;)J
.end method

.method public static final native new_info_hash_t__SWIG_4(JLorg/libtorrent4j/swig/info_hash_t;)J
.end method

.method public static final native new_int64_vector__SWIG_0()J
.end method

.method public static final native new_int64_vector__SWIG_1(JLorg/libtorrent4j/swig/int64_vector;)J
.end method

.method public static final native new_int64_vector__SWIG_2(IJ)J
.end method

.method public static final native new_int_bitfield_map__SWIG_0()J
.end method

.method public static final native new_int_bitfield_map__SWIG_1(JLorg/libtorrent4j/swig/int_bitfield_map;)J
.end method

.method public static final native new_int_byte_pair__SWIG_0()J
.end method

.method public static final native new_int_byte_pair__SWIG_1(IB)J
.end method

.method public static final native new_int_byte_pair__SWIG_2(JLorg/libtorrent4j/swig/int_byte_pair;)J
.end method

.method public static final native new_int_byte_pair_vector__SWIG_0()J
.end method

.method public static final native new_int_byte_pair_vector__SWIG_1(JLorg/libtorrent4j/swig/int_byte_pair_vector;)J
.end method

.method public static final native new_int_byte_pair_vector__SWIG_2(IJLorg/libtorrent4j/swig/int_byte_pair;)J
.end method

.method public static final native new_int_string_map__SWIG_0()J
.end method

.method public static final native new_int_string_map__SWIG_1(JLorg/libtorrent4j/swig/int_string_map;)J
.end method

.method public static final native new_int_vector__SWIG_0()J
.end method

.method public static final native new_int_vector__SWIG_1(JLorg/libtorrent4j/swig/int_vector;)J
.end method

.method public static final native new_int_vector__SWIG_2(II)J
.end method

.method public static final native new_ip_filter__SWIG_0()J
.end method

.method public static final native new_ip_filter__SWIG_1(JLorg/libtorrent4j/swig/ip_filter;)J
.end method

.method public static final native new_ip_interface()J
.end method

.method public static final native new_ip_interface_vector__SWIG_0()J
.end method

.method public static final native new_ip_interface_vector__SWIG_1(JLorg/libtorrent4j/swig/ip_interface_vector;)J
.end method

.method public static final native new_ip_interface_vector__SWIG_2(IJLorg/libtorrent4j/swig/ip_interface;)J
.end method

.method public static final native new_ip_route()J
.end method

.method public static final native new_ip_route_vector__SWIG_0()J
.end method

.method public static final native new_ip_route_vector__SWIG_1(JLorg/libtorrent4j/swig/ip_route_vector;)J
.end method

.method public static final native new_ip_route_vector__SWIG_2(IJLorg/libtorrent4j/swig/ip_route;)J
.end method

.method public static final native new_list_files_listener()J
.end method

.method public static final native new_load_torrent_limits()J
.end method

.method public static final native new_partial_piece_info()J
.end method

.method public static final native new_partial_piece_info_vector__SWIG_0()J
.end method

.method public static final native new_partial_piece_info_vector__SWIG_1(JLorg/libtorrent4j/swig/partial_piece_info_vector;)J
.end method

.method public static final native new_partial_piece_info_vector__SWIG_2(IJLorg/libtorrent4j/swig/partial_piece_info;)J
.end method

.method public static final native new_pause_flags_t()J
.end method

.method public static final native new_peer_class_info()J
.end method

.method public static final native new_peer_class_type_filter()J
.end method

.method public static final native new_peer_flags_t()J
.end method

.method public static final native new_peer_info__SWIG_0()J
.end method

.method public static final native new_peer_info__SWIG_1(JLorg/libtorrent4j/swig/peer_info;)J
.end method

.method public static final native new_peer_info_vector__SWIG_0()J
.end method

.method public static final native new_peer_info_vector__SWIG_1(JLorg/libtorrent4j/swig/peer_info_vector;)J
.end method

.method public static final native new_peer_info_vector__SWIG_2(IJLorg/libtorrent4j/swig/peer_info;)J
.end method

.method public static final native new_peer_request()J
.end method

.method public static final native new_peer_source_flags_t()J
.end method

.method public static final native new_pex_flags_t()J
.end method

.method public static final native new_picker_flags_t()J
.end method

.method public static final native new_piece_block__SWIG_0()J
.end method

.method public static final native new_piece_block__SWIG_1(II)J
.end method

.method public static final native new_piece_block_vector__SWIG_0()J
.end method

.method public static final native new_piece_block_vector__SWIG_1(JLorg/libtorrent4j/swig/piece_block_vector;)J
.end method

.method public static final native new_piece_block_vector__SWIG_2(IJLorg/libtorrent4j/swig/piece_block;)J
.end method

.method public static final native new_port_filter__SWIG_0()J
.end method

.method public static final native new_port_filter__SWIG_1(JLorg/libtorrent4j/swig/port_filter;)J
.end method

.method public static final native new_reannounce_flags_t()J
.end method

.method public static final native new_remove_flags_t()J
.end method

.method public static final native new_renamed_files()J
.end method

.method public static final native new_reopen_network_flags_t()J
.end method

.method public static final native new_resume_data_flags_t()J
.end method

.method public static final native new_save_state_flags_t()J
.end method

.method public static final native new_session__SWIG_0(JLorg/libtorrent4j/swig/session_params;)J
.end method

.method public static final native new_session__SWIG_1()J
.end method

.method public static final native new_session__SWIG_2(JLorg/libtorrent4j/swig/session;)J
.end method

.method public static final native new_session_flags_t()J
.end method

.method public static final native new_session_handle__SWIG_0()J
.end method

.method public static final native new_session_handle__SWIG_1(JLorg/libtorrent4j/swig/session_handle;)J
.end method

.method public static final native new_session_params__SWIG_0(JLorg/libtorrent4j/swig/settings_pack;)J
.end method

.method public static final native new_session_params__SWIG_1()J
.end method

.method public static final native new_session_params__SWIG_2(JLorg/libtorrent4j/swig/session_params;)J
.end method

.method public static final native new_session_proxy__SWIG_0()J
.end method

.method public static final native new_session_proxy__SWIG_1(JLorg/libtorrent4j/swig/session_proxy;)J
.end method

.method public static final native new_set_piece_hashes_listener()J
.end method

.method public static final native new_settings_pack__SWIG_0()J
.end method

.method public static final native new_settings_pack__SWIG_1(JLorg/libtorrent4j/swig/settings_pack;)J
.end method

.method public static final native new_sha1_hash__SWIG_0()J
.end method

.method public static final native new_sha1_hash__SWIG_1(JLorg/libtorrent4j/swig/sha1_hash;)J
.end method

.method public static final native new_sha1_hash__SWIG_2(JLorg/libtorrent4j/swig/byte_vector;)J
.end method

.method public static final native new_sha1_hash_udp_endpoint_pair__SWIG_0()J
.end method

.method public static final native new_sha1_hash_udp_endpoint_pair__SWIG_1(JLorg/libtorrent4j/swig/sha1_hash;JLorg/libtorrent4j/swig/udp_endpoint;)J
.end method

.method public static final native new_sha1_hash_udp_endpoint_pair__SWIG_2(JLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair;)J
.end method

.method public static final native new_sha1_hash_udp_endpoint_pair_vector__SWIG_0()J
.end method

.method public static final native new_sha1_hash_udp_endpoint_pair_vector__SWIG_1(JLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair_vector;)J
.end method

.method public static final native new_sha1_hash_udp_endpoint_pair_vector__SWIG_2(IJLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair;)J
.end method

.method public static final native new_sha1_hash_vector__SWIG_0()J
.end method

.method public static final native new_sha1_hash_vector__SWIG_1(JLorg/libtorrent4j/swig/sha1_hash_vector;)J
.end method

.method public static final native new_sha1_hash_vector__SWIG_2(IJLorg/libtorrent4j/swig/sha1_hash;)J
.end method

.method public static final native new_sha256_hash__SWIG_0()J
.end method

.method public static final native new_sha256_hash__SWIG_1(JLorg/libtorrent4j/swig/sha256_hash;)J
.end method

.method public static final native new_sha256_hash__SWIG_2(JLorg/libtorrent4j/swig/byte_vector;)J
.end method

.method public static final native new_sha256_hash_vector__SWIG_0()J
.end method

.method public static final native new_sha256_hash_vector__SWIG_1(JLorg/libtorrent4j/swig/sha256_hash_vector;)J
.end method

.method public static final native new_sha256_hash_vector__SWIG_2(IJLorg/libtorrent4j/swig/sha256_hash;)J
.end method

.method public static final native new_sha256_hash_vector_vector__SWIG_0()J
.end method

.method public static final native new_sha256_hash_vector_vector__SWIG_1(JLorg/libtorrent4j/swig/sha256_hash_vector_vector;)J
.end method

.method public static final native new_sha256_hash_vector_vector__SWIG_2(IJLorg/libtorrent4j/swig/sha256_hash_vector;)J
.end method

.method public static final native new_stats_metric()J
.end method

.method public static final native new_stats_metric_vector__SWIG_0()J
.end method

.method public static final native new_stats_metric_vector__SWIG_1(JLorg/libtorrent4j/swig/stats_metric_vector;)J
.end method

.method public static final native new_stats_metric_vector__SWIG_2(IJLorg/libtorrent4j/swig/stats_metric;)J
.end method

.method public static final native new_status_flags_t()J
.end method

.method public static final native new_storage_error__SWIG_0()J
.end method

.method public static final native new_storage_error__SWIG_1(JLorg/libtorrent4j/swig/error_code;)J
.end method

.method public static final native new_storage_error__SWIG_2(JLorg/libtorrent4j/swig/error_code;I)J
.end method

.method public static final native new_storage_error__SWIG_3(JLorg/libtorrent4j/swig/error_code;II)J
.end method

.method public static final native new_string_entry_map__SWIG_0()J
.end method

.method public static final native new_string_entry_map__SWIG_1(JLorg/libtorrent4j/swig/string_entry_map;)J
.end method

.method public static final native new_string_int_pair__SWIG_0()J
.end method

.method public static final native new_string_int_pair__SWIG_1(Ljava/lang/String;I)J
.end method

.method public static final native new_string_int_pair__SWIG_2(JLorg/libtorrent4j/swig/string_int_pair;)J
.end method

.method public static final native new_string_int_pair_vector__SWIG_0()J
.end method

.method public static final native new_string_int_pair_vector__SWIG_1(JLorg/libtorrent4j/swig/string_int_pair_vector;)J
.end method

.method public static final native new_string_int_pair_vector__SWIG_2(IJLorg/libtorrent4j/swig/string_int_pair;)J
.end method

.method public static final native new_string_string_map__SWIG_0()J
.end method

.method public static final native new_string_string_map__SWIG_1(JLorg/libtorrent4j/swig/string_string_map;)J
.end method

.method public static final native new_string_string_pair__SWIG_0()J
.end method

.method public static final native new_string_string_pair__SWIG_1(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static final native new_string_string_pair__SWIG_2(JLorg/libtorrent4j/swig/string_string_pair;)J
.end method

.method public static final native new_string_string_pair_vector__SWIG_0()J
.end method

.method public static final native new_string_string_pair_vector__SWIG_1(JLorg/libtorrent4j/swig/string_string_pair_vector;)J
.end method

.method public static final native new_string_string_pair_vector__SWIG_2(IJLorg/libtorrent4j/swig/string_string_pair;)J
.end method

.method public static final native new_string_vector__SWIG_0()J
.end method

.method public static final native new_string_vector__SWIG_1(JLorg/libtorrent4j/swig/string_vector;)J
.end method

.method public static final native new_string_vector__SWIG_2(ILjava/lang/String;)J
.end method

.method public static final native new_tcp_endpoint__SWIG_0()J
.end method

.method public static final native new_tcp_endpoint__SWIG_1(JLorg/libtorrent4j/swig/address;I)J
.end method

.method public static final native new_tcp_endpoint__SWIG_2(JLorg/libtorrent4j/swig/tcp_endpoint;)J
.end method

.method public static final native new_tcp_endpoint_vector__SWIG_0()J
.end method

.method public static final native new_tcp_endpoint_vector__SWIG_1(JLorg/libtorrent4j/swig/tcp_endpoint_vector;)J
.end method

.method public static final native new_tcp_endpoint_vector__SWIG_2(IJLorg/libtorrent4j/swig/tcp_endpoint;)J
.end method

.method public static final native new_torrent_flags_t()J
.end method

.method public static final native new_torrent_handle_vector__SWIG_0()J
.end method

.method public static final native new_torrent_handle_vector__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle_vector;)J
.end method

.method public static final native new_torrent_handle_vector__SWIG_2(IJLorg/libtorrent4j/swig/torrent_handle;)J
.end method

.method public static final native new_torrent_info__SWIG_0(JLorg/libtorrent4j/swig/info_hash_t;)J
.end method

.method public static final native new_torrent_info__SWIG_1(JLorg/libtorrent4j/swig/torrent_info;)J
.end method

.method public static final native new_torrent_status__SWIG_0()J
.end method

.method public static final native new_torrent_status__SWIG_1(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native new_torrent_status_vector__SWIG_0()J
.end method

.method public static final native new_torrent_status_vector__SWIG_1(JLorg/libtorrent4j/swig/torrent_status_vector;)J
.end method

.method public static final native new_torrent_status_vector__SWIG_2(IJLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native new_udp_endpoint__SWIG_0()J
.end method

.method public static final native new_udp_endpoint__SWIG_1(JLorg/libtorrent4j/swig/address;I)J
.end method

.method public static final native new_udp_endpoint__SWIG_2(JLorg/libtorrent4j/swig/udp_endpoint;)J
.end method

.method public static final native new_udp_endpoint_vector__SWIG_0()J
.end method

.method public static final native new_udp_endpoint_vector__SWIG_1(JLorg/libtorrent4j/swig/udp_endpoint_vector;)J
.end method

.method public static final native new_udp_endpoint_vector__SWIG_2(IJLorg/libtorrent4j/swig/udp_endpoint;)J
.end method

.method public static final native new_web_seed_entry__SWIG_0(Ljava/lang/String;Ljava/lang/String;JLorg/libtorrent4j/swig/string_string_pair_vector;)J
.end method

.method public static final native new_web_seed_entry__SWIG_1(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static final native new_web_seed_entry__SWIG_2(Ljava/lang/String;)J
.end method

.method public static final native new_web_seed_entry__SWIG_3(JLorg/libtorrent4j/swig/web_seed_entry;)J
.end method

.method public static final native new_web_seed_entry_vector__SWIG_0()J
.end method

.method public static final native new_web_seed_entry_vector__SWIG_1(JLorg/libtorrent4j/swig/web_seed_entry_vector;)J
.end method

.method public static final native new_web_seed_entry_vector__SWIG_2(IJLorg/libtorrent4j/swig/web_seed_entry;)J
.end method

.method public static final native new_write_torrent_flags_t()J
.end method

.method public static final native no_content_get()I
.end method

.method public static final native no_entropy_get()I
.end method

.method public static final native no_http_seeds_get()J
.end method

.method public static final native no_i2p_endpoint_get()I
.end method

.method public static final native no_i2p_router_get()I
.end method

.method public static final native no_verify_files_get()J
.end method

.method public static final native not_found_get()I
.end method

.method public static final native not_implemented_get()I
.end method

.method public static final native not_modified_get()I
.end method

.method public static final native num_alert_types_get()I
.end method

.method public static final native num_protocols_get()J
.end method

.method public static final native ok_get()I
.end method

.method public static final native openssl_version_text()Ljava/lang/String;
.end method

.method public static final native operation_name(I)Ljava/lang/String;
.end method

.method public static final native oversized_file_alert_SWIGUpcast(J)J
.end method

.method public static final native oversized_file_alert_alert_type_get()I
.end method

.method public static final native oversized_file_alert_category(JLorg/libtorrent4j/swig/oversized_file_alert;)J
.end method

.method public static final native oversized_file_alert_message(JLorg/libtorrent4j/swig/oversized_file_alert;)Ljava/lang/String;
.end method

.method public static final native oversized_file_alert_priority_get()I
.end method

.method public static final native oversized_file_alert_static_category_get()J
.end method

.method public static final native oversized_file_alert_type(JLorg/libtorrent4j/swig/oversized_file_alert;)I
.end method

.method public static final native oversized_file_alert_what(JLorg/libtorrent4j/swig/oversized_file_alert;)Ljava/lang/String;
.end method

.method public static final native parse_magnet_uri(Ljava/lang/String;JLorg/libtorrent4j/swig/error_code;)J
.end method

.method public static final native partial_piece_info_blocks_get(JLorg/libtorrent4j/swig/partial_piece_info;)J
.end method

.method public static final native partial_piece_info_blocks_in_piece_get(JLorg/libtorrent4j/swig/partial_piece_info;)I
.end method

.method public static final native partial_piece_info_blocks_in_piece_set(JLorg/libtorrent4j/swig/partial_piece_info;I)V
.end method

.method public static final native partial_piece_info_blocks_set(JLorg/libtorrent4j/swig/partial_piece_info;JLorg/libtorrent4j/swig/block_info;)V
.end method

.method public static final native partial_piece_info_finished_get(JLorg/libtorrent4j/swig/partial_piece_info;)I
.end method

.method public static final native partial_piece_info_finished_set(JLorg/libtorrent4j/swig/partial_piece_info;I)V
.end method

.method public static final native partial_piece_info_piece_index_get(JLorg/libtorrent4j/swig/partial_piece_info;)I
.end method

.method public static final native partial_piece_info_piece_index_set(JLorg/libtorrent4j/swig/partial_piece_info;I)V
.end method

.method public static final native partial_piece_info_requested_get(JLorg/libtorrent4j/swig/partial_piece_info;)I
.end method

.method public static final native partial_piece_info_requested_set(JLorg/libtorrent4j/swig/partial_piece_info;I)V
.end method

.method public static final native partial_piece_info_vector_clear(JLorg/libtorrent4j/swig/partial_piece_info_vector;)V
.end method

.method public static final native partial_piece_info_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/partial_piece_info_vector;JLorg/libtorrent4j/swig/partial_piece_info;)V
.end method

.method public static final native partial_piece_info_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/partial_piece_info_vector;IJLorg/libtorrent4j/swig/partial_piece_info;)V
.end method

.method public static final native partial_piece_info_vector_doCapacity(JLorg/libtorrent4j/swig/partial_piece_info_vector;)I
.end method

.method public static final native partial_piece_info_vector_doGet(JLorg/libtorrent4j/swig/partial_piece_info_vector;I)J
.end method

.method public static final native partial_piece_info_vector_doRemove(JLorg/libtorrent4j/swig/partial_piece_info_vector;I)J
.end method

.method public static final native partial_piece_info_vector_doRemoveRange(JLorg/libtorrent4j/swig/partial_piece_info_vector;II)V
.end method

.method public static final native partial_piece_info_vector_doReserve(JLorg/libtorrent4j/swig/partial_piece_info_vector;I)V
.end method

.method public static final native partial_piece_info_vector_doSet(JLorg/libtorrent4j/swig/partial_piece_info_vector;IJLorg/libtorrent4j/swig/partial_piece_info;)J
.end method

.method public static final native partial_piece_info_vector_doSize(JLorg/libtorrent4j/swig/partial_piece_info_vector;)I
.end method

.method public static final native partial_piece_info_vector_isEmpty(JLorg/libtorrent4j/swig/partial_piece_info_vector;)Z
.end method

.method public static final native partial_piece_info_writing_get(JLorg/libtorrent4j/swig/partial_piece_info;)I
.end method

.method public static final native partial_piece_info_writing_set(JLorg/libtorrent4j/swig/partial_piece_info;I)V
.end method

.method public static final native pause_flags_t_all()J
.end method

.method public static final native pause_flags_t_and_(JLorg/libtorrent4j/swig/pause_flags_t;JLorg/libtorrent4j/swig/pause_flags_t;)J
.end method

.method public static final native pause_flags_t_eq(JLorg/libtorrent4j/swig/pause_flags_t;JLorg/libtorrent4j/swig/pause_flags_t;)Z
.end method

.method public static final native pause_flags_t_from_int(I)J
.end method

.method public static final native pause_flags_t_inv(JLorg/libtorrent4j/swig/pause_flags_t;)J
.end method

.method public static final native pause_flags_t_ne(JLorg/libtorrent4j/swig/pause_flags_t;JLorg/libtorrent4j/swig/pause_flags_t;)Z
.end method

.method public static final native pause_flags_t_non_zero(JLorg/libtorrent4j/swig/pause_flags_t;)Z
.end method

.method public static final native pause_flags_t_or_(JLorg/libtorrent4j/swig/pause_flags_t;JLorg/libtorrent4j/swig/pause_flags_t;)J
.end method

.method public static final native pause_flags_t_to_int(JLorg/libtorrent4j/swig/pause_flags_t;)I
.end method

.method public static final native pause_flags_t_xor_(JLorg/libtorrent4j/swig/pause_flags_t;JLorg/libtorrent4j/swig/pause_flags_t;)J
.end method

.method public static final native paused_get()J
.end method

.method public static final native peer_alert_SWIGUpcast(J)J
.end method

.method public static final native peer_alert_get_endpoint(JLorg/libtorrent4j/swig/peer_alert;)J
.end method

.method public static final native peer_alert_message(JLorg/libtorrent4j/swig/peer_alert;)Ljava/lang/String;
.end method

.method public static final native peer_alert_pid_get(JLorg/libtorrent4j/swig/peer_alert;)J
.end method

.method public static final native peer_alert_pid_set(JLorg/libtorrent4j/swig/peer_alert;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native peer_ban_alert_SWIGUpcast(J)J
.end method

.method public static final native peer_ban_alert_alert_type_get()I
.end method

.method public static final native peer_ban_alert_category(JLorg/libtorrent4j/swig/peer_ban_alert;)J
.end method

.method public static final native peer_ban_alert_message(JLorg/libtorrent4j/swig/peer_ban_alert;)Ljava/lang/String;
.end method

.method public static final native peer_ban_alert_priority_get()I
.end method

.method public static final native peer_ban_alert_static_category_get()J
.end method

.method public static final native peer_ban_alert_type(JLorg/libtorrent4j/swig/peer_ban_alert;)I
.end method

.method public static final native peer_ban_alert_what(JLorg/libtorrent4j/swig/peer_ban_alert;)Ljava/lang/String;
.end method

.method public static final native peer_blocked_alert_SWIGUpcast(J)J
.end method

.method public static final native peer_blocked_alert_alert_type_get()I
.end method

.method public static final native peer_blocked_alert_category(JLorg/libtorrent4j/swig/peer_blocked_alert;)J
.end method

.method public static final native peer_blocked_alert_message(JLorg/libtorrent4j/swig/peer_blocked_alert;)Ljava/lang/String;
.end method

.method public static final native peer_blocked_alert_priority_get()I
.end method

.method public static final native peer_blocked_alert_reason_get(JLorg/libtorrent4j/swig/peer_blocked_alert;)I
.end method

.method public static final native peer_blocked_alert_static_category_get()J
.end method

.method public static final native peer_blocked_alert_type(JLorg/libtorrent4j/swig/peer_blocked_alert;)I
.end method

.method public static final native peer_blocked_alert_what(JLorg/libtorrent4j/swig/peer_blocked_alert;)Ljava/lang/String;
.end method

.method public static final native peer_class_info_connection_limit_factor_get(JLorg/libtorrent4j/swig/peer_class_info;)I
.end method

.method public static final native peer_class_info_connection_limit_factor_set(JLorg/libtorrent4j/swig/peer_class_info;I)V
.end method

.method public static final native peer_class_info_download_limit_get(JLorg/libtorrent4j/swig/peer_class_info;)I
.end method

.method public static final native peer_class_info_download_limit_set(JLorg/libtorrent4j/swig/peer_class_info;I)V
.end method

.method public static final native peer_class_info_download_priority_get(JLorg/libtorrent4j/swig/peer_class_info;)I
.end method

.method public static final native peer_class_info_download_priority_set(JLorg/libtorrent4j/swig/peer_class_info;I)V
.end method

.method public static final native peer_class_info_ignore_unchoke_slots_get(JLorg/libtorrent4j/swig/peer_class_info;)Z
.end method

.method public static final native peer_class_info_ignore_unchoke_slots_set(JLorg/libtorrent4j/swig/peer_class_info;Z)V
.end method

.method public static final native peer_class_info_label_get(JLorg/libtorrent4j/swig/peer_class_info;)Ljava/lang/String;
.end method

.method public static final native peer_class_info_label_set(JLorg/libtorrent4j/swig/peer_class_info;Ljava/lang/String;)V
.end method

.method public static final native peer_class_info_upload_limit_get(JLorg/libtorrent4j/swig/peer_class_info;)I
.end method

.method public static final native peer_class_info_upload_limit_set(JLorg/libtorrent4j/swig/peer_class_info;I)V
.end method

.method public static final native peer_class_info_upload_priority_get(JLorg/libtorrent4j/swig/peer_class_info;)I
.end method

.method public static final native peer_class_info_upload_priority_set(JLorg/libtorrent4j/swig/peer_class_info;I)V
.end method

.method public static final native peer_class_type_filter_apply(JLorg/libtorrent4j/swig/peer_class_type_filter;IJ)J
.end method

.method public static final native peer_class_type_filter_tcp_socket_get()I
.end method

.method public static final native peer_connect_alert_SWIGUpcast(J)J
.end method

.method public static final native peer_connect_alert_alert_type_get()I
.end method

.method public static final native peer_connect_alert_category(JLorg/libtorrent4j/swig/peer_connect_alert;)J
.end method

.method public static final native peer_connect_alert_direction_get(JLorg/libtorrent4j/swig/peer_connect_alert;)I
.end method

.method public static final native peer_connect_alert_direction_set(JLorg/libtorrent4j/swig/peer_connect_alert;I)V
.end method

.method public static final native peer_connect_alert_message(JLorg/libtorrent4j/swig/peer_connect_alert;)Ljava/lang/String;
.end method

.method public static final native peer_connect_alert_priority_get()I
.end method

.method public static final native peer_connect_alert_socket_type_get(JLorg/libtorrent4j/swig/peer_connect_alert;)I
.end method

.method public static final native peer_connect_alert_socket_type_set(JLorg/libtorrent4j/swig/peer_connect_alert;I)V
.end method

.method public static final native peer_connect_alert_static_category_get()J
.end method

.method public static final native peer_connect_alert_type(JLorg/libtorrent4j/swig/peer_connect_alert;)I
.end method

.method public static final native peer_connect_alert_what(JLorg/libtorrent4j/swig/peer_connect_alert;)Ljava/lang/String;
.end method

.method public static final native peer_disconnected_alert_SWIGUpcast(J)J
.end method

.method public static final native peer_disconnected_alert_alert_type_get()I
.end method

.method public static final native peer_disconnected_alert_category(JLorg/libtorrent4j/swig/peer_disconnected_alert;)J
.end method

.method public static final native peer_disconnected_alert_error_get(JLorg/libtorrent4j/swig/peer_disconnected_alert;)J
.end method

.method public static final native peer_disconnected_alert_message(JLorg/libtorrent4j/swig/peer_disconnected_alert;)Ljava/lang/String;
.end method

.method public static final native peer_disconnected_alert_op_get(JLorg/libtorrent4j/swig/peer_disconnected_alert;)I
.end method

.method public static final native peer_disconnected_alert_priority_get()I
.end method

.method public static final native peer_disconnected_alert_reason_get(JLorg/libtorrent4j/swig/peer_disconnected_alert;)I
.end method

.method public static final native peer_disconnected_alert_socket_type_get(JLorg/libtorrent4j/swig/peer_disconnected_alert;)I
.end method

.method public static final native peer_disconnected_alert_static_category_get()J
.end method

.method public static final native peer_disconnected_alert_type(JLorg/libtorrent4j/swig/peer_disconnected_alert;)I
.end method

.method public static final native peer_disconnected_alert_what(JLorg/libtorrent4j/swig/peer_disconnected_alert;)Ljava/lang/String;
.end method

.method public static final native peer_error_alert_SWIGUpcast(J)J
.end method

.method public static final native peer_error_alert_alert_type_get()I
.end method

.method public static final native peer_error_alert_category(JLorg/libtorrent4j/swig/peer_error_alert;)J
.end method

.method public static final native peer_error_alert_error_get(JLorg/libtorrent4j/swig/peer_error_alert;)J
.end method

.method public static final native peer_error_alert_message(JLorg/libtorrent4j/swig/peer_error_alert;)Ljava/lang/String;
.end method

.method public static final native peer_error_alert_op_get(JLorg/libtorrent4j/swig/peer_error_alert;)I
.end method

.method public static final native peer_error_alert_op_set(JLorg/libtorrent4j/swig/peer_error_alert;I)V
.end method

.method public static final native peer_error_alert_priority_get()I
.end method

.method public static final native peer_error_alert_static_category_get()J
.end method

.method public static final native peer_error_alert_type(JLorg/libtorrent4j/swig/peer_error_alert;)I
.end method

.method public static final native peer_error_alert_what(JLorg/libtorrent4j/swig/peer_error_alert;)Ljava/lang/String;
.end method

.method public static final native peer_flags_t_all()J
.end method

.method public static final native peer_flags_t_and_(JLorg/libtorrent4j/swig/peer_flags_t;JLorg/libtorrent4j/swig/peer_flags_t;)J
.end method

.method public static final native peer_flags_t_eq(JLorg/libtorrent4j/swig/peer_flags_t;JLorg/libtorrent4j/swig/peer_flags_t;)Z
.end method

.method public static final native peer_flags_t_from_int(I)J
.end method

.method public static final native peer_flags_t_inv(JLorg/libtorrent4j/swig/peer_flags_t;)J
.end method

.method public static final native peer_flags_t_ne(JLorg/libtorrent4j/swig/peer_flags_t;JLorg/libtorrent4j/swig/peer_flags_t;)Z
.end method

.method public static final native peer_flags_t_non_zero(JLorg/libtorrent4j/swig/peer_flags_t;)Z
.end method

.method public static final native peer_flags_t_or_(JLorg/libtorrent4j/swig/peer_flags_t;JLorg/libtorrent4j/swig/peer_flags_t;)J
.end method

.method public static final native peer_flags_t_to_int(JLorg/libtorrent4j/swig/peer_flags_t;)I
.end method

.method public static final native peer_flags_t_xor_(JLorg/libtorrent4j/swig/peer_flags_t;JLorg/libtorrent4j/swig/peer_flags_t;)J
.end method

.method public static final native peer_get()J
.end method

.method public static final native peer_info_alert_SWIGUpcast(J)J
.end method

.method public static final native peer_info_alert_alert_type_get()I
.end method

.method public static final native peer_info_alert_category(JLorg/libtorrent4j/swig/peer_info_alert;)J
.end method

.method public static final native peer_info_alert_message(JLorg/libtorrent4j/swig/peer_info_alert;)Ljava/lang/String;
.end method

.method public static final native peer_info_alert_peer_info_get(JLorg/libtorrent4j/swig/peer_info_alert;)J
.end method

.method public static final native peer_info_alert_peer_info_set(JLorg/libtorrent4j/swig/peer_info_alert;JLorg/libtorrent4j/swig/peer_info_vector;)V
.end method

.method public static final native peer_info_alert_priority_get()I
.end method

.method public static final native peer_info_alert_static_category_get()J
.end method

.method public static final native peer_info_alert_type(JLorg/libtorrent4j/swig/peer_info_alert;)I
.end method

.method public static final native peer_info_alert_what(JLorg/libtorrent4j/swig/peer_info_alert;)Ljava/lang/String;
.end method

.method public static final native peer_info_busy_requests_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_busy_requests_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_bw_disk_get()J
.end method

.method public static final native peer_info_bw_idle_get()J
.end method

.method public static final native peer_info_bw_limit_get()J
.end method

.method public static final native peer_info_bw_network_get()J
.end method

.method public static final native peer_info_choked_get()J
.end method

.method public static final native peer_info_connecting_get()J
.end method

.method public static final native peer_info_connection_type_get(JLorg/libtorrent4j/swig/peer_info;)J
.end method

.method public static final native peer_info_connection_type_set(JLorg/libtorrent4j/swig/peer_info;JLorg/libtorrent4j/swig/connection_type_t;)V
.end method

.method public static final native peer_info_dht_get()J
.end method

.method public static final native peer_info_down_speed_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_down_speed_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_download_queue_length_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_download_queue_length_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_download_rate_peak_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_download_rate_peak_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_downloading_block_index_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_downloading_block_index_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_downloading_piece_index_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_downloading_piece_index_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_downloading_progress_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_downloading_progress_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_downloading_total_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_downloading_total_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_endgame_mode_get()J
.end method

.method public static final native peer_info_failcount_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_failcount_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_flags_get(JLorg/libtorrent4j/swig/peer_info;)J
.end method

.method public static final native peer_info_flags_set(JLorg/libtorrent4j/swig/peer_info;JLorg/libtorrent4j/swig/peer_flags_t;)V
.end method

.method public static final native peer_info_get_client(JLorg/libtorrent4j/swig/peer_info;)J
.end method

.method public static final native peer_info_get_download_queue_time(JLorg/libtorrent4j/swig/peer_info;)J
.end method

.method public static final native peer_info_get_flags(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_get_last_active(JLorg/libtorrent4j/swig/peer_info;)J
.end method

.method public static final native peer_info_get_last_request(JLorg/libtorrent4j/swig/peer_info;)J
.end method

.method public static final native peer_info_get_pieces(JLorg/libtorrent4j/swig/peer_info;)J
.end method

.method public static final native peer_info_get_read_state(JLorg/libtorrent4j/swig/peer_info;)B
.end method

.method public static final native peer_info_get_source(JLorg/libtorrent4j/swig/peer_info;)B
.end method

.method public static final native peer_info_get_write_state(JLorg/libtorrent4j/swig/peer_info;)B
.end method

.method public static final native peer_info_handshake_get()J
.end method

.method public static final native peer_info_holepunched_get()J
.end method

.method public static final native peer_info_http_seed_get()J
.end method

.method public static final native peer_info_i2p_socket_get()J
.end method

.method public static final native peer_info_incoming_get()J
.end method

.method public static final native peer_info_interesting_get()J
.end method

.method public static final native peer_info_local_connection_get()J
.end method

.method public static final native peer_info_local_endpoint(JLorg/libtorrent4j/swig/peer_info;)J
.end method

.method public static final native peer_info_lsd_get()J
.end method

.method public static final native peer_info_num_hashfails_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_num_hashfails_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_num_pieces_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_num_pieces_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_on_parole_get()J
.end method

.method public static final native peer_info_optimistic_unchoke_get()J
.end method

.method public static final native peer_info_outgoing_connection_get()J
.end method

.method public static final native peer_info_payload_down_speed_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_payload_down_speed_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_payload_up_speed_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_payload_up_speed_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_pending_disk_bytes_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_pending_disk_bytes_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_pending_disk_read_bytes_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_pending_disk_read_bytes_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_pex_get()J
.end method

.method public static final native peer_info_pid_get(JLorg/libtorrent4j/swig/peer_info;)J
.end method

.method public static final native peer_info_pid_set(JLorg/libtorrent4j/swig/peer_info;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native peer_info_plaintext_encrypted_get()J
.end method

.method public static final native peer_info_progress_get(JLorg/libtorrent4j/swig/peer_info;)F
.end method

.method public static final native peer_info_progress_ppm_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_progress_ppm_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_progress_set(JLorg/libtorrent4j/swig/peer_info;F)V
.end method

.method public static final native peer_info_queue_bytes_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_queue_bytes_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_rc4_encrypted_get()J
.end method

.method public static final native peer_info_read_state_get(JLorg/libtorrent4j/swig/peer_info;)J
.end method

.method public static final native peer_info_read_state_set(JLorg/libtorrent4j/swig/peer_info;JLorg/libtorrent4j/swig/bandwidth_state_flags_t;)V
.end method

.method public static final native peer_info_receive_buffer_size_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_receive_buffer_size_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_receive_buffer_watermark_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_receive_buffer_watermark_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_receive_quota_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_receive_quota_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_remote_choked_get()J
.end method

.method public static final native peer_info_remote_endpoint(JLorg/libtorrent4j/swig/peer_info;)J
.end method

.method public static final native peer_info_remote_interested_get()J
.end method

.method public static final native peer_info_request_timeout_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_request_timeout_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_requests_in_buffer_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_requests_in_buffer_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_resume_data_get()J
.end method

.method public static final native peer_info_rtt_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_rtt_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_seed_get()J
.end method

.method public static final native peer_info_send_buffer_size_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_send_buffer_size_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_send_quota_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_send_quota_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_set_endpoints(JLorg/libtorrent4j/swig/peer_info;JLorg/libtorrent4j/swig/tcp_endpoint;JLorg/libtorrent4j/swig/tcp_endpoint;)V
.end method

.method public static final native peer_info_snubbed_get()J
.end method

.method public static final native peer_info_source_get(JLorg/libtorrent4j/swig/peer_info;)J
.end method

.method public static final native peer_info_source_set(JLorg/libtorrent4j/swig/peer_info;JLorg/libtorrent4j/swig/peer_source_flags_t;)V
.end method

.method public static final native peer_info_ssl_socket_get()J
.end method

.method public static final native peer_info_standard_bittorrent_get()J
.end method

.method public static final native peer_info_supports_extensions_get()J
.end method

.method public static final native peer_info_target_dl_queue_length_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_target_dl_queue_length_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_timed_out_requests_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_timed_out_requests_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_total_download_get(JLorg/libtorrent4j/swig/peer_info;)J
.end method

.method public static final native peer_info_total_download_set(JLorg/libtorrent4j/swig/peer_info;J)V
.end method

.method public static final native peer_info_total_upload_get(JLorg/libtorrent4j/swig/peer_info;)J
.end method

.method public static final native peer_info_total_upload_set(JLorg/libtorrent4j/swig/peer_info;J)V
.end method

.method public static final native peer_info_tracker_get()J
.end method

.method public static final native peer_info_up_speed_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_up_speed_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_upload_only_get()J
.end method

.method public static final native peer_info_upload_queue_length_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_upload_queue_length_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_upload_rate_peak_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_upload_rate_peak_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_used_receive_buffer_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_used_receive_buffer_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_used_send_buffer_get(JLorg/libtorrent4j/swig/peer_info;)I
.end method

.method public static final native peer_info_used_send_buffer_set(JLorg/libtorrent4j/swig/peer_info;I)V
.end method

.method public static final native peer_info_utp_socket_get()J
.end method

.method public static final native peer_info_vector_clear(JLorg/libtorrent4j/swig/peer_info_vector;)V
.end method

.method public static final native peer_info_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/peer_info_vector;JLorg/libtorrent4j/swig/peer_info;)V
.end method

.method public static final native peer_info_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/peer_info_vector;IJLorg/libtorrent4j/swig/peer_info;)V
.end method

.method public static final native peer_info_vector_doCapacity(JLorg/libtorrent4j/swig/peer_info_vector;)I
.end method

.method public static final native peer_info_vector_doGet(JLorg/libtorrent4j/swig/peer_info_vector;I)J
.end method

.method public static final native peer_info_vector_doRemove(JLorg/libtorrent4j/swig/peer_info_vector;I)J
.end method

.method public static final native peer_info_vector_doRemoveRange(JLorg/libtorrent4j/swig/peer_info_vector;II)V
.end method

.method public static final native peer_info_vector_doReserve(JLorg/libtorrent4j/swig/peer_info_vector;I)V
.end method

.method public static final native peer_info_vector_doSet(JLorg/libtorrent4j/swig/peer_info_vector;IJLorg/libtorrent4j/swig/peer_info;)J
.end method

.method public static final native peer_info_vector_doSize(JLorg/libtorrent4j/swig/peer_info_vector;)I
.end method

.method public static final native peer_info_vector_isEmpty(JLorg/libtorrent4j/swig/peer_info_vector;)Z
.end method

.method public static final native peer_info_web_seed_get()J
.end method

.method public static final native peer_info_write_state_get(JLorg/libtorrent4j/swig/peer_info;)J
.end method

.method public static final native peer_info_write_state_set(JLorg/libtorrent4j/swig/peer_info;JLorg/libtorrent4j/swig/bandwidth_state_flags_t;)V
.end method

.method public static final native peer_log_alert_SWIGUpcast(J)J
.end method

.method public static final native peer_log_alert_alert_type_get()I
.end method

.method public static final native peer_log_alert_category(JLorg/libtorrent4j/swig/peer_log_alert;)J
.end method

.method public static final native peer_log_alert_direction_get(JLorg/libtorrent4j/swig/peer_log_alert;)I
.end method

.method public static final native peer_log_alert_direction_set(JLorg/libtorrent4j/swig/peer_log_alert;I)V
.end method

.method public static final native peer_log_alert_event_type_get(JLorg/libtorrent4j/swig/peer_log_alert;)I
.end method

.method public static final native peer_log_alert_event_type_set(JLorg/libtorrent4j/swig/peer_log_alert;I)V
.end method

.method public static final native peer_log_alert_log_message(JLorg/libtorrent4j/swig/peer_log_alert;)Ljava/lang/String;
.end method

.method public static final native peer_log_alert_message(JLorg/libtorrent4j/swig/peer_log_alert;)Ljava/lang/String;
.end method

.method public static final native peer_log_alert_priority_get()I
.end method

.method public static final native peer_log_alert_static_category_get()J
.end method

.method public static final native peer_log_alert_type(JLorg/libtorrent4j/swig/peer_log_alert;)I
.end method

.method public static final native peer_log_alert_what(JLorg/libtorrent4j/swig/peer_log_alert;)Ljava/lang/String;
.end method

.method public static final native peer_log_get()J
.end method

.method public static final native peer_request_eq(JLorg/libtorrent4j/swig/peer_request;JLorg/libtorrent4j/swig/peer_request;)Z
.end method

.method public static final native peer_request_length_get(JLorg/libtorrent4j/swig/peer_request;)I
.end method

.method public static final native peer_request_length_set(JLorg/libtorrent4j/swig/peer_request;I)V
.end method

.method public static final native peer_request_piece_get(JLorg/libtorrent4j/swig/peer_request;)I
.end method

.method public static final native peer_request_piece_set(JLorg/libtorrent4j/swig/peer_request;I)V
.end method

.method public static final native peer_request_start_get(JLorg/libtorrent4j/swig/peer_request;)I
.end method

.method public static final native peer_request_start_set(JLorg/libtorrent4j/swig/peer_request;I)V
.end method

.method public static final native peer_snubbed_alert_SWIGUpcast(J)J
.end method

.method public static final native peer_snubbed_alert_alert_type_get()I
.end method

.method public static final native peer_snubbed_alert_category(JLorg/libtorrent4j/swig/peer_snubbed_alert;)J
.end method

.method public static final native peer_snubbed_alert_message(JLorg/libtorrent4j/swig/peer_snubbed_alert;)Ljava/lang/String;
.end method

.method public static final native peer_snubbed_alert_priority_get()I
.end method

.method public static final native peer_snubbed_alert_static_category_get()J
.end method

.method public static final native peer_snubbed_alert_type(JLorg/libtorrent4j/swig/peer_snubbed_alert;)I
.end method

.method public static final native peer_snubbed_alert_what(JLorg/libtorrent4j/swig/peer_snubbed_alert;)Ljava/lang/String;
.end method

.method public static final native peer_source_flags_t_all()J
.end method

.method public static final native peer_source_flags_t_and_(JLorg/libtorrent4j/swig/peer_source_flags_t;JLorg/libtorrent4j/swig/peer_source_flags_t;)J
.end method

.method public static final native peer_source_flags_t_eq(JLorg/libtorrent4j/swig/peer_source_flags_t;JLorg/libtorrent4j/swig/peer_source_flags_t;)Z
.end method

.method public static final native peer_source_flags_t_from_int(I)J
.end method

.method public static final native peer_source_flags_t_inv(JLorg/libtorrent4j/swig/peer_source_flags_t;)J
.end method

.method public static final native peer_source_flags_t_ne(JLorg/libtorrent4j/swig/peer_source_flags_t;JLorg/libtorrent4j/swig/peer_source_flags_t;)Z
.end method

.method public static final native peer_source_flags_t_non_zero(JLorg/libtorrent4j/swig/peer_source_flags_t;)Z
.end method

.method public static final native peer_source_flags_t_or_(JLorg/libtorrent4j/swig/peer_source_flags_t;JLorg/libtorrent4j/swig/peer_source_flags_t;)J
.end method

.method public static final native peer_source_flags_t_to_int(JLorg/libtorrent4j/swig/peer_source_flags_t;)I
.end method

.method public static final native peer_source_flags_t_xor_(JLorg/libtorrent4j/swig/peer_source_flags_t;JLorg/libtorrent4j/swig/peer_source_flags_t;)J
.end method

.method public static final native peer_unsnubbed_alert_SWIGUpcast(J)J
.end method

.method public static final native peer_unsnubbed_alert_alert_type_get()I
.end method

.method public static final native peer_unsnubbed_alert_category(JLorg/libtorrent4j/swig/peer_unsnubbed_alert;)J
.end method

.method public static final native peer_unsnubbed_alert_message(JLorg/libtorrent4j/swig/peer_unsnubbed_alert;)Ljava/lang/String;
.end method

.method public static final native peer_unsnubbed_alert_priority_get()I
.end method

.method public static final native peer_unsnubbed_alert_static_category_get()J
.end method

.method public static final native peer_unsnubbed_alert_type(JLorg/libtorrent4j/swig/peer_unsnubbed_alert;)I
.end method

.method public static final native peer_unsnubbed_alert_what(JLorg/libtorrent4j/swig/peer_unsnubbed_alert;)Ljava/lang/String;
.end method

.method public static final native performance_alert_SWIGUpcast(J)J
.end method

.method public static final native performance_alert_alert_type_get()I
.end method

.method public static final native performance_alert_category(JLorg/libtorrent4j/swig/performance_alert;)J
.end method

.method public static final native performance_alert_message(JLorg/libtorrent4j/swig/performance_alert;)Ljava/lang/String;
.end method

.method public static final native performance_alert_priority_get()I
.end method

.method public static final native performance_alert_static_category_get()J
.end method

.method public static final native performance_alert_too_few_outgoing_ports_get()I
.end method

.method public static final native performance_alert_type(JLorg/libtorrent4j/swig/performance_alert;)I
.end method

.method public static final native performance_alert_warning_code_get(JLorg/libtorrent4j/swig/performance_alert;)I
.end method

.method public static final native performance_alert_what(JLorg/libtorrent4j/swig/performance_alert;)Ljava/lang/String;
.end method

.method public static final native performance_warning_get()J
.end method

.method public static final native pex_encryption_get()J
.end method

.method public static final native pex_flags_t_all()J
.end method

.method public static final native pex_flags_t_and_(JLorg/libtorrent4j/swig/pex_flags_t;JLorg/libtorrent4j/swig/pex_flags_t;)J
.end method

.method public static final native pex_flags_t_eq(JLorg/libtorrent4j/swig/pex_flags_t;JLorg/libtorrent4j/swig/pex_flags_t;)Z
.end method

.method public static final native pex_flags_t_from_int(I)J
.end method

.method public static final native pex_flags_t_inv(JLorg/libtorrent4j/swig/pex_flags_t;)J
.end method

.method public static final native pex_flags_t_ne(JLorg/libtorrent4j/swig/pex_flags_t;JLorg/libtorrent4j/swig/pex_flags_t;)Z
.end method

.method public static final native pex_flags_t_non_zero(JLorg/libtorrent4j/swig/pex_flags_t;)Z
.end method

.method public static final native pex_flags_t_or_(JLorg/libtorrent4j/swig/pex_flags_t;JLorg/libtorrent4j/swig/pex_flags_t;)J
.end method

.method public static final native pex_flags_t_to_int(JLorg/libtorrent4j/swig/pex_flags_t;)I
.end method

.method public static final native pex_flags_t_xor_(JLorg/libtorrent4j/swig/pex_flags_t;JLorg/libtorrent4j/swig/pex_flags_t;)J
.end method

.method public static final native pex_holepunch_get()J
.end method

.method public static final native pex_lt_v2_get()J
.end method

.method public static final native pex_seed_get()J
.end method

.method public static final native pex_utp_get()J
.end method

.method public static final native picker_flags_t_all()J
.end method

.method public static final native picker_flags_t_and_(JLorg/libtorrent4j/swig/picker_flags_t;JLorg/libtorrent4j/swig/picker_flags_t;)J
.end method

.method public static final native picker_flags_t_eq(JLorg/libtorrent4j/swig/picker_flags_t;JLorg/libtorrent4j/swig/picker_flags_t;)Z
.end method

.method public static final native picker_flags_t_from_int(I)J
.end method

.method public static final native picker_flags_t_inv(JLorg/libtorrent4j/swig/picker_flags_t;)J
.end method

.method public static final native picker_flags_t_ne(JLorg/libtorrent4j/swig/picker_flags_t;JLorg/libtorrent4j/swig/picker_flags_t;)Z
.end method

.method public static final native picker_flags_t_non_zero(JLorg/libtorrent4j/swig/picker_flags_t;)Z
.end method

.method public static final native picker_flags_t_or_(JLorg/libtorrent4j/swig/picker_flags_t;JLorg/libtorrent4j/swig/picker_flags_t;)J
.end method

.method public static final native picker_flags_t_to_int(JLorg/libtorrent4j/swig/picker_flags_t;)I
.end method

.method public static final native picker_flags_t_xor_(JLorg/libtorrent4j/swig/picker_flags_t;JLorg/libtorrent4j/swig/picker_flags_t;)J
.end method

.method public static final native picker_log_alert_SWIGUpcast(J)J
.end method

.method public static final native picker_log_alert_alert_type_get()I
.end method

.method public static final native picker_log_alert_backup1_get()J
.end method

.method public static final native picker_log_alert_backup2_get()J
.end method

.method public static final native picker_log_alert_blocks(JLorg/libtorrent4j/swig/picker_log_alert;)J
.end method

.method public static final native picker_log_alert_category(JLorg/libtorrent4j/swig/picker_log_alert;)J
.end method

.method public static final native picker_log_alert_end_game_get()J
.end method

.method public static final native picker_log_alert_extent_affinity_get()J
.end method

.method public static final native picker_log_alert_message(JLorg/libtorrent4j/swig/picker_log_alert;)Ljava/lang/String;
.end method

.method public static final native picker_log_alert_partial_ratio_get()J
.end method

.method public static final native picker_log_alert_picker_flags_get(JLorg/libtorrent4j/swig/picker_log_alert;)J
.end method

.method public static final native picker_log_alert_picker_flags_set(JLorg/libtorrent4j/swig/picker_log_alert;JLorg/libtorrent4j/swig/picker_flags_t;)V
.end method

.method public static final native picker_log_alert_prefer_contiguous_get()J
.end method

.method public static final native picker_log_alert_prio_sequential_pieces_get()J
.end method

.method public static final native picker_log_alert_prioritize_partials_get()J
.end method

.method public static final native picker_log_alert_priority_get()I
.end method

.method public static final native picker_log_alert_random_pieces_get()J
.end method

.method public static final native picker_log_alert_rarest_first_get()J
.end method

.method public static final native picker_log_alert_rarest_first_partials_get()J
.end method

.method public static final native picker_log_alert_reverse_pieces_get()J
.end method

.method public static final native picker_log_alert_reverse_rarest_first_get()J
.end method

.method public static final native picker_log_alert_reverse_sequential_get()J
.end method

.method public static final native picker_log_alert_sequential_pieces_get()J
.end method

.method public static final native picker_log_alert_static_category_get()J
.end method

.method public static final native picker_log_alert_suggested_pieces_get()J
.end method

.method public static final native picker_log_alert_time_critical_get()J
.end method

.method public static final native picker_log_alert_type(JLorg/libtorrent4j/swig/picker_log_alert;)I
.end method

.method public static final native picker_log_alert_what(JLorg/libtorrent4j/swig/picker_log_alert;)Ljava/lang/String;
.end method

.method public static final native picker_log_get()J
.end method

.method public static final native piece_availability_alert_SWIGUpcast(J)J
.end method

.method public static final native piece_availability_alert_alert_type_get()I
.end method

.method public static final native piece_availability_alert_category(JLorg/libtorrent4j/swig/piece_availability_alert;)J
.end method

.method public static final native piece_availability_alert_message(JLorg/libtorrent4j/swig/piece_availability_alert;)Ljava/lang/String;
.end method

.method public static final native piece_availability_alert_piece_availability_get(JLorg/libtorrent4j/swig/piece_availability_alert;)J
.end method

.method public static final native piece_availability_alert_piece_availability_set(JLorg/libtorrent4j/swig/piece_availability_alert;JLorg/libtorrent4j/swig/int_vector;)V
.end method

.method public static final native piece_availability_alert_priority_get()I
.end method

.method public static final native piece_availability_alert_static_category_get()J
.end method

.method public static final native piece_availability_alert_type(JLorg/libtorrent4j/swig/piece_availability_alert;)I
.end method

.method public static final native piece_availability_alert_what(JLorg/libtorrent4j/swig/piece_availability_alert;)Ljava/lang/String;
.end method

.method public static final native piece_block_block_index_get(JLorg/libtorrent4j/swig/piece_block;)I
.end method

.method public static final native piece_block_block_index_set(JLorg/libtorrent4j/swig/piece_block;I)V
.end method

.method public static final native piece_block_eq(JLorg/libtorrent4j/swig/piece_block;JLorg/libtorrent4j/swig/piece_block;)Z
.end method

.method public static final native piece_block_invalid_get()J
.end method

.method public static final native piece_block_lt(JLorg/libtorrent4j/swig/piece_block;JLorg/libtorrent4j/swig/piece_block;)Z
.end method

.method public static final native piece_block_ne(JLorg/libtorrent4j/swig/piece_block;JLorg/libtorrent4j/swig/piece_block;)Z
.end method

.method public static final native piece_block_piece_index_get(JLorg/libtorrent4j/swig/piece_block;)I
.end method

.method public static final native piece_block_piece_index_set(JLorg/libtorrent4j/swig/piece_block;I)V
.end method

.method public static final native piece_block_vector_clear(JLorg/libtorrent4j/swig/piece_block_vector;)V
.end method

.method public static final native piece_block_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/piece_block_vector;JLorg/libtorrent4j/swig/piece_block;)V
.end method

.method public static final native piece_block_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/piece_block_vector;IJLorg/libtorrent4j/swig/piece_block;)V
.end method

.method public static final native piece_block_vector_doCapacity(JLorg/libtorrent4j/swig/piece_block_vector;)I
.end method

.method public static final native piece_block_vector_doGet(JLorg/libtorrent4j/swig/piece_block_vector;I)J
.end method

.method public static final native piece_block_vector_doRemove(JLorg/libtorrent4j/swig/piece_block_vector;I)J
.end method

.method public static final native piece_block_vector_doRemoveRange(JLorg/libtorrent4j/swig/piece_block_vector;II)V
.end method

.method public static final native piece_block_vector_doReserve(JLorg/libtorrent4j/swig/piece_block_vector;I)V
.end method

.method public static final native piece_block_vector_doSet(JLorg/libtorrent4j/swig/piece_block_vector;IJLorg/libtorrent4j/swig/piece_block;)J
.end method

.method public static final native piece_block_vector_doSize(JLorg/libtorrent4j/swig/piece_block_vector;)I
.end method

.method public static final native piece_block_vector_isEmpty(JLorg/libtorrent4j/swig/piece_block_vector;)Z
.end method

.method public static final native piece_finished_alert_SWIGUpcast(J)J
.end method

.method public static final native piece_finished_alert_alert_type_get()I
.end method

.method public static final native piece_finished_alert_category(JLorg/libtorrent4j/swig/piece_finished_alert;)J
.end method

.method public static final native piece_finished_alert_message(JLorg/libtorrent4j/swig/piece_finished_alert;)Ljava/lang/String;
.end method

.method public static final native piece_finished_alert_piece_index_get(JLorg/libtorrent4j/swig/piece_finished_alert;)I
.end method

.method public static final native piece_finished_alert_priority_get()I
.end method

.method public static final native piece_finished_alert_static_category_get()J
.end method

.method public static final native piece_finished_alert_type(JLorg/libtorrent4j/swig/piece_finished_alert;)I
.end method

.method public static final native piece_finished_alert_what(JLorg/libtorrent4j/swig/piece_finished_alert;)Ljava/lang/String;
.end method

.method public static final native piece_info_alert_SWIGUpcast(J)J
.end method

.method public static final native piece_info_alert_alert_type_get()I
.end method

.method public static final native piece_info_alert_block_data_get(JLorg/libtorrent4j/swig/piece_info_alert;)J
.end method

.method public static final native piece_info_alert_block_data_set(JLorg/libtorrent4j/swig/piece_info_alert;JLorg/libtorrent4j/swig/block_info_vector;)V
.end method

.method public static final native piece_info_alert_category(JLorg/libtorrent4j/swig/piece_info_alert;)J
.end method

.method public static final native piece_info_alert_message(JLorg/libtorrent4j/swig/piece_info_alert;)Ljava/lang/String;
.end method

.method public static final native piece_info_alert_piece_info_get(JLorg/libtorrent4j/swig/piece_info_alert;)J
.end method

.method public static final native piece_info_alert_piece_info_set(JLorg/libtorrent4j/swig/piece_info_alert;JLorg/libtorrent4j/swig/partial_piece_info_vector;)V
.end method

.method public static final native piece_info_alert_priority_get()I
.end method

.method public static final native piece_info_alert_static_category_get()J
.end method

.method public static final native piece_info_alert_type(JLorg/libtorrent4j/swig/piece_info_alert;)I
.end method

.method public static final native piece_info_alert_what(JLorg/libtorrent4j/swig/piece_info_alert;)Ljava/lang/String;
.end method

.method public static final native piece_progress_get()J
.end method

.method public static final native port_filter_access(JLorg/libtorrent4j/swig/port_filter;I)J
.end method

.method public static final native port_filter_add_rule(JLorg/libtorrent4j/swig/port_filter;IIJ)V
.end method

.method public static final native port_filter_blocked_get()I
.end method

.method public static final native port_mapping_get()J
.end method

.method public static final native port_mapping_log_get()J
.end method

.method public static final native portmap_alert_SWIGUpcast(J)J
.end method

.method public static final native portmap_alert_alert_type_get()I
.end method

.method public static final native portmap_alert_category(JLorg/libtorrent4j/swig/portmap_alert;)J
.end method

.method public static final native portmap_alert_external_port_get(JLorg/libtorrent4j/swig/portmap_alert;)I
.end method

.method public static final native portmap_alert_get_mapping(JLorg/libtorrent4j/swig/portmap_alert;)I
.end method

.method public static final native portmap_alert_map_protocol_get(JLorg/libtorrent4j/swig/portmap_alert;)I
.end method

.method public static final native portmap_alert_map_transport_get(JLorg/libtorrent4j/swig/portmap_alert;)I
.end method

.method public static final native portmap_alert_message(JLorg/libtorrent4j/swig/portmap_alert;)Ljava/lang/String;
.end method

.method public static final native portmap_alert_priority_get()I
.end method

.method public static final native portmap_alert_static_category_get()J
.end method

.method public static final native portmap_alert_type(JLorg/libtorrent4j/swig/portmap_alert;)I
.end method

.method public static final native portmap_alert_what(JLorg/libtorrent4j/swig/portmap_alert;)Ljava/lang/String;
.end method

.method public static final native portmap_error_alert_SWIGUpcast(J)J
.end method

.method public static final native portmap_error_alert_alert_type_get()I
.end method

.method public static final native portmap_error_alert_category(JLorg/libtorrent4j/swig/portmap_error_alert;)J
.end method

.method public static final native portmap_error_alert_error_get(JLorg/libtorrent4j/swig/portmap_error_alert;)J
.end method

.method public static final native portmap_error_alert_get_mapping(JLorg/libtorrent4j/swig/portmap_error_alert;)I
.end method

.method public static final native portmap_error_alert_map_transport_get(JLorg/libtorrent4j/swig/portmap_error_alert;)I
.end method

.method public static final native portmap_error_alert_map_transport_set(JLorg/libtorrent4j/swig/portmap_error_alert;I)V
.end method

.method public static final native portmap_error_alert_message(JLorg/libtorrent4j/swig/portmap_error_alert;)Ljava/lang/String;
.end method

.method public static final native portmap_error_alert_priority_get()I
.end method

.method public static final native portmap_error_alert_static_category_get()J
.end method

.method public static final native portmap_error_alert_type(JLorg/libtorrent4j/swig/portmap_error_alert;)I
.end method

.method public static final native portmap_error_alert_what(JLorg/libtorrent4j/swig/portmap_error_alert;)Ljava/lang/String;
.end method

.method public static final native portmap_log_alert_SWIGUpcast(J)J
.end method

.method public static final native portmap_log_alert_alert_type_get()I
.end method

.method public static final native portmap_log_alert_category(JLorg/libtorrent4j/swig/portmap_log_alert;)J
.end method

.method public static final native portmap_log_alert_log_message(JLorg/libtorrent4j/swig/portmap_log_alert;)Ljava/lang/String;
.end method

.method public static final native portmap_log_alert_map_transport_get(JLorg/libtorrent4j/swig/portmap_log_alert;)I
.end method

.method public static final native portmap_log_alert_message(JLorg/libtorrent4j/swig/portmap_log_alert;)Ljava/lang/String;
.end method

.method public static final native portmap_log_alert_priority_get()I
.end method

.method public static final native portmap_log_alert_static_category_get()J
.end method

.method public static final native portmap_log_alert_type(JLorg/libtorrent4j/swig/portmap_log_alert;)I
.end method

.method public static final native portmap_log_alert_what(JLorg/libtorrent4j/swig/portmap_log_alert;)Ljava/lang/String;
.end method

.method public static final native print_entry__SWIG_0(JLorg/libtorrent4j/swig/bdecode_node;ZI)Ljava/lang/String;
.end method

.method public static final native print_entry__SWIG_1(JLorg/libtorrent4j/swig/bdecode_node;Z)Ljava/lang/String;
.end method

.method public static final native print_entry__SWIG_2(JLorg/libtorrent4j/swig/bdecode_node;)Ljava/lang/String;
.end method

.method public static final native read_piece_alert_SWIGUpcast(J)J
.end method

.method public static final native read_piece_alert_alert_type_get()I
.end method

.method public static final native read_piece_alert_buffer_ptr(JLorg/libtorrent4j/swig/read_piece_alert;)J
.end method

.method public static final native read_piece_alert_category(JLorg/libtorrent4j/swig/read_piece_alert;)J
.end method

.method public static final native read_piece_alert_error_get(JLorg/libtorrent4j/swig/read_piece_alert;)J
.end method

.method public static final native read_piece_alert_message(JLorg/libtorrent4j/swig/read_piece_alert;)Ljava/lang/String;
.end method

.method public static final native read_piece_alert_piece_get(JLorg/libtorrent4j/swig/read_piece_alert;)I
.end method

.method public static final native read_piece_alert_priority_get()I
.end method

.method public static final native read_piece_alert_size_get(JLorg/libtorrent4j/swig/read_piece_alert;)I
.end method

.method public static final native read_piece_alert_static_category_get()J
.end method

.method public static final native read_piece_alert_type(JLorg/libtorrent4j/swig/read_piece_alert;)I
.end method

.method public static final native read_piece_alert_what(JLorg/libtorrent4j/swig/read_piece_alert;)Ljava/lang/String;
.end method

.method public static final native read_resume_data__SWIG_0(JLorg/libtorrent4j/swig/bdecode_node;JLorg/libtorrent4j/swig/error_code;I)J
.end method

.method public static final native read_resume_data__SWIG_1(JLorg/libtorrent4j/swig/bdecode_node;JLorg/libtorrent4j/swig/error_code;)J
.end method

.method public static final native read_resume_data_ex__SWIG_0(JLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/error_code;JLorg/libtorrent4j/swig/load_torrent_limits;)J
.end method

.method public static final native read_resume_data_ex__SWIG_1(JLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/error_code;)J
.end method

.method public static final native reannounce_flags_t_all()J
.end method

.method public static final native reannounce_flags_t_and_(JLorg/libtorrent4j/swig/reannounce_flags_t;JLorg/libtorrent4j/swig/reannounce_flags_t;)J
.end method

.method public static final native reannounce_flags_t_eq(JLorg/libtorrent4j/swig/reannounce_flags_t;JLorg/libtorrent4j/swig/reannounce_flags_t;)Z
.end method

.method public static final native reannounce_flags_t_from_int(I)J
.end method

.method public static final native reannounce_flags_t_inv(JLorg/libtorrent4j/swig/reannounce_flags_t;)J
.end method

.method public static final native reannounce_flags_t_ne(JLorg/libtorrent4j/swig/reannounce_flags_t;JLorg/libtorrent4j/swig/reannounce_flags_t;)Z
.end method

.method public static final native reannounce_flags_t_non_zero(JLorg/libtorrent4j/swig/reannounce_flags_t;)Z
.end method

.method public static final native reannounce_flags_t_or_(JLorg/libtorrent4j/swig/reannounce_flags_t;JLorg/libtorrent4j/swig/reannounce_flags_t;)J
.end method

.method public static final native reannounce_flags_t_to_int(JLorg/libtorrent4j/swig/reannounce_flags_t;)I
.end method

.method public static final native reannounce_flags_t_xor_(JLorg/libtorrent4j/swig/reannounce_flags_t;JLorg/libtorrent4j/swig/reannounce_flags_t;)J
.end method

.method public static final native remove_flags_t_all()J
.end method

.method public static final native remove_flags_t_and_(JLorg/libtorrent4j/swig/remove_flags_t;JLorg/libtorrent4j/swig/remove_flags_t;)J
.end method

.method public static final native remove_flags_t_eq(JLorg/libtorrent4j/swig/remove_flags_t;JLorg/libtorrent4j/swig/remove_flags_t;)Z
.end method

.method public static final native remove_flags_t_from_int(I)J
.end method

.method public static final native remove_flags_t_inv(JLorg/libtorrent4j/swig/remove_flags_t;)J
.end method

.method public static final native remove_flags_t_ne(JLorg/libtorrent4j/swig/remove_flags_t;JLorg/libtorrent4j/swig/remove_flags_t;)Z
.end method

.method public static final native remove_flags_t_non_zero(JLorg/libtorrent4j/swig/remove_flags_t;)Z
.end method

.method public static final native remove_flags_t_or_(JLorg/libtorrent4j/swig/remove_flags_t;JLorg/libtorrent4j/swig/remove_flags_t;)J
.end method

.method public static final native remove_flags_t_to_int(JLorg/libtorrent4j/swig/remove_flags_t;)I
.end method

.method public static final native remove_flags_t_xor_(JLorg/libtorrent4j/swig/remove_flags_t;JLorg/libtorrent4j/swig/remove_flags_t;)J
.end method

.method public static final native renamed_files_export_filenames_ex(JLorg/libtorrent4j/swig/renamed_files;)J
.end method

.method public static final native renamed_files_file_absolute_path(JLorg/libtorrent4j/swig/renamed_files;JLorg/libtorrent4j/swig/file_storage;I)Z
.end method

.method public static final native renamed_files_file_name_ex(JLorg/libtorrent4j/swig/renamed_files;JLorg/libtorrent4j/swig/file_storage;I)Ljava/lang/String;
.end method

.method public static final native renamed_files_file_path__SWIG_0(JLorg/libtorrent4j/swig/renamed_files;JLorg/libtorrent4j/swig/file_storage;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public static final native renamed_files_file_path__SWIG_1(JLorg/libtorrent4j/swig/renamed_files;JLorg/libtorrent4j/swig/file_storage;I)Ljava/lang/String;
.end method

.method public static final native renamed_files_import_filenames_ex(JLorg/libtorrent4j/swig/renamed_files;JLorg/libtorrent4j/swig/file_storage;JLorg/libtorrent4j/swig/int_string_map;)V
.end method

.method public static final native renamed_files_rename_file(JLorg/libtorrent4j/swig/renamed_files;JLorg/libtorrent4j/swig/file_storage;ILjava/lang/String;)V
.end method

.method public static final native reopen_network_flags_t_all()J
.end method

.method public static final native reopen_network_flags_t_and_(JLorg/libtorrent4j/swig/reopen_network_flags_t;JLorg/libtorrent4j/swig/reopen_network_flags_t;)J
.end method

.method public static final native reopen_network_flags_t_eq(JLorg/libtorrent4j/swig/reopen_network_flags_t;JLorg/libtorrent4j/swig/reopen_network_flags_t;)Z
.end method

.method public static final native reopen_network_flags_t_from_int(I)J
.end method

.method public static final native reopen_network_flags_t_inv(JLorg/libtorrent4j/swig/reopen_network_flags_t;)J
.end method

.method public static final native reopen_network_flags_t_ne(JLorg/libtorrent4j/swig/reopen_network_flags_t;JLorg/libtorrent4j/swig/reopen_network_flags_t;)Z
.end method

.method public static final native reopen_network_flags_t_non_zero(JLorg/libtorrent4j/swig/reopen_network_flags_t;)Z
.end method

.method public static final native reopen_network_flags_t_or_(JLorg/libtorrent4j/swig/reopen_network_flags_t;JLorg/libtorrent4j/swig/reopen_network_flags_t;)J
.end method

.method public static final native reopen_network_flags_t_to_int(JLorg/libtorrent4j/swig/reopen_network_flags_t;)I
.end method

.method public static final native reopen_network_flags_t_xor_(JLorg/libtorrent4j/swig/reopen_network_flags_t;JLorg/libtorrent4j/swig/reopen_network_flags_t;)J
.end method

.method public static final native request_dropped_alert_SWIGUpcast(J)J
.end method

.method public static final native request_dropped_alert_alert_type_get()I
.end method

.method public static final native request_dropped_alert_block_index_get(JLorg/libtorrent4j/swig/request_dropped_alert;)I
.end method

.method public static final native request_dropped_alert_category(JLorg/libtorrent4j/swig/request_dropped_alert;)J
.end method

.method public static final native request_dropped_alert_message(JLorg/libtorrent4j/swig/request_dropped_alert;)Ljava/lang/String;
.end method

.method public static final native request_dropped_alert_piece_index_get(JLorg/libtorrent4j/swig/request_dropped_alert;)I
.end method

.method public static final native request_dropped_alert_priority_get()I
.end method

.method public static final native request_dropped_alert_static_category_get()J
.end method

.method public static final native request_dropped_alert_type(JLorg/libtorrent4j/swig/request_dropped_alert;)I
.end method

.method public static final native request_dropped_alert_what(JLorg/libtorrent4j/swig/request_dropped_alert;)Ljava/lang/String;
.end method

.method public static final native resume_data_flags_t_all()J
.end method

.method public static final native resume_data_flags_t_and_(JLorg/libtorrent4j/swig/resume_data_flags_t;JLorg/libtorrent4j/swig/resume_data_flags_t;)J
.end method

.method public static final native resume_data_flags_t_eq(JLorg/libtorrent4j/swig/resume_data_flags_t;JLorg/libtorrent4j/swig/resume_data_flags_t;)Z
.end method

.method public static final native resume_data_flags_t_from_int(I)J
.end method

.method public static final native resume_data_flags_t_inv(JLorg/libtorrent4j/swig/resume_data_flags_t;)J
.end method

.method public static final native resume_data_flags_t_ne(JLorg/libtorrent4j/swig/resume_data_flags_t;JLorg/libtorrent4j/swig/resume_data_flags_t;)Z
.end method

.method public static final native resume_data_flags_t_non_zero(JLorg/libtorrent4j/swig/resume_data_flags_t;)Z
.end method

.method public static final native resume_data_flags_t_or_(JLorg/libtorrent4j/swig/resume_data_flags_t;JLorg/libtorrent4j/swig/resume_data_flags_t;)J
.end method

.method public static final native resume_data_flags_t_to_int(JLorg/libtorrent4j/swig/resume_data_flags_t;)I
.end method

.method public static final native resume_data_flags_t_xor_(JLorg/libtorrent4j/swig/resume_data_flags_t;JLorg/libtorrent4j/swig/resume_data_flags_t;)J
.end method

.method public static final native save_resume_data_alert_SWIGUpcast(J)J
.end method

.method public static final native save_resume_data_alert_alert_type_get()I
.end method

.method public static final native save_resume_data_alert_category(JLorg/libtorrent4j/swig/save_resume_data_alert;)J
.end method

.method public static final native save_resume_data_alert_message(JLorg/libtorrent4j/swig/save_resume_data_alert;)Ljava/lang/String;
.end method

.method public static final native save_resume_data_alert_params_get(JLorg/libtorrent4j/swig/save_resume_data_alert;)J
.end method

.method public static final native save_resume_data_alert_params_set(JLorg/libtorrent4j/swig/save_resume_data_alert;JLorg/libtorrent4j/swig/add_torrent_params;)V
.end method

.method public static final native save_resume_data_alert_priority_get()I
.end method

.method public static final native save_resume_data_alert_static_category_get()J
.end method

.method public static final native save_resume_data_alert_type(JLorg/libtorrent4j/swig/save_resume_data_alert;)I
.end method

.method public static final native save_resume_data_alert_what(JLorg/libtorrent4j/swig/save_resume_data_alert;)Ljava/lang/String;
.end method

.method public static final native save_resume_data_failed_alert_SWIGUpcast(J)J
.end method

.method public static final native save_resume_data_failed_alert_alert_type_get()I
.end method

.method public static final native save_resume_data_failed_alert_category(JLorg/libtorrent4j/swig/save_resume_data_failed_alert;)J
.end method

.method public static final native save_resume_data_failed_alert_error_get(JLorg/libtorrent4j/swig/save_resume_data_failed_alert;)J
.end method

.method public static final native save_resume_data_failed_alert_message(JLorg/libtorrent4j/swig/save_resume_data_failed_alert;)Ljava/lang/String;
.end method

.method public static final native save_resume_data_failed_alert_priority_get()I
.end method

.method public static final native save_resume_data_failed_alert_static_category_get()J
.end method

.method public static final native save_resume_data_failed_alert_type(JLorg/libtorrent4j/swig/save_resume_data_failed_alert;)I
.end method

.method public static final native save_resume_data_failed_alert_what(JLorg/libtorrent4j/swig/save_resume_data_failed_alert;)Ljava/lang/String;
.end method

.method public static final native save_state_flags_t_all()J
.end method

.method public static final native save_state_flags_t_and_(JLorg/libtorrent4j/swig/save_state_flags_t;JLorg/libtorrent4j/swig/save_state_flags_t;)J
.end method

.method public static final native save_state_flags_t_eq(JLorg/libtorrent4j/swig/save_state_flags_t;JLorg/libtorrent4j/swig/save_state_flags_t;)Z
.end method

.method public static final native save_state_flags_t_from_int(I)J
.end method

.method public static final native save_state_flags_t_inv(JLorg/libtorrent4j/swig/save_state_flags_t;)J
.end method

.method public static final native save_state_flags_t_ne(JLorg/libtorrent4j/swig/save_state_flags_t;JLorg/libtorrent4j/swig/save_state_flags_t;)Z
.end method

.method public static final native save_state_flags_t_non_zero(JLorg/libtorrent4j/swig/save_state_flags_t;)Z
.end method

.method public static final native save_state_flags_t_or_(JLorg/libtorrent4j/swig/save_state_flags_t;JLorg/libtorrent4j/swig/save_state_flags_t;)J
.end method

.method public static final native save_state_flags_t_to_int(JLorg/libtorrent4j/swig/save_state_flags_t;)I
.end method

.method public static final native save_state_flags_t_xor_(JLorg/libtorrent4j/swig/save_state_flags_t;JLorg/libtorrent4j/swig/save_state_flags_t;)J
.end method

.method public static final native scrape_failed_alert_SWIGUpcast(J)J
.end method

.method public static final native scrape_failed_alert_alert_type_get()I
.end method

.method public static final native scrape_failed_alert_category(JLorg/libtorrent4j/swig/scrape_failed_alert;)J
.end method

.method public static final native scrape_failed_alert_error_get(JLorg/libtorrent4j/swig/scrape_failed_alert;)J
.end method

.method public static final native scrape_failed_alert_error_message(JLorg/libtorrent4j/swig/scrape_failed_alert;)Ljava/lang/String;
.end method

.method public static final native scrape_failed_alert_message(JLorg/libtorrent4j/swig/scrape_failed_alert;)Ljava/lang/String;
.end method

.method public static final native scrape_failed_alert_priority_get()I
.end method

.method public static final native scrape_failed_alert_static_category_get()J
.end method

.method public static final native scrape_failed_alert_type(JLorg/libtorrent4j/swig/scrape_failed_alert;)I
.end method

.method public static final native scrape_failed_alert_what(JLorg/libtorrent4j/swig/scrape_failed_alert;)Ljava/lang/String;
.end method

.method public static final native scrape_not_available_get()I
.end method

.method public static final native scrape_reply_alert_SWIGUpcast(J)J
.end method

.method public static final native scrape_reply_alert_alert_type_get()I
.end method

.method public static final native scrape_reply_alert_category(JLorg/libtorrent4j/swig/scrape_reply_alert;)J
.end method

.method public static final native scrape_reply_alert_complete_get(JLorg/libtorrent4j/swig/scrape_reply_alert;)I
.end method

.method public static final native scrape_reply_alert_incomplete_get(JLorg/libtorrent4j/swig/scrape_reply_alert;)I
.end method

.method public static final native scrape_reply_alert_message(JLorg/libtorrent4j/swig/scrape_reply_alert;)Ljava/lang/String;
.end method

.method public static final native scrape_reply_alert_priority_get()I
.end method

.method public static final native scrape_reply_alert_static_category_get()J
.end method

.method public static final native scrape_reply_alert_type(JLorg/libtorrent4j/swig/scrape_reply_alert;)I
.end method

.method public static final native scrape_reply_alert_what(JLorg/libtorrent4j/swig/scrape_reply_alert;)Ljava/lang/String;
.end method

.method public static final native seed_mode_get()J
.end method

.method public static final native sequential_download_get()J
.end method

.method public static final native service_unavailable_get()I
.end method

.method public static final native session_SWIGUpcast(J)J
.end method

.method public static final native session_abort(JLorg/libtorrent4j/swig/session;)J
.end method

.method public static final native session_error_alert_SWIGUpcast(J)J
.end method

.method public static final native session_error_alert_alert_type_get()I
.end method

.method public static final native session_error_alert_category(JLorg/libtorrent4j/swig/session_error_alert;)J
.end method

.method public static final native session_error_alert_error_get(JLorg/libtorrent4j/swig/session_error_alert;)J
.end method

.method public static final native session_error_alert_message(JLorg/libtorrent4j/swig/session_error_alert;)Ljava/lang/String;
.end method

.method public static final native session_error_alert_priority_get()I
.end method

.method public static final native session_error_alert_static_category_get()J
.end method

.method public static final native session_error_alert_type(JLorg/libtorrent4j/swig/session_error_alert;)I
.end method

.method public static final native session_error_alert_what(JLorg/libtorrent4j/swig/session_error_alert;)Ljava/lang/String;
.end method

.method public static final native session_flags_t_all()J
.end method

.method public static final native session_flags_t_and_(JLorg/libtorrent4j/swig/session_flags_t;JLorg/libtorrent4j/swig/session_flags_t;)J
.end method

.method public static final native session_flags_t_eq(JLorg/libtorrent4j/swig/session_flags_t;JLorg/libtorrent4j/swig/session_flags_t;)Z
.end method

.method public static final native session_flags_t_from_int(I)J
.end method

.method public static final native session_flags_t_inv(JLorg/libtorrent4j/swig/session_flags_t;)J
.end method

.method public static final native session_flags_t_ne(JLorg/libtorrent4j/swig/session_flags_t;JLorg/libtorrent4j/swig/session_flags_t;)Z
.end method

.method public static final native session_flags_t_non_zero(JLorg/libtorrent4j/swig/session_flags_t;)Z
.end method

.method public static final native session_flags_t_or_(JLorg/libtorrent4j/swig/session_flags_t;JLorg/libtorrent4j/swig/session_flags_t;)J
.end method

.method public static final native session_flags_t_to_int(JLorg/libtorrent4j/swig/session_flags_t;)I
.end method

.method public static final native session_flags_t_xor_(JLorg/libtorrent4j/swig/session_flags_t;JLorg/libtorrent4j/swig/session_flags_t;)J
.end method

.method public static final native session_handle_add_dht_node(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/string_int_pair;)V
.end method

.method public static final native session_handle_add_port_mapping_ex(JLorg/libtorrent4j/swig/session_handle;III)J
.end method

.method public static final native session_handle_add_torrent(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/error_code;)J
.end method

.method public static final native session_handle_apply_settings(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/settings_pack;)V
.end method

.method public static final native session_handle_async_add_torrent(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/add_torrent_params;)V
.end method

.method public static final native session_handle_delete_files_get()J
.end method

.method public static final native session_handle_delete_partfile_get()J
.end method

.method public static final native session_handle_delete_port_mapping_ex(JLorg/libtorrent4j/swig/session_handle;I)V
.end method

.method public static final native session_handle_dht_announce_ex__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/sha1_hash;IB)V
.end method

.method public static final native session_handle_dht_announce_ex__SWIG_1(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/sha1_hash;I)V
.end method

.method public static final native session_handle_dht_announce_ex__SWIG_2(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native session_handle_dht_direct_request__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/udp_endpoint;JLorg/libtorrent4j/swig/entry;JLorg/libtorrent4j/swig/client_data_t;)V
.end method

.method public static final native session_handle_dht_direct_request__SWIG_1(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/udp_endpoint;JLorg/libtorrent4j/swig/entry;)V
.end method

.method public static final native session_handle_dht_direct_request__SWIG_2(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/udp_endpoint;JLorg/libtorrent4j/swig/entry;J)V
.end method

.method public static final native session_handle_dht_get_item__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native session_handle_dht_get_item__SWIG_1(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/byte_array_32;JLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native session_handle_dht_get_peers(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native session_handle_dht_live_nodes(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native session_handle_dht_put_item__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/entry;)J
.end method

.method public static final native session_handle_dht_put_item__SWIG_1(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/byte_array_32;JLorg/libtorrent4j/swig/byte_array_64;JLorg/libtorrent4j/swig/entry;JLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native session_handle_dht_sample_infohashes(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/udp_endpoint;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native session_handle_find_torrent__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/sha1_hash;)J
.end method

.method public static final native session_handle_find_torrent__SWIG_1(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/sha256_hash;)J
.end method

.method public static final native session_handle_get_ip_filter(JLorg/libtorrent4j/swig/session_handle;)J
.end method

.method public static final native session_handle_get_peer_class_filter(JLorg/libtorrent4j/swig/session_handle;)J
.end method

.method public static final native session_handle_get_peer_class_type_filter(JLorg/libtorrent4j/swig/session_handle;)J
.end method

.method public static final native session_handle_get_settings(JLorg/libtorrent4j/swig/session_handle;)J
.end method

.method public static final native session_handle_get_torrents(JLorg/libtorrent4j/swig/session_handle;)J
.end method

.method public static final native session_handle_is_dht_running(JLorg/libtorrent4j/swig/session_handle;)Z
.end method

.method public static final native session_handle_is_listening(JLorg/libtorrent4j/swig/session_handle;)Z
.end method

.method public static final native session_handle_is_paused(JLorg/libtorrent4j/swig/session_handle;)Z
.end method

.method public static final native session_handle_is_valid(JLorg/libtorrent4j/swig/session_handle;)Z
.end method

.method public static final native session_handle_listen_port(JLorg/libtorrent4j/swig/session_handle;)I
.end method

.method public static final native session_handle_pause(JLorg/libtorrent4j/swig/session_handle;)V
.end method

.method public static final native session_handle_paused_get()J
.end method

.method public static final native session_handle_pop_alerts(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/alert_ptr_vector;)V
.end method

.method public static final native session_handle_post_dht_stats(JLorg/libtorrent4j/swig/session_handle;)V
.end method

.method public static final native session_handle_post_session_stats(JLorg/libtorrent4j/swig/session_handle;)V
.end method

.method public static final native session_handle_post_torrent_updates__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/status_flags_t;)V
.end method

.method public static final native session_handle_post_torrent_updates__SWIG_1(JLorg/libtorrent4j/swig/session_handle;)V
.end method

.method public static final native session_handle_refresh_torrent_status__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/torrent_status_vector;JLorg/libtorrent4j/swig/status_flags_t;)V
.end method

.method public static final native session_handle_refresh_torrent_status__SWIG_1(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/torrent_status_vector;)V
.end method

.method public static final native session_handle_remove_torrent__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/remove_flags_t;)V
.end method

.method public static final native session_handle_remove_torrent__SWIG_1(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native session_handle_reopen_map_ports_get()J
.end method

.method public static final native session_handle_reopen_network_sockets__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/reopen_network_flags_t;)V
.end method

.method public static final native session_handle_reopen_network_sockets__SWIG_1(JLorg/libtorrent4j/swig/session_handle;)V
.end method

.method public static final native session_handle_resume(JLorg/libtorrent4j/swig/session_handle;)V
.end method

.method public static final native session_handle_save_dht_state_get()J
.end method

.method public static final native session_handle_save_extension_state_get()J
.end method

.method public static final native session_handle_save_ip_filter_get()J
.end method

.method public static final native session_handle_save_settings_get()J
.end method

.method public static final native session_handle_session_state__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/save_state_flags_t;)J
.end method

.method public static final native session_handle_session_state__SWIG_1(JLorg/libtorrent4j/swig/session_handle;)J
.end method

.method public static final native session_handle_set_alert_notify_callback(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/alert_notify_callback;)V
.end method

.method public static final native session_handle_set_dht_state__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/dht_state;)V
.end method

.method public static final native session_handle_set_ip_filter(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/ip_filter;)V
.end method

.method public static final native session_handle_set_peer_class_filter(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/ip_filter;)V
.end method

.method public static final native session_handle_set_peer_class_type_filter(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/peer_class_type_filter;)V
.end method

.method public static final native session_handle_set_port_filter(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/port_filter;)V
.end method

.method public static final native session_handle_ssl_listen_port(JLorg/libtorrent4j/swig/session_handle;)I
.end method

.method public static final native session_handle_tcp_get()I
.end method

.method public static final native session_handle_udp_get()I
.end method

.method public static final native session_handle_wait_for_alert_ms(JLorg/libtorrent4j/swig/session_handle;J)J
.end method

.method public static final native session_log_get()J
.end method

.method public static final native session_params_dht_state_get(JLorg/libtorrent4j/swig/session_params;)J
.end method

.method public static final native session_params_dht_state_set(JLorg/libtorrent4j/swig/session_params;JLorg/libtorrent4j/swig/dht_state;)V
.end method

.method public static final native session_params_ext_state_get(JLorg/libtorrent4j/swig/session_params;)J
.end method

.method public static final native session_params_ext_state_set(JLorg/libtorrent4j/swig/session_params;JLorg/libtorrent4j/swig/string_string_map;)V
.end method

.method public static final native session_params_flags_get(JLorg/libtorrent4j/swig/session_params;)J
.end method

.method public static final native session_params_flags_set(JLorg/libtorrent4j/swig/session_params;JLorg/libtorrent4j/swig/session_flags_t;)V
.end method

.method public static final native session_params_ip_filter_get(JLorg/libtorrent4j/swig/session_params;)J
.end method

.method public static final native session_params_ip_filter_set(JLorg/libtorrent4j/swig/session_params;JLorg/libtorrent4j/swig/ip_filter;)V
.end method

.method public static final native session_params_read_session_params__SWIG_0(JLorg/libtorrent4j/swig/bdecode_node;JLorg/libtorrent4j/swig/save_state_flags_t;)J
.end method

.method public static final native session_params_read_session_params__SWIG_1(JLorg/libtorrent4j/swig/bdecode_node;)J
.end method

.method public static final native session_params_set_default_disk_io_constructor(JLorg/libtorrent4j/swig/session_params;)V
.end method

.method public static final native session_params_set_posix_disk_io_constructor(JLorg/libtorrent4j/swig/session_params;)V
.end method

.method public static final native session_params_settings_get(JLorg/libtorrent4j/swig/session_params;)J
.end method

.method public static final native session_params_settings_set(JLorg/libtorrent4j/swig/session_params;JLorg/libtorrent4j/swig/settings_pack;)V
.end method

.method public static final native session_params_write_session_params__SWIG_0(JLorg/libtorrent4j/swig/session_params;JLorg/libtorrent4j/swig/save_state_flags_t;)J
.end method

.method public static final native session_params_write_session_params__SWIG_1(JLorg/libtorrent4j/swig/session_params;)J
.end method

.method public static final native session_params_write_session_params_buf__SWIG_0(JLorg/libtorrent4j/swig/session_params;JLorg/libtorrent4j/swig/save_state_flags_t;)J
.end method

.method public static final native session_params_write_session_params_buf__SWIG_1(JLorg/libtorrent4j/swig/session_params;)J
.end method

.method public static final native session_stats_alert_SWIGUpcast(J)J
.end method

.method public static final native session_stats_alert_alert_type_get()I
.end method

.method public static final native session_stats_alert_category(JLorg/libtorrent4j/swig/session_stats_alert;)J
.end method

.method public static final native session_stats_alert_get_value(JLorg/libtorrent4j/swig/session_stats_alert;I)J
.end method

.method public static final native session_stats_alert_message(JLorg/libtorrent4j/swig/session_stats_alert;)Ljava/lang/String;
.end method

.method public static final native session_stats_alert_priority_get()I
.end method

.method public static final native session_stats_alert_static_category_get()J
.end method

.method public static final native session_stats_alert_type(JLorg/libtorrent4j/swig/session_stats_alert;)I
.end method

.method public static final native session_stats_alert_what(JLorg/libtorrent4j/swig/session_stats_alert;)Ljava/lang/String;
.end method

.method public static final native session_stats_header_alert_SWIGUpcast(J)J
.end method

.method public static final native session_stats_header_alert_alert_type_get()I
.end method

.method public static final native session_stats_header_alert_category(JLorg/libtorrent4j/swig/session_stats_header_alert;)J
.end method

.method public static final native session_stats_header_alert_message(JLorg/libtorrent4j/swig/session_stats_header_alert;)Ljava/lang/String;
.end method

.method public static final native session_stats_header_alert_priority_get()I
.end method

.method public static final native session_stats_header_alert_static_category_get()J
.end method

.method public static final native session_stats_header_alert_type(JLorg/libtorrent4j/swig/session_stats_header_alert;)I
.end method

.method public static final native session_stats_header_alert_what(JLorg/libtorrent4j/swig/session_stats_header_alert;)Ljava/lang/String;
.end method

.method public static final native session_stats_metrics()J
.end method

.method public static final native set_piece_hashes_ex(JLorg/libtorrent4j/swig/create_torrent;Ljava/lang/String;JLorg/libtorrent4j/swig/set_piece_hashes_listener;JLorg/libtorrent4j/swig/error_code;)V
.end method

.method public static final native set_piece_hashes_listener_change_ownership(Lorg/libtorrent4j/swig/set_piece_hashes_listener;JZ)V
.end method

.method public static final native set_piece_hashes_listener_director_connect(Lorg/libtorrent4j/swig/set_piece_hashes_listener;JZZ)V
.end method

.method public static final native set_piece_hashes_listener_progress(JLorg/libtorrent4j/swig/set_piece_hashes_listener;I)V
.end method

.method public static final native set_piece_hashes_listener_progressSwigExplicitset_piece_hashes_listener(JLorg/libtorrent4j/swig/set_piece_hashes_listener;I)V
.end method

.method public static final native settings_interface_get_bool(JLorg/libtorrent4j/swig/settings_interface;I)Z
.end method

.method public static final native settings_interface_get_int(JLorg/libtorrent4j/swig/settings_interface;I)I
.end method

.method public static final native settings_interface_get_str(JLorg/libtorrent4j/swig/settings_interface;I)Ljava/lang/String;
.end method

.method public static final native settings_interface_has_val(JLorg/libtorrent4j/swig/settings_interface;I)Z
.end method

.method public static final native settings_interface_set_bool(JLorg/libtorrent4j/swig/settings_interface;IZ)V
.end method

.method public static final native settings_interface_set_int(JLorg/libtorrent4j/swig/settings_interface;II)V
.end method

.method public static final native settings_interface_set_str(JLorg/libtorrent4j/swig/settings_interface;ILjava/lang/String;)V
.end method

.method public static final native settings_pack_SWIGUpcast(J)J
.end method

.method public static final native settings_pack_active_downloads_get()I
.end method

.method public static final native settings_pack_allow_multiple_connections_per_ip_get()I
.end method

.method public static final native settings_pack_always_pwrite_get()I
.end method

.method public static final native settings_pack_announce_crypto_support_get()I
.end method

.method public static final native settings_pack_auto_manage_interval_get()I
.end method

.method public static final native settings_pack_auto_manage_prefer_seeds_get()I
.end method

.method public static final native settings_pack_ban_web_seeds_get()I
.end method

.method public static final native settings_pack_bool_type_base_get()I
.end method

.method public static final native settings_pack_clear__SWIG_0(JLorg/libtorrent4j/swig/settings_pack;)V
.end method

.method public static final native settings_pack_clear__SWIG_1(JLorg/libtorrent4j/swig/settings_pack;I)V
.end method

.method public static final native settings_pack_connections_limit_get()I
.end method

.method public static final native settings_pack_dht_upload_rate_limit_get()I
.end method

.method public static final native settings_pack_disable_hash_checks_get()I
.end method

.method public static final native settings_pack_disable_os_cache_get()I
.end method

.method public static final native settings_pack_disk_io_write_mode_get()I
.end method

.method public static final native settings_pack_enable_os_cache_get()I
.end method

.method public static final native settings_pack_enable_outgoing_utp_get()I
.end method

.method public static final native settings_pack_fixed_slots_choker_get()I
.end method

.method public static final native settings_pack_get_bool(JLorg/libtorrent4j/swig/settings_pack;I)Z
.end method

.method public static final native settings_pack_get_bytes(JLorg/libtorrent4j/swig/settings_pack;I)J
.end method

.method public static final native settings_pack_get_int(JLorg/libtorrent4j/swig/settings_pack;I)I
.end method

.method public static final native settings_pack_get_str(JLorg/libtorrent4j/swig/settings_pack;I)Ljava/lang/String;
.end method

.method public static final native settings_pack_handshake_client_version_get()I
.end method

.method public static final native settings_pack_has_val(JLorg/libtorrent4j/swig/settings_pack;I)Z
.end method

.method public static final native settings_pack_index_mask_get()I
.end method

.method public static final native settings_pack_int_type_base_get()I
.end method

.method public static final native settings_pack_max_pex_peers_get()I
.end method

.method public static final native settings_pack_no_atime_storage_get()I
.end method

.method public static final native settings_pack_no_piece_suggestions_get()I
.end method

.method public static final native settings_pack_no_recheck_incomplete_resume_get()I
.end method

.method public static final native settings_pack_num_bool_settings_get()I
.end method

.method public static final native settings_pack_num_int_settings_get()I
.end method

.method public static final native settings_pack_num_optimistic_unchoke_slots_get()I
.end method

.method public static final native settings_pack_num_string_settings_get()I
.end method

.method public static final native settings_pack_optimistic_disk_retry_get()I
.end method

.method public static final native settings_pack_pe_both_get()I
.end method

.method public static final native settings_pack_pe_plaintext_get()I
.end method

.method public static final native settings_pack_pe_rc4_get()I
.end method

.method public static final native settings_pack_peer_proportional_get()I
.end method

.method public static final native settings_pack_prefer_tcp_get()I
.end method

.method public static final native settings_pack_rate_based_choker_get()I
.end method

.method public static final native settings_pack_report_redundant_bytes_get()I
.end method

.method public static final native settings_pack_seeding_outgoing_connections_get()I
.end method

.method public static final native settings_pack_send_redundant_have_get()I
.end method

.method public static final native settings_pack_set_bool(JLorg/libtorrent4j/swig/settings_pack;IZ)V
.end method

.method public static final native settings_pack_set_bytes(JLorg/libtorrent4j/swig/settings_pack;IJLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native settings_pack_set_int(JLorg/libtorrent4j/swig/settings_pack;II)V
.end method

.method public static final native settings_pack_set_str(JLorg/libtorrent4j/swig/settings_pack;ILjava/lang/String;)V
.end method

.method public static final native settings_pack_string_type_base_get()I
.end method

.method public static final native settings_pack_suggest_read_cache_get()I
.end method

.method public static final native settings_pack_support_share_mode_get()I
.end method

.method public static final native settings_pack_tracker_backoff_get()I
.end method

.method public static final native settings_pack_tracker_completion_timeout_get()I
.end method

.method public static final native settings_pack_type_mask_get()I
.end method

.method public static final native settings_pack_urlseed_max_request_bytes_get()I
.end method

.method public static final native settings_pack_use_dht_as_fallback_get()I
.end method

.method public static final native settings_pack_user_agent_get()I
.end method

.method public static final native settings_pack_utp_loss_multiplier_get()I
.end method

.method public static final native settings_pack_write_through_get()I
.end method

.method public static final native sha1_hash_and_(JLorg/libtorrent4j/swig/sha1_hash;JLorg/libtorrent4j/swig/sha1_hash;)J
.end method

.method public static final native sha1_hash_assign(JLorg/libtorrent4j/swig/sha1_hash;JLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native sha1_hash_clear(JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native sha1_hash_compare(JLorg/libtorrent4j/swig/sha1_hash;JLorg/libtorrent4j/swig/sha1_hash;)I
.end method

.method public static final native sha1_hash_count_leading_zeroes(JLorg/libtorrent4j/swig/sha1_hash;)I
.end method

.method public static final native sha1_hash_eq(JLorg/libtorrent4j/swig/sha1_hash;JLorg/libtorrent4j/swig/sha1_hash;)Z
.end method

.method public static final native sha1_hash_from_hex(Ljava/lang/String;)J
.end method

.method public static final native sha1_hash_hash_code(JLorg/libtorrent4j/swig/sha1_hash;)I
.end method

.method public static final native sha1_hash_inv(JLorg/libtorrent4j/swig/sha1_hash;)J
.end method

.method public static final native sha1_hash_is_all_zeros(JLorg/libtorrent4j/swig/sha1_hash;)Z
.end method

.method public static final native sha1_hash_lt(JLorg/libtorrent4j/swig/sha1_hash;JLorg/libtorrent4j/swig/sha1_hash;)Z
.end method

.method public static final native sha1_hash_max()J
.end method

.method public static final native sha1_hash_min()J
.end method

.method public static final native sha1_hash_ne(JLorg/libtorrent4j/swig/sha1_hash;JLorg/libtorrent4j/swig/sha1_hash;)Z
.end method

.method public static final native sha1_hash_size()J
.end method

.method public static final native sha1_hash_to_bytes(JLorg/libtorrent4j/swig/sha1_hash;)J
.end method

.method public static final native sha1_hash_to_hex(JLorg/libtorrent4j/swig/sha1_hash;)Ljava/lang/String;
.end method

.method public static final native sha1_hash_udp_endpoint_pair_first_get(JLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair;)J
.end method

.method public static final native sha1_hash_udp_endpoint_pair_first_set(JLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native sha1_hash_udp_endpoint_pair_second_get(JLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair;)J
.end method

.method public static final native sha1_hash_udp_endpoint_pair_second_set(JLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair;JLorg/libtorrent4j/swig/udp_endpoint;)V
.end method

.method public static final native sha1_hash_udp_endpoint_pair_vector_clear(JLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair_vector;)V
.end method

.method public static final native sha1_hash_udp_endpoint_pair_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair_vector;JLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair;)V
.end method

.method public static final native sha1_hash_udp_endpoint_pair_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair_vector;IJLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair;)V
.end method

.method public static final native sha1_hash_udp_endpoint_pair_vector_doCapacity(JLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair_vector;)I
.end method

.method public static final native sha1_hash_udp_endpoint_pair_vector_doGet(JLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair_vector;I)J
.end method

.method public static final native sha1_hash_udp_endpoint_pair_vector_doRemove(JLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair_vector;I)J
.end method

.method public static final native sha1_hash_udp_endpoint_pair_vector_doRemoveRange(JLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair_vector;II)V
.end method

.method public static final native sha1_hash_udp_endpoint_pair_vector_doReserve(JLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair_vector;I)V
.end method

.method public static final native sha1_hash_udp_endpoint_pair_vector_doSet(JLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair_vector;IJLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair;)J
.end method

.method public static final native sha1_hash_udp_endpoint_pair_vector_doSize(JLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair_vector;)I
.end method

.method public static final native sha1_hash_udp_endpoint_pair_vector_isEmpty(JLorg/libtorrent4j/swig/sha1_hash_udp_endpoint_pair_vector;)Z
.end method

.method public static final native sha1_hash_vector_clear(JLorg/libtorrent4j/swig/sha1_hash_vector;)V
.end method

.method public static final native sha1_hash_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/sha1_hash_vector;JLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native sha1_hash_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/sha1_hash_vector;IJLorg/libtorrent4j/swig/sha1_hash;)V
.end method

.method public static final native sha1_hash_vector_doCapacity(JLorg/libtorrent4j/swig/sha1_hash_vector;)I
.end method

.method public static final native sha1_hash_vector_doGet(JLorg/libtorrent4j/swig/sha1_hash_vector;I)J
.end method

.method public static final native sha1_hash_vector_doRemove(JLorg/libtorrent4j/swig/sha1_hash_vector;I)J
.end method

.method public static final native sha1_hash_vector_doRemoveRange(JLorg/libtorrent4j/swig/sha1_hash_vector;II)V
.end method

.method public static final native sha1_hash_vector_doReserve(JLorg/libtorrent4j/swig/sha1_hash_vector;I)V
.end method

.method public static final native sha1_hash_vector_doSet(JLorg/libtorrent4j/swig/sha1_hash_vector;IJLorg/libtorrent4j/swig/sha1_hash;)J
.end method

.method public static final native sha1_hash_vector_doSize(JLorg/libtorrent4j/swig/sha1_hash_vector;)I
.end method

.method public static final native sha1_hash_vector_isEmpty(JLorg/libtorrent4j/swig/sha1_hash_vector;)Z
.end method

.method public static final native sha1_hash_xor_(JLorg/libtorrent4j/swig/sha1_hash;JLorg/libtorrent4j/swig/sha1_hash;)J
.end method

.method public static final native sha256_hash_and_(JLorg/libtorrent4j/swig/sha256_hash;JLorg/libtorrent4j/swig/sha256_hash;)J
.end method

.method public static final native sha256_hash_assign(JLorg/libtorrent4j/swig/sha256_hash;JLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native sha256_hash_clear(JLorg/libtorrent4j/swig/sha256_hash;)V
.end method

.method public static final native sha256_hash_compare(JLorg/libtorrent4j/swig/sha256_hash;JLorg/libtorrent4j/swig/sha256_hash;)I
.end method

.method public static final native sha256_hash_count_leading_zeroes(JLorg/libtorrent4j/swig/sha256_hash;)I
.end method

.method public static final native sha256_hash_eq(JLorg/libtorrent4j/swig/sha256_hash;JLorg/libtorrent4j/swig/sha256_hash;)Z
.end method

.method public static final native sha256_hash_from_hex(Ljava/lang/String;)J
.end method

.method public static final native sha256_hash_hash_code(JLorg/libtorrent4j/swig/sha256_hash;)I
.end method

.method public static final native sha256_hash_inv(JLorg/libtorrent4j/swig/sha256_hash;)J
.end method

.method public static final native sha256_hash_is_all_zeros(JLorg/libtorrent4j/swig/sha256_hash;)Z
.end method

.method public static final native sha256_hash_lt(JLorg/libtorrent4j/swig/sha256_hash;JLorg/libtorrent4j/swig/sha256_hash;)Z
.end method

.method public static final native sha256_hash_max()J
.end method

.method public static final native sha256_hash_min()J
.end method

.method public static final native sha256_hash_ne(JLorg/libtorrent4j/swig/sha256_hash;JLorg/libtorrent4j/swig/sha256_hash;)Z
.end method

.method public static final native sha256_hash_size()J
.end method

.method public static final native sha256_hash_to_bytes(JLorg/libtorrent4j/swig/sha256_hash;)J
.end method

.method public static final native sha256_hash_to_hex(JLorg/libtorrent4j/swig/sha256_hash;)Ljava/lang/String;
.end method

.method public static final native sha256_hash_vector_clear(JLorg/libtorrent4j/swig/sha256_hash_vector;)V
.end method

.method public static final native sha256_hash_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/sha256_hash_vector;JLorg/libtorrent4j/swig/sha256_hash;)V
.end method

.method public static final native sha256_hash_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/sha256_hash_vector;IJLorg/libtorrent4j/swig/sha256_hash;)V
.end method

.method public static final native sha256_hash_vector_doCapacity(JLorg/libtorrent4j/swig/sha256_hash_vector;)I
.end method

.method public static final native sha256_hash_vector_doGet(JLorg/libtorrent4j/swig/sha256_hash_vector;I)J
.end method

.method public static final native sha256_hash_vector_doRemove(JLorg/libtorrent4j/swig/sha256_hash_vector;I)J
.end method

.method public static final native sha256_hash_vector_doRemoveRange(JLorg/libtorrent4j/swig/sha256_hash_vector;II)V
.end method

.method public static final native sha256_hash_vector_doReserve(JLorg/libtorrent4j/swig/sha256_hash_vector;I)V
.end method

.method public static final native sha256_hash_vector_doSet(JLorg/libtorrent4j/swig/sha256_hash_vector;IJLorg/libtorrent4j/swig/sha256_hash;)J
.end method

.method public static final native sha256_hash_vector_doSize(JLorg/libtorrent4j/swig/sha256_hash_vector;)I
.end method

.method public static final native sha256_hash_vector_isEmpty(JLorg/libtorrent4j/swig/sha256_hash_vector;)Z
.end method

.method public static final native sha256_hash_vector_vector_clear(JLorg/libtorrent4j/swig/sha256_hash_vector_vector;)V
.end method

.method public static final native sha256_hash_vector_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/sha256_hash_vector_vector;JLorg/libtorrent4j/swig/sha256_hash_vector;)V
.end method

.method public static final native sha256_hash_vector_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/sha256_hash_vector_vector;IJLorg/libtorrent4j/swig/sha256_hash_vector;)V
.end method

.method public static final native sha256_hash_vector_vector_doCapacity(JLorg/libtorrent4j/swig/sha256_hash_vector_vector;)I
.end method

.method public static final native sha256_hash_vector_vector_doGet(JLorg/libtorrent4j/swig/sha256_hash_vector_vector;I)J
.end method

.method public static final native sha256_hash_vector_vector_doRemove(JLorg/libtorrent4j/swig/sha256_hash_vector_vector;I)J
.end method

.method public static final native sha256_hash_vector_vector_doRemoveRange(JLorg/libtorrent4j/swig/sha256_hash_vector_vector;II)V
.end method

.method public static final native sha256_hash_vector_vector_doReserve(JLorg/libtorrent4j/swig/sha256_hash_vector_vector;I)V
.end method

.method public static final native sha256_hash_vector_vector_doSet(JLorg/libtorrent4j/swig/sha256_hash_vector_vector;IJLorg/libtorrent4j/swig/sha256_hash_vector;)J
.end method

.method public static final native sha256_hash_vector_vector_doSize(JLorg/libtorrent4j/swig/sha256_hash_vector_vector;)I
.end method

.method public static final native sha256_hash_vector_vector_isEmpty(JLorg/libtorrent4j/swig/sha256_hash_vector_vector;)Z
.end method

.method public static final native sha256_hash_xor_(JLorg/libtorrent4j/swig/sha256_hash;JLorg/libtorrent4j/swig/sha256_hash;)J
.end method

.method public static final native share_mode_get()J
.end method

.method public static final native socks5_alert_SWIGUpcast(J)J
.end method

.method public static final native socks5_alert_alert_type_get()I
.end method

.method public static final native socks5_alert_category(JLorg/libtorrent4j/swig/socks5_alert;)J
.end method

.method public static final native socks5_alert_error_get(JLorg/libtorrent4j/swig/socks5_alert;)J
.end method

.method public static final native socks5_alert_error_set(JLorg/libtorrent4j/swig/socks5_alert;JLorg/libtorrent4j/swig/error_code;)V
.end method

.method public static final native socks5_alert_message(JLorg/libtorrent4j/swig/socks5_alert;)Ljava/lang/String;
.end method

.method public static final native socks5_alert_op_get(JLorg/libtorrent4j/swig/socks5_alert;)I
.end method

.method public static final native socks5_alert_op_set(JLorg/libtorrent4j/swig/socks5_alert;I)V
.end method

.method public static final native socks5_alert_priority_get()I
.end method

.method public static final native socks5_alert_static_category_get()J
.end method

.method public static final native socks5_alert_type(JLorg/libtorrent4j/swig/socks5_alert;)I
.end method

.method public static final native socks5_alert_what(JLorg/libtorrent4j/swig/socks5_alert;)Ljava/lang/String;
.end method

.method public static final native state_changed_alert_SWIGUpcast(J)J
.end method

.method public static final native state_changed_alert_alert_type_get()I
.end method

.method public static final native state_changed_alert_category(JLorg/libtorrent4j/swig/state_changed_alert;)J
.end method

.method public static final native state_changed_alert_message(JLorg/libtorrent4j/swig/state_changed_alert;)Ljava/lang/String;
.end method

.method public static final native state_changed_alert_prev_state_get(JLorg/libtorrent4j/swig/state_changed_alert;)I
.end method

.method public static final native state_changed_alert_priority_get()I
.end method

.method public static final native state_changed_alert_state_get(JLorg/libtorrent4j/swig/state_changed_alert;)I
.end method

.method public static final native state_changed_alert_static_category_get()J
.end method

.method public static final native state_changed_alert_type(JLorg/libtorrent4j/swig/state_changed_alert;)I
.end method

.method public static final native state_changed_alert_what(JLorg/libtorrent4j/swig/state_changed_alert;)Ljava/lang/String;
.end method

.method public static final native state_update_alert_SWIGUpcast(J)J
.end method

.method public static final native state_update_alert_alert_type_get()I
.end method

.method public static final native state_update_alert_category(JLorg/libtorrent4j/swig/state_update_alert;)J
.end method

.method public static final native state_update_alert_message(JLorg/libtorrent4j/swig/state_update_alert;)Ljava/lang/String;
.end method

.method public static final native state_update_alert_priority_get()I
.end method

.method public static final native state_update_alert_static_category_get()J
.end method

.method public static final native state_update_alert_status_get(JLorg/libtorrent4j/swig/state_update_alert;)J
.end method

.method public static final native state_update_alert_status_set(JLorg/libtorrent4j/swig/state_update_alert;JLorg/libtorrent4j/swig/torrent_status_vector;)V
.end method

.method public static final native state_update_alert_type(JLorg/libtorrent4j/swig/state_update_alert;)I
.end method

.method public static final native state_update_alert_what(JLorg/libtorrent4j/swig/state_update_alert;)Ljava/lang/String;
.end method

.method public static final native stats_get()J
.end method

.method public static final native stats_metric_get_name(JLorg/libtorrent4j/swig/stats_metric;)Ljava/lang/String;
.end method

.method public static final native stats_metric_type_get(JLorg/libtorrent4j/swig/stats_metric;)I
.end method

.method public static final native stats_metric_type_set(JLorg/libtorrent4j/swig/stats_metric;I)V
.end method

.method public static final native stats_metric_value_index_get(JLorg/libtorrent4j/swig/stats_metric;)I
.end method

.method public static final native stats_metric_value_index_set(JLorg/libtorrent4j/swig/stats_metric;I)V
.end method

.method public static final native stats_metric_vector_clear(JLorg/libtorrent4j/swig/stats_metric_vector;)V
.end method

.method public static final native stats_metric_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/stats_metric_vector;JLorg/libtorrent4j/swig/stats_metric;)V
.end method

.method public static final native stats_metric_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/stats_metric_vector;IJLorg/libtorrent4j/swig/stats_metric;)V
.end method

.method public static final native stats_metric_vector_doCapacity(JLorg/libtorrent4j/swig/stats_metric_vector;)I
.end method

.method public static final native stats_metric_vector_doGet(JLorg/libtorrent4j/swig/stats_metric_vector;I)J
.end method

.method public static final native stats_metric_vector_doRemove(JLorg/libtorrent4j/swig/stats_metric_vector;I)J
.end method

.method public static final native stats_metric_vector_doRemoveRange(JLorg/libtorrent4j/swig/stats_metric_vector;II)V
.end method

.method public static final native stats_metric_vector_doReserve(JLorg/libtorrent4j/swig/stats_metric_vector;I)V
.end method

.method public static final native stats_metric_vector_doSet(JLorg/libtorrent4j/swig/stats_metric_vector;IJLorg/libtorrent4j/swig/stats_metric;)J
.end method

.method public static final native stats_metric_vector_doSize(JLorg/libtorrent4j/swig/stats_metric_vector;)I
.end method

.method public static final native stats_metric_vector_isEmpty(JLorg/libtorrent4j/swig/stats_metric_vector;)Z
.end method

.method public static final native status_flags_t_all()J
.end method

.method public static final native status_flags_t_and_(JLorg/libtorrent4j/swig/status_flags_t;JLorg/libtorrent4j/swig/status_flags_t;)J
.end method

.method public static final native status_flags_t_eq(JLorg/libtorrent4j/swig/status_flags_t;JLorg/libtorrent4j/swig/status_flags_t;)Z
.end method

.method public static final native status_flags_t_from_int(I)J
.end method

.method public static final native status_flags_t_inv(JLorg/libtorrent4j/swig/status_flags_t;)J
.end method

.method public static final native status_flags_t_ne(JLorg/libtorrent4j/swig/status_flags_t;JLorg/libtorrent4j/swig/status_flags_t;)Z
.end method

.method public static final native status_flags_t_non_zero(JLorg/libtorrent4j/swig/status_flags_t;)Z
.end method

.method public static final native status_flags_t_or_(JLorg/libtorrent4j/swig/status_flags_t;JLorg/libtorrent4j/swig/status_flags_t;)J
.end method

.method public static final native status_flags_t_to_int(JLorg/libtorrent4j/swig/status_flags_t;)I
.end method

.method public static final native status_flags_t_xor_(JLorg/libtorrent4j/swig/status_flags_t;JLorg/libtorrent4j/swig/status_flags_t;)J
.end method

.method public static final native status_get()J
.end method

.method public static final native stop_when_ready_get()J
.end method

.method public static final native storage_error_ec_get(JLorg/libtorrent4j/swig/storage_error;)J
.end method

.method public static final native storage_error_ec_set(JLorg/libtorrent4j/swig/storage_error;JLorg/libtorrent4j/swig/error_code;)V
.end method

.method public static final native storage_error_file__SWIG_0(JLorg/libtorrent4j/swig/storage_error;)I
.end method

.method public static final native storage_error_file__SWIG_1(JLorg/libtorrent4j/swig/storage_error;I)V
.end method

.method public static final native storage_error_operation_get(JLorg/libtorrent4j/swig/storage_error;)I
.end method

.method public static final native storage_error_operation_set(JLorg/libtorrent4j/swig/storage_error;I)V
.end method

.method public static final native storage_error_to_bool(JLorg/libtorrent4j/swig/storage_error;)Z
.end method

.method public static final native storage_get()J
.end method

.method public static final native storage_moved_alert_SWIGUpcast(J)J
.end method

.method public static final native storage_moved_alert_alert_type_get()I
.end method

.method public static final native storage_moved_alert_category(JLorg/libtorrent4j/swig/storage_moved_alert;)J
.end method

.method public static final native storage_moved_alert_message(JLorg/libtorrent4j/swig/storage_moved_alert;)Ljava/lang/String;
.end method

.method public static final native storage_moved_alert_old_path(JLorg/libtorrent4j/swig/storage_moved_alert;)Ljava/lang/String;
.end method

.method public static final native storage_moved_alert_priority_get()I
.end method

.method public static final native storage_moved_alert_static_category_get()J
.end method

.method public static final native storage_moved_alert_storage_path(JLorg/libtorrent4j/swig/storage_moved_alert;)Ljava/lang/String;
.end method

.method public static final native storage_moved_alert_type(JLorg/libtorrent4j/swig/storage_moved_alert;)I
.end method

.method public static final native storage_moved_alert_what(JLorg/libtorrent4j/swig/storage_moved_alert;)Ljava/lang/String;
.end method

.method public static final native storage_moved_failed_alert_SWIGUpcast(J)J
.end method

.method public static final native storage_moved_failed_alert_alert_type_get()I
.end method

.method public static final native storage_moved_failed_alert_category(JLorg/libtorrent4j/swig/storage_moved_failed_alert;)J
.end method

.method public static final native storage_moved_failed_alert_error_get(JLorg/libtorrent4j/swig/storage_moved_failed_alert;)J
.end method

.method public static final native storage_moved_failed_alert_file_path(JLorg/libtorrent4j/swig/storage_moved_failed_alert;)Ljava/lang/String;
.end method

.method public static final native storage_moved_failed_alert_message(JLorg/libtorrent4j/swig/storage_moved_failed_alert;)Ljava/lang/String;
.end method

.method public static final native storage_moved_failed_alert_op_get(JLorg/libtorrent4j/swig/storage_moved_failed_alert;)I
.end method

.method public static final native storage_moved_failed_alert_op_set(JLorg/libtorrent4j/swig/storage_moved_failed_alert;I)V
.end method

.method public static final native storage_moved_failed_alert_priority_get()I
.end method

.method public static final native storage_moved_failed_alert_static_category_get()J
.end method

.method public static final native storage_moved_failed_alert_type(JLorg/libtorrent4j/swig/storage_moved_failed_alert;)I
.end method

.method public static final native storage_moved_failed_alert_what(JLorg/libtorrent4j/swig/storage_moved_failed_alert;)Ljava/lang/String;
.end method

.method public static final native string_entry_map_Iterator_getKey(JLorg/libtorrent4j/swig/string_entry_map$Iterator;)Ljava/lang/String;
.end method

.method public static final native string_entry_map_Iterator_getNextUnchecked(JLorg/libtorrent4j/swig/string_entry_map$Iterator;)J
.end method

.method public static final native string_entry_map_Iterator_getValue(JLorg/libtorrent4j/swig/string_entry_map$Iterator;)J
.end method

.method public static final native string_entry_map_Iterator_isNot(JLorg/libtorrent4j/swig/string_entry_map$Iterator;JLorg/libtorrent4j/swig/string_entry_map$Iterator;)Z
.end method

.method public static final native string_entry_map_Iterator_setValue(JLorg/libtorrent4j/swig/string_entry_map$Iterator;JLorg/libtorrent4j/swig/entry;)V
.end method

.method public static final native string_entry_map_begin(JLorg/libtorrent4j/swig/string_entry_map;)J
.end method

.method public static final native string_entry_map_clear(JLorg/libtorrent4j/swig/string_entry_map;)V
.end method

.method public static final native string_entry_map_containsImpl(JLorg/libtorrent4j/swig/string_entry_map;Ljava/lang/String;)Z
.end method

.method public static final native string_entry_map_end(JLorg/libtorrent4j/swig/string_entry_map;)J
.end method

.method public static final native string_entry_map_find(JLorg/libtorrent4j/swig/string_entry_map;Ljava/lang/String;)J
.end method

.method public static final native string_entry_map_isEmpty(JLorg/libtorrent4j/swig/string_entry_map;)Z
.end method

.method public static final native string_entry_map_putUnchecked(JLorg/libtorrent4j/swig/string_entry_map;Ljava/lang/String;JLorg/libtorrent4j/swig/entry;)V
.end method

.method public static final native string_entry_map_removeUnchecked(JLorg/libtorrent4j/swig/string_entry_map;JLorg/libtorrent4j/swig/string_entry_map$Iterator;)V
.end method

.method public static final native string_entry_map_sizeImpl(JLorg/libtorrent4j/swig/string_entry_map;)I
.end method

.method public static final native string_int_pair_first_get(JLorg/libtorrent4j/swig/string_int_pair;)Ljava/lang/String;
.end method

.method public static final native string_int_pair_first_set(JLorg/libtorrent4j/swig/string_int_pair;Ljava/lang/String;)V
.end method

.method public static final native string_int_pair_second_get(JLorg/libtorrent4j/swig/string_int_pair;)I
.end method

.method public static final native string_int_pair_second_set(JLorg/libtorrent4j/swig/string_int_pair;I)V
.end method

.method public static final native string_int_pair_vector_clear(JLorg/libtorrent4j/swig/string_int_pair_vector;)V
.end method

.method public static final native string_int_pair_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/string_int_pair_vector;JLorg/libtorrent4j/swig/string_int_pair;)V
.end method

.method public static final native string_int_pair_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/string_int_pair_vector;IJLorg/libtorrent4j/swig/string_int_pair;)V
.end method

.method public static final native string_int_pair_vector_doCapacity(JLorg/libtorrent4j/swig/string_int_pair_vector;)I
.end method

.method public static final native string_int_pair_vector_doGet(JLorg/libtorrent4j/swig/string_int_pair_vector;I)J
.end method

.method public static final native string_int_pair_vector_doRemove(JLorg/libtorrent4j/swig/string_int_pair_vector;I)J
.end method

.method public static final native string_int_pair_vector_doRemoveRange(JLorg/libtorrent4j/swig/string_int_pair_vector;II)V
.end method

.method public static final native string_int_pair_vector_doReserve(JLorg/libtorrent4j/swig/string_int_pair_vector;I)V
.end method

.method public static final native string_int_pair_vector_doSet(JLorg/libtorrent4j/swig/string_int_pair_vector;IJLorg/libtorrent4j/swig/string_int_pair;)J
.end method

.method public static final native string_int_pair_vector_doSize(JLorg/libtorrent4j/swig/string_int_pair_vector;)I
.end method

.method public static final native string_int_pair_vector_isEmpty(JLorg/libtorrent4j/swig/string_int_pair_vector;)Z
.end method

.method public static final native string_string_map_Iterator_getKey(JLorg/libtorrent4j/swig/string_string_map$Iterator;)Ljava/lang/String;
.end method

.method public static final native string_string_map_Iterator_getNextUnchecked(JLorg/libtorrent4j/swig/string_string_map$Iterator;)J
.end method

.method public static final native string_string_map_Iterator_getValue(JLorg/libtorrent4j/swig/string_string_map$Iterator;)Ljava/lang/String;
.end method

.method public static final native string_string_map_Iterator_isNot(JLorg/libtorrent4j/swig/string_string_map$Iterator;JLorg/libtorrent4j/swig/string_string_map$Iterator;)Z
.end method

.method public static final native string_string_map_Iterator_setValue(JLorg/libtorrent4j/swig/string_string_map$Iterator;Ljava/lang/String;)V
.end method

.method public static final native string_string_map_begin(JLorg/libtorrent4j/swig/string_string_map;)J
.end method

.method public static final native string_string_map_clear(JLorg/libtorrent4j/swig/string_string_map;)V
.end method

.method public static final native string_string_map_containsImpl(JLorg/libtorrent4j/swig/string_string_map;Ljava/lang/String;)Z
.end method

.method public static final native string_string_map_end(JLorg/libtorrent4j/swig/string_string_map;)J
.end method

.method public static final native string_string_map_find(JLorg/libtorrent4j/swig/string_string_map;Ljava/lang/String;)J
.end method

.method public static final native string_string_map_isEmpty(JLorg/libtorrent4j/swig/string_string_map;)Z
.end method

.method public static final native string_string_map_putUnchecked(JLorg/libtorrent4j/swig/string_string_map;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static final native string_string_map_removeUnchecked(JLorg/libtorrent4j/swig/string_string_map;JLorg/libtorrent4j/swig/string_string_map$Iterator;)V
.end method

.method public static final native string_string_map_sizeImpl(JLorg/libtorrent4j/swig/string_string_map;)I
.end method

.method public static final native string_string_pair_first_get(JLorg/libtorrent4j/swig/string_string_pair;)Ljava/lang/String;
.end method

.method public static final native string_string_pair_first_set(JLorg/libtorrent4j/swig/string_string_pair;Ljava/lang/String;)V
.end method

.method public static final native string_string_pair_second_get(JLorg/libtorrent4j/swig/string_string_pair;)Ljava/lang/String;
.end method

.method public static final native string_string_pair_second_set(JLorg/libtorrent4j/swig/string_string_pair;Ljava/lang/String;)V
.end method

.method public static final native string_string_pair_vector_clear(JLorg/libtorrent4j/swig/string_string_pair_vector;)V
.end method

.method public static final native string_string_pair_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/string_string_pair_vector;JLorg/libtorrent4j/swig/string_string_pair;)V
.end method

.method public static final native string_string_pair_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/string_string_pair_vector;IJLorg/libtorrent4j/swig/string_string_pair;)V
.end method

.method public static final native string_string_pair_vector_doCapacity(JLorg/libtorrent4j/swig/string_string_pair_vector;)I
.end method

.method public static final native string_string_pair_vector_doGet(JLorg/libtorrent4j/swig/string_string_pair_vector;I)J
.end method

.method public static final native string_string_pair_vector_doRemove(JLorg/libtorrent4j/swig/string_string_pair_vector;I)J
.end method

.method public static final native string_string_pair_vector_doRemoveRange(JLorg/libtorrent4j/swig/string_string_pair_vector;II)V
.end method

.method public static final native string_string_pair_vector_doReserve(JLorg/libtorrent4j/swig/string_string_pair_vector;I)V
.end method

.method public static final native string_string_pair_vector_doSet(JLorg/libtorrent4j/swig/string_string_pair_vector;IJLorg/libtorrent4j/swig/string_string_pair;)J
.end method

.method public static final native string_string_pair_vector_doSize(JLorg/libtorrent4j/swig/string_string_pair_vector;)I
.end method

.method public static final native string_string_pair_vector_isEmpty(JLorg/libtorrent4j/swig/string_string_pair_vector;)Z
.end method

.method public static final native string_vector_clear(JLorg/libtorrent4j/swig/string_vector;)V
.end method

.method public static final native string_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/string_vector;Ljava/lang/String;)V
.end method

.method public static final native string_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/string_vector;ILjava/lang/String;)V
.end method

.method public static final native string_vector_doCapacity(JLorg/libtorrent4j/swig/string_vector;)I
.end method

.method public static final native string_vector_doGet(JLorg/libtorrent4j/swig/string_vector;I)Ljava/lang/String;
.end method

.method public static final native string_vector_doRemove(JLorg/libtorrent4j/swig/string_vector;I)Ljava/lang/String;
.end method

.method public static final native string_vector_doRemoveRange(JLorg/libtorrent4j/swig/string_vector;II)V
.end method

.method public static final native string_vector_doReserve(JLorg/libtorrent4j/swig/string_vector;I)V
.end method

.method public static final native string_vector_doSet(JLorg/libtorrent4j/swig/string_vector;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public static final native string_vector_doSize(JLorg/libtorrent4j/swig/string_vector;)I
.end method

.method public static final native string_vector_isEmpty(JLorg/libtorrent4j/swig/string_vector;)Z
.end method

.method public static final native super_seeding_get()J
.end method

.method private static final native swig_module_init()V
.end method

.method public static final native tcp_endpoint_address(JLorg/libtorrent4j/swig/tcp_endpoint;)J
.end method

.method public static final native tcp_endpoint_port(JLorg/libtorrent4j/swig/tcp_endpoint;)I
.end method

.method public static final native tcp_endpoint_vector_clear(JLorg/libtorrent4j/swig/tcp_endpoint_vector;)V
.end method

.method public static final native tcp_endpoint_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/tcp_endpoint_vector;JLorg/libtorrent4j/swig/tcp_endpoint;)V
.end method

.method public static final native tcp_endpoint_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/tcp_endpoint_vector;IJLorg/libtorrent4j/swig/tcp_endpoint;)V
.end method

.method public static final native tcp_endpoint_vector_doCapacity(JLorg/libtorrent4j/swig/tcp_endpoint_vector;)I
.end method

.method public static final native tcp_endpoint_vector_doGet(JLorg/libtorrent4j/swig/tcp_endpoint_vector;I)J
.end method

.method public static final native tcp_endpoint_vector_doRemove(JLorg/libtorrent4j/swig/tcp_endpoint_vector;I)J
.end method

.method public static final native tcp_endpoint_vector_doRemoveRange(JLorg/libtorrent4j/swig/tcp_endpoint_vector;II)V
.end method

.method public static final native tcp_endpoint_vector_doReserve(JLorg/libtorrent4j/swig/tcp_endpoint_vector;I)V
.end method

.method public static final native tcp_endpoint_vector_doSet(JLorg/libtorrent4j/swig/tcp_endpoint_vector;IJLorg/libtorrent4j/swig/tcp_endpoint;)J
.end method

.method public static final native tcp_endpoint_vector_doSize(JLorg/libtorrent4j/swig/tcp_endpoint_vector;)I
.end method

.method public static final native tcp_endpoint_vector_isEmpty(JLorg/libtorrent4j/swig/tcp_endpoint_vector;)Z
.end method

.method public static final native torrent_alert_SWIGUpcast(J)J
.end method

.method public static final native torrent_alert_handle_get(JLorg/libtorrent4j/swig/torrent_alert;)J
.end method

.method public static final native torrent_alert_handle_set(JLorg/libtorrent4j/swig/torrent_alert;JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_alert_message(JLorg/libtorrent4j/swig/torrent_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_checked_alert_SWIGUpcast(J)J
.end method

.method public static final native torrent_checked_alert_alert_type_get()I
.end method

.method public static final native torrent_checked_alert_category(JLorg/libtorrent4j/swig/torrent_checked_alert;)J
.end method

.method public static final native torrent_checked_alert_message(JLorg/libtorrent4j/swig/torrent_checked_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_checked_alert_priority_get()I
.end method

.method public static final native torrent_checked_alert_static_category_get()J
.end method

.method public static final native torrent_checked_alert_type(JLorg/libtorrent4j/swig/torrent_checked_alert;)I
.end method

.method public static final native torrent_checked_alert_what(JLorg/libtorrent4j/swig/torrent_checked_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_conflict_alert_SWIGUpcast(J)J
.end method

.method public static final native torrent_conflict_alert_alert_type_get()I
.end method

.method public static final native torrent_conflict_alert_category(JLorg/libtorrent4j/swig/torrent_conflict_alert;)J
.end method

.method public static final native torrent_conflict_alert_conflicting_torrent_get(JLorg/libtorrent4j/swig/torrent_conflict_alert;)J
.end method

.method public static final native torrent_conflict_alert_conflicting_torrent_set(JLorg/libtorrent4j/swig/torrent_conflict_alert;JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_conflict_alert_get_metadata(JLorg/libtorrent4j/swig/torrent_conflict_alert;)J
.end method

.method public static final native torrent_conflict_alert_message(JLorg/libtorrent4j/swig/torrent_conflict_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_conflict_alert_priority_get()I
.end method

.method public static final native torrent_conflict_alert_static_category_get()J
.end method

.method public static final native torrent_conflict_alert_type(JLorg/libtorrent4j/swig/torrent_conflict_alert;)I
.end method

.method public static final native torrent_conflict_alert_what(JLorg/libtorrent4j/swig/torrent_conflict_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_delete_failed_alert_SWIGUpcast(J)J
.end method

.method public static final native torrent_delete_failed_alert_alert_type_get()I
.end method

.method public static final native torrent_delete_failed_alert_category(JLorg/libtorrent4j/swig/torrent_delete_failed_alert;)J
.end method

.method public static final native torrent_delete_failed_alert_error_get(JLorg/libtorrent4j/swig/torrent_delete_failed_alert;)J
.end method

.method public static final native torrent_delete_failed_alert_info_hashes_get(JLorg/libtorrent4j/swig/torrent_delete_failed_alert;)J
.end method

.method public static final native torrent_delete_failed_alert_info_hashes_set(JLorg/libtorrent4j/swig/torrent_delete_failed_alert;JLorg/libtorrent4j/swig/info_hash_t;)V
.end method

.method public static final native torrent_delete_failed_alert_message(JLorg/libtorrent4j/swig/torrent_delete_failed_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_delete_failed_alert_priority_get()I
.end method

.method public static final native torrent_delete_failed_alert_static_category_get()J
.end method

.method public static final native torrent_delete_failed_alert_type(JLorg/libtorrent4j/swig/torrent_delete_failed_alert;)I
.end method

.method public static final native torrent_delete_failed_alert_what(JLorg/libtorrent4j/swig/torrent_delete_failed_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_deleted_alert_SWIGUpcast(J)J
.end method

.method public static final native torrent_deleted_alert_alert_type_get()I
.end method

.method public static final native torrent_deleted_alert_category(JLorg/libtorrent4j/swig/torrent_deleted_alert;)J
.end method

.method public static final native torrent_deleted_alert_info_hashes_get(JLorg/libtorrent4j/swig/torrent_deleted_alert;)J
.end method

.method public static final native torrent_deleted_alert_info_hashes_set(JLorg/libtorrent4j/swig/torrent_deleted_alert;JLorg/libtorrent4j/swig/info_hash_t;)V
.end method

.method public static final native torrent_deleted_alert_message(JLorg/libtorrent4j/swig/torrent_deleted_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_deleted_alert_priority_get()I
.end method

.method public static final native torrent_deleted_alert_static_category_get()J
.end method

.method public static final native torrent_deleted_alert_type(JLorg/libtorrent4j/swig/torrent_deleted_alert;)I
.end method

.method public static final native torrent_deleted_alert_what(JLorg/libtorrent4j/swig/torrent_deleted_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_error_alert_SWIGUpcast(J)J
.end method

.method public static final native torrent_error_alert_alert_type_get()I
.end method

.method public static final native torrent_error_alert_category(JLorg/libtorrent4j/swig/torrent_error_alert;)J
.end method

.method public static final native torrent_error_alert_error_get(JLorg/libtorrent4j/swig/torrent_error_alert;)J
.end method

.method public static final native torrent_error_alert_filename(JLorg/libtorrent4j/swig/torrent_error_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_error_alert_message(JLorg/libtorrent4j/swig/torrent_error_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_error_alert_priority_get()I
.end method

.method public static final native torrent_error_alert_static_category_get()J
.end method

.method public static final native torrent_error_alert_type(JLorg/libtorrent4j/swig/torrent_error_alert;)I
.end method

.method public static final native torrent_error_alert_what(JLorg/libtorrent4j/swig/torrent_error_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_finished_alert_SWIGUpcast(J)J
.end method

.method public static final native torrent_finished_alert_alert_type_get()I
.end method

.method public static final native torrent_finished_alert_category(JLorg/libtorrent4j/swig/torrent_finished_alert;)J
.end method

.method public static final native torrent_finished_alert_message(JLorg/libtorrent4j/swig/torrent_finished_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_finished_alert_priority_get()I
.end method

.method public static final native torrent_finished_alert_static_category_get()J
.end method

.method public static final native torrent_finished_alert_type(JLorg/libtorrent4j/swig/torrent_finished_alert;)I
.end method

.method public static final native torrent_finished_alert_what(JLorg/libtorrent4j/swig/torrent_finished_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_flags_t_all()J
.end method

.method public static final native torrent_flags_t_and_(JLorg/libtorrent4j/swig/torrent_flags_t;JLorg/libtorrent4j/swig/torrent_flags_t;)J
.end method

.method public static final native torrent_flags_t_eq(JLorg/libtorrent4j/swig/torrent_flags_t;JLorg/libtorrent4j/swig/torrent_flags_t;)Z
.end method

.method public static final native torrent_flags_t_from_int(I)J
.end method

.method public static final native torrent_flags_t_inv(JLorg/libtorrent4j/swig/torrent_flags_t;)J
.end method

.method public static final native torrent_flags_t_ne(JLorg/libtorrent4j/swig/torrent_flags_t;JLorg/libtorrent4j/swig/torrent_flags_t;)Z
.end method

.method public static final native torrent_flags_t_non_zero(JLorg/libtorrent4j/swig/torrent_flags_t;)Z
.end method

.method public static final native torrent_flags_t_or_(JLorg/libtorrent4j/swig/torrent_flags_t;JLorg/libtorrent4j/swig/torrent_flags_t;)J
.end method

.method public static final native torrent_flags_t_to_int(JLorg/libtorrent4j/swig/torrent_flags_t;)I
.end method

.method public static final native torrent_flags_t_xor_(JLorg/libtorrent4j/swig/torrent_flags_t;JLorg/libtorrent4j/swig/torrent_flags_t;)J
.end method

.method public static final native torrent_handle_add_piece_bytes__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;IJLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/add_piece_flags_t;)V
.end method

.method public static final native torrent_handle_add_piece_bytes__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;IJLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native torrent_handle_add_tracker(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/announce_entry;)V
.end method

.method public static final native torrent_handle_add_url_seed(JLorg/libtorrent4j/swig/torrent_handle;Ljava/lang/String;)V
.end method

.method public static final native torrent_handle_alert_when_available_get()J
.end method

.method public static final native torrent_handle_clear_error(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_clear_peers(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_clear_piece_deadlines(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_connect_peer__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/tcp_endpoint;JLorg/libtorrent4j/swig/peer_source_flags_t;JLorg/libtorrent4j/swig/pex_flags_t;)V
.end method

.method public static final native torrent_handle_connect_peer__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/tcp_endpoint;JLorg/libtorrent4j/swig/peer_source_flags_t;)V
.end method

.method public static final native torrent_handle_connect_peer__SWIG_2(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/tcp_endpoint;)V
.end method

.method public static final native torrent_handle_download_limit(JLorg/libtorrent4j/swig/torrent_handle;)I
.end method

.method public static final native torrent_handle_eq(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/torrent_handle;)Z
.end method

.method public static final native torrent_handle_file_priority_ex__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;I)B
.end method

.method public static final native torrent_handle_file_priority_ex__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;IB)V
.end method

.method public static final native torrent_handle_file_progress__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/int64_vector;JLorg/libtorrent4j/swig/file_progress_flags_t;)V
.end method

.method public static final native torrent_handle_file_progress__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/int64_vector;)V
.end method

.method public static final native torrent_handle_file_progress__SWIG_2(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/file_progress_flags_t;)J
.end method

.method public static final native torrent_handle_file_progress__SWIG_3(JLorg/libtorrent4j/swig/torrent_handle;)J
.end method

.method public static final native torrent_handle_flags(JLorg/libtorrent4j/swig/torrent_handle;)J
.end method

.method public static final native torrent_handle_flush_cache(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_flush_disk_cache_get()J
.end method

.method public static final native torrent_handle_force_dht_announce(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_force_lsd_announce(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_force_reannounce__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;IIJLorg/libtorrent4j/swig/reannounce_flags_t;)V
.end method

.method public static final native torrent_handle_force_reannounce__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;II)V
.end method

.method public static final native torrent_handle_force_reannounce__SWIG_2(JLorg/libtorrent4j/swig/torrent_handle;ILjava/lang/String;JLorg/libtorrent4j/swig/reannounce_flags_t;)V
.end method

.method public static final native torrent_handle_force_reannounce__SWIG_3(JLorg/libtorrent4j/swig/torrent_handle;ILjava/lang/String;)V
.end method

.method public static final native torrent_handle_force_reannounce__SWIG_4(JLorg/libtorrent4j/swig/torrent_handle;IJLorg/libtorrent4j/swig/reannounce_flags_t;)V
.end method

.method public static final native torrent_handle_force_reannounce__SWIG_5(JLorg/libtorrent4j/swig/torrent_handle;I)V
.end method

.method public static final native torrent_handle_force_reannounce__SWIG_6(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_force_recheck(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_get_download_queue__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;)J
.end method

.method public static final native torrent_handle_get_download_queue__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/partial_piece_info_vector;)V
.end method

.method public static final native torrent_handle_get_file_priorities_ex(JLorg/libtorrent4j/swig/torrent_handle;)J
.end method

.method public static final native torrent_handle_get_peer_info(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/peer_info_vector;)V
.end method

.method public static final native torrent_handle_get_piece_priorities_ex(JLorg/libtorrent4j/swig/torrent_handle;)J
.end method

.method public static final native torrent_handle_get_resume_data__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/resume_data_flags_t;)J
.end method

.method public static final native torrent_handle_get_resume_data__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;)J
.end method

.method public static final native torrent_handle_get_url_seeds(JLorg/libtorrent4j/swig/torrent_handle;)J
.end method

.method public static final native torrent_handle_graceful_pause_get()J
.end method

.method public static final native torrent_handle_have_piece(JLorg/libtorrent4j/swig/torrent_handle;I)Z
.end method

.method public static final native torrent_handle_high_priority_get()J
.end method

.method public static final native torrent_handle_id(JLorg/libtorrent4j/swig/torrent_handle;)J
.end method

.method public static final native torrent_handle_if_config_changed_get()J
.end method

.method public static final native torrent_handle_if_counters_changed_get()J
.end method

.method public static final native torrent_handle_if_download_progress_get()J
.end method

.method public static final native torrent_handle_if_metadata_changed_get()J
.end method

.method public static final native torrent_handle_if_state_changed_get()J
.end method

.method public static final native torrent_handle_ignore_min_interval_get()J
.end method

.method public static final native torrent_handle_in_session(JLorg/libtorrent4j/swig/torrent_handle;)Z
.end method

.method public static final native torrent_handle_info_hash(JLorg/libtorrent4j/swig/torrent_handle;)J
.end method

.method public static final native torrent_handle_info_hashes(JLorg/libtorrent4j/swig/torrent_handle;)J
.end method

.method public static final native torrent_handle_is_valid(JLorg/libtorrent4j/swig/torrent_handle;)Z
.end method

.method public static final native torrent_handle_lt(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/torrent_handle;)Z
.end method

.method public static final native torrent_handle_max_connections(JLorg/libtorrent4j/swig/torrent_handle;)I
.end method

.method public static final native torrent_handle_max_uploads(JLorg/libtorrent4j/swig/torrent_handle;)I
.end method

.method public static final native torrent_handle_move_storage__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;Ljava/lang/String;I)V
.end method

.method public static final native torrent_handle_move_storage__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;Ljava/lang/String;)V
.end method

.method public static final native torrent_handle_ne(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/torrent_handle;)Z
.end method

.method public static final native torrent_handle_need_save_resume_data__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;)Z
.end method

.method public static final native torrent_handle_need_save_resume_data__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/resume_data_flags_t;)Z
.end method

.method public static final native torrent_handle_only_if_modified_get()J
.end method

.method public static final native torrent_handle_overwrite_existing_get()J
.end method

.method public static final native torrent_handle_pause__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/pause_flags_t;)V
.end method

.method public static final native torrent_handle_pause__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_piece_availability(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/int_vector;)V
.end method

.method public static final native torrent_handle_piece_granularity_get()J
.end method

.method public static final native torrent_handle_piece_layers(JLorg/libtorrent4j/swig/torrent_handle;)J
.end method

.method public static final native torrent_handle_piece_priority_ex__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;I)B
.end method

.method public static final native torrent_handle_piece_priority_ex__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;IB)V
.end method

.method public static final native torrent_handle_post_download_queue(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_post_file_progress(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/file_progress_flags_t;)V
.end method

.method public static final native torrent_handle_post_peer_info(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_post_piece_availability(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_post_status__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/status_flags_t;)V
.end method

.method public static final native torrent_handle_post_status__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_post_trackers(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_prioritize_files_ex(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native torrent_handle_prioritize_pieces_ex__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native torrent_handle_prioritize_pieces_ex__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/int_byte_pair_vector;)V
.end method

.method public static final native torrent_handle_query_accurate_download_counters_get()J
.end method

.method public static final native torrent_handle_query_distributed_copies_get()J
.end method

.method public static final native torrent_handle_query_last_seen_complete_get()J
.end method

.method public static final native torrent_handle_query_name_get()J
.end method

.method public static final native torrent_handle_query_pieces_get()J
.end method

.method public static final native torrent_handle_query_save_path_get()J
.end method

.method public static final native torrent_handle_query_torrent_file_get()J
.end method

.method public static final native torrent_handle_query_verified_pieces_get()J
.end method

.method public static final native torrent_handle_queue_position_bottom(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_queue_position_down(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_queue_position_ex(JLorg/libtorrent4j/swig/torrent_handle;)I
.end method

.method public static final native torrent_handle_queue_position_set_ex(JLorg/libtorrent4j/swig/torrent_handle;I)V
.end method

.method public static final native torrent_handle_queue_position_top(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_queue_position_up(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_read_piece(JLorg/libtorrent4j/swig/torrent_handle;I)V
.end method

.method public static final native torrent_handle_remove_url_seed(JLorg/libtorrent4j/swig/torrent_handle;Ljava/lang/String;)V
.end method

.method public static final native torrent_handle_rename_file(JLorg/libtorrent4j/swig/torrent_handle;ILjava/lang/String;)V
.end method

.method public static final native torrent_handle_replace_trackers(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/announce_entry_vector;)V
.end method

.method public static final native torrent_handle_reset_piece_deadline(JLorg/libtorrent4j/swig/torrent_handle;I)V
.end method

.method public static final native torrent_handle_resume(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_save_info_dict_get()J
.end method

.method public static final native torrent_handle_save_resume_data__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/resume_data_flags_t;)V
.end method

.method public static final native torrent_handle_save_resume_data__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_scrape_tracker__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;I)V
.end method

.method public static final native torrent_handle_scrape_tracker__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_scrape_tracker__SWIG_2(JLorg/libtorrent4j/swig/torrent_handle;Ljava/lang/String;)V
.end method

.method public static final native torrent_handle_set_download_limit(JLorg/libtorrent4j/swig/torrent_handle;I)V
.end method

.method public static final native torrent_handle_set_flags__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/torrent_flags_t;JLorg/libtorrent4j/swig/torrent_flags_t;)V
.end method

.method public static final native torrent_handle_set_flags__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/torrent_flags_t;)V
.end method

.method public static final native torrent_handle_set_max_connections(JLorg/libtorrent4j/swig/torrent_handle;I)V
.end method

.method public static final native torrent_handle_set_max_uploads(JLorg/libtorrent4j/swig/torrent_handle;I)V
.end method

.method public static final native torrent_handle_set_piece_deadline__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;IIJLorg/libtorrent4j/swig/deadline_flags_t;)V
.end method

.method public static final native torrent_handle_set_piece_deadline__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;II)V
.end method

.method public static final native torrent_handle_set_sequential_range__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;II)V
.end method

.method public static final native torrent_handle_set_sequential_range__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;I)V
.end method

.method public static final native torrent_handle_set_ssl_certificate__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static final native torrent_handle_set_ssl_certificate__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static final native torrent_handle_set_ssl_certificate_buffer_ex(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/byte_vector;JLorg/libtorrent4j/swig/byte_vector;)V
.end method

.method public static final native torrent_handle_set_upload_limit(JLorg/libtorrent4j/swig/torrent_handle;I)V
.end method

.method public static final native torrent_handle_status__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/status_flags_t;)J
.end method

.method public static final native torrent_handle_status__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle;)J
.end method

.method public static final native torrent_handle_torrent_file_ptr(JLorg/libtorrent4j/swig/torrent_handle;)J
.end method

.method public static final native torrent_handle_trackers(JLorg/libtorrent4j/swig/torrent_handle;)J
.end method

.method public static final native torrent_handle_unset_flags(JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/torrent_flags_t;)V
.end method

.method public static final native torrent_handle_upload_limit(JLorg/libtorrent4j/swig/torrent_handle;)I
.end method

.method public static final native torrent_handle_userdata(JLorg/libtorrent4j/swig/torrent_handle;)J
.end method

.method public static final native torrent_handle_vector_clear(JLorg/libtorrent4j/swig/torrent_handle_vector;)V
.end method

.method public static final native torrent_handle_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/torrent_handle_vector;JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/torrent_handle_vector;IJLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_handle_vector_doCapacity(JLorg/libtorrent4j/swig/torrent_handle_vector;)I
.end method

.method public static final native torrent_handle_vector_doGet(JLorg/libtorrent4j/swig/torrent_handle_vector;I)J
.end method

.method public static final native torrent_handle_vector_doRemove(JLorg/libtorrent4j/swig/torrent_handle_vector;I)J
.end method

.method public static final native torrent_handle_vector_doRemoveRange(JLorg/libtorrent4j/swig/torrent_handle_vector;II)V
.end method

.method public static final native torrent_handle_vector_doReserve(JLorg/libtorrent4j/swig/torrent_handle_vector;I)V
.end method

.method public static final native torrent_handle_vector_doSet(JLorg/libtorrent4j/swig/torrent_handle_vector;IJLorg/libtorrent4j/swig/torrent_handle;)J
.end method

.method public static final native torrent_handle_vector_doSize(JLorg/libtorrent4j/swig/torrent_handle_vector;)I
.end method

.method public static final native torrent_handle_vector_isEmpty(JLorg/libtorrent4j/swig/torrent_handle_vector;)Z
.end method

.method public static final native torrent_info_blocks_per_piece(JLorg/libtorrent4j/swig/torrent_info;)I
.end method

.method public static final native torrent_info_collections(JLorg/libtorrent4j/swig/torrent_info;)J
.end method

.method public static final native torrent_info_create_torrent_info__SWIG_0(JLorg/libtorrent4j/swig/bdecode_node;JLorg/libtorrent4j/swig/error_code;JLorg/libtorrent4j/swig/load_torrent_limits;)J
.end method

.method public static final native torrent_info_create_torrent_info__SWIG_1(JLorg/libtorrent4j/swig/bdecode_node;JLorg/libtorrent4j/swig/error_code;)J
.end method

.method public static final native torrent_info_end_piece(JLorg/libtorrent4j/swig/torrent_info;)I
.end method

.method public static final native torrent_info_files_impl(JLorg/libtorrent4j/swig/torrent_info;)J
.end method

.method public static final native torrent_info_get_info_section(JLorg/libtorrent4j/swig/torrent_info;)J
.end method

.method public static final native torrent_info_hash_for_piece(JLorg/libtorrent4j/swig/torrent_info;I)J
.end method

.method public static final native torrent_info_info(JLorg/libtorrent4j/swig/torrent_info;Ljava/lang/String;)J
.end method

.method public static final native torrent_info_info_hash(JLorg/libtorrent4j/swig/torrent_info;)J
.end method

.method public static final native torrent_info_info_hashes(JLorg/libtorrent4j/swig/torrent_info;)J
.end method

.method public static final native torrent_info_internal_set_collections(JLorg/libtorrent4j/swig/torrent_info;JLorg/libtorrent4j/swig/string_vector;)V
.end method

.method public static final native torrent_info_internal_set_similar(JLorg/libtorrent4j/swig/torrent_info;JLorg/libtorrent4j/swig/sha1_hash_vector;)V
.end method

.method public static final native torrent_info_is_i2p(JLorg/libtorrent4j/swig/torrent_info;)Z
.end method

.method public static final native torrent_info_is_loaded(JLorg/libtorrent4j/swig/torrent_info;)Z
.end method

.method public static final native torrent_info_is_valid(JLorg/libtorrent4j/swig/torrent_info;)Z
.end method

.method public static final native torrent_info_last_piece(JLorg/libtorrent4j/swig/torrent_info;)I
.end method

.method public static final native torrent_info_layout(JLorg/libtorrent4j/swig/torrent_info;)J
.end method

.method public static final native torrent_info_map_block(JLorg/libtorrent4j/swig/torrent_info;IJI)J
.end method

.method public static final native torrent_info_map_file(JLorg/libtorrent4j/swig/torrent_info;IJI)J
.end method

.method public static final native torrent_info_name(JLorg/libtorrent4j/swig/torrent_info;)Ljava/lang/String;
.end method

.method public static final native torrent_info_num_files(JLorg/libtorrent4j/swig/torrent_info;)I
.end method

.method public static final native torrent_info_num_pieces(JLorg/libtorrent4j/swig/torrent_info;)I
.end method

.method public static final native torrent_info_piece_length(JLorg/libtorrent4j/swig/torrent_info;)I
.end method

.method public static final native torrent_info_piece_size(JLorg/libtorrent4j/swig/torrent_info;I)I
.end method

.method public static final native torrent_info_priv(JLorg/libtorrent4j/swig/torrent_info;)Z
.end method

.method public static final native torrent_info_similar_torrents(JLorg/libtorrent4j/swig/torrent_info;)J
.end method

.method public static final native torrent_info_size_on_disk(JLorg/libtorrent4j/swig/torrent_info;)J
.end method

.method public static final native torrent_info_total_size(JLorg/libtorrent4j/swig/torrent_info;)J
.end method

.method public static final native torrent_info_v1(JLorg/libtorrent4j/swig/torrent_info;)Z
.end method

.method public static final native torrent_info_v2(JLorg/libtorrent4j/swig/torrent_info;)Z
.end method

.method public static final native torrent_log_alert_SWIGUpcast(J)J
.end method

.method public static final native torrent_log_alert_alert_type_get()I
.end method

.method public static final native torrent_log_alert_category(JLorg/libtorrent4j/swig/torrent_log_alert;)J
.end method

.method public static final native torrent_log_alert_log_message(JLorg/libtorrent4j/swig/torrent_log_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_log_alert_message(JLorg/libtorrent4j/swig/torrent_log_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_log_alert_priority_get()I
.end method

.method public static final native torrent_log_alert_static_category_get()J
.end method

.method public static final native torrent_log_alert_type(JLorg/libtorrent4j/swig/torrent_log_alert;)I
.end method

.method public static final native torrent_log_alert_what(JLorg/libtorrent4j/swig/torrent_log_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_log_get()J
.end method

.method public static final native torrent_need_cert_alert_SWIGUpcast(J)J
.end method

.method public static final native torrent_need_cert_alert_alert_type_get()I
.end method

.method public static final native torrent_need_cert_alert_category(JLorg/libtorrent4j/swig/torrent_need_cert_alert;)J
.end method

.method public static final native torrent_need_cert_alert_message(JLorg/libtorrent4j/swig/torrent_need_cert_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_need_cert_alert_priority_get()I
.end method

.method public static final native torrent_need_cert_alert_static_category_get()J
.end method

.method public static final native torrent_need_cert_alert_type(JLorg/libtorrent4j/swig/torrent_need_cert_alert;)I
.end method

.method public static final native torrent_need_cert_alert_what(JLorg/libtorrent4j/swig/torrent_need_cert_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_paused_alert_SWIGUpcast(J)J
.end method

.method public static final native torrent_paused_alert_alert_type_get()I
.end method

.method public static final native torrent_paused_alert_category(JLorg/libtorrent4j/swig/torrent_paused_alert;)J
.end method

.method public static final native torrent_paused_alert_message(JLorg/libtorrent4j/swig/torrent_paused_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_paused_alert_priority_get()I
.end method

.method public static final native torrent_paused_alert_static_category_get()J
.end method

.method public static final native torrent_paused_alert_type(JLorg/libtorrent4j/swig/torrent_paused_alert;)I
.end method

.method public static final native torrent_paused_alert_what(JLorg/libtorrent4j/swig/torrent_paused_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_removed_alert_SWIGUpcast(J)J
.end method

.method public static final native torrent_removed_alert_alert_type_get()I
.end method

.method public static final native torrent_removed_alert_category(JLorg/libtorrent4j/swig/torrent_removed_alert;)J
.end method

.method public static final native torrent_removed_alert_info_hashes_get(JLorg/libtorrent4j/swig/torrent_removed_alert;)J
.end method

.method public static final native torrent_removed_alert_info_hashes_set(JLorg/libtorrent4j/swig/torrent_removed_alert;JLorg/libtorrent4j/swig/info_hash_t;)V
.end method

.method public static final native torrent_removed_alert_message(JLorg/libtorrent4j/swig/torrent_removed_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_removed_alert_priority_get()I
.end method

.method public static final native torrent_removed_alert_static_category_get()J
.end method

.method public static final native torrent_removed_alert_type(JLorg/libtorrent4j/swig/torrent_removed_alert;)I
.end method

.method public static final native torrent_removed_alert_userdata_get(JLorg/libtorrent4j/swig/torrent_removed_alert;)J
.end method

.method public static final native torrent_removed_alert_userdata_set(JLorg/libtorrent4j/swig/torrent_removed_alert;JLorg/libtorrent4j/swig/client_data_t;)V
.end method

.method public static final native torrent_removed_alert_what(JLorg/libtorrent4j/swig/torrent_removed_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_resumed_alert_SWIGUpcast(J)J
.end method

.method public static final native torrent_resumed_alert_alert_type_get()I
.end method

.method public static final native torrent_resumed_alert_category(JLorg/libtorrent4j/swig/torrent_resumed_alert;)J
.end method

.method public static final native torrent_resumed_alert_message(JLorg/libtorrent4j/swig/torrent_resumed_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_resumed_alert_priority_get()I
.end method

.method public static final native torrent_resumed_alert_static_category_get()J
.end method

.method public static final native torrent_resumed_alert_type(JLorg/libtorrent4j/swig/torrent_resumed_alert;)I
.end method

.method public static final native torrent_resumed_alert_what(JLorg/libtorrent4j/swig/torrent_resumed_alert;)Ljava/lang/String;
.end method

.method public static final native torrent_status_added_time_get(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_added_time_set(JLorg/libtorrent4j/swig/torrent_status;J)V
.end method

.method public static final native torrent_status_all_time_download_get(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_all_time_download_set(JLorg/libtorrent4j/swig/torrent_status;J)V
.end method

.method public static final native torrent_status_all_time_upload_get(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_all_time_upload_set(JLorg/libtorrent4j/swig/torrent_status;J)V
.end method

.method public static final native torrent_status_announcing_to_dht_get(JLorg/libtorrent4j/swig/torrent_status;)Z
.end method

.method public static final native torrent_status_announcing_to_dht_set(JLorg/libtorrent4j/swig/torrent_status;Z)V
.end method

.method public static final native torrent_status_announcing_to_lsd_get(JLorg/libtorrent4j/swig/torrent_status;)Z
.end method

.method public static final native torrent_status_announcing_to_lsd_set(JLorg/libtorrent4j/swig/torrent_status;Z)V
.end method

.method public static final native torrent_status_announcing_to_trackers_get(JLorg/libtorrent4j/swig/torrent_status;)Z
.end method

.method public static final native torrent_status_announcing_to_trackers_set(JLorg/libtorrent4j/swig/torrent_status;Z)V
.end method

.method public static final native torrent_status_block_size_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_block_size_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_checking_files_get()I
.end method

.method public static final native torrent_status_checking_resume_data_get()I
.end method

.method public static final native torrent_status_completed_time_get(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_completed_time_set(JLorg/libtorrent4j/swig/torrent_status;J)V
.end method

.method public static final native torrent_status_connect_candidates_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_connect_candidates_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_connections_limit_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_connections_limit_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_current_tracker_get(JLorg/libtorrent4j/swig/torrent_status;)Ljava/lang/String;
.end method

.method public static final native torrent_status_current_tracker_set(JLorg/libtorrent4j/swig/torrent_status;Ljava/lang/String;)V
.end method

.method public static final native torrent_status_distributed_copies_get(JLorg/libtorrent4j/swig/torrent_status;)F
.end method

.method public static final native torrent_status_distributed_copies_set(JLorg/libtorrent4j/swig/torrent_status;F)V
.end method

.method public static final native torrent_status_distributed_fraction_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_distributed_fraction_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_distributed_full_copies_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_distributed_full_copies_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_down_bandwidth_queue_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_down_bandwidth_queue_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_download_payload_rate_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_download_payload_rate_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_download_rate_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_download_rate_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_downloading_get()I
.end method

.method public static final native torrent_status_downloading_metadata_get()I
.end method

.method public static final native torrent_status_eq(JLorg/libtorrent4j/swig/torrent_status;JLorg/libtorrent4j/swig/torrent_status;)Z
.end method

.method public static final native torrent_status_errc_get(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_errc_set(JLorg/libtorrent4j/swig/torrent_status;JLorg/libtorrent4j/swig/error_code;)V
.end method

.method public static final native torrent_status_error_file_exception_get()I
.end method

.method public static final native torrent_status_error_file_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_error_file_metadata_get()I
.end method

.method public static final native torrent_status_error_file_none_get()I
.end method

.method public static final native torrent_status_error_file_partfile_get()I
.end method

.method public static final native torrent_status_error_file_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_error_file_ssl_ctx_get()I
.end method

.method public static final native torrent_status_finished_get()I
.end method

.method public static final native torrent_status_flags_get(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_flags_set(JLorg/libtorrent4j/swig/torrent_status;JLorg/libtorrent4j/swig/torrent_flags_t;)V
.end method

.method public static final native torrent_status_get_active_duration(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_get_finished_duration(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_get_last_download(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_get_last_upload(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_get_next_announce(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_get_pieces(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_get_queue_position(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_get_seeding_duration(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_get_verified_pieces(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_handle_get(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_handle_set(JLorg/libtorrent4j/swig/torrent_status;JLorg/libtorrent4j/swig/torrent_handle;)V
.end method

.method public static final native torrent_status_has_incoming_get(JLorg/libtorrent4j/swig/torrent_status;)Z
.end method

.method public static final native torrent_status_has_incoming_set(JLorg/libtorrent4j/swig/torrent_status;Z)V
.end method

.method public static final native torrent_status_has_metadata_get(JLorg/libtorrent4j/swig/torrent_status;)Z
.end method

.method public static final native torrent_status_has_metadata_set(JLorg/libtorrent4j/swig/torrent_status;Z)V
.end method

.method public static final native torrent_status_info_hashes_get(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_info_hashes_set(JLorg/libtorrent4j/swig/torrent_status;JLorg/libtorrent4j/swig/info_hash_t;)V
.end method

.method public static final native torrent_status_is_finished_get(JLorg/libtorrent4j/swig/torrent_status;)Z
.end method

.method public static final native torrent_status_is_finished_set(JLorg/libtorrent4j/swig/torrent_status;Z)V
.end method

.method public static final native torrent_status_is_seeding_get(JLorg/libtorrent4j/swig/torrent_status;)Z
.end method

.method public static final native torrent_status_is_seeding_set(JLorg/libtorrent4j/swig/torrent_status;Z)V
.end method

.method public static final native torrent_status_last_seen_complete_get(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_last_seen_complete_set(JLorg/libtorrent4j/swig/torrent_status;J)V
.end method

.method public static final native torrent_status_list_peers_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_list_peers_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_list_seeds_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_list_seeds_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_moving_storage_get(JLorg/libtorrent4j/swig/torrent_status;)Z
.end method

.method public static final native torrent_status_moving_storage_set(JLorg/libtorrent4j/swig/torrent_status;Z)V
.end method

.method public static final native torrent_status_name_get(JLorg/libtorrent4j/swig/torrent_status;)Ljava/lang/String;
.end method

.method public static final native torrent_status_name_set(JLorg/libtorrent4j/swig/torrent_status;Ljava/lang/String;)V
.end method

.method public static final native torrent_status_need_save_resume_data_get(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_need_save_resume_data_set(JLorg/libtorrent4j/swig/torrent_status;JLorg/libtorrent4j/swig/resume_data_flags_t;)V
.end method

.method public static final native torrent_status_num_complete_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_num_complete_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_num_connections_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_num_connections_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_num_incomplete_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_num_incomplete_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_num_peers_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_num_peers_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_num_pieces_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_num_pieces_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_num_seeds_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_num_seeds_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_num_uploads_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_num_uploads_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_progress_get(JLorg/libtorrent4j/swig/torrent_status;)F
.end method

.method public static final native torrent_status_progress_ppm_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_progress_ppm_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_progress_set(JLorg/libtorrent4j/swig/torrent_status;F)V
.end method

.method public static final native torrent_status_save_path_get(JLorg/libtorrent4j/swig/torrent_status;)Ljava/lang/String;
.end method

.method public static final native torrent_status_save_path_set(JLorg/libtorrent4j/swig/torrent_status;Ljava/lang/String;)V
.end method

.method public static final native torrent_status_seed_rank_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_seed_rank_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_seeding_get()I
.end method

.method public static final native torrent_status_state_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_state_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_storage_mode_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_storage_mode_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_torrent_file_ptr(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_total_done_get(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_total_done_set(JLorg/libtorrent4j/swig/torrent_status;J)V
.end method

.method public static final native torrent_status_total_download_get(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_total_download_set(JLorg/libtorrent4j/swig/torrent_status;J)V
.end method

.method public static final native torrent_status_total_failed_bytes_get(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_total_failed_bytes_set(JLorg/libtorrent4j/swig/torrent_status;J)V
.end method

.method public static final native torrent_status_total_get(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_total_payload_download_get(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_total_payload_download_set(JLorg/libtorrent4j/swig/torrent_status;J)V
.end method

.method public static final native torrent_status_total_payload_upload_get(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_total_payload_upload_set(JLorg/libtorrent4j/swig/torrent_status;J)V
.end method

.method public static final native torrent_status_total_redundant_bytes_get(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_total_redundant_bytes_set(JLorg/libtorrent4j/swig/torrent_status;J)V
.end method

.method public static final native torrent_status_total_set(JLorg/libtorrent4j/swig/torrent_status;J)V
.end method

.method public static final native torrent_status_total_upload_get(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_total_upload_set(JLorg/libtorrent4j/swig/torrent_status;J)V
.end method

.method public static final native torrent_status_total_wanted_done_get(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_total_wanted_done_set(JLorg/libtorrent4j/swig/torrent_status;J)V
.end method

.method public static final native torrent_status_total_wanted_get(JLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_total_wanted_set(JLorg/libtorrent4j/swig/torrent_status;J)V
.end method

.method public static final native torrent_status_up_bandwidth_queue_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_up_bandwidth_queue_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_upload_payload_rate_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_upload_payload_rate_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_upload_rate_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_upload_rate_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_uploads_limit_get(JLorg/libtorrent4j/swig/torrent_status;)I
.end method

.method public static final native torrent_status_uploads_limit_set(JLorg/libtorrent4j/swig/torrent_status;I)V
.end method

.method public static final native torrent_status_vector_clear(JLorg/libtorrent4j/swig/torrent_status_vector;)V
.end method

.method public static final native torrent_status_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/torrent_status_vector;JLorg/libtorrent4j/swig/torrent_status;)V
.end method

.method public static final native torrent_status_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/torrent_status_vector;IJLorg/libtorrent4j/swig/torrent_status;)V
.end method

.method public static final native torrent_status_vector_doCapacity(JLorg/libtorrent4j/swig/torrent_status_vector;)I
.end method

.method public static final native torrent_status_vector_doGet(JLorg/libtorrent4j/swig/torrent_status_vector;I)J
.end method

.method public static final native torrent_status_vector_doRemove(JLorg/libtorrent4j/swig/torrent_status_vector;I)J
.end method

.method public static final native torrent_status_vector_doRemoveRange(JLorg/libtorrent4j/swig/torrent_status_vector;II)V
.end method

.method public static final native torrent_status_vector_doReserve(JLorg/libtorrent4j/swig/torrent_status_vector;I)V
.end method

.method public static final native torrent_status_vector_doSet(JLorg/libtorrent4j/swig/torrent_status_vector;IJLorg/libtorrent4j/swig/torrent_status;)J
.end method

.method public static final native torrent_status_vector_doSize(JLorg/libtorrent4j/swig/torrent_status_vector;)I
.end method

.method public static final native torrent_status_vector_isEmpty(JLorg/libtorrent4j/swig/torrent_status_vector;)Z
.end method

.method public static final native torrent_unknown_version_get()I
.end method

.method public static final native tracker_alert_SWIGUpcast(J)J
.end method

.method public static final native tracker_alert_get_local_endpoint(JLorg/libtorrent4j/swig/tracker_alert;)J
.end method

.method public static final native tracker_alert_message(JLorg/libtorrent4j/swig/tracker_alert;)Ljava/lang/String;
.end method

.method public static final native tracker_alert_tracker_url(JLorg/libtorrent4j/swig/tracker_alert;)Ljava/lang/String;
.end method

.method public static final native tracker_alert_version_get(JLorg/libtorrent4j/swig/tracker_alert;)I
.end method

.method public static final native tracker_alert_version_set(JLorg/libtorrent4j/swig/tracker_alert;I)V
.end method

.method public static final native tracker_announce_alert_SWIGUpcast(J)J
.end method

.method public static final native tracker_announce_alert_alert_type_get()I
.end method

.method public static final native tracker_announce_alert_category(JLorg/libtorrent4j/swig/tracker_announce_alert;)J
.end method

.method public static final native tracker_announce_alert_event_get(JLorg/libtorrent4j/swig/tracker_announce_alert;)I
.end method

.method public static final native tracker_announce_alert_message(JLorg/libtorrent4j/swig/tracker_announce_alert;)Ljava/lang/String;
.end method

.method public static final native tracker_announce_alert_priority_get()I
.end method

.method public static final native tracker_announce_alert_static_category_get()J
.end method

.method public static final native tracker_announce_alert_type(JLorg/libtorrent4j/swig/tracker_announce_alert;)I
.end method

.method public static final native tracker_announce_alert_what(JLorg/libtorrent4j/swig/tracker_announce_alert;)Ljava/lang/String;
.end method

.method public static final native tracker_error_alert_SWIGUpcast(J)J
.end method

.method public static final native tracker_error_alert_alert_type_get()I
.end method

.method public static final native tracker_error_alert_category(JLorg/libtorrent4j/swig/tracker_error_alert;)J
.end method

.method public static final native tracker_error_alert_error_get(JLorg/libtorrent4j/swig/tracker_error_alert;)J
.end method

.method public static final native tracker_error_alert_error_message(JLorg/libtorrent4j/swig/tracker_error_alert;)Ljava/lang/String;
.end method

.method public static final native tracker_error_alert_failure_reason(JLorg/libtorrent4j/swig/tracker_error_alert;)Ljava/lang/String;
.end method

.method public static final native tracker_error_alert_message(JLorg/libtorrent4j/swig/tracker_error_alert;)Ljava/lang/String;
.end method

.method public static final native tracker_error_alert_op_get(JLorg/libtorrent4j/swig/tracker_error_alert;)I
.end method

.method public static final native tracker_error_alert_op_set(JLorg/libtorrent4j/swig/tracker_error_alert;I)V
.end method

.method public static final native tracker_error_alert_priority_get()I
.end method

.method public static final native tracker_error_alert_static_category_get()J
.end method

.method public static final native tracker_error_alert_times_in_row_get(JLorg/libtorrent4j/swig/tracker_error_alert;)I
.end method

.method public static final native tracker_error_alert_type(JLorg/libtorrent4j/swig/tracker_error_alert;)I
.end method

.method public static final native tracker_error_alert_what(JLorg/libtorrent4j/swig/tracker_error_alert;)Ljava/lang/String;
.end method

.method public static final native tracker_get()J
.end method

.method public static final native tracker_list_alert_SWIGUpcast(J)J
.end method

.method public static final native tracker_list_alert_alert_type_get()I
.end method

.method public static final native tracker_list_alert_category(JLorg/libtorrent4j/swig/tracker_list_alert;)J
.end method

.method public static final native tracker_list_alert_message(JLorg/libtorrent4j/swig/tracker_list_alert;)Ljava/lang/String;
.end method

.method public static final native tracker_list_alert_priority_get()I
.end method

.method public static final native tracker_list_alert_static_category_get()J
.end method

.method public static final native tracker_list_alert_trackers_get(JLorg/libtorrent4j/swig/tracker_list_alert;)J
.end method

.method public static final native tracker_list_alert_trackers_set(JLorg/libtorrent4j/swig/tracker_list_alert;JLorg/libtorrent4j/swig/announce_entry_vector;)V
.end method

.method public static final native tracker_list_alert_type(JLorg/libtorrent4j/swig/tracker_list_alert;)I
.end method

.method public static final native tracker_list_alert_what(JLorg/libtorrent4j/swig/tracker_list_alert;)Ljava/lang/String;
.end method

.method public static final native tracker_reply_alert_SWIGUpcast(J)J
.end method

.method public static final native tracker_reply_alert_alert_type_get()I
.end method

.method public static final native tracker_reply_alert_category(JLorg/libtorrent4j/swig/tracker_reply_alert;)J
.end method

.method public static final native tracker_reply_alert_message(JLorg/libtorrent4j/swig/tracker_reply_alert;)Ljava/lang/String;
.end method

.method public static final native tracker_reply_alert_num_peers_get(JLorg/libtorrent4j/swig/tracker_reply_alert;)I
.end method

.method public static final native tracker_reply_alert_priority_get()I
.end method

.method public static final native tracker_reply_alert_static_category_get()J
.end method

.method public static final native tracker_reply_alert_type(JLorg/libtorrent4j/swig/tracker_reply_alert;)I
.end method

.method public static final native tracker_reply_alert_what(JLorg/libtorrent4j/swig/tracker_reply_alert;)Ljava/lang/String;
.end method

.method public static final native tracker_warning_alert_SWIGUpcast(J)J
.end method

.method public static final native tracker_warning_alert_alert_type_get()I
.end method

.method public static final native tracker_warning_alert_category(JLorg/libtorrent4j/swig/tracker_warning_alert;)J
.end method

.method public static final native tracker_warning_alert_message(JLorg/libtorrent4j/swig/tracker_warning_alert;)Ljava/lang/String;
.end method

.method public static final native tracker_warning_alert_priority_get()I
.end method

.method public static final native tracker_warning_alert_static_category_get()J
.end method

.method public static final native tracker_warning_alert_type(JLorg/libtorrent4j/swig/tracker_warning_alert;)I
.end method

.method public static final native tracker_warning_alert_warning_message(JLorg/libtorrent4j/swig/tracker_warning_alert;)Ljava/lang/String;
.end method

.method public static final native tracker_warning_alert_what(JLorg/libtorrent4j/swig/tracker_warning_alert;)Ljava/lang/String;
.end method

.method public static final native trackerid_alert_SWIGUpcast(J)J
.end method

.method public static final native trackerid_alert_alert_type_get()I
.end method

.method public static final native trackerid_alert_category(JLorg/libtorrent4j/swig/trackerid_alert;)J
.end method

.method public static final native trackerid_alert_message(JLorg/libtorrent4j/swig/trackerid_alert;)Ljava/lang/String;
.end method

.method public static final native trackerid_alert_priority_get()I
.end method

.method public static final native trackerid_alert_static_category_get()J
.end method

.method public static final native trackerid_alert_tracker_id(JLorg/libtorrent4j/swig/trackerid_alert;)Ljava/lang/String;
.end method

.method public static final native trackerid_alert_type(JLorg/libtorrent4j/swig/trackerid_alert;)I
.end method

.method public static final native trackerid_alert_what(JLorg/libtorrent4j/swig/trackerid_alert;)Ljava/lang/String;
.end method

.method public static final native udp_endpoint_address(JLorg/libtorrent4j/swig/udp_endpoint;)J
.end method

.method public static final native udp_endpoint_port(JLorg/libtorrent4j/swig/udp_endpoint;)I
.end method

.method public static final native udp_endpoint_vector_clear(JLorg/libtorrent4j/swig/udp_endpoint_vector;)V
.end method

.method public static final native udp_endpoint_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/udp_endpoint_vector;JLorg/libtorrent4j/swig/udp_endpoint;)V
.end method

.method public static final native udp_endpoint_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/udp_endpoint_vector;IJLorg/libtorrent4j/swig/udp_endpoint;)V
.end method

.method public static final native udp_endpoint_vector_doCapacity(JLorg/libtorrent4j/swig/udp_endpoint_vector;)I
.end method

.method public static final native udp_endpoint_vector_doGet(JLorg/libtorrent4j/swig/udp_endpoint_vector;I)J
.end method

.method public static final native udp_endpoint_vector_doRemove(JLorg/libtorrent4j/swig/udp_endpoint_vector;I)J
.end method

.method public static final native udp_endpoint_vector_doRemoveRange(JLorg/libtorrent4j/swig/udp_endpoint_vector;II)V
.end method

.method public static final native udp_endpoint_vector_doReserve(JLorg/libtorrent4j/swig/udp_endpoint_vector;I)V
.end method

.method public static final native udp_endpoint_vector_doSet(JLorg/libtorrent4j/swig/udp_endpoint_vector;IJLorg/libtorrent4j/swig/udp_endpoint;)J
.end method

.method public static final native udp_endpoint_vector_doSize(JLorg/libtorrent4j/swig/udp_endpoint_vector;)I
.end method

.method public static final native udp_endpoint_vector_isEmpty(JLorg/libtorrent4j/swig/udp_endpoint_vector;)Z
.end method

.method public static final native udp_error_alert_SWIGUpcast(J)J
.end method

.method public static final native udp_error_alert_alert_type_get()I
.end method

.method public static final native udp_error_alert_category(JLorg/libtorrent4j/swig/udp_error_alert;)J
.end method

.method public static final native udp_error_alert_error_get(JLorg/libtorrent4j/swig/udp_error_alert;)J
.end method

.method public static final native udp_error_alert_get_endpoint(JLorg/libtorrent4j/swig/udp_error_alert;)J
.end method

.method public static final native udp_error_alert_message(JLorg/libtorrent4j/swig/udp_error_alert;)Ljava/lang/String;
.end method

.method public static final native udp_error_alert_operation_get(JLorg/libtorrent4j/swig/udp_error_alert;)I
.end method

.method public static final native udp_error_alert_operation_set(JLorg/libtorrent4j/swig/udp_error_alert;I)V
.end method

.method public static final native udp_error_alert_priority_get()I
.end method

.method public static final native udp_error_alert_static_category_get()J
.end method

.method public static final native udp_error_alert_type(JLorg/libtorrent4j/swig/udp_error_alert;)I
.end method

.method public static final native udp_error_alert_what(JLorg/libtorrent4j/swig/udp_error_alert;)Ljava/lang/String;
.end method

.method public static final native unauthorized_get()I
.end method

.method public static final native unwanted_block_alert_SWIGUpcast(J)J
.end method

.method public static final native unwanted_block_alert_alert_type_get()I
.end method

.method public static final native unwanted_block_alert_block_index_get(JLorg/libtorrent4j/swig/unwanted_block_alert;)I
.end method

.method public static final native unwanted_block_alert_category(JLorg/libtorrent4j/swig/unwanted_block_alert;)J
.end method

.method public static final native unwanted_block_alert_message(JLorg/libtorrent4j/swig/unwanted_block_alert;)Ljava/lang/String;
.end method

.method public static final native unwanted_block_alert_piece_index_get(JLorg/libtorrent4j/swig/unwanted_block_alert;)I
.end method

.method public static final native unwanted_block_alert_priority_get()I
.end method

.method public static final native unwanted_block_alert_static_category_get()J
.end method

.method public static final native unwanted_block_alert_type(JLorg/libtorrent4j/swig/unwanted_block_alert;)I
.end method

.method public static final native unwanted_block_alert_what(JLorg/libtorrent4j/swig/unwanted_block_alert;)Ljava/lang/String;
.end method

.method public static final native update_subscribe_get()J
.end method

.method public static final native upload_get()J
.end method

.method public static final native upload_mode_get()J
.end method

.method public static final native url_seed_alert_SWIGUpcast(J)J
.end method

.method public static final native url_seed_alert_alert_type_get()I
.end method

.method public static final native url_seed_alert_category(JLorg/libtorrent4j/swig/url_seed_alert;)J
.end method

.method public static final native url_seed_alert_error_get(JLorg/libtorrent4j/swig/url_seed_alert;)J
.end method

.method public static final native url_seed_alert_error_message(JLorg/libtorrent4j/swig/url_seed_alert;)Ljava/lang/String;
.end method

.method public static final native url_seed_alert_message(JLorg/libtorrent4j/swig/url_seed_alert;)Ljava/lang/String;
.end method

.method public static final native url_seed_alert_priority_get()I
.end method

.method public static final native url_seed_alert_server_url(JLorg/libtorrent4j/swig/url_seed_alert;)Ljava/lang/String;
.end method

.method public static final native url_seed_alert_static_category_get()J
.end method

.method public static final native url_seed_alert_type(JLorg/libtorrent4j/swig/url_seed_alert;)I
.end method

.method public static final native url_seed_alert_what(JLorg/libtorrent4j/swig/url_seed_alert;)Ljava/lang/String;
.end method

.method public static final native user_alert_id_get()I
.end method

.method public static final native version()Ljava/lang/String;
.end method

.method public static final native web_seed_entry_auth_get(JLorg/libtorrent4j/swig/web_seed_entry;)Ljava/lang/String;
.end method

.method public static final native web_seed_entry_auth_set(JLorg/libtorrent4j/swig/web_seed_entry;Ljava/lang/String;)V
.end method

.method public static final native web_seed_entry_eq(JLorg/libtorrent4j/swig/web_seed_entry;JLorg/libtorrent4j/swig/web_seed_entry;)Z
.end method

.method public static final native web_seed_entry_extra_headers_get(JLorg/libtorrent4j/swig/web_seed_entry;)J
.end method

.method public static final native web_seed_entry_extra_headers_set(JLorg/libtorrent4j/swig/web_seed_entry;JLorg/libtorrent4j/swig/string_string_pair_vector;)V
.end method

.method public static final native web_seed_entry_lt(JLorg/libtorrent4j/swig/web_seed_entry;JLorg/libtorrent4j/swig/web_seed_entry;)Z
.end method

.method public static final native web_seed_entry_url_get(JLorg/libtorrent4j/swig/web_seed_entry;)Ljava/lang/String;
.end method

.method public static final native web_seed_entry_url_set(JLorg/libtorrent4j/swig/web_seed_entry;Ljava/lang/String;)V
.end method

.method public static final native web_seed_entry_vector_clear(JLorg/libtorrent4j/swig/web_seed_entry_vector;)V
.end method

.method public static final native web_seed_entry_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/web_seed_entry_vector;JLorg/libtorrent4j/swig/web_seed_entry;)V
.end method

.method public static final native web_seed_entry_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/web_seed_entry_vector;IJLorg/libtorrent4j/swig/web_seed_entry;)V
.end method

.method public static final native web_seed_entry_vector_doCapacity(JLorg/libtorrent4j/swig/web_seed_entry_vector;)I
.end method

.method public static final native web_seed_entry_vector_doGet(JLorg/libtorrent4j/swig/web_seed_entry_vector;I)J
.end method

.method public static final native web_seed_entry_vector_doRemove(JLorg/libtorrent4j/swig/web_seed_entry_vector;I)J
.end method

.method public static final native web_seed_entry_vector_doRemoveRange(JLorg/libtorrent4j/swig/web_seed_entry_vector;II)V
.end method

.method public static final native web_seed_entry_vector_doReserve(JLorg/libtorrent4j/swig/web_seed_entry_vector;I)V
.end method

.method public static final native web_seed_entry_vector_doSet(JLorg/libtorrent4j/swig/web_seed_entry_vector;IJLorg/libtorrent4j/swig/web_seed_entry;)J
.end method

.method public static final native web_seed_entry_vector_doSize(JLorg/libtorrent4j/swig/web_seed_entry_vector;)I
.end method

.method public static final native web_seed_entry_vector_isEmpty(JLorg/libtorrent4j/swig/web_seed_entry_vector;)Z
.end method

.method public static final native write_resume_data(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native write_resume_data_buf_ex(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native write_torrent_file__SWIG_0(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native write_torrent_file__SWIG_1(JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/write_torrent_flags_t;)J
.end method

.method public static final native write_torrent_file_buf_ex(JLorg/libtorrent4j/swig/add_torrent_params;)J
.end method

.method public static final native write_torrent_flags_t_all()J
.end method

.method public static final native write_torrent_flags_t_and_(JLorg/libtorrent4j/swig/write_torrent_flags_t;JLorg/libtorrent4j/swig/write_torrent_flags_t;)J
.end method

.method public static final native write_torrent_flags_t_eq(JLorg/libtorrent4j/swig/write_torrent_flags_t;JLorg/libtorrent4j/swig/write_torrent_flags_t;)Z
.end method

.method public static final native write_torrent_flags_t_from_int(I)J
.end method

.method public static final native write_torrent_flags_t_inv(JLorg/libtorrent4j/swig/write_torrent_flags_t;)J
.end method

.method public static final native write_torrent_flags_t_ne(JLorg/libtorrent4j/swig/write_torrent_flags_t;JLorg/libtorrent4j/swig/write_torrent_flags_t;)Z
.end method

.method public static final native write_torrent_flags_t_non_zero(JLorg/libtorrent4j/swig/write_torrent_flags_t;)Z
.end method

.method public static final native write_torrent_flags_t_or_(JLorg/libtorrent4j/swig/write_torrent_flags_t;JLorg/libtorrent4j/swig/write_torrent_flags_t;)J
.end method

.method public static final native write_torrent_flags_t_to_int(JLorg/libtorrent4j/swig/write_torrent_flags_t;)I
.end method

.method public static final native write_torrent_flags_t_xor_(JLorg/libtorrent4j/swig/write_torrent_flags_t;JLorg/libtorrent4j/swig/write_torrent_flags_t;)J
.end method
