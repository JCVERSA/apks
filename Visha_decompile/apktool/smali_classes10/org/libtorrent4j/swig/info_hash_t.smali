.class public Lorg/libtorrent4j/swig/info_hash_t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_info_hash_t__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/info_hash_t;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/info_hash_t;)V
    .locals 2

    .line 8
    invoke-static {p1}, Lorg/libtorrent4j/swig/info_hash_t;->getCPtr(Lorg/libtorrent4j/swig/info_hash_t;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_info_hash_t__SWIG_4(JLorg/libtorrent4j/swig/info_hash_t;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/info_hash_t;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/sha1_hash;)V
    .locals 2

    .line 5
    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_info_hash_t__SWIG_1(JLorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/info_hash_t;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/sha1_hash;Lorg/libtorrent4j/swig/sha256_hash;)V
    .locals 6

    .line 7
    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v0

    invoke-static {p2}, Lorg/libtorrent4j/swig/sha256_hash;->getCPtr(Lorg/libtorrent4j/swig/sha256_hash;)J

    move-result-wide v3

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_info_hash_t__SWIG_3(JLorg/libtorrent4j/swig/sha1_hash;JLorg/libtorrent4j/swig/sha256_hash;)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/libtorrent4j/swig/info_hash_t;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/sha256_hash;)V
    .locals 2

    .line 6
    invoke-static {p1}, Lorg/libtorrent4j/swig/sha256_hash;->getCPtr(Lorg/libtorrent4j/swig/sha256_hash;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_info_hash_t__SWIG_2(JLorg/libtorrent4j/swig/sha256_hash;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/info_hash_t;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/info_hash_t;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/info_hash_t;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/info_hash_t;->delete()V

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
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_info_hash_t(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCPtr:J
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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/info_hash_t;->delete()V

    return-void
.end method

.method public get(Lorg/libtorrent4j/swig/protocol_version;)Lorg/libtorrent4j/swig/sha1_hash;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/sha1_hash;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCPtr:J

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/protocol_version;->swigValue()I

    move-result p1

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->info_hash_t_get(JLorg/libtorrent4j/swig/info_hash_t;I)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/sha1_hash;-><init>(JZ)V

    return-object v0
.end method

.method public getV1()Lorg/libtorrent4j/swig/sha1_hash;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->info_hash_t_v1_get(JLorg/libtorrent4j/swig/info_hash_t;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/sha1_hash;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/sha1_hash;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getV2()Lorg/libtorrent4j/swig/sha256_hash;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->info_hash_t_v2_get(JLorg/libtorrent4j/swig/info_hash_t;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/sha256_hash;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/sha256_hash;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public get_best()Lorg/libtorrent4j/swig/sha1_hash;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/sha1_hash;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->info_hash_t_get_best(JLorg/libtorrent4j/swig/info_hash_t;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/sha1_hash;-><init>(JZ)V

    return-object v0
.end method

.method public has(Lorg/libtorrent4j/swig/protocol_version;)Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCPtr:J

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/protocol_version;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->info_hash_t_has(JLorg/libtorrent4j/swig/info_hash_t;I)Z

    move-result p0

    return p0
.end method

.method public has_v1()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->info_hash_t_has_v1(JLorg/libtorrent4j/swig/info_hash_t;)Z

    move-result p0

    return p0
.end method

.method public has_v2()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->info_hash_t_has_v2(JLorg/libtorrent4j/swig/info_hash_t;)Z

    move-result p0

    return p0
.end method

.method public lt(Lorg/libtorrent4j/swig/info_hash_t;)Z
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/info_hash_t;->getCPtr(Lorg/libtorrent4j/swig/info_hash_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->info_hash_t_lt(JLorg/libtorrent4j/swig/info_hash_t;JLorg/libtorrent4j/swig/info_hash_t;)Z

    move-result p0

    return p0
.end method

.method public op_eq(Lorg/libtorrent4j/swig/info_hash_t;)Z
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/info_hash_t;->getCPtr(Lorg/libtorrent4j/swig/info_hash_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->info_hash_t_op_eq(JLorg/libtorrent4j/swig/info_hash_t;JLorg/libtorrent4j/swig/info_hash_t;)Z

    move-result p0

    return p0
.end method

.method public op_ne(Lorg/libtorrent4j/swig/info_hash_t;)Z
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/info_hash_t;->getCPtr(Lorg/libtorrent4j/swig/info_hash_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->info_hash_t_op_ne(JLorg/libtorrent4j/swig/info_hash_t;JLorg/libtorrent4j/swig/info_hash_t;)Z

    move-result p0

    return p0
.end method

.method public setV1(Lorg/libtorrent4j/swig/sha1_hash;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->info_hash_t_v1_set(JLorg/libtorrent4j/swig/info_hash_t;JLorg/libtorrent4j/swig/sha1_hash;)V

    return-void
.end method

.method public setV2(Lorg/libtorrent4j/swig/sha256_hash;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/info_hash_t;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha256_hash;->getCPtr(Lorg/libtorrent4j/swig/sha256_hash;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->info_hash_t_v2_set(JLorg/libtorrent4j/swig/info_hash_t;JLorg/libtorrent4j/swig/sha256_hash;)V

    return-void
.end method
