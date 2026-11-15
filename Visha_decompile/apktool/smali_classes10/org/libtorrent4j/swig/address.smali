.class public Lorg/libtorrent4j/swig/address;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_address__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/address;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/address;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/address;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/address;)V
    .locals 2

    .line 5
    invoke-static {p1}, Lorg/libtorrent4j/swig/address;->getCPtr(Lorg/libtorrent4j/swig/address;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_address__SWIG_1(JLorg/libtorrent4j/swig/address;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/address;-><init>(JZ)V

    return-void
.end method

.method public static compare(Lorg/libtorrent4j/swig/address;Lorg/libtorrent4j/swig/address;)I
    .locals 6

    invoke-static {p0}, Lorg/libtorrent4j/swig/address;->getCPtr(Lorg/libtorrent4j/swig/address;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/libtorrent4j/swig/address;->getCPtr(Lorg/libtorrent4j/swig/address;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->address_compare(JLorg/libtorrent4j/swig/address;JLorg/libtorrent4j/swig/address;)I

    move-result p0

    return p0
.end method

.method public static from_string(Ljava/lang/String;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/address;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/address;

    invoke-static {p1}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v1

    invoke-static {p0, v1, v2, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->address_from_string(Ljava/lang/String;JLorg/libtorrent4j/swig/error_code;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/address;-><init>(JZ)V

    return-object v0
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/address;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/address;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/address;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/address;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/address;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/address;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/address;->delete()V

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
    iget-wide v0, p0, Lorg/libtorrent4j/swig/address;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/address;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/address;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_address(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/address;->swigCPtr:J
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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/address;->delete()V

    return-void
.end method

.method public hash_code()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/address;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->address_hash_code(JLorg/libtorrent4j/swig/address;)I

    move-result p0

    return p0
.end method

.method public is_loopback()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/address;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->address_is_loopback(JLorg/libtorrent4j/swig/address;)Z

    move-result p0

    return p0
.end method

.method public is_multicast()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/address;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->address_is_multicast(JLorg/libtorrent4j/swig/address;)Z

    move-result p0

    return p0
.end method

.method public is_unspecified()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/address;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->address_is_unspecified(JLorg/libtorrent4j/swig/address;)Z

    move-result p0

    return p0
.end method

.method public is_v4()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/address;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->address_is_v4(JLorg/libtorrent4j/swig/address;)Z

    move-result p0

    return p0
.end method

.method public is_v6()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/address;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->address_is_v6(JLorg/libtorrent4j/swig/address;)Z

    move-result p0

    return p0
.end method

.method public op_lt(Lorg/libtorrent4j/swig/address;)Z
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/address;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/address;->getCPtr(Lorg/libtorrent4j/swig/address;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->address_op_lt(JLorg/libtorrent4j/swig/address;JLorg/libtorrent4j/swig/address;)Z

    move-result p0

    return p0
.end method

.method public to_string()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/address;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->address_to_string(JLorg/libtorrent4j/swig/address;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
