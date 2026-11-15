.class final Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/viewpool/ViewCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewCreatorThread"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u000cR%\u0010\u0010\u001a\u0010\u0012\u000c\u0012\n \u000f*\u0004\u0018\u00010\u000e0\u000e0\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R(\u0010\u0015\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;",
        "Ljava/lang/Thread;",
        "",
        "name",
        "Lcom/yandex/div/histogram/a;",
        "cpuUsageHistogramReporter",
        "<init>",
        "(Ljava/lang/String;Lcom/yandex/div/histogram/a;)V",
        "Lzfb;",
        "createView",
        "()V",
        "run",
        "Lcom/yandex/div/histogram/a;",
        "Lld0;",
        "Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;",
        "kotlin.jvm.PlatformType",
        "taskQueue",
        "Lld0;",
        "getTaskQueue",
        "()Lld0;",
        "<set-?>",
        "currentViewName",
        "Ljava/lang/String;",
        "getCurrentViewName",
        "()Ljava/lang/String;",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final cpuUsageHistogramReporter:Lcom/yandex/div/histogram/a;

.field private volatile currentViewName:Ljava/lang/String;

.field private final taskQueue:Lld0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lld0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/div/histogram/a;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cpuUsageHistogramReporter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;->cpuUsageHistogramReporter:Lcom/yandex/div/histogram/a;

    new-instance p1, Lld0;

    new-instance p2, Ljava/util/PriorityQueue;

    const/16 v0, 0x20

    invoke-direct {p2, v0}, Ljava/util/PriorityQueue;-><init>(I)V

    invoke-direct {p1, p2}, Lld0;-><init>(Ljava/util/Queue;)V

    iput-object p1, p0, Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;->taskQueue:Lld0;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-void
.end method

.method private final createView()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;->taskQueue:Lld0;

    invoke-virtual {v0}, Lld0;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x5

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;->taskQueue:Lld0;

    invoke-virtual {v0}, Lld0;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Ljava/lang/Thread;->setPriority(I)V

    const-string v1, "run {\n                //\u2026          }\n            }"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Ljava/lang/Thread;->setPriority(I)V

    throw v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->getViewName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;->currentViewName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;->currentViewName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCurrentViewName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;->currentViewName:Ljava/lang/String;

    return-object p0
.end method

.method public final getTaskQueue()Lld0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lld0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;->taskQueue:Lld0;

    return-object p0
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;->cpuUsageHistogramReporter:Lcom/yandex/div/histogram/a;

    const-string v1, "Div.ViewPool.CPU"

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/yandex/div/histogram/a;->a(Ljava/lang/String;I)Lar0;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;->createView()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Lar0;->cancel()V

    return-void

    :goto_1
    invoke-interface {v0}, Lar0;->cancel()V

    throw p0
.end method
