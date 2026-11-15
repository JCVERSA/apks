.class public Landroidx/work/impl/utils/StartWorkRunnable;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mRuntimeExtras:Landroidx/work/WorkerParameters$a;

.field private mWorkManagerImpl:Landroidx/work/impl/d0;

.field private mWorkSpecId:Landroidx/work/impl/u;


# direct methods
.method public constructor <init>(Landroidx/work/impl/d0;Landroidx/work/impl/u;Landroidx/work/WorkerParameters$a;)V
    .locals 0
    .param p1    # Landroidx/work/impl/d0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/impl/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/work/WorkerParameters$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/utils/StartWorkRunnable;->mWorkManagerImpl:Landroidx/work/impl/d0;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/utils/StartWorkRunnable;->mWorkSpecId:Landroidx/work/impl/u;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/work/impl/utils/StartWorkRunnable;->mRuntimeExtras:Landroidx/work/WorkerParameters$a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/StartWorkRunnable;->mWorkManagerImpl:Landroidx/work/impl/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/d0;->q()Landroidx/work/impl/Processor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/work/impl/utils/StartWorkRunnable;->mWorkSpecId:Landroidx/work/impl/u;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/work/impl/utils/StartWorkRunnable;->mRuntimeExtras:Landroidx/work/WorkerParameters$a;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/Processor;->q(Landroidx/work/impl/u;Landroidx/work/WorkerParameters$a;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
