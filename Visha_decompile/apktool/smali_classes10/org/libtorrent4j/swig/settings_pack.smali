.class public Lorg/libtorrent4j/swig/settings_pack;
.super Lorg/libtorrent4j/swig/settings_interface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/swig/settings_pack$proxy_type_t;,
        Lorg/libtorrent4j/swig/settings_pack$enc_level;,
        Lorg/libtorrent4j/swig/settings_pack$enc_policy;,
        Lorg/libtorrent4j/swig/settings_pack$bandwidth_mixed_algo_t;,
        Lorg/libtorrent4j/swig/settings_pack$io_buffer_mode_t;,
        Lorg/libtorrent4j/swig/settings_pack$seed_choking_algorithm_t;,
        Lorg/libtorrent4j/swig/settings_pack$choking_algorithm_t;,
        Lorg/libtorrent4j/swig/settings_pack$suggest_mode_t;,
        Lorg/libtorrent4j/swig/settings_pack$mmap_write_mode_t;,
        Lorg/libtorrent4j/swig/settings_pack$int_types;,
        Lorg/libtorrent4j/swig/settings_pack$bool_types;,
        Lorg/libtorrent4j/swig/settings_pack$string_types;,
        Lorg/libtorrent4j/swig/settings_pack$type_bases;
    }
.end annotation


# static fields
.field public static final num_bool_settings:I

.field public static final num_int_settings:I

.field public static final num_string_settings:I


# instance fields
.field private transient swigCPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_pack_num_string_settings_get()I

    move-result v0

    sput v0, Lorg/libtorrent4j/swig/settings_pack;->num_string_settings:I

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_pack_num_bool_settings_get()I

    move-result v0

    sput v0, Lorg/libtorrent4j/swig/settings_pack;->num_bool_settings:I

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_pack_num_int_settings_get()I

    move-result v0

    sput v0, Lorg/libtorrent4j/swig/settings_pack;->num_int_settings:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 3
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_settings_pack__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/settings_pack;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_pack_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lorg/libtorrent4j/swig/settings_interface;-><init>(JZ)V

    .line 2
    iput-wide p1, p0, Lorg/libtorrent4j/swig/settings_pack;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/settings_pack;)V
    .locals 2

    .line 4
    invoke-static {p1}, Lorg/libtorrent4j/swig/settings_pack;->getCPtr(Lorg/libtorrent4j/swig/settings_pack;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_settings_pack__SWIG_1(JLorg/libtorrent4j/swig/settings_pack;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/settings_pack;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/settings_pack;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_pack;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/settings_pack;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_pack;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack;->delete()V

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
.method public clear()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_pack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_pack_clear__SWIG_0(JLorg/libtorrent4j/swig/settings_pack;)V

    return-void
.end method

.method public clear(I)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_pack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_pack_clear__SWIG_1(JLorg/libtorrent4j/swig/settings_pack;I)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_pack;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/settings_interface;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_settings_pack(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/settings_pack;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lorg/libtorrent4j/swig/settings_interface;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/settings_pack;->delete()V

    return-void
.end method

.method public get_bool(I)Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_pack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_pack_get_bool(JLorg/libtorrent4j/swig/settings_pack;I)Z

    move-result p0

    return p0
.end method

.method public get_bytes(I)Lorg/libtorrent4j/swig/byte_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/byte_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/settings_pack;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_pack_get_bytes(JLorg/libtorrent4j/swig/settings_pack;I)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/byte_vector;-><init>(JZ)V

    return-object v0
.end method

.method public get_int(I)I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_pack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_pack_get_int(JLorg/libtorrent4j/swig/settings_pack;I)I

    move-result p0

    return p0
.end method

.method public get_str(I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_pack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_pack_get_str(JLorg/libtorrent4j/swig/settings_pack;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public has_val(I)Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_pack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_pack_has_val(JLorg/libtorrent4j/swig/settings_pack;I)Z

    move-result p0

    return p0
.end method

.method public set_bool(IZ)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_pack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_pack_set_bool(JLorg/libtorrent4j/swig/settings_pack;IZ)V

    return-void
.end method

.method public set_bytes(ILorg/libtorrent4j/swig/byte_vector;)V
    .locals 7

    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_pack;->swigCPtr:J

    invoke-static {p2}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_pack_set_bytes(JLorg/libtorrent4j/swig/settings_pack;IJLorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public set_int(II)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_pack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_pack_set_int(JLorg/libtorrent4j/swig/settings_pack;II)V

    return-void
.end method

.method public set_str(ILjava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/settings_pack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->settings_pack_set_str(JLorg/libtorrent4j/swig/settings_pack;ILjava/lang/String;)V

    return-void
.end method
