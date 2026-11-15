.class public Lorg/libtorrent4j/swig/session_handle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final delete_files:Lorg/libtorrent4j/swig/remove_flags_t;

.field public static final delete_partfile:Lorg/libtorrent4j/swig/remove_flags_t;

.field public static final paused:Lorg/libtorrent4j/swig/session_flags_t;

.field public static final reopen_map_ports:Lorg/libtorrent4j/swig/reopen_network_flags_t;

.field public static final save_dht_state:Lorg/libtorrent4j/swig/save_state_flags_t;

.field public static final save_extension_state:Lorg/libtorrent4j/swig/save_state_flags_t;

.field public static final save_ip_filter:Lorg/libtorrent4j/swig/save_state_flags_t;

.field public static final save_settings:Lorg/libtorrent4j/swig/save_state_flags_t;

.field public static final tcp:Lorg/libtorrent4j/swig/portmap_protocol;

.field public static final udp:Lorg/libtorrent4j/swig/portmap_protocol;


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/libtorrent4j/swig/save_state_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_save_settings_get()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/save_state_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/session_handle;->save_settings:Lorg/libtorrent4j/swig/save_state_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/save_state_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_save_dht_state_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/save_state_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/session_handle;->save_dht_state:Lorg/libtorrent4j/swig/save_state_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/save_state_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_save_extension_state_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/save_state_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/session_handle;->save_extension_state:Lorg/libtorrent4j/swig/save_state_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/save_state_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_save_ip_filter_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/save_state_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/session_handle;->save_ip_filter:Lorg/libtorrent4j/swig/save_state_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/remove_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_delete_files_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/remove_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/session_handle;->delete_files:Lorg/libtorrent4j/swig/remove_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/remove_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_delete_partfile_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/remove_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/session_handle;->delete_partfile:Lorg/libtorrent4j/swig/remove_flags_t;

    new-instance v0, Lorg/libtorrent4j/swig/session_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_paused_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/session_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/session_handle;->paused:Lorg/libtorrent4j/swig/session_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_udp_get()I

    move-result v0

    invoke-static {v0}, Lorg/libtorrent4j/swig/portmap_protocol;->swigToEnum(I)Lorg/libtorrent4j/swig/portmap_protocol;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/swig/session_handle;->udp:Lorg/libtorrent4j/swig/portmap_protocol;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_tcp_get()I

    move-result v0

    invoke-static {v0}, Lorg/libtorrent4j/swig/portmap_protocol;->swigToEnum(I)Lorg/libtorrent4j/swig/portmap_protocol;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/swig/session_handle;->tcp:Lorg/libtorrent4j/swig/portmap_protocol;

    new-instance v0, Lorg/libtorrent4j/swig/reopen_network_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_reopen_map_ports_get()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/reopen_network_flags_t;-><init>(JZ)V

    sput-object v0, Lorg/libtorrent4j/swig/session_handle;->reopen_map_ports:Lorg/libtorrent4j/swig/reopen_network_flags_t;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_session_handle__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/session_handle;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/session_handle;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/session_handle;)V
    .locals 2

    .line 5
    invoke-static {p1}, Lorg/libtorrent4j/swig/session_handle;->getCPtr(Lorg/libtorrent4j/swig/session_handle;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_session_handle__SWIG_1(JLorg/libtorrent4j/swig/session_handle;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/session_handle;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/session_handle;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/session_handle;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/session_handle;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->delete()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cannot release ownership as memory is not owned"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public add_dht_node(Lorg/libtorrent4j/swig/string_int_pair;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/string_int_pair;->getCPtr(Lorg/libtorrent4j/swig/string_int_pair;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_add_dht_node(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/string_int_pair;)V

    return-void
.end method

.method public add_port_mapping_ex(Lorg/libtorrent4j/swig/portmap_protocol;II)Lorg/libtorrent4j/swig/int_vector;
    .locals 7

    new-instance v0, Lorg/libtorrent4j/swig/int_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/portmap_protocol;->swigValue()I

    move-result v4

    move-object v3, p0

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_add_port_mapping_ex(JLorg/libtorrent4j/swig/session_handle;III)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lorg/libtorrent4j/swig/int_vector;-><init>(JZ)V

    return-object v0
.end method

.method public add_torrent(Lorg/libtorrent4j/swig/add_torrent_params;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/torrent_handle;
    .locals 10

    new-instance v0, Lorg/libtorrent4j/swig/torrent_handle;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/add_torrent_params;->getCPtr(Lorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v4

    invoke-static {p2}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v7

    move-object v3, p0

    move-object v6, p1

    move-object v9, p2

    invoke-static/range {v1 .. v9}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_add_torrent(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/add_torrent_params;JLorg/libtorrent4j/swig/error_code;)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lorg/libtorrent4j/swig/torrent_handle;-><init>(JZ)V

    return-object v0
.end method

.method public apply_settings(Lorg/libtorrent4j/swig/settings_pack;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/settings_pack;->getCPtr(Lorg/libtorrent4j/swig/settings_pack;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_apply_settings(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/settings_pack;)V

    return-void
.end method

.method public async_add_torrent(Lorg/libtorrent4j/swig/add_torrent_params;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/add_torrent_params;->getCPtr(Lorg/libtorrent4j/swig/add_torrent_params;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_async_add_torrent(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/add_torrent_params;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/session_handle;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/session_handle;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_session_handle(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public delete_port_mapping_ex(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_delete_port_mapping_ex(JLorg/libtorrent4j/swig/session_handle;I)V

    return-void
.end method

.method public dht_announce_ex(Lorg/libtorrent4j/swig/sha1_hash;)V
    .locals 6

    .line 3
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_dht_announce_ex__SWIG_2(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/sha1_hash;)V

    return-void
.end method

.method public dht_announce_ex(Lorg/libtorrent4j/swig/sha1_hash;I)V
    .locals 7

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_dht_announce_ex__SWIG_1(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/sha1_hash;I)V

    return-void
.end method

.method public dht_announce_ex(Lorg/libtorrent4j/swig/sha1_hash;IB)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_dht_announce_ex__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/sha1_hash;IB)V

    return-void
.end method

.method public dht_direct_request(Lorg/libtorrent4j/swig/udp_endpoint;Lorg/libtorrent4j/swig/entry;)V
    .locals 9

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/udp_endpoint;->getCPtr(Lorg/libtorrent4j/swig/udp_endpoint;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/libtorrent4j/swig/entry;->getCPtr(Lorg/libtorrent4j/swig/entry;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_dht_direct_request__SWIG_1(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/udp_endpoint;JLorg/libtorrent4j/swig/entry;)V

    return-void
.end method

.method public dht_direct_request(Lorg/libtorrent4j/swig/udp_endpoint;Lorg/libtorrent4j/swig/entry;J)V
    .locals 11

    .line 3
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/udp_endpoint;->getCPtr(Lorg/libtorrent4j/swig/udp_endpoint;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/libtorrent4j/swig/entry;->getCPtr(Lorg/libtorrent4j/swig/entry;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-wide v9, p3

    invoke-static/range {v0 .. v10}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_dht_direct_request__SWIG_2(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/udp_endpoint;JLorg/libtorrent4j/swig/entry;J)V

    return-void
.end method

.method public dht_direct_request(Lorg/libtorrent4j/swig/udp_endpoint;Lorg/libtorrent4j/swig/entry;Lorg/libtorrent4j/swig/client_data_t;)V
    .locals 12

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/udp_endpoint;->getCPtr(Lorg/libtorrent4j/swig/udp_endpoint;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/libtorrent4j/swig/entry;->getCPtr(Lorg/libtorrent4j/swig/entry;)J

    move-result-wide v6

    invoke-static {p3}, Lorg/libtorrent4j/swig/client_data_t;->getCPtr(Lorg/libtorrent4j/swig/client_data_t;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_dht_direct_request__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/udp_endpoint;JLorg/libtorrent4j/swig/entry;JLorg/libtorrent4j/swig/client_data_t;)V

    return-void
.end method

.method public dht_get_item(Lorg/libtorrent4j/swig/byte_array_32;Lorg/libtorrent4j/swig/byte_vector;)V
    .locals 9

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/byte_array_32;->getCPtr(Lorg/libtorrent4j/swig/byte_array_32;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_dht_get_item__SWIG_1(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/byte_array_32;JLorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public dht_get_item(Lorg/libtorrent4j/swig/sha1_hash;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_dht_get_item__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/sha1_hash;)V

    return-void
.end method

.method public dht_get_peers(Lorg/libtorrent4j/swig/sha1_hash;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_dht_get_peers(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/sha1_hash;)V

    return-void
.end method

.method public dht_live_nodes(Lorg/libtorrent4j/swig/sha1_hash;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_dht_live_nodes(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/sha1_hash;)V

    return-void
.end method

.method public dht_put_item(Lorg/libtorrent4j/swig/entry;)Lorg/libtorrent4j/swig/sha1_hash;
    .locals 7

    .line 1
    new-instance v0, Lorg/libtorrent4j/swig/sha1_hash;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/entry;->getCPtr(Lorg/libtorrent4j/swig/entry;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_dht_put_item__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/entry;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/sha1_hash;-><init>(JZ)V

    return-object v0
.end method

.method public dht_put_item(Lorg/libtorrent4j/swig/byte_array_32;Lorg/libtorrent4j/swig/byte_array_64;Lorg/libtorrent4j/swig/entry;Lorg/libtorrent4j/swig/byte_vector;)V
    .locals 15

    move-object v2, p0

    .line 2
    iget-wide v0, v2, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static/range {p1 .. p1}, Lorg/libtorrent4j/swig/byte_array_32;->getCPtr(Lorg/libtorrent4j/swig/byte_array_32;)J

    move-result-wide v3

    invoke-static/range {p2 .. p2}, Lorg/libtorrent4j/swig/byte_array_64;->getCPtr(Lorg/libtorrent4j/swig/byte_array_64;)J

    move-result-wide v6

    invoke-static/range {p3 .. p3}, Lorg/libtorrent4j/swig/entry;->getCPtr(Lorg/libtorrent4j/swig/entry;)J

    move-result-wide v9

    invoke-static/range {p4 .. p4}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v12

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    move-object/from16 v14, p4

    invoke-static/range {v0 .. v14}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_dht_put_item__SWIG_1(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/byte_array_32;JLorg/libtorrent4j/swig/byte_array_64;JLorg/libtorrent4j/swig/entry;JLorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public dht_sample_infohashes(Lorg/libtorrent4j/swig/udp_endpoint;Lorg/libtorrent4j/swig/sha1_hash;)V
    .locals 9

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/udp_endpoint;->getCPtr(Lorg/libtorrent4j/swig/udp_endpoint;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_dht_sample_infohashes(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/udp_endpoint;JLorg/libtorrent4j/swig/sha1_hash;)V

    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_handle;->delete()V

    return-void
.end method

.method public find_torrent(Lorg/libtorrent4j/swig/sha1_hash;)Lorg/libtorrent4j/swig/torrent_handle;
    .locals 7

    .line 1
    new-instance v0, Lorg/libtorrent4j/swig/torrent_handle;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_find_torrent__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/torrent_handle;-><init>(JZ)V

    return-object v0
.end method

.method public find_torrent(Lorg/libtorrent4j/swig/sha256_hash;)Lorg/libtorrent4j/swig/torrent_handle;
    .locals 7

    .line 2
    new-instance v0, Lorg/libtorrent4j/swig/torrent_handle;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha256_hash;->getCPtr(Lorg/libtorrent4j/swig/sha256_hash;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_find_torrent__SWIG_1(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/sha256_hash;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/torrent_handle;-><init>(JZ)V

    return-object v0
.end method

.method public get_ip_filter()Lorg/libtorrent4j/swig/ip_filter;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/ip_filter;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_get_ip_filter(JLorg/libtorrent4j/swig/session_handle;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/ip_filter;-><init>(JZ)V

    return-object v0
.end method

.method public get_peer_class_filter()Lorg/libtorrent4j/swig/ip_filter;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/ip_filter;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_get_peer_class_filter(JLorg/libtorrent4j/swig/session_handle;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/ip_filter;-><init>(JZ)V

    return-object v0
.end method

.method public get_peer_class_type_filter()Lorg/libtorrent4j/swig/peer_class_type_filter;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/peer_class_type_filter;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_get_peer_class_type_filter(JLorg/libtorrent4j/swig/session_handle;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/peer_class_type_filter;-><init>(JZ)V

    return-object v0
.end method

.method public get_settings()Lorg/libtorrent4j/swig/settings_pack;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/settings_pack;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_get_settings(JLorg/libtorrent4j/swig/session_handle;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/settings_pack;-><init>(JZ)V

    return-object v0
.end method

.method public get_torrents()Lorg/libtorrent4j/swig/torrent_handle_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/torrent_handle_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_get_torrents(JLorg/libtorrent4j/swig/session_handle;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/torrent_handle_vector;-><init>(JZ)V

    return-object v0
.end method

.method public is_dht_running()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_is_dht_running(JLorg/libtorrent4j/swig/session_handle;)Z

    move-result p0

    return p0
.end method

.method public is_listening()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_is_listening(JLorg/libtorrent4j/swig/session_handle;)Z

    move-result p0

    return p0
.end method

.method public is_paused()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_is_paused(JLorg/libtorrent4j/swig/session_handle;)Z

    move-result p0

    return p0
.end method

.method public is_valid()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_is_valid(JLorg/libtorrent4j/swig/session_handle;)Z

    move-result p0

    return p0
.end method

.method public listen_port()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_listen_port(JLorg/libtorrent4j/swig/session_handle;)I

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_pause(JLorg/libtorrent4j/swig/session_handle;)V

    return-void
.end method

.method public pop_alerts(Lorg/libtorrent4j/swig/alert_ptr_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/alert_ptr_vector;->getCPtr(Lorg/libtorrent4j/swig/alert_ptr_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_pop_alerts(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/alert_ptr_vector;)V

    return-void
.end method

.method public post_dht_stats()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_post_dht_stats(JLorg/libtorrent4j/swig/session_handle;)V

    return-void
.end method

.method public post_session_stats()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_post_session_stats(JLorg/libtorrent4j/swig/session_handle;)V

    return-void
.end method

.method public post_torrent_updates()V
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_post_torrent_updates__SWIG_1(JLorg/libtorrent4j/swig/session_handle;)V

    return-void
.end method

.method public post_torrent_updates(Lorg/libtorrent4j/swig/status_flags_t;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/status_flags_t;->getCPtr(Lorg/libtorrent4j/swig/status_flags_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_post_torrent_updates__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/status_flags_t;)V

    return-void
.end method

.method public refresh_torrent_status(Lorg/libtorrent4j/swig/torrent_status_vector;)V
    .locals 6

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/torrent_status_vector;->getCPtr(Lorg/libtorrent4j/swig/torrent_status_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_refresh_torrent_status__SWIG_1(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/torrent_status_vector;)V

    return-void
.end method

.method public refresh_torrent_status(Lorg/libtorrent4j/swig/torrent_status_vector;Lorg/libtorrent4j/swig/status_flags_t;)V
    .locals 9

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/torrent_status_vector;->getCPtr(Lorg/libtorrent4j/swig/torrent_status_vector;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/libtorrent4j/swig/status_flags_t;->getCPtr(Lorg/libtorrent4j/swig/status_flags_t;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_refresh_torrent_status__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/torrent_status_vector;JLorg/libtorrent4j/swig/status_flags_t;)V

    return-void
.end method

.method public remove_torrent(Lorg/libtorrent4j/swig/torrent_handle;)V
    .locals 6

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/torrent_handle;->getCPtr(Lorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_remove_torrent__SWIG_1(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/torrent_handle;)V

    return-void
.end method

.method public remove_torrent(Lorg/libtorrent4j/swig/torrent_handle;Lorg/libtorrent4j/swig/remove_flags_t;)V
    .locals 9

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/torrent_handle;->getCPtr(Lorg/libtorrent4j/swig/torrent_handle;)J

    move-result-wide v3

    invoke-static {p2}, Lorg/libtorrent4j/swig/remove_flags_t;->getCPtr(Lorg/libtorrent4j/swig/remove_flags_t;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_remove_torrent__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/torrent_handle;JLorg/libtorrent4j/swig/remove_flags_t;)V

    return-void
.end method

.method public reopen_network_sockets()V
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_reopen_network_sockets__SWIG_1(JLorg/libtorrent4j/swig/session_handle;)V

    return-void
.end method

.method public reopen_network_sockets(Lorg/libtorrent4j/swig/reopen_network_flags_t;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/reopen_network_flags_t;->getCPtr(Lorg/libtorrent4j/swig/reopen_network_flags_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_reopen_network_sockets__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/reopen_network_flags_t;)V

    return-void
.end method

.method public resume()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_resume(JLorg/libtorrent4j/swig/session_handle;)V

    return-void
.end method

.method public session_state()Lorg/libtorrent4j/swig/session_params;
    .locals 3

    .line 2
    new-instance v0, Lorg/libtorrent4j/swig/session_params;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_session_state__SWIG_1(JLorg/libtorrent4j/swig/session_handle;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/session_params;-><init>(JZ)V

    return-object v0
.end method

.method public session_state(Lorg/libtorrent4j/swig/save_state_flags_t;)Lorg/libtorrent4j/swig/session_params;
    .locals 7

    .line 1
    new-instance v0, Lorg/libtorrent4j/swig/session_params;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/save_state_flags_t;->getCPtr(Lorg/libtorrent4j/swig/save_state_flags_t;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_session_state__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/save_state_flags_t;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/session_params;-><init>(JZ)V

    return-object v0
.end method

.method public set_alert_notify_callback(Lorg/libtorrent4j/swig/alert_notify_callback;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/alert_notify_callback;->getCPtr(Lorg/libtorrent4j/swig/alert_notify_callback;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_set_alert_notify_callback(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/alert_notify_callback;)V

    return-void
.end method

.method public set_dht_state(Lorg/libtorrent4j/swig/dht_state;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/dht_state;->getCPtr(Lorg/libtorrent4j/swig/dht_state;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_set_dht_state__SWIG_0(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/dht_state;)V

    return-void
.end method

.method public set_ip_filter(Lorg/libtorrent4j/swig/ip_filter;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/ip_filter;->getCPtr(Lorg/libtorrent4j/swig/ip_filter;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_set_ip_filter(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/ip_filter;)V

    return-void
.end method

.method public set_peer_class_filter(Lorg/libtorrent4j/swig/ip_filter;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/ip_filter;->getCPtr(Lorg/libtorrent4j/swig/ip_filter;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_set_peer_class_filter(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/ip_filter;)V

    return-void
.end method

.method public set_peer_class_type_filter(Lorg/libtorrent4j/swig/peer_class_type_filter;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/peer_class_type_filter;->getCPtr(Lorg/libtorrent4j/swig/peer_class_type_filter;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_set_peer_class_type_filter(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/peer_class_type_filter;)V

    return-void
.end method

.method public set_port_filter(Lorg/libtorrent4j/swig/port_filter;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/port_filter;->getCPtr(Lorg/libtorrent4j/swig/port_filter;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_set_port_filter(JLorg/libtorrent4j/swig/session_handle;JLorg/libtorrent4j/swig/port_filter;)V

    return-void
.end method

.method public ssl_listen_port()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_ssl_listen_port(JLorg/libtorrent4j/swig/session_handle;)I

    move-result p0

    return p0
.end method

.method public wait_for_alert_ms(J)Lorg/libtorrent4j/swig/alert;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_handle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_handle_wait_for_alert_ms(JLorg/libtorrent4j/swig/session_handle;J)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/libtorrent4j/swig/alert;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lorg/libtorrent4j/swig/alert;-><init>(JZ)V

    move-object p0, p2

    :goto_0
    return-object p0
.end method
