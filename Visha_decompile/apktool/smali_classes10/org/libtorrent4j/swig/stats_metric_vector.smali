.class public Lorg/libtorrent4j/swig/stats_metric_vector;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/libtorrent4j/swig/stats_metric;",
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
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_stats_metric_vector__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/stats_metric_vector;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(ILorg/libtorrent4j/swig/stats_metric;)V
    .locals 2

    .line 13
    invoke-static {p2}, Lorg/libtorrent4j/swig/stats_metric;->getCPtr(Lorg/libtorrent4j/swig/stats_metric;)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_stats_metric_vector__SWIG_2(IJLorg/libtorrent4j/swig/stats_metric;)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/libtorrent4j/swig/stats_metric_vector;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/libtorrent4j/swig/stats_metric;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lorg/libtorrent4j/swig/stats_metric_vector;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/libtorrent4j/swig/stats_metric;

    .line 10
    invoke-direct {p0, v0}, Lorg/libtorrent4j/swig/stats_metric_vector;->doAdd(Lorg/libtorrent4j/swig/stats_metric;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/stats_metric_vector;)V
    .locals 2

    .line 12
    invoke-static {p1}, Lorg/libtorrent4j/swig/stats_metric_vector;->getCPtr(Lorg/libtorrent4j/swig/stats_metric_vector;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_stats_metric_vector__SWIG_1(JLorg/libtorrent4j/swig/stats_metric_vector;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/stats_metric_vector;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>([Lorg/libtorrent4j/swig/stats_metric;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lorg/libtorrent4j/swig/stats_metric_vector;-><init>()V

    .line 5
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/libtorrent4j/swig/stats_metric_vector;->doReserve(I)V

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 7
    invoke-direct {p0, v2}, Lorg/libtorrent4j/swig/stats_metric_vector;->doAdd(Lorg/libtorrent4j/swig/stats_metric;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private doAdd(ILorg/libtorrent4j/swig/stats_metric;)V
    .locals 7

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCPtr:J

    invoke-static {p2}, Lorg/libtorrent4j/swig/stats_metric;->getCPtr(Lorg/libtorrent4j/swig/stats_metric;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/libtorrent4j/swig/libtorrent_jni;->stats_metric_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/stats_metric_vector;IJLorg/libtorrent4j/swig/stats_metric;)V

    return-void
.end method

.method private doAdd(Lorg/libtorrent4j/swig/stats_metric;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCPtr:J

    invoke-static {p1}, Lorg/libtorrent4j/swig/stats_metric;->getCPtr(Lorg/libtorrent4j/swig/stats_metric;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/libtorrent4j/swig/libtorrent_jni;->stats_metric_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/stats_metric_vector;JLorg/libtorrent4j/swig/stats_metric;)V

    return-void
.end method

.method private doCapacity()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->stats_metric_vector_doCapacity(JLorg/libtorrent4j/swig/stats_metric_vector;)I

    move-result p0

    return p0
.end method

.method private doGet(I)Lorg/libtorrent4j/swig/stats_metric;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/stats_metric;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->stats_metric_vector_doGet(JLorg/libtorrent4j/swig/stats_metric_vector;I)J

    move-result-wide p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/stats_metric;-><init>(JZ)V

    return-object v0
.end method

.method private doRemove(I)Lorg/libtorrent4j/swig/stats_metric;
    .locals 3

    new-instance v0, Lorg/libtorrent4j/swig/stats_metric;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->stats_metric_vector_doRemove(JLorg/libtorrent4j/swig/stats_metric_vector;I)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/libtorrent4j/swig/stats_metric;-><init>(JZ)V

    return-object v0
.end method

.method private doRemoveRange(II)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->stats_metric_vector_doRemoveRange(JLorg/libtorrent4j/swig/stats_metric_vector;II)V

    return-void
.end method

.method private doReserve(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->stats_metric_vector_doReserve(JLorg/libtorrent4j/swig/stats_metric_vector;I)V

    return-void
.end method

.method private doSet(ILorg/libtorrent4j/swig/stats_metric;)Lorg/libtorrent4j/swig/stats_metric;
    .locals 8

    new-instance v0, Lorg/libtorrent4j/swig/stats_metric;

    iget-wide v1, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCPtr:J

    invoke-static {p2}, Lorg/libtorrent4j/swig/stats_metric;->getCPtr(Lorg/libtorrent4j/swig/stats_metric;)J

    move-result-wide v5

    move-object v3, p0

    move v4, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Lorg/libtorrent4j/swig/libtorrent_jni;->stats_metric_vector_doSet(JLorg/libtorrent4j/swig/stats_metric_vector;IJLorg/libtorrent4j/swig/stats_metric;)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lorg/libtorrent4j/swig/stats_metric;-><init>(JZ)V

    return-object v0
.end method

.method private doSize()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->stats_metric_vector_doSize(JLorg/libtorrent4j/swig/stats_metric_vector;)I

    move-result p0

    return p0
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/stats_metric_vector;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/stats_metric_vector;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/stats_metric_vector;->delete()V

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
    check-cast p2, Lorg/libtorrent4j/swig/stats_metric;

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/stats_metric_vector;->add(ILorg/libtorrent4j/swig/stats_metric;)V

    return-void
.end method

.method public add(ILorg/libtorrent4j/swig/stats_metric;)V
    .locals 1

    .line 5
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/libtorrent4j/swig/stats_metric_vector;->doAdd(ILorg/libtorrent4j/swig/stats_metric;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Lorg/libtorrent4j/swig/stats_metric;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/stats_metric_vector;->add(Lorg/libtorrent4j/swig/stats_metric;)Z

    move-result p0

    return p0
.end method

.method public add(Lorg/libtorrent4j/swig/stats_metric;)Z
    .locals 2

    .line 3
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 4
    invoke-direct {p0, p1}, Lorg/libtorrent4j/swig/stats_metric_vector;->doAdd(Lorg/libtorrent4j/swig/stats_metric;)V

    return v1
.end method

.method public capacity()I
    .locals 0

    invoke-direct {p0}, Lorg/libtorrent4j/swig/stats_metric_vector;->doCapacity()I

    move-result p0

    return p0
.end method

.method public clear()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->stats_metric_vector_clear(JLorg/libtorrent4j/swig/stats_metric_vector;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_stats_metric_vector(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCPtr:J
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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/stats_metric_vector;->delete()V

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/stats_metric_vector;->get(I)Lorg/libtorrent4j/swig/stats_metric;

    move-result-object p0

    return-object p0
.end method

.method public get(I)Lorg/libtorrent4j/swig/stats_metric;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/libtorrent4j/swig/stats_metric_vector;->doGet(I)Lorg/libtorrent4j/swig/stats_metric;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/stats_metric_vector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->stats_metric_vector_isEmpty(JLorg/libtorrent4j/swig/stats_metric_vector;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/stats_metric_vector;->remove(I)Lorg/libtorrent4j/swig/stats_metric;

    move-result-object p0

    return-object p0
.end method

.method public remove(I)Lorg/libtorrent4j/swig/stats_metric;
    .locals 1

    .line 2
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 3
    invoke-direct {p0, p1}, Lorg/libtorrent4j/swig/stats_metric_vector;->doRemove(I)Lorg/libtorrent4j/swig/stats_metric;

    move-result-object p0

    return-object p0
.end method

.method public removeRange(II)V
    .locals 1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    invoke-direct {p0, p1, p2}, Lorg/libtorrent4j/swig/stats_metric_vector;->doRemoveRange(II)V

    return-void
.end method

.method public reserve(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/swig/stats_metric_vector;->doReserve(I)V

    return-void
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/libtorrent4j/swig/stats_metric;

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/stats_metric_vector;->set(ILorg/libtorrent4j/swig/stats_metric;)Lorg/libtorrent4j/swig/stats_metric;

    move-result-object p0

    return-object p0
.end method

.method public set(ILorg/libtorrent4j/swig/stats_metric;)Lorg/libtorrent4j/swig/stats_metric;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/libtorrent4j/swig/stats_metric_vector;->doSet(ILorg/libtorrent4j/swig/stats_metric;)Lorg/libtorrent4j/swig/stats_metric;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    invoke-direct {p0}, Lorg/libtorrent4j/swig/stats_metric_vector;->doSize()I

    move-result p0

    return p0
.end method
