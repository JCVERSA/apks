.class public final Lio/appmetrica/analytics/impl/K5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/J8;
.implements Lio/appmetrica/analytics/impl/W8;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/S6;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/S6;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K5;->a:Lio/appmetrica/analytics/impl/S6;

    sget-object v0, Lio/appmetrica/analytics/impl/hb;->h:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/hb;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v0, Lio/appmetrica/analytics/impl/hb;->F:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/hb;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v0, Lio/appmetrica/analytics/impl/hb;->A:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/hb;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v0, Lio/appmetrica/analytics/impl/hb;->d:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/hb;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v0, Lio/appmetrica/analytics/impl/hb;->l:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/hb;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v0, Lio/appmetrica/analytics/impl/hb;->m:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/hb;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v0, Lio/appmetrica/analytics/impl/hb;->o:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/hb;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v0, Lio/appmetrica/analytics/impl/hb;->k:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/hb;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lye9;->j([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/K5;->b:Ljava/util/Set;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/impl/S6;->a(Ljava/util/Set;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/K5;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/impl/S6;->a(Lio/appmetrica/analytics/impl/W8;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/K5;->a:Lio/appmetrica/analytics/impl/S6;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/K5;->b:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/S6;->a(Ljava/util/Set;)J

    move-result-wide v0

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/K5;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 5
    iget-object v2, p0, Lio/appmetrica/analytics/impl/K5;->b:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-gez v1, :cond_1

    invoke-static {}, Ly71;->t()V

    goto :goto_0

    .line 6
    :cond_2
    :goto_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/K5;->c:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v0, v1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 4
    iget-object v2, p0, Lio/appmetrica/analytics/impl/K5;->b:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-gez v1, :cond_1

    invoke-static {}, Ly71;->t()V

    goto :goto_0

    .line 5
    :cond_2
    :goto_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/K5;->c:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v0, v1

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public final b()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/K5;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
