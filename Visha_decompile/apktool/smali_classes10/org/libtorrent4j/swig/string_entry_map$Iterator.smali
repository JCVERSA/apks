.class public Lorg/libtorrent4j/swig/string_entry_map$Iterator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libtorrent4j/swig/string_entry_map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Iterator"
.end annotation


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->swigCMemOwn:Z

    iput-wide p1, p0, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->swigCPtr:J

    return-void
.end method

.method public static synthetic access$000(Lorg/libtorrent4j/swig/string_entry_map$Iterator;Lorg/libtorrent4j/swig/string_entry_map$Iterator;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->isNot(Lorg/libtorrent4j/swig/string_entry_map$Iterator;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lorg/libtorrent4j/swig/string_entry_map$Iterator;)Lorg/libtorrent4j/swig/entry;
    .locals 0

    invoke-direct {p0}, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->getValue()Lorg/libtorrent4j/swig/entry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lorg/libtorrent4j/swig/string_entry_map$Iterator;Lorg/libtorrent4j/swig/entry;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->setValue(Lorg/libtorrent4j/swig/entry;)V

    return-void
.end method

.method public static synthetic access$300(Lorg/libtorrent4j/swig/string_entry_map$Iterator;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lorg/libtorrent4j/swig/string_entry_map$Iterator;)Lorg/libtorrent4j/swig/string_entry_map$Iterator;
    .locals 0

    invoke-direct {p0}, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->getNextUnchecked()Lorg/libtorrent4j/swig/string_entry_map$Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/string_entry_map$Iterator;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method private getKey()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->string_entry_map_Iterator_getKey(JLorg/libtorrent4j/swig/string_entry_map$Iterator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNextUnchecked()Lorg/libtorrent4j/swig/string_entry_map$Iterator;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/string_entry_map$Iterator;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->string_entry_map_Iterator_getNextUnchecked(JLorg/libtorrent4j/swig/string_entry_map$Iterator;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/string_entry_map$Iterator;-><init>(JZ)V

    return-object v0
.end method

.method private getValue()Lorg/libtorrent4j/swig/entry;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/entry;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->string_entry_map_Iterator_getValue(JLorg/libtorrent4j/swig/string_entry_map$Iterator;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/entry;-><init>(JZ)V

    return-object v0
.end method

.method private isNot(Lorg/libtorrent4j/swig/string_entry_map$Iterator;)Z
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->getCPtr(Lorg/libtorrent4j/swig/string_entry_map$Iterator;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->string_entry_map_Iterator_isNot(JLorg/libtorrent4j/swig/string_entry_map$Iterator;JLorg/libtorrent4j/swig/string_entry_map$Iterator;)Z

    move-result p0

    return p0
.end method

.method private setValue(Lorg/libtorrent4j/swig/entry;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/entry;->getCPtr(Lorg/libtorrent4j/swig/entry;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->string_entry_map_Iterator_setValue(JLorg/libtorrent4j/swig/string_entry_map$Iterator;JLorg/libtorrent4j/swig/entry;)V

    return-void
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/string_entry_map$Iterator;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->delete()V

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
    iget-wide v0, p0, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_string_entry_map_Iterator(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->swigCPtr:J
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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/string_entry_map$Iterator;->delete()V

    return-void
.end method
