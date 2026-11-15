.class public Lorg/libtorrent4j/swig/session_flags_t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_session_flags_t()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/session_flags_t;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/session_flags_t;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/session_flags_t;->swigCPtr:J

    return-void
.end method

.method public static all()Lorg/libtorrent4j/swig/session_flags_t;
    .locals 4

    new-instance v0, Lorg/libtorrent4j/swig/session_flags_t;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_flags_t_all()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/session_flags_t;-><init>(JZ)V

    return-object v0
.end method

.method public static from_int(I)Lorg/libtorrent4j/swig/session_flags_t;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/session_flags_t;

    invoke-static {p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_flags_t_from_int(I)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/session_flags_t;-><init>(JZ)V

    return-object v0
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/session_flags_t;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_flags_t;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/session_flags_t;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/session_flags_t;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_flags_t;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/session_flags_t;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_flags_t;->delete()V

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
.method public and_(Lorg/libtorrent4j/swig/session_flags_t;)Lorg/libtorrent4j/swig/session_flags_t;
    .locals 7

    new-instance v0, Lorg/libtorrent4j/swig/session_flags_t;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/session_flags_t;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/session_flags_t;->getCPtr(Lorg/libtorrent4j/swig/session_flags_t;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_flags_t_and_(JLorg/libtorrent4j/swig/session_flags_t;JLorg/libtorrent4j/swig/session_flags_t;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/session_flags_t;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_flags_t;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/session_flags_t;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/session_flags_t;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_session_flags_t(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/session_flags_t;->swigCPtr:J
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

.method public eq(Lorg/libtorrent4j/swig/session_flags_t;)Z
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_flags_t;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/session_flags_t;->getCPtr(Lorg/libtorrent4j/swig/session_flags_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_flags_t_eq(JLorg/libtorrent4j/swig/session_flags_t;JLorg/libtorrent4j/swig/session_flags_t;)Z

    move-result p0

    return p0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/session_flags_t;->delete()V

    return-void
.end method

.method public inv()Lorg/libtorrent4j/swig/session_flags_t;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/session_flags_t;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/session_flags_t;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_flags_t_inv(JLorg/libtorrent4j/swig/session_flags_t;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/session_flags_t;-><init>(JZ)V

    return-object v0
.end method

.method public ne(Lorg/libtorrent4j/swig/session_flags_t;)Z
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_flags_t;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/session_flags_t;->getCPtr(Lorg/libtorrent4j/swig/session_flags_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_flags_t_ne(JLorg/libtorrent4j/swig/session_flags_t;JLorg/libtorrent4j/swig/session_flags_t;)Z

    move-result p0

    return p0
.end method

.method public non_zero()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_flags_t;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_flags_t_non_zero(JLorg/libtorrent4j/swig/session_flags_t;)Z

    move-result p0

    return p0
.end method

.method public or_(Lorg/libtorrent4j/swig/session_flags_t;)Lorg/libtorrent4j/swig/session_flags_t;
    .locals 7

    new-instance v0, Lorg/libtorrent4j/swig/session_flags_t;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/session_flags_t;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/session_flags_t;->getCPtr(Lorg/libtorrent4j/swig/session_flags_t;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_flags_t_or_(JLorg/libtorrent4j/swig/session_flags_t;JLorg/libtorrent4j/swig/session_flags_t;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/session_flags_t;-><init>(JZ)V

    return-object v0
.end method

.method public to_int()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/session_flags_t;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_flags_t_to_int(JLorg/libtorrent4j/swig/session_flags_t;)I

    move-result p0

    return p0
.end method

.method public xor_(Lorg/libtorrent4j/swig/session_flags_t;)Lorg/libtorrent4j/swig/session_flags_t;
    .locals 7

    new-instance v0, Lorg/libtorrent4j/swig/session_flags_t;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/session_flags_t;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/session_flags_t;->getCPtr(Lorg/libtorrent4j/swig/session_flags_t;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->session_flags_t_xor_(JLorg/libtorrent4j/swig/session_flags_t;JLorg/libtorrent4j/swig/session_flags_t;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/session_flags_t;-><init>(JZ)V

    return-object v0
.end method
