.class public Landroidx/work/impl/utils/WorkForegroundRunnable;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mForegroundUpdater:Landroidx/work/f;

.field final mFuture:Landroidx/work/impl/utils/futures/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/a;"
        }
    .end annotation
.end field

.field final mTaskExecutor:Lk4/c;

.field final mWorkSpec:Lj4/u;

.field final mWorker:Landroidx/work/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkForegroundRunnable"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/j;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/utils/WorkForegroundRunnable;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lj4/u;Landroidx/work/i;Landroidx/work/f;Lk4/c;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lj4/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/work/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/work/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lk4/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

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
    iput-object v0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mFuture:Landroidx/work/impl/utils/futures/a;

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mWorkSpec:Lj4/u;

    .line 13
    .line 14
    iput-object p3, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mWorker:Landroidx/work/i;

    .line 15
    .line 16
    iput-object p4, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mForegroundUpdater:Landroidx/work/f;

    .line 17
    .line 18
    iput-object p5, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mTaskExecutor:Lk4/c;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic a(Landroidx/work/impl/utils/WorkForegroundRunnable;Landroidx/work/impl/utils/futures/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/work/impl/utils/WorkForegroundRunnable;->lambda$run$0(Landroidx/work/impl/utils/futures/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$run$0(Landroidx/work/impl/utils/futures/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mFuture:Landroidx/work/impl/utils/futures/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->isCancelled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mWorker:Landroidx/work/i;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/work/i;->d()Lcom/google/common/util/concurrent/r;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Landroidx/work/impl/utils/futures/a;->v(Lcom/google/common/util/concurrent/r;)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->cancel(Z)Z

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
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
    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mFuture:Landroidx/work/impl/utils/futures/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public run()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeExperimentalUsageError"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mWorkSpec:Lj4/u;

    .line 2
    .line 3
    iget-boolean v0, v0, Lj4/u;->q:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Landroidx/work/impl/utils/futures/a;->x()Landroidx/work/impl/utils/futures/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mTaskExecutor:Lk4/c;

    .line 19
    .line 20
    invoke-interface {v1}, Lk4/c;->a()Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Landroidx/work/impl/utils/u;

    .line 25
    .line 26
    invoke-direct {v2, p0, v0}, Landroidx/work/impl/utils/u;-><init>(Landroidx/work/impl/utils/WorkForegroundRunnable;Landroidx/work/impl/utils/futures/a;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Landroidx/work/impl/utils/WorkForegroundRunnable$1;

    .line 33
    .line 34
    invoke-direct {v1, p0, v0}, Landroidx/work/impl/utils/WorkForegroundRunnable$1;-><init>(Landroidx/work/impl/utils/WorkForegroundRunnable;Landroidx/work/impl/utils/futures/a;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mTaskExecutor:Lk4/c;

    .line 38
    .line 39
    invoke-interface {v2}, Lk4/c;->a()Ljava/util/concurrent/Executor;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/utils/futures/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->mFuture:Landroidx/work/impl/utils/futures/a;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/a;->t(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method
