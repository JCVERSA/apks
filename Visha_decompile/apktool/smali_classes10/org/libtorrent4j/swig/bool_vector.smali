.class public Lorg/libtorrent4j/swig/bool_vector;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Boolean;",
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
    invoke-static {}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_bool_vector__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/libtorrent4j/swig/bool_vector;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 13
    invoke-static {p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_bool_vector__SWIG_2(IZ)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/libtorrent4j/swig/bool_vector;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-boolean p3, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lorg/libtorrent4j/swig/bool_vector;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 10
    invoke-direct {p0, v0}, Lorg/libtorrent4j/swig/bool_vector;->doAdd(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/bool_vector;)V
    .locals 2

    .line 12
    invoke-static {p1}, Lorg/libtorrent4j/swig/bool_vector;->getCPtr(Lorg/libtorrent4j/swig/bool_vector;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->new_bool_vector__SWIG_1(JLorg/libtorrent4j/swig/bool_vector;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/libtorrent4j/swig/bool_vector;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>([Z)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lorg/libtorrent4j/swig/bool_vector;-><init>()V

    .line 5
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/libtorrent4j/swig/bool_vector;->doReserve(I)V

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-boolean v2, p1, v1

    .line 7
    invoke-direct {p0, v2}, Lorg/libtorrent4j/swig/bool_vector;->doAdd(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private doAdd(IZ)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->bool_vector_doAdd__SWIG_1(JLorg/libtorrent4j/swig/bool_vector;IZ)V

    return-void
.end method

.method private doAdd(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->bool_vector_doAdd__SWIG_0(JLorg/libtorrent4j/swig/bool_vector;Z)V

    return-void
.end method

.method private doCapacity()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->bool_vector_doCapacity(JLorg/libtorrent4j/swig/bool_vector;)I

    move-result p0

    return p0
.end method

.method private doGet(I)Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->bool_vector_doGet(JLorg/libtorrent4j/swig/bool_vector;I)Z

    move-result p0

    return p0
.end method

.method private doRemove(I)Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->bool_vector_doRemove(JLorg/libtorrent4j/swig/bool_vector;I)Z

    move-result p0

    return p0
.end method

.method private doRemoveRange(II)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->bool_vector_doRemoveRange(JLorg/libtorrent4j/swig/bool_vector;II)V

    return-void
.end method

.method private doReserve(I)V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/libtorrent4j/swig/libtorrent_jni;->bool_vector_doReserve(JLorg/libtorrent4j/swig/bool_vector;I)V

    return-void
.end method

.method private doSet(IZ)Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/libtorrent4j/swig/libtorrent_jni;->bool_vector_doSet(JLorg/libtorrent4j/swig/bool_vector;IZ)Z

    move-result p0

    return p0
.end method

.method private doSize()I
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->bool_vector_doSize(JLorg/libtorrent4j/swig/bool_vector;)I

    move-result p0

    return p0
.end method

.method public static getCPtr(Lorg/libtorrent4j/swig/bool_vector;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static swigRelease(Lorg/libtorrent4j/swig/bool_vector;)J
    .locals 3

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCPtr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCMemOwn:Z

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/bool_vector;->delete()V

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
.method public add(ILjava/lang/Boolean;)V
    .locals 1

    .line 5
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 6
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/libtorrent4j/swig/bool_vector;->doAdd(IZ)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/bool_vector;->add(ILjava/lang/Boolean;)V

    return-void
.end method

.method public add(Ljava/lang/Boolean;)Z
    .locals 2

    .line 3
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lorg/libtorrent4j/swig/bool_vector;->doAdd(Z)V

    return v1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/bool_vector;->add(Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public capacity()I
    .locals 0

    invoke-direct {p0}, Lorg/libtorrent4j/swig/bool_vector;->doCapacity()I

    move-result p0

    return p0
.end method

.method public clear()V
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->bool_vector_clear(JLorg/libtorrent4j/swig/bool_vector;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/libtorrent_jni;->delete_bool_vector(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCPtr:J
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

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/bool_vector;->delete()V

    return-void
.end method

.method public get(I)Ljava/lang/Boolean;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/libtorrent4j/swig/bool_vector;->doGet(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/bool_vector;->get(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lorg/libtorrent4j/swig/bool_vector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->bool_vector_isEmpty(JLorg/libtorrent4j/swig/bool_vector;)Z

    move-result p0

    return p0
.end method

.method public remove(I)Ljava/lang/Boolean;
    .locals 1

    .line 2
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 3
    invoke-direct {p0, p1}, Lorg/libtorrent4j/swig/bool_vector;->doRemove(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/bool_vector;->remove(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public removeRange(II)V
    .locals 1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    invoke-direct {p0, p1, p2}, Lorg/libtorrent4j/swig/bool_vector;->doRemoveRange(II)V

    return-void
.end method

.method public reserve(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/swig/bool_vector;->doReserve(I)V

    return-void
.end method

.method public set(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/libtorrent4j/swig/bool_vector;->doSet(IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/libtorrent4j/swig/bool_vector;->set(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    invoke-direct {p0}, Lorg/libtorrent4j/swig/bool_vector;->doSize()I

    move-result p0

    return p0
.end method
