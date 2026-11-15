.class abstract Lcom/google/common/util/concurrent/SequentialExecutor;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;,
        Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/util/concurrent/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/q;

    .line 2
    .line 3
    const-class v1, Lcom/google/common/util/concurrent/SequentialExecutor;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/q;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/common/util/concurrent/SequentialExecutor;->a:Lcom/google/common/util/concurrent/q;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/SequentialExecutor;)Ljava/util/Deque;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method static synthetic b(Lcom/google/common/util/concurrent/SequentialExecutor;)Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method static synthetic c(Lcom/google/common/util/concurrent/SequentialExecutor;Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;)Lcom/google/common/util/concurrent/SequentialExecutor$WorkerRunningState;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method static synthetic d(Lcom/google/common/util/concurrent/SequentialExecutor;)J
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method static synthetic e()Lcom/google/common/util/concurrent/q;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/SequentialExecutor;->a:Lcom/google/common/util/concurrent/q;

    .line 2
    .line 3
    return-object v0
.end method
