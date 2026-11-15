.class public final Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;
.implements Lcom/cloud/tmc/integration/performance/WarmupExtension;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u00152\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0002J\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u001d\u001a\u00020\u0018H\u0016J\u001a\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u0005H\u0016J\u0012\u0010!\u001a\u00020\u00182\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u0012j\u0008\u0012\u0004\u0012\u00020\u0010`\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;",
        "Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;",
        "Lcom/cloud/tmc/integration/performance/WarmupExtension;",
        "()V",
        "TAG",
        "",
        "context",
        "Landroid/app/Application;",
        "creatingWorker",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "innerWorkerWarmupManager",
        "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;",
        "listener",
        "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;",
        "unUsedWorkerQueue",
        "Ljava/util/LinkedList;",
        "Lcom/cloud/tmc/kernel/worker/JSI;",
        "usedWorkerList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "createWorker",
        "",
        "sync",
        "destroy",
        "",
        "existWorker",
        "frameworkVersion",
        "getWorker",
        "init",
        "preWarmupWorkerFail",
        "registerListener",
        "removeWorker",
        "workerId",
        "warmupWorker",
        "param",
        "Lcom/cloud/tmc/integration/model/PrepareCallbackParam;",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/app/Application;

.field private creatingWorker:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private innerWorkerWarmupManager:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;

.field private listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

.field private final unUsedWorkerQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/cloud/tmc/kernel/worker/JSI;",
            ">;"
        }
    .end annotation
.end field

.field private final usedWorkerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/kernel/worker/JSI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "InnerWarmup"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->usedWorkerList:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Ljava/util/LinkedList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->creatingWorker:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    return-void
.end method

.method public static final synthetic access$getCreatingWorker$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->creatingWorker:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getInnerWorkerWarmupManager$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->innerWorkerWarmupManager:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getUnUsedWorkerQueue$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setInnerWorkerWarmupManager$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->innerWorkerWarmupManager:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setListener$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    .line 2
    .line 3
    return-void
.end method

.method private final existWorker(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez v0, :cond_5

    .line 9
    .line 10
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/cloud/tmc/kernel/worker/JSI;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->warmupSuccess()Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v1

    .line 32
    :goto_0
    if-eqz v0, :cond_5

    .line 33
    .line 34
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/cloud/tmc/kernel/worker/JSI;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->isRenderProcessGone()Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move v2, v1

    .line 56
    :goto_1
    if-nez v2, :cond_4

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->getFrameworkVersion()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const/4 v0, 0x0

    .line 66
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->isValid(Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_3

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    const/4 v1, 0x1

    .line 74
    goto :goto_4

    .line 75
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lcom/cloud/tmc/kernel/worker/JSI;

    .line 82
    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/worker/JSI;->destroy()V

    .line 86
    .line 87
    .line 88
    :cond_5
    :goto_4
    return v1
.end method


# virtual methods
.method public createWorker(Z)Z
    .locals 10

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->context:Landroid/app/Application;

    .line 5
    .line 6
    if-eqz v2, :cond_1

    .line 7
    .line 8
    iget-object v3, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v4, "InnerWorkerPool => createWorker"

    .line 11
    .line 12
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-class v3, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 16
    .line 17
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 22
    .line 23
    const-string v4, "innerWarmup"

    .line 24
    .line 25
    const-string v5, "{\"innerWarmUpRenderEnable\": true, \"innerWarmUpWorkerEnable\": true, \"renderMaxWarmupSize\": 1, \"workerMaxWarmupSize\": 1}"

    .line 26
    .line 27
    invoke-interface {v3, v4, v5}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-class v4, Lcom/cloud/tmc/integration/model/InnerWarmup;

    .line 32
    .line 33
    invoke-static {v3, v4}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lcom/cloud/tmc/integration/model/InnerWarmup;

    .line 38
    .line 39
    iget-object v5, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/InnerWarmup;->getInnerWarmUpWorkerEnable()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_0

    .line 46
    .line 47
    iget-object v6, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/InnerWarmup;->getWorkerMaxWarmupSize()I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-ge v6, v7, :cond_0

    .line 58
    .line 59
    iget-object v6, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->creatingWorker:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    .line 61
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-nez v6, :cond_0

    .line 66
    .line 67
    move v6, v1

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move v6, v0

    .line 70
    :goto_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    new-instance v8, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v9, "InnerWorkerPool => createWorker ret:"

    .line 80
    .line 81
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v3, ", canCreate:"

    .line 88
    .line 89
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v3, ", processName:"

    .line 96
    .line 97
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-static {v5, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/InnerWarmup;->getInnerWarmUpWorkerEnable()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_1

    .line 115
    .line 116
    iget-object v3, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/InnerWarmup;->getWorkerMaxWarmupSize()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-ge v3, v4, :cond_1

    .line 127
    .line 128
    iget-object v3, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->creatingWorker:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-nez v3, :cond_1

    .line 135
    .line 136
    iget-object v3, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->creatingWorker:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 137
    .line 138
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    .line 140
    .line 141
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-static {v3}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    new-instance v7, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;

    .line 150
    .line 151
    invoke-direct {v7, p0, v2, p1}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;-><init>(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;Landroid/app/Application;Lkotlin/coroutines/Continuation;)V

    .line 152
    .line 153
    .line 154
    const/4 v8, 0x3

    .line 155
    const/4 v9, 0x0

    .line 156
    const/4 v5, 0x0

    .line 157
    const/4 v6, 0x0

    .line 158
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .line 160
    .line 161
    return v1

    .line 162
    :catchall_0
    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    .line 163
    .line 164
    if-eqz v2, :cond_2

    .line 165
    .line 166
    invoke-interface {v2, v1}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;->warmupFail(I)V

    .line 167
    .line 168
    .line 169
    :cond_2
    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    .line 170
    .line 171
    return v0
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "InnerWorkerPool => destroy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->usedWorkerList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/cloud/tmc/kernel/worker/JSI;

    .line 25
    .line 26
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/worker/JSI;->destroy()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->usedWorkerList:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/cloud/tmc/kernel/worker/JSI;

    .line 52
    .line 53
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/worker/JSI;->destroy()V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->innerWorkerWarmupManager:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->context:Landroid/app/Application;

    .line 66
    .line 67
    return-void
.end method

.method public getWorker(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "InnerWorkerPool => getWorker unUsedWorkerQueue = "

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x0

    .line 37
    if-lez v0, :cond_4

    .line 38
    .line 39
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/cloud/tmc/kernel/worker/JSI;

    .line 46
    .line 47
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->warmupSuccess()Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v3, "unUsedWorkerQueue.peek().warmupSuccess()"

    .line 52
    .line 53
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/cloud/tmc/kernel/worker/JSI;

    .line 69
    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->isRenderProcessGone()Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    move v3, v1

    .line 84
    :goto_0
    if-nez v3, :cond_3

    .line 85
    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->getFrameworkVersion()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    move-object v3, v2

    .line 94
    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->isValid(Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_2

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->usedWorkerList:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-object v2, v0

    .line 107
    goto :goto_3

    .line 108
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 109
    .line 110
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->destroy()V

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    .line 114
    .line 115
    if-eqz v2, :cond_5

    .line 116
    .line 117
    const/4 v1, 0x1

    .line 118
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v3, "InnerWorkerPool => getWorker success:"

    .line 124
    .line 125
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-object v2
.end method

.method public init(Landroid/app/Application;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "worker init"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->context:Landroid/app/Application;

    .line 14
    .line 15
    return-void
.end method

.method public isValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/integration/performance/WarmupExtension$DefaultImpls;->isValid(Lcom/cloud/tmc/integration/performance/WarmupExtension;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public preWarmupWorkerFail()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "InnerWorkerPool => preWarmupWorkerFail unUsedWorkerQueue = "

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;->warmupFail(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-lez v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-int/lit8 v0, v0, -0x1

    .line 55
    .line 56
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "unUsedWorkerQueue[lastIndex]"

    .line 63
    .line 64
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    check-cast v1, Lcom/cloud/tmc/kernel/worker/JSI;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/worker/JSI;->destroy()V

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->creatingWorker:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public registerListener(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->existWorker(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;->warmupSuccess()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->creatingWorker:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    .line 25
    .line 26
    :try_start_0
    const-class p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 33
    .line 34
    const-string p2, "innerWarmupSetting"

    .line 35
    .line 36
    const-string v0, "{\"renderWaitTime\":1500,\"workerWaitTime\":1500}"

    .line 37
    .line 38
    invoke-interface {p1, p2, v0}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-class p2, Lcom/cloud/tmc/integration/performance/InnerWarmupSettingData;

    .line 43
    .line 44
    invoke-static {p1, p2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/cloud/tmc/integration/performance/InnerWarmupSettingData;

    .line 49
    .line 50
    new-instance p2, Ljava/util/Timer;

    .line 51
    .line 52
    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$registerListener$1;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$registerListener$1;-><init>(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/performance/InnerWarmupSettingData;->getWorkerWaitTime()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    invoke-virtual {p2, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    .line 69
    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    const/4 p2, 0x4

    .line 73
    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;->warmupFail(I)V

    .line 74
    .line 75
    .line 76
    :cond_1
    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/4 p2, 0x0

    .line 81
    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;->warmupFail(I)V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void
.end method

.method public removeWorker(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "workerId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "InnerWorkerPool => removeWorker workerId = "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->usedWorkerList:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/cloud/tmc/kernel/worker/JSI;

    .line 46
    .line 47
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/worker/JSI;->getWorkerId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    move-object v1, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/worker/JSI;->destroy()V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->usedWorkerList:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void
.end method

.method public warmupWorker(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->creatingWorker:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-lez v2, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v4, "InnerWorkerPool => warmupWorker unUsedWorkerQueue = "

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, " , canWarmup:"

    .line 42
    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->creatingWorker:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-lez v0, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->innerWorkerWarmupManager:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->unUsedWorkerQueue:Ljava/util/LinkedList;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v2, "unUsedWorkerQueue.last"

    .line 83
    .line 84
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    check-cast v1, Lcom/cloud/tmc/kernel/worker/JSI;

    .line 88
    .line 89
    new-instance v2, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$warmupWorker$1;

    .line 90
    .line 91
    invoke-direct {v2, p0}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$warmupWorker$1;-><init>(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)V

    .line 92
    .line 93
    .line 94
    iget-object v3, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->listener:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;

    .line 95
    .line 96
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;->warmup(Lcom/cloud/tmc/kernel/worker/JSI;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;Lcom/cloud/tmc/integration/performance/WarmUpCallback;Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    return-void
.end method
