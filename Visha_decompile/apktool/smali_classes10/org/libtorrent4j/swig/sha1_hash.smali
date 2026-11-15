.class public Lorg/libtorrent4j/swig/sha1_hash;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_sha1_hash__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/sha1_hash;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/byte_vector;)V
    .locals 2

    .line 6
    invoke-static {p1}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_sha1_hash__SWIG_2(JLorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/sha1_hash;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/sha1_hash;)V
    .locals 2

    .line 5
    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_sha1_hash__SWIG_1(JLorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/sha1_hash;-><init>(JZ)V

    return-void
.end method

.method public static compare(Lorg/libtorrent4j/swig/sha1_hash;Lorg/libtorrent4j/swig/sha1_hash;)I
    .locals 6

    invoke-static {p0}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->sha1_hash_compare(JLorg/libtorrent4j/swig/sha1_hash;JLorg/libtorrent4j/swig/sha1_hash;)I

    move-result p0

    return p0
.end method

.method public static from_hex(Ljava/lang/String;)Lorg/libtorrent4j/swig/sha1_hash;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/sha1_hash;

    invoke-static {p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->sha1_hash_from_hex(Ljava/lang/String;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/sha1_hash;-><init>(JZ)V

    return-object v0
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static max()Lorg/libtorrent4j/swig/sha1_hash;
    .locals 4

    new-instance v0, Lorg/libtorrent4j/swig/sha1_hash;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->sha1_hash_max()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/sha1_hash;-><init>(JZ)V

    return-object v0
.end method

.method public static min()Lorg/libtorrent4j/swig/sha1_hash;
    .locals 4

    new-instance v0, Lorg/libtorrent4j/swig/sha1_hash;

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->sha1_hash_min()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/libtorrent4j/swig/sha1_hash;-><init>(JZ)V

    return-object v0
.end method

.method public static size()J
    .locals 2

    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->sha1_hash_size()J

    move-result-wide v0

    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/sha1_hash;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/sha1_hash;->delete()V

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
.method public and_(Lorg/libtorrent4j/swig/sha1_hash;)Lorg/libtorrent4j/swig/sha1_hash;
    .locals 7

    new-instance v0, Lorg/libtorrent4j/swig/sha1_hash;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->sha1_hash_and_(JLorg/libtorrent4j/swig/sha1_hash;JLorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/sha1_hash;-><init>(JZ)V

    return-object v0
.end method

.method public assign(Lorg/libtorrent4j/swig/byte_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->sha1_hash_assign(JLorg/libtorrent4j/swig/sha1_hash;JLorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public clear()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->sha1_hash_clear(JLorg/libtorrent4j/swig/sha1_hash;)V

    return-void
.end method

.method public count_leading_zeroes()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->sha1_hash_count_leading_zeroes(JLorg/libtorrent4j/swig/sha1_hash;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_sha1_hash(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCPtr:J
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

.method public eq(Lorg/libtorrent4j/swig/sha1_hash;)Z
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->sha1_hash_eq(JLorg/libtorrent4j/swig/sha1_hash;JLorg/libtorrent4j/swig/sha1_hash;)Z

    move-result p0

    return p0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/sha1_hash;->delete()V

    return-void
.end method

.method public hash_code()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->sha1_hash_hash_code(JLorg/libtorrent4j/swig/sha1_hash;)I

    move-result p0

    return p0
.end method

.method public inv()Lorg/libtorrent4j/swig/sha1_hash;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/sha1_hash;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->sha1_hash_inv(JLorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/sha1_hash;-><init>(JZ)V

    return-object v0
.end method

.method public is_all_zeros()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->sha1_hash_is_all_zeros(JLorg/libtorrent4j/swig/sha1_hash;)Z

    move-result p0

    return p0
.end method

.method public lt(Lorg/libtorrent4j/swig/sha1_hash;)Z
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->sha1_hash_lt(JLorg/libtorrent4j/swig/sha1_hash;JLorg/libtorrent4j/swig/sha1_hash;)Z

    move-result p0

    return p0
.end method

.method public ne(Lorg/libtorrent4j/swig/sha1_hash;)Z
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->sha1_hash_ne(JLorg/libtorrent4j/swig/sha1_hash;JLorg/libtorrent4j/swig/sha1_hash;)Z

    move-result p0

    return p0
.end method

.method public to_bytes()Lorg/libtorrent4j/swig/byte_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/byte_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->sha1_hash_to_bytes(JLorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/byte_vector;-><init>(JZ)V

    return-object v0
.end method

.method public to_hex()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->sha1_hash_to_hex(JLorg/libtorrent4j/swig/sha1_hash;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public xor_(Lorg/libtorrent4j/swig/sha1_hash;)Lorg/libtorrent4j/swig/sha1_hash;
    .locals 7

    new-instance v0, Lorg/libtorrent4j/swig/sha1_hash;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/sha1_hash;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/sha1_hash;->getCPtr(Lorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->sha1_hash_xor_(JLorg/libtorrent4j/swig/sha1_hash;JLorg/libtorrent4j/swig/sha1_hash;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/sha1_hash;-><init>(JZ)V

    return-object v0
.end method
