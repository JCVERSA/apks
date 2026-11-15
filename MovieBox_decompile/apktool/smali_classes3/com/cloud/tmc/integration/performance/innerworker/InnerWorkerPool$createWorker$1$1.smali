.class final Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->createWorker(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cloud.tmc.integration.performance.innerworker.InnerWorkerPool$createWorker$1$1"
    f = "InnerWorkerPool.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Landroid/app/Application;

.field label:I

.field final synthetic this$0:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;Landroid/app/Application;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;",
            "Landroid/app/Application;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->this$0:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->$it:Landroid/app/Application;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->this$0:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->$it:Landroid/app/Application;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;-><init>(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;Landroid/app/Application;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/cloud/tmc/worker/WorkerManager;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/cloud/tmc/worker/WorkerManager;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/cloud/tmc/integration/performance/WarmupUtils;->INSTANCE:Lcom/cloud/tmc/integration/performance/WarmupUtils;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/performance/WarmupUtils;->getWarmupWorkerId()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "warmup_worker_id__"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/worker/WorkerManager;->setWorkerId(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/worker/WorkerManager;->setWarmup(I)V

    .line 49
    .line 50
    .line 51
    const-class v0, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    .line 58
    .line 59
    const-wide/16 v1, -0x1

    .line 60
    .line 61
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;->get(J)Lcom/cloud/tmc/kernel/engine/EngineRouter;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/cloud/tmc/worker/WorkerManager;->getWorkerId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v0, v1, p1}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->registerWorker(Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/JSI;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->this$0:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->access$getUnUsedWorkerQueue$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)Ljava/util/LinkedList;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->this$0:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->access$getTAG$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->this$0:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->access$getUnUsedWorkerQueue$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)Ljava/util/LinkedList;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v2, "InnerWorkerPool => addWorker unUsedWorkerQueue = "

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->this$0:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;

    .line 118
    .line 119
    new-instance v0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;

    .line 120
    .line 121
    invoke-direct {v0}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-static {p1, v0}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->access$setInnerWorkerWarmupManager$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->this$0:Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;

    .line 128
    .line 129
    invoke-static {p1}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;->access$getInnerWorkerWarmupManager$p(Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;)Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_0

    .line 134
    .line 135
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool$createWorker$1$1;->$it:Landroid/app/Application;

    .line 136
    .line 137
    sget-object v1, Lcom/cloud/tmc/integration/performance/WarmupType;->INNER_WORKER:Lcom/cloud/tmc/integration/performance/WarmupType;

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/performance/WarmupType;->getType()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-virtual {p1, v0, v1}, Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;->preWarmup(Landroid/content/Context;I)V

    .line 144
    .line 145
    .line 146
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 147
    .line 148
    return-object p1

    .line 149
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 150
    .line 151
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 152
    .line 153
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p1
.end method
