.class final Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/worker/WorkerManager;->registerWorkerReadyListener(Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;)V
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
    c = "com.cloud.tmc.worker.WorkerManager$registerWorkerReadyListener$1"
    f = "WorkerManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/cloud/tmc/worker/WorkerManager;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/worker/WorkerManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/worker/WorkerManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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
    new-instance p1, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;-><init>(Lcom/cloud/tmc/worker/WorkerManager;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    .line 12
    .line 13
    const-class v0, Lcom/cloud/tmc/kernel/proxy/worker/IWorkerFactory;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/worker/IWorkerFactory;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/cloud/tmc/worker/WorkerManager;->access$getAppId$p(Lcom/cloud/tmc/worker/WorkerManager;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/cloud/tmc/worker/WorkerManager;->access$getNode$p(Lcom/cloud/tmc/worker/WorkerManager;)Lcom/cloud/tmc/kernel/node/Node;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/worker/IWorkerFactory;->createWorker(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/worker/IWorker;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v2, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    .line 41
    .line 42
    new-instance v3, Lcom/cloud/tmc/worker/WorkerManager$MyWorkLifeCycle;

    .line 43
    .line 44
    invoke-direct {v3, v2}, Lcom/cloud/tmc/worker/WorkerManager$MyWorkLifeCycle;-><init>(Lcom/cloud/tmc/worker/WorkerManager;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v3}, Lcom/cloud/tmc/kernel/worker/IWorker;->registerWorkLifeCycle(Lcom/cloud/tmc/kernel/worker/WorkerLifeCycle;)V

    .line 48
    .line 49
    .line 50
    new-instance v3, Lcom/cloud/tmc/worker/WorkerManager$MyWorkCall;

    .line 51
    .line 52
    invoke-direct {v3, v2}, Lcom/cloud/tmc/worker/WorkerManager$MyWorkCall;-><init>(Lcom/cloud/tmc/worker/WorkerManager;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v3}, Lcom/cloud/tmc/kernel/worker/IWorker;->registerWorkerCallback(Lcom/cloud/tmc/kernel/worker/WorkerCallback;)V

    .line 56
    .line 57
    .line 58
    const-class v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 59
    .line 60
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 65
    .line 66
    invoke-static {v2}, Lcom/cloud/tmc/worker/WorkerManager;->access$getAppId$p(Lcom/cloud/tmc/worker/WorkerManager;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CREATE_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 71
    .line 72
    invoke-interface {v3, v2, v4, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/IWorker;->create()V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    move-object v0, v1

    .line 80
    :goto_0
    invoke-static {p1, v0}, Lcom/cloud/tmc/worker/WorkerManager;->access$setWorker$p(Lcom/cloud/tmc/worker/WorkerManager;Lcom/cloud/tmc/kernel/worker/IWorker;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/cloud/tmc/worker/WorkerManager;->access$getWorker$p(Lcom/cloud/tmc/worker/WorkerManager;)Lcom/cloud/tmc/kernel/worker/IWorker;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-nez p1, :cond_3

    .line 90
    .line 91
    iget-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/cloud/tmc/worker/WorkerManager;->access$getWorkerId$p(Lcom/cloud/tmc/worker/WorkerManager;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const/4 v0, 0x1

    .line 98
    if-eqz p1, :cond_2

    .line 99
    .line 100
    iget-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/cloud/tmc/worker/WorkerManager;->access$getWorkerId$p(Lcom/cloud/tmc/worker/WorkerManager;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string v2, "100000"

    .line 107
    .line 108
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_2

    .line 113
    .line 114
    iget-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    .line 115
    .line 116
    invoke-static {p1}, Lcom/cloud/tmc/worker/WorkerManager;->access$getWorkerId$p(Lcom/cloud/tmc/worker/WorkerManager;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_1

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    const/4 v3, 0x2

    .line 124
    const-string v4, "warmup_worker_id_"

    .line 125
    .line 126
    invoke-static {p1, v4, v2, v3, v1}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-ne p1, v0, :cond_1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    .line 134
    .line 135
    invoke-static {p1}, Lcom/cloud/tmc/worker/WorkerManager;->access$postCreateWorkerEvent(Lcom/cloud/tmc/worker/WorkerManager;)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    .line 140
    .line 141
    invoke-static {p1, v0}, Lcom/cloud/tmc/worker/WorkerManager;->access$setPendingCreateWorkerFail$p(Lcom/cloud/tmc/worker/WorkerManager;Z)V

    .line 142
    .line 143
    .line 144
    :cond_3
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 145
    .line 146
    return-object p1

    .line 147
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 148
    .line 149
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 150
    .line 151
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p1
.end method
