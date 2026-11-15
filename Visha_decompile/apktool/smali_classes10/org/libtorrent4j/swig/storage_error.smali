.class public Lorg/libtorrent4j/swig/storage_error;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_storage_error__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/storage_error;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/storage_error;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/storage_error;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/error_code;)V
    .locals 2

    .line 5
    invoke-static {p1}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_storage_error__SWIG_1(JLorg/libtorrent4j/swig/error_code;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/storage_error;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/error_code;ILorg/libtorrent4j/swig/operation_t;)V
    .locals 2

    .line 7
    invoke-static {p1}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v0

    invoke-virtual {p3}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result p3

    invoke-static {v0, v1, p1, p2, p3}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_storage_error__SWIG_3(JLorg/libtorrent4j/swig/error_code;II)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/libtorrent4j/swig/storage_error;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/error_code;Lorg/libtorrent4j/swig/operation_t;)V
    .locals 2

    .line 6
    invoke-static {p1}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result p2

    invoke-static {v0, v1, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_storage_error__SWIG_2(JLorg/libtorrent4j/swig/error_code;I)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/libtorrent4j/swig/storage_error;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/storage_error;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/storage_error;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/storage_error;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/storage_error;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/storage_error;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/storage_error;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/storage_error;->delete()V

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
    iget-wide v0, p0, Lorg/libtorrent4j/swig/storage_error;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/storage_error;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/storage_error;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_storage_error(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/storage_error;->swigCPtr:J
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

.method public file()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/storage_error;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->storage_error_file__SWIG_0(JLorg/libtorrent4j/swig/storage_error;)I

    move-result p0

    return p0
.end method

.method public file(I)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/storage_error;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->storage_error_file__SWIG_1(JLorg/libtorrent4j/swig/storage_error;I)V

    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/storage_error;->delete()V

    return-void
.end method

.method public getEc()Lorg/libtorrent4j/swig/error_code;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/storage_error;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->storage_error_ec_get(JLorg/libtorrent4j/swig/storage_error;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/error_code;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/error_code;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getOperation()Lorg/libtorrent4j/swig/operation_t;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/storage_error;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->storage_error_operation_get(JLorg/libtorrent4j/swig/storage_error;)I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/swig/operation_t;->swigToEnum(I)Lorg/libtorrent4j/swig/operation_t;

    move-result-object p0

    return-object p0
.end method

.method public setEc(Lorg/libtorrent4j/swig/error_code;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/storage_error;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/error_code;->getCPtr(Lorg/libtorrent4j/swig/error_code;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->storage_error_ec_set(JLorg/libtorrent4j/swig/storage_error;JLorg/libtorrent4j/swig/error_code;)V

    return-void
.end method

.method public setOperation(Lorg/libtorrent4j/swig/operation_t;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/storage_error;->swigCPtr:J

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/operation_t;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->storage_error_operation_set(JLorg/libtorrent4j/swig/storage_error;I)V

    return-void
.end method

.method public to_bool()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/storage_error;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->storage_error_to_bool(JLorg/libtorrent4j/swig/storage_error;)Z

    move-result p0

    return p0
.end method
