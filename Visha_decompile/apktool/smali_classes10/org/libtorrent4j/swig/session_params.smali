.class public Lorg/libtorrent4j/swig/session_params;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 5
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_session_params__SWIG_1()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/session_params;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/session_params;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/session_params;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/session_params;)V
    .locals 2

    .line 6
    invoke-static {p1}, Lorg/libtorrent4j/swig/session_params;->getCPtr(Lorg/libtorrent4j/swig/session_params;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_session_params__SWIG_2(JLorg/libtorrent4j/swig/session_params;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/session_params;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/settings_pack;)V
    .locals 2

    .line 4
    invoke-static {p1}, Lorg/libtorrent4j/swig/settings_pack;->getCPtr(Lorg/libtorrent4j/swig/settings_pack;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_session_params__SWIG_0(JLorg/libtorrent4j/swig/settings_pack;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/session_params;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/session_params;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_params;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static read_session_params(Lorg/libtorrent4j/swig/bdecode_node;)Lorg/libtorrent4j/swig/session_params;
    .locals 3

    .line 2
    new-instance v0, Lorg/libtorrent4j/swig/session_params;

    invoke-static {p0}, Lorg/libtorrent4j/swig/bdecode_node;->getCPtr(Lorg/libtorrent4j/swig/bdecode_node;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_params_read_session_params__SWIG_1(JLorg/libtorrent4j/swig/bdecode_node;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/session_params;-><init>(JZ)V

    return-object v0
.end method

.method public static read_session_params(Lorg/libtorrent4j/swig/bdecode_node;Lorg/libtorrent4j/swig/save_state_flags_t;)Lorg/libtorrent4j/swig/session_params;
    .locals 7

    .line 1
    new-instance v0, Lorg/libtorrent4j/swig/session_params;

    invoke-static {p0}, Lorg/libtorrent4j/swig/bdecode_node;->getCPtr(Lorg/libtorrent4j/swig/bdecode_node;)J

    move-result-wide v1

    invoke-static {p1}, Lorg/libtorrent4j/swig/save_state_flags_t;->getCPtr(Lorg/libtorrent4j/swig/save_state_flags_t;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_params_read_session_params__SWIG_0(JLorg/libtorrent4j/swig/bdecode_node;JLorg/libtorrent4j/swig/save_state_flags_t;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/session_params;-><init>(JZ)V

    return-object v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/session_params;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/session_params;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_params;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/session_params;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_params;->delete()V

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

.method public static write_session_params(Lorg/libtorrent4j/swig/session_params;)Lorg/libtorrent4j/swig/entry;
    .locals 3

    .line 2
    new-instance v0, Lorg/libtorrent4j/swig/entry;

    invoke-static {p0}, Lorg/libtorrent4j/swig/session_params;->getCPtr(Lorg/libtorrent4j/swig/session_params;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_params_write_session_params__SWIG_1(JLorg/libtorrent4j/swig/session_params;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/entry;-><init>(JZ)V

    return-object v0
.end method

.method public static write_session_params(Lorg/libtorrent4j/swig/session_params;Lorg/libtorrent4j/swig/save_state_flags_t;)Lorg/libtorrent4j/swig/entry;
    .locals 7

    .line 1
    new-instance v0, Lorg/libtorrent4j/swig/entry;

    invoke-static {p0}, Lorg/libtorrent4j/swig/session_params;->getCPtr(Lorg/libtorrent4j/swig/session_params;)J

    move-result-wide v1

    invoke-static {p1}, Lorg/libtorrent4j/swig/save_state_flags_t;->getCPtr(Lorg/libtorrent4j/swig/save_state_flags_t;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_params_write_session_params__SWIG_0(JLorg/libtorrent4j/swig/session_params;JLorg/libtorrent4j/swig/save_state_flags_t;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/entry;-><init>(JZ)V

    return-object v0
.end method

.method public static write_session_params_buf(Lorg/libtorrent4j/swig/session_params;)Lorg/libtorrent4j/swig/byte_vector;
    .locals 3

    .line 2
    new-instance v0, Lorg/libtorrent4j/swig/byte_vector;

    invoke-static {p0}, Lorg/libtorrent4j/swig/session_params;->getCPtr(Lorg/libtorrent4j/swig/session_params;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_params_write_session_params_buf__SWIG_1(JLorg/libtorrent4j/swig/session_params;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/byte_vector;-><init>(JZ)V

    return-object v0
.end method

.method public static write_session_params_buf(Lorg/libtorrent4j/swig/session_params;Lorg/libtorrent4j/swig/save_state_flags_t;)Lorg/libtorrent4j/swig/byte_vector;
    .locals 7

    .line 1
    new-instance v0, Lorg/libtorrent4j/swig/byte_vector;

    invoke-static {p0}, Lorg/libtorrent4j/swig/session_params;->getCPtr(Lorg/libtorrent4j/swig/session_params;)J

    move-result-wide v1

    invoke-static {p1}, Lorg/libtorrent4j/swig/save_state_flags_t;->getCPtr(Lorg/libtorrent4j/swig/save_state_flags_t;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_params_write_session_params_buf__SWIG_0(JLorg/libtorrent4j/swig/session_params;JLorg/libtorrent4j/swig/save_state_flags_t;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/byte_vector;-><init>(JZ)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_params;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/session_params;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/session_params;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_session_params(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/session_params;->swigCPtr:J
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

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_params;->delete()V

    return-void
.end method

.method public getDht_state()Lorg/libtorrent4j/swig/dht_state;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_params_dht_state_get(JLorg/libtorrent4j/swig/session_params;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/dht_state;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/dht_state;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getExt_state()Lorg/libtorrent4j/swig/string_string_map;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_params_ext_state_get(JLorg/libtorrent4j/swig/session_params;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/string_string_map;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/string_string_map;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getFlags()Lorg/libtorrent4j/swig/session_flags_t;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_params_flags_get(JLorg/libtorrent4j/swig/session_params;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/session_flags_t;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/session_flags_t;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getIp_filter()Lorg/libtorrent4j/swig/ip_filter;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_params_ip_filter_get(JLorg/libtorrent4j/swig/session_params;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/ip_filter;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/ip_filter;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getSettings()Lorg/libtorrent4j/swig/settings_pack;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_params_settings_get(JLorg/libtorrent4j/swig/session_params;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/settings_pack;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/settings_pack;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public setDht_state(Lorg/libtorrent4j/swig/dht_state;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/dht_state;->getCPtr(Lorg/libtorrent4j/swig/dht_state;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_params_dht_state_set(JLorg/libtorrent4j/swig/session_params;JLorg/libtorrent4j/swig/dht_state;)V

    return-void
.end method

.method public setExt_state(Lorg/libtorrent4j/swig/string_string_map;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/string_string_map;->getCPtr(Lorg/libtorrent4j/swig/string_string_map;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_params_ext_state_set(JLorg/libtorrent4j/swig/session_params;JLorg/libtorrent4j/swig/string_string_map;)V

    return-void
.end method

.method public setFlags(Lorg/libtorrent4j/swig/session_flags_t;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/session_flags_t;->getCPtr(Lorg/libtorrent4j/swig/session_flags_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_params_flags_set(JLorg/libtorrent4j/swig/session_params;JLorg/libtorrent4j/swig/session_flags_t;)V

    return-void
.end method

.method public setIp_filter(Lorg/libtorrent4j/swig/ip_filter;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/ip_filter;->getCPtr(Lorg/libtorrent4j/swig/ip_filter;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_params_ip_filter_set(JLorg/libtorrent4j/swig/session_params;JLorg/libtorrent4j/swig/ip_filter;)V

    return-void
.end method

.method public setSettings(Lorg/libtorrent4j/swig/settings_pack;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_params;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/settings_pack;->getCPtr(Lorg/libtorrent4j/swig/settings_pack;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_params_settings_set(JLorg/libtorrent4j/swig/session_params;JLorg/libtorrent4j/swig/settings_pack;)V

    return-void
.end method

.method public set_default_disk_io_constructor()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_params_set_default_disk_io_constructor(JLorg/libtorrent4j/swig/session_params;)V

    return-void
.end method

.method public set_posix_disk_io_constructor()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_params_set_posix_disk_io_constructor(JLorg/libtorrent4j/swig/session_params;)V

    return-void
.end method
