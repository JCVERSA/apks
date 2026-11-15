.class public Lorg/libtorrent4j/swig/int_string_map;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/swig/int_string_map$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_int_string_map__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/int_string_map;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/int_string_map;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/int_string_map;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/int_string_map;)V
    .locals 2

    .line 5
    invoke-static {p1}, Lorg/libtorrent4j/swig/int_string_map;->getCPtr(Lorg/libtorrent4j/swig/int_string_map;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_int_string_map__SWIG_1(JLorg/libtorrent4j/swig/int_string_map;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/int_string_map;-><init>(JZ)V

    return-void
.end method

.method private begin()Lorg/libtorrent4j/swig/int_string_map$Iterator;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/int_string_map$Iterator;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/int_string_map;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->int_string_map_begin(JLorg/libtorrent4j/swig/int_string_map;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/int_string_map$Iterator;-><init>(JZ)V

    return-object v0
.end method

.method private containsImpl(I)Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/int_string_map;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->int_string_map_containsImpl(JLorg/libtorrent4j/swig/int_string_map;I)Z

    move-result p0

    return p0
.end method

.method private end()Lorg/libtorrent4j/swig/int_string_map$Iterator;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/int_string_map$Iterator;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/int_string_map;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->int_string_map_end(JLorg/libtorrent4j/swig/int_string_map;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lorg/libtorrent4j/swig/int_string_map$Iterator;-><init>(JZ)V

    return-object v0
.end method

.method private find(I)Lorg/libtorrent4j/swig/int_string_map$Iterator;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/int_string_map$Iterator;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/int_string_map;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->int_string_map_find(JLorg/libtorrent4j/swig/int_string_map;I)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/int_string_map$Iterator;-><init>(JZ)V

    return-object v0
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/int_string_map;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/int_string_map;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method private putUnchecked(ILjava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/int_string_map;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->int_string_map_putUnchecked(JLorg/libtorrent4j/swig/int_string_map;ILjava/lang/String;)V

    return-void
.end method

.method private removeUnchecked(Lorg/libtorrent4j/swig/int_string_map$Iterator;)V
    .locals 6

    iget-wide v0, p0, Lorg/libtorrent4j/swig/int_string_map;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/int_string_map$Iterator;->getCPtr(Lorg/libtorrent4j/swig/int_string_map$Iterator;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->int_string_map_removeUnchecked(JLorg/libtorrent4j/swig/int_string_map;JLorg/libtorrent4j/swig/int_string_map$Iterator;)V

    return-void
.end method

.method private sizeImpl()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/int_string_map;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->int_string_map_sizeImpl(JLorg/libtorrent4j/swig/int_string_map;)I

    move-result p0

    return p0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/int_string_map;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/int_string_map;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/int_string_map;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/int_string_map;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/int_string_map;->delete()V

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

    iget-wide v0, p0, Lorg/libtorrent4j/swig/int_string_map;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->int_string_map_clear(JLorg/libtorrent4j/swig/int_string_map;)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/libtorrent4j/swig/int_string_map;->containsImpl(I)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/int_string_map;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/int_string_map;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/int_string_map;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_int_string_map(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/int_string_map;->swigCPtr:J
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

.method public entrySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0}, Lorg/libtorrent4j/swig/int_string_map;->begin()Lorg/libtorrent4j/swig/int_string_map$Iterator;

    move-result-object v1

    invoke-direct {p0}, Lorg/libtorrent4j/swig/int_string_map;->end()Lorg/libtorrent4j/swig/int_string_map$Iterator;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2}, Lorg/libtorrent4j/swig/int_string_map$Iterator;->access$000(Lorg/libtorrent4j/swig/int_string_map$Iterator;Lorg/libtorrent4j/swig/int_string_map$Iterator;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/libtorrent4j/swig/int_string_map$1;

    invoke-direct {v3, p0}, Lorg/libtorrent4j/swig/int_string_map$1;-><init>(Lorg/libtorrent4j/swig/int_string_map;)V

    invoke-static {v3, v1}, Lorg/libtorrent4j/swig/int_string_map$1;->access$400(Lorg/libtorrent4j/swig/int_string_map$1;Lorg/libtorrent4j/swig/int_string_map$Iterator;)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lorg/libtorrent4j/swig/int_string_map$Iterator;->access$500(Lorg/libtorrent4j/swig/int_string_map$Iterator;)Lorg/libtorrent4j/swig/int_string_map$Iterator;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/int_string_map;->delete()V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/int_string_map;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 2
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/libtorrent4j/swig/int_string_map;->find(I)Lorg/libtorrent4j/swig/int_string_map$Iterator;

    move-result-object p1

    .line 4
    invoke-direct {p0}, Lorg/libtorrent4j/swig/int_string_map;->end()Lorg/libtorrent4j/swig/int_string_map$Iterator;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/libtorrent4j/swig/int_string_map$Iterator;->access$000(Lorg/libtorrent4j/swig/int_string_map$Iterator;Lorg/libtorrent4j/swig/int_string_map$Iterator;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    invoke-static {p1}, Lorg/libtorrent4j/swig/int_string_map$Iterator;->access$100(Lorg/libtorrent4j/swig/int_string_map$Iterator;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/int_string_map;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->int_string_map_isEmpty(JLorg/libtorrent4j/swig/int_string_map;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/int_string_map;->put(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/libtorrent4j/swig/int_string_map;->find(I)Lorg/libtorrent4j/swig/int_string_map$Iterator;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lorg/libtorrent4j/swig/int_string_map;->end()Lorg/libtorrent4j/swig/int_string_map$Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/int_string_map$Iterator;->access$000(Lorg/libtorrent4j/swig/int_string_map$Iterator;Lorg/libtorrent4j/swig/int_string_map$Iterator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0}, Lorg/libtorrent4j/swig/int_string_map$Iterator;->access$100(Lorg/libtorrent4j/swig/int_string_map$Iterator;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {v0, p2}, Lorg/libtorrent4j/swig/int_string_map$Iterator;->access$200(Lorg/libtorrent4j/swig/int_string_map$Iterator;Ljava/lang/String;)V

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lorg/libtorrent4j/swig/int_string_map;->putUnchecked(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/int_string_map;->remove(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 2
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/libtorrent4j/swig/int_string_map;->find(I)Lorg/libtorrent4j/swig/int_string_map$Iterator;

    move-result-object p1

    .line 4
    invoke-direct {p0}, Lorg/libtorrent4j/swig/int_string_map;->end()Lorg/libtorrent4j/swig/int_string_map$Iterator;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/libtorrent4j/swig/int_string_map$Iterator;->access$000(Lorg/libtorrent4j/swig/int_string_map$Iterator;Lorg/libtorrent4j/swig/int_string_map$Iterator;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Lorg/libtorrent4j/swig/int_string_map$Iterator;->access$100(Lorg/libtorrent4j/swig/int_string_map$Iterator;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {p0, p1}, Lorg/libtorrent4j/swig/int_string_map;->removeUnchecked(Lorg/libtorrent4j/swig/int_string_map$Iterator;)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public size()I
    .locals 0

    invoke-direct {p0}, Lorg/libtorrent4j/swig/int_string_map;->sizeImpl()I

    move-result p0

    return p0
.end method
