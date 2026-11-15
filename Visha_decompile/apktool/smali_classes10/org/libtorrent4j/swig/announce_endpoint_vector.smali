.class public Lorg/libtorrent4j/swig/announce_endpoint_vector;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/libtorrent4j/swig/announce_endpoint;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 11
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_announce_endpoint_vector__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/announce_endpoint_vector;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(ILorg/libtorrent4j/swig/announce_endpoint;)V
    .locals 2

    .line 13
    invoke-static {p2}, Lorg/libtorrent4j/swig/announce_endpoint;->getCPtr(Lorg/libtorrent4j/swig/announce_endpoint;)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_announce_endpoint_vector__SWIG_2(IJLorg/libtorrent4j/swig/announce_endpoint;)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/libtorrent4j/swig/announce_endpoint_vector;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/libtorrent4j/swig/announce_endpoint;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lorg/libtorrent4j/swig/announce_endpoint_vector;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/libtorrent4j/swig/announce_endpoint;

    .line 10
    invoke-direct {p0, v0}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->doAdd(Lorg/libtorrent4j/swig/announce_endpoint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/announce_endpoint_vector;)V
    .locals 2

    .line 12
    invoke-static {p1}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->getCPtr(Lorg/libtorrent4j/swig/announce_endpoint_vector;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_announce_endpoint_vector__SWIG_1(JLorg/libtorrent4j/swig/announce_endpoint_vector;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/announce_endpoint_vector;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>([Lorg/libtorrent4j/swig/announce_endpoint;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lorg/libtorrent4j/swig/announce_endpoint_vector;-><init>()V

    .line 5
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->doReserve(I)V

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 7
    invoke-direct {p0, v2}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->doAdd(Lorg/libtorrent4j/swig/announce_endpoint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private doAdd(ILorg/libtorrent4j/swig/announce_endpoint;)V
    .locals 7

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCPtr:J

    invoke-static {p2}, Lorg/libtorrent4j/swig/announce_endpoint;->getCPtr(Lorg/libtorrent4j/swig/announce_endpoint;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_endpoint_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/announce_endpoint_vector;IJLorg/libtorrent4j/swig/announce_endpoint;)V

    return-void
.end method

.method private doAdd(Lorg/libtorrent4j/swig/announce_endpoint;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/announce_endpoint;->getCPtr(Lorg/libtorrent4j/swig/announce_endpoint;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_endpoint_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/announce_endpoint_vector;JLorg/libtorrent4j/swig/announce_endpoint;)V

    return-void
.end method

.method private doCapacity()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_endpoint_vector_doCapacity(JLorg/libtorrent4j/swig/announce_endpoint_vector;)I

    move-result p0

    return p0
.end method

.method private doGet(I)Lorg/libtorrent4j/swig/announce_endpoint;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/announce_endpoint;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_endpoint_vector_doGet(JLorg/libtorrent4j/swig/announce_endpoint_vector;I)J

    move-result-wide p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/announce_endpoint;-><init>(JZ)V

    return-object v0
.end method

.method private doRemove(I)Lorg/libtorrent4j/swig/announce_endpoint;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/announce_endpoint;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_endpoint_vector_doRemove(JLorg/libtorrent4j/swig/announce_endpoint_vector;I)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/announce_endpoint;-><init>(JZ)V

    return-object v0
.end method

.method private doRemoveRange(II)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_endpoint_vector_doRemoveRange(JLorg/libtorrent4j/swig/announce_endpoint_vector;II)V

    return-void
.end method

.method private doReserve(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_endpoint_vector_doReserve(JLorg/libtorrent4j/swig/announce_endpoint_vector;I)V

    return-void
.end method

.method private doSet(ILorg/libtorrent4j/swig/announce_endpoint;)Lorg/libtorrent4j/swig/announce_endpoint;
    .locals 8

    new-instance v0, Lorg/libtorrent4j/swig/announce_endpoint;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCPtr:J

    invoke-static {p2}, Lorg/libtorrent4j/swig/announce_endpoint;->getCPtr(Lorg/libtorrent4j/swig/announce_endpoint;)J

    move-result-wide v5

    move-object v3, p0

    move v4, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_endpoint_vector_doSet(JLorg/libtorrent4j/swig/announce_endpoint_vector;IJLorg/libtorrent4j/swig/announce_endpoint;)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lorg/libtorrent4j/swig/announce_endpoint;-><init>(JZ)V

    return-object v0
.end method

.method private doSize()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_endpoint_vector_doSize(JLorg/libtorrent4j/swig/announce_endpoint_vector;)I

    move-result p0

    return p0
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/announce_endpoint_vector;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/announce_endpoint_vector;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->delete()V

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
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lorg/libtorrent4j/swig/announce_endpoint;

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->add(ILorg/libtorrent4j/swig/announce_endpoint;)V

    return-void
.end method

.method public add(ILorg/libtorrent4j/swig/announce_endpoint;)V
    .locals 1

    .line 5
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->doAdd(ILorg/libtorrent4j/swig/announce_endpoint;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Lorg/libtorrent4j/swig/announce_endpoint;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->add(Lorg/libtorrent4j/swig/announce_endpoint;)Z

    move-result p0

    return p0
.end method

.method public add(Lorg/libtorrent4j/swig/announce_endpoint;)Z
    .locals 2

    .line 3
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 4
    invoke-direct {p0, p1}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->doAdd(Lorg/libtorrent4j/swig/announce_endpoint;)V

    return v1
.end method

.method public capacity()I
    .locals 0

    invoke-direct {p0}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->doCapacity()I

    move-result p0

    return p0
.end method

.method public clear()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_endpoint_vector_clear(JLorg/libtorrent4j/swig/announce_endpoint_vector;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_announce_endpoint_vector(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCPtr:J
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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->delete()V

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->get(I)Lorg/libtorrent4j/swig/announce_endpoint;

    move-result-object p0

    return-object p0
.end method

.method public get(I)Lorg/libtorrent4j/swig/announce_endpoint;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->doGet(I)Lorg/libtorrent4j/swig/announce_endpoint;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/announce_endpoint_vector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->announce_endpoint_vector_isEmpty(JLorg/libtorrent4j/swig/announce_endpoint_vector;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->remove(I)Lorg/libtorrent4j/swig/announce_endpoint;

    move-result-object p0

    return-object p0
.end method

.method public remove(I)Lorg/libtorrent4j/swig/announce_endpoint;
    .locals 1

    .line 2
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 3
    invoke-direct {p0, p1}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->doRemove(I)Lorg/libtorrent4j/swig/announce_endpoint;

    move-result-object p0

    return-object p0
.end method

.method public removeRange(II)V
    .locals 1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    invoke-direct {p0, p1, p2}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->doRemoveRange(II)V

    return-void
.end method

.method public reserve(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->doReserve(I)V

    return-void
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/libtorrent4j/swig/announce_endpoint;

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->set(ILorg/libtorrent4j/swig/announce_endpoint;)Lorg/libtorrent4j/swig/announce_endpoint;

    move-result-object p0

    return-object p0
.end method

.method public set(ILorg/libtorrent4j/swig/announce_endpoint;)Lorg/libtorrent4j/swig/announce_endpoint;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->doSet(ILorg/libtorrent4j/swig/announce_endpoint;)Lorg/libtorrent4j/swig/announce_endpoint;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    invoke-direct {p0}, Lorg/libtorrent4j/swig/announce_endpoint_vector;->doSize()I

    move-result p0

    return p0
.end method
