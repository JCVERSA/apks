.class public Lorg/libtorrent4j/swig/web_seed_entry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/web_seed_entry;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/web_seed_entry;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-static {p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_web_seed_entry__SWIG_2(Ljava/lang/String;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/web_seed_entry;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-static {p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_web_seed_entry__SWIG_1(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/libtorrent4j/swig/web_seed_entry;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/libtorrent4j/swig/string_string_pair_vector;)V
    .locals 2

    .line 4
    invoke-static {p3}, Lorg/libtorrent4j/swig/string_string_pair_vector;->getCPtr(Lorg/libtorrent4j/swig/string_string_pair_vector;)J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1, p3}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_web_seed_entry__SWIG_0(Ljava/lang/String;Ljava/lang/String;JLorg/libtorrent4j/swig/string_string_pair_vector;)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/libtorrent4j/swig/web_seed_entry;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/web_seed_entry;)V
    .locals 2

    .line 7
    invoke-static {p1}, Lorg/libtorrent4j/swig/web_seed_entry;->getCPtr(Lorg/libtorrent4j/swig/web_seed_entry;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_web_seed_entry__SWIG_3(JLorg/libtorrent4j/swig/web_seed_entry;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/web_seed_entry;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/web_seed_entry;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/web_seed_entry;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/web_seed_entry;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/web_seed_entry;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/web_seed_entry;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/web_seed_entry;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/web_seed_entry;->delete()V

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
    iget-wide v0, p0, Lorg/libtorrent4j/swig/web_seed_entry;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/web_seed_entry;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/web_seed_entry;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_web_seed_entry(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/web_seed_entry;->swigCPtr:J
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

.method public eq(Lorg/libtorrent4j/swig/web_seed_entry;)Z
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/web_seed_entry;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/web_seed_entry;->getCPtr(Lorg/libtorrent4j/swig/web_seed_entry;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->web_seed_entry_eq(JLorg/libtorrent4j/swig/web_seed_entry;JLorg/libtorrent4j/swig/web_seed_entry;)Z

    move-result p0

    return p0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/web_seed_entry;->delete()V

    return-void
.end method

.method public getAuth()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/web_seed_entry;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->web_seed_entry_auth_get(JLorg/libtorrent4j/swig/web_seed_entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExtra_headers()Lorg/libtorrent4j/swig/string_string_pair_vector;
    .locals 4

    iget-wide v0, p0, Lorg/libtorrent4j/swig/web_seed_entry;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->web_seed_entry_extra_headers_get(JLorg/libtorrent4j/swig/web_seed_entry;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/libtorrent4j/swig/string_string_pair_vector;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/string_string_pair_vector;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/web_seed_entry;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->web_seed_entry_url_get(JLorg/libtorrent4j/swig/web_seed_entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public lt(Lorg/libtorrent4j/swig/web_seed_entry;)Z
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/web_seed_entry;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/web_seed_entry;->getCPtr(Lorg/libtorrent4j/swig/web_seed_entry;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->web_seed_entry_lt(JLorg/libtorrent4j/swig/web_seed_entry;JLorg/libtorrent4j/swig/web_seed_entry;)Z

    move-result p0

    return p0
.end method

.method public setAuth(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/web_seed_entry;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->web_seed_entry_auth_set(JLorg/libtorrent4j/swig/web_seed_entry;Ljava/lang/String;)V

    return-void
.end method

.method public setExtra_headers(Lorg/libtorrent4j/swig/string_string_pair_vector;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/web_seed_entry;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/string_string_pair_vector;->getCPtr(Lorg/libtorrent4j/swig/string_string_pair_vector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->web_seed_entry_extra_headers_set(JLorg/libtorrent4j/swig/web_seed_entry;JLorg/libtorrent4j/swig/string_string_pair_vector;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/web_seed_entry;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->web_seed_entry_url_set(JLorg/libtorrent4j/swig/web_seed_entry;Ljava/lang/String;)V

    return-void
.end method
