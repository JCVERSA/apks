.class public Lorg/libtorrent4j/swig/entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/swig/entry$data_type;
    }
.end annotation


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 10
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_entry__SWIG_6()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/entry;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 7
    invoke-static {p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_entry__SWIG_3(J)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/libtorrent4j/swig/entry;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/entry;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/entry;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 5
    invoke-static {p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_entry__SWIG_1(Ljava/lang/String;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/entry;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/boost_string_entry_map;)V
    .locals 2

    .line 4
    invoke-static {p1}, Lorg/libtorrent4j/swig/boost_string_entry_map;->getCPtr(Lorg/libtorrent4j/swig/boost_string_entry_map;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_entry__SWIG_0(JLorg/libtorrent4j/swig/boost_string_entry_map;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/entry;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/entry$data_type;)V
    .locals 2

    .line 8
    invoke-virtual {p1}, Lorg/libtorrent4j/swig/entry$data_type;->swigValue()I

    move-result p1

    invoke-static {p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_entry__SWIG_4(I)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/entry;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/entry;)V
    .locals 2

    .line 9
    invoke-static {p1}, Lorg/libtorrent4j/swig/entry;->getCPtr(Lorg/libtorrent4j/swig/entry;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_entry__SWIG_5(JLorg/libtorrent4j/swig/entry;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/entry;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/entry_vector;)V
    .locals 2

    .line 6
    invoke-static {p1}, Lorg/libtorrent4j/swig/entry_vector;->getCPtr(Lorg/libtorrent4j/swig/entry_vector;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_entry__SWIG_2(JLorg/libtorrent4j/swig/entry_vector;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/entry;-><init>(JZ)V

    return-void
.end method

.method public static bdecode(Lorg/libtorrent4j/swig/byte_vector;)Lorg/libtorrent4j/swig/entry;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/entry;

    invoke-static {p0}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->entry_bdecode(JLorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/entry;-><init>(JZ)V

    return-object v0
.end method

.method public static from_preformatted_bytes(Lorg/libtorrent4j/swig/byte_vector;)Lorg/libtorrent4j/swig/entry;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/entry;

    invoke-static {p0}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->entry_from_preformatted_bytes(JLorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/entry;-><init>(JZ)V

    return-object v0
.end method

.method public static from_string_bytes(Lorg/libtorrent4j/swig/byte_vector;)Lorg/libtorrent4j/swig/entry;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/entry;

    invoke-static {p0}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->entry_from_string_bytes(JLorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/entry;-><init>(JZ)V

    return-object v0
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/entry;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/entry;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/entry;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/entry;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/entry;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/entry;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/entry;->delete()V

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
.method public bencode()Lorg/libtorrent4j/swig/byte_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/byte_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/entry;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->entry_bencode(JLorg/libtorrent4j/swig/entry;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/byte_vector;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/entry;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/entry;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/entry;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_entry(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/entry;->swigCPtr:J
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

.method public dict()Lorg/libtorrent4j/swig/boost_string_entry_map;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/boost_string_entry_map;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/entry;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->entry_dict(JLorg/libtorrent4j/swig/entry;)J

    move-result-wide v1

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/boost_string_entry_map;-><init>(JZ)V

    return-object v0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/entry;->delete()V

    return-void
.end method

.method public get(Ljava/lang/String;)Lorg/libtorrent4j/swig/entry;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/entry;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/entry;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->entry_get(JLorg/libtorrent4j/swig/entry;Ljava/lang/String;)J

    move-result-wide p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/entry;-><init>(JZ)V

    return-object v0
.end method

.method public integer()J
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/entry;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->entry_integer(JLorg/libtorrent4j/swig/entry;)J

    move-result-wide v0

    return-wide v0
.end method

.method public list()Lorg/libtorrent4j/swig/entry_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/entry_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/entry;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->entry_list(JLorg/libtorrent4j/swig/entry;)J

    move-result-wide v1

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/entry_vector;-><init>(JZ)V

    return-object v0
.end method

.method public preformatted_bytes()Lorg/libtorrent4j/swig/byte_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/byte_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/entry;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->entry_preformatted_bytes(JLorg/libtorrent4j/swig/entry;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/byte_vector;-><init>(JZ)V

    return-object v0
.end method

.method public set(Ljava/lang/String;J)V
    .locals 6

    .line 3
    iget-wide v0, p0, Lorg/libtorrent4j/swig/entry;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->entry_set__SWIG_2(JLorg/libtorrent4j/swig/entry;Ljava/lang/String;J)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/entry;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->entry_set__SWIG_0(JLorg/libtorrent4j/swig/entry;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;Lorg/libtorrent4j/swig/byte_vector;)V
    .locals 7

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/entry;->swigCPtr:J

    invoke-static {p2}, Lorg/libtorrent4j/swig/byte_vector;->getCPtr(Lorg/libtorrent4j/swig/byte_vector;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->entry_set__SWIG_1(JLorg/libtorrent4j/swig/entry;Ljava/lang/String;JLorg/libtorrent4j/swig/byte_vector;)V

    return-void
.end method

.method public set(Ljava/lang/String;Lorg/libtorrent4j/swig/entry;)V
    .locals 7

    .line 4
    iget-wide v0, p0, Lorg/libtorrent4j/swig/entry;->swigCPtr:J

    invoke-static {p2}, Lorg/libtorrent4j/swig/entry;->getCPtr(Lorg/libtorrent4j/swig/entry;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->entry_set__SWIG_3(JLorg/libtorrent4j/swig/entry;Ljava/lang/String;JLorg/libtorrent4j/swig/entry;)V

    return-void
.end method

.method public string()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/entry;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->entry_string(JLorg/libtorrent4j/swig/entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public string_bytes()Lorg/libtorrent4j/swig/byte_vector;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/byte_vector;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/entry;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->entry_string_bytes(JLorg/libtorrent4j/swig/entry;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/byte_vector;-><init>(JZ)V

    return-object v0
.end method

.method public to_string()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/entry;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->entry_to_string(JLorg/libtorrent4j/swig/entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public type()Lorg/libtorrent4j/swig/entry$data_type;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/entry;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->entry_type(JLorg/libtorrent4j/swig/entry;)I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/swig/entry$data_type;->swigToEnum(I)Lorg/libtorrent4j/swig/entry$data_type;

    move-result-object p0

    return-object p0
.end method
