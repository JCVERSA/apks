.class public abstract Lcom/google/common/util/concurrent/AggregateFuture;
.super Lcom/google/common/util/concurrent/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;
    }
.end annotation


# static fields
.field public static final i:Lkj5;


# instance fields
.field public f:Lcom/google/common/collect/ImmutableCollection;

.field public final g:Z

.field public final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkj5;

    const-class v1, Lcom/google/common/util/concurrent/AggregateFuture;

    invoke-direct {v0, v1}, Lkj5;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/common/util/concurrent/AggregateFuture;->i:Lkj5;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ImmutableCollection;ZZ)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/c;-><init>(I)V

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ImmutableCollection;

    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFuture;->f:Lcom/google/common/collect/ImmutableCollection;

    iput-boolean p2, p0, Lcom/google/common/util/concurrent/AggregateFuture;->g:Z

    iput-boolean p3, p0, Lcom/google/common/util/concurrent/AggregateFuture;->h:Z

    return-void
.end method

.method public static G(Ljava/lang/Throwable;)V
    .locals 3

    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    const-string v0, "Input Future failed with Error"

    goto :goto_0

    :cond_0
    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    :goto_0
    sget-object v1, Lcom/google/common/util/concurrent/AggregateFuture;->i:Lkj5;

    invoke-virtual {v1}, Lkj5;->a()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic v(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/ImmutableCollection;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->F(Lcom/google/common/collect/ImmutableCollection;)V

    return-void
.end method

.method public static synthetic w(Lcom/google/common/util/concurrent/AggregateFuture;ILim5;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/AggregateFuture;->E(ILim5;)V

    return-void
.end method

.method public static x(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 1

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final A(Lcom/google/common/collect/ImmutableCollection;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/c;->t()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Less than 0 remaining futures"

    invoke-static {v1, v2}, Lxd8;->v(ZLjava/lang/Object;)V

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->I(Lcom/google/common/collect/ImmutableCollection;)V

    :cond_1
    return-void
.end method

.method public abstract B()V
.end method

.method public final C(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/c;->u()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->x(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/google/common/util/concurrent/AggregateFuture;->G(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    instance-of p0, p1, Ljava/lang/Error;

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/google/common/util/concurrent/AggregateFuture;->G(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final D()V
    .locals 5

    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->f:Lcom/google/common/collect/ImmutableCollection;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->f:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->B()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->f:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ldgb;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim5;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/google/common/util/concurrent/AggregateFuture;->H(ILim5;)V

    goto :goto_1

    :cond_1
    new-instance v4, Laa;

    invoke-direct {v4, p0, v1, v2}, Laa;-><init>(Lcom/google/common/util/concurrent/AggregateFuture;ILim5;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v2, v4, v1}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->f:Lcom/google/common/collect/ImmutableCollection;

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    new-instance v1, Lba;

    invoke-direct {v1, p0, v0}, Lba;-><init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/ImmutableCollection;)V

    iget-object v2, p0, Lcom/google/common/util/concurrent/AggregateFuture;->f:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ldgb;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim5;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AggregateFuture;->A(Lcom/google/common/collect/ImmutableCollection;)V

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final synthetic E(ILim5;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/AggregateFuture;->H(ILim5;)V

    return-void
.end method

.method public final synthetic F(Lcom/google/common/collect/ImmutableCollection;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->A(Lcom/google/common/collect/ImmutableCollection;)V

    return-void
.end method

.method public final H(ILim5;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->f:Lcom/google/common/collect/ImmutableCollection;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$h;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/AggregateFuture;->z(ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AggregateFuture;->A(Lcom/google/common/collect/ImmutableCollection;)V

    return-void

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AggregateFuture;->A(Lcom/google/common/collect/ImmutableCollection;)V

    throw p1
.end method

.method public final I(Lcom/google/common/collect/ImmutableCollection;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ldgb;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/AggregateFuture;->z(ILjava/util/concurrent/Future;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/c;->s()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->B()V

    sget-object p1, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->ALL_INPUT_FUTURES_PROCESSED:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->J(Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;)V

    return-void
.end method

.method public J(Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;)V
    .locals 0

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFuture;->f:Lcom/google/common/collect/ImmutableCollection;

    return-void
.end method

.method public final afterDone()V
    .locals 3

    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->afterDone()V

    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->f:Lcom/google/common/collect/ImmutableCollection;

    sget-object v1, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->OUTPUT_FUTURE_DONE:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AggregateFuture;->J(Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;)V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$h;->isCancelled()Z

    move-result v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->wasInterrupted()Z

    move-result p0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ldgb;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final pendingToString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->f:Lcom/google/common/collect/ImmutableCollection;

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "futures="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->pendingToString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final r(Ljava/util/Set;)V
    .locals 1

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$h;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->tryInternalFastPathGetFailure()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/google/common/util/concurrent/AggregateFuture;->x(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method public abstract y(ILjava/lang/Object;)V
.end method

.method public final z(ILjava/util/concurrent/Future;)V
    .locals 0

    :try_start_0
    invoke-static {p2}, Lwfb;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/AggregateFuture;->y(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->C(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->C(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
