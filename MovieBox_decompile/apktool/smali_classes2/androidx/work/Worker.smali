.class public abstract Landroidx/work/Worker;
.super Landroidx/work/i;
.source "source.java"


# instance fields
.field e:Landroidx/work/impl/utils/futures/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/i;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public d()Lcom/google/common/util/concurrent/r;
    .locals 3

    .line 1
    invoke-static {}, Landroidx/work/impl/utils/futures/a;->x()Landroidx/work/impl/utils/futures/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/work/i;->c()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Landroidx/work/Worker$2;

    .line 10
    .line 11
    invoke-direct {v2, p0, v0}, Landroidx/work/Worker$2;-><init>(Landroidx/work/Worker;Landroidx/work/impl/utils/futures/a;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final n()Lcom/google/common/util/concurrent/r;
    .locals 2

    .line 1
    invoke-static {}, Landroidx/work/impl/utils/futures/a;->x()Landroidx/work/impl/utils/futures/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroidx/work/Worker;->e:Landroidx/work/impl/utils/futures/a;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/work/i;->c()Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Landroidx/work/Worker$1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Landroidx/work/Worker$1;-><init>(Landroidx/work/Worker;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroidx/work/Worker;->e:Landroidx/work/impl/utils/futures/a;

    .line 20
    .line 21
    return-object v0
.end method

.method public abstract p()Landroidx/work/i$a;
.end method

.method public q()Landroidx/work/e;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "Expedited WorkRequests require a Worker to provide an implementation for \n `getForegroundInfo()`"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method
