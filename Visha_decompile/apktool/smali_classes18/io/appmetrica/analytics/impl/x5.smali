.class public final Lio/appmetrica/analytics/impl/x5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/w9;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/B9;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/B9;Ljava/util/List;Ljava/util/List;Lio/appmetrica/analytics/impl/f5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/B9;",
            "Ljava/util/List<",
            "+",
            "Lio/appmetrica/analytics/impl/J8;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lio/appmetrica/analytics/impl/J8;",
            ">;",
            "Lio/appmetrica/analytics/impl/f5;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/x5;->a:Lio/appmetrica/analytics/impl/B9;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/x5;->b:Ljava/util/List;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/x5;->c:Ljava/util/List;

    invoke-static {p4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/x5;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/x5;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/x5;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/x5;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/x5;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/J8;

    invoke-interface {v1}, Lio/appmetrica/analytics/impl/J8;->b()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/x5;->a:Lio/appmetrica/analytics/impl/B9;

    check-cast p0, Lio/appmetrica/analytics/impl/Jm;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Jm;->b()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/x5;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/appmetrica/analytics/impl/x5;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/J8;

    invoke-interface {v1}, Lio/appmetrica/analytics/impl/J8;->b()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/x5;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/J8;

    invoke-interface {v1}, Lio/appmetrica/analytics/impl/J8;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lio/appmetrica/analytics/impl/x5;->a:Lio/appmetrica/analytics/impl/B9;

    check-cast p0, Lio/appmetrica/analytics/impl/Jm;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Jm;->b()V

    :cond_5
    :goto_1
    return-void
.end method
