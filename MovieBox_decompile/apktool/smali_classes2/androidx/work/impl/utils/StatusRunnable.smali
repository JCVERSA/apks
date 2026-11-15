.class public abstract Landroidx/work/impl/utils/StatusRunnable;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final mFuture:Landroidx/work/impl/utils/futures/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/work/impl/utils/futures/a;->x()Landroidx/work/impl/utils/futures/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroidx/work/impl/utils/StatusRunnable;->mFuture:Landroidx/work/impl/utils/futures/a;

    .line 9
    .line 10
    return-void
.end method

.method public static forStringIds(Landroidx/work/impl/d0;Ljava/util/List;)Landroidx/work/impl/utils/StatusRunnable;
    .locals 1
    .param p0    # Landroidx/work/impl/d0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/d0;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/work/impl/utils/StatusRunnable<",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/impl/utils/StatusRunnable$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/utils/StatusRunnable$1;-><init>(Landroidx/work/impl/d0;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static forTag(Landroidx/work/impl/d0;Ljava/lang/String;)Landroidx/work/impl/utils/StatusRunnable;
    .locals 1
    .param p0    # Landroidx/work/impl/d0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/d0;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/work/impl/utils/StatusRunnable<",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/impl/utils/StatusRunnable$3;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/utils/StatusRunnable$3;-><init>(Landroidx/work/impl/d0;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static forUUID(Landroidx/work/impl/d0;Ljava/util/UUID;)Landroidx/work/impl/utils/StatusRunnable;
    .locals 1
    .param p0    # Landroidx/work/impl/d0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/d0;",
            "Ljava/util/UUID;",
            ")",
            "Landroidx/work/impl/utils/StatusRunnable<",
            "Landroidx/work/WorkInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/impl/utils/StatusRunnable$2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/utils/StatusRunnable$2;-><init>(Landroidx/work/impl/d0;Ljava/util/UUID;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static forUniqueWork(Landroidx/work/impl/d0;Ljava/lang/String;)Landroidx/work/impl/utils/StatusRunnable;
    .locals 1
    .param p0    # Landroidx/work/impl/d0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/d0;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/work/impl/utils/StatusRunnable<",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/impl/utils/StatusRunnable$4;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/utils/StatusRunnable$4;-><init>(Landroidx/work/impl/d0;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static forWorkQuerySpec(Landroidx/work/impl/d0;Landroidx/work/q;)Landroidx/work/impl/utils/StatusRunnable;
    .locals 1
    .param p0    # Landroidx/work/impl/d0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/work/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/d0;",
            "Landroidx/work/q;",
            ")",
            "Landroidx/work/impl/utils/StatusRunnable<",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/impl/utils/StatusRunnable$5;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/utils/StatusRunnable$5;-><init>(Landroidx/work/impl/d0;Landroidx/work/q;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getFuture()Lcom/google/common/util/concurrent/r;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/r;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/StatusRunnable;->mFuture:Landroidx/work/impl/utils/futures/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public run()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/StatusRunnable;->runInternal()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/work/impl/utils/StatusRunnable;->mFuture:Landroidx/work/impl/utils/futures/a;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/a;->t(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    iget-object v1, p0, Landroidx/work/impl/utils/StatusRunnable;->mFuture:Landroidx/work/impl/utils/futures/a;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/a;->u(Ljava/lang/Throwable;)Z

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method abstract runInternal()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
