.class public final Lcom/cloud/tmc/miniapp/defaultimpl/WorkerImp;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/worker/IWorkerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createWorker(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/worker/IWorker;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/defaultimpl/WorkerImp;->workerType()I

    .line 3
    .line 4
    .line 5
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v2, 0x2

    .line 7
    const-string v3, ""

    .line 8
    .line 9
    const-class v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 22
    .line 23
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CONSOLE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 24
    .line 25
    const-string v4, "worker from webview"

    .line 26
    .line 27
    invoke-interface {v1, v3, v2, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/cloud/tmc/worker/debug/WebviewWorker;

    .line 31
    .line 32
    invoke-static {}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getSApplication()Landroid/app/Application;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    const/16 v10, 0x8

    .line 37
    .line 38
    const/4 v11, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    move-object v5, v1

    .line 41
    move-object v6, p1

    .line 42
    move-object v7, p2

    .line 43
    invoke-direct/range {v5 .. v11}, Lcom/cloud/tmc/worker/debug/WebviewWorker;-><init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_3

    .line 49
    :cond_1
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 54
    .line 55
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CONSOLE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 56
    .line 57
    const-string v1, "worker from quickJS"

    .line 58
    .line 59
    invoke-interface {p1, v3, p2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    :goto_0
    move-object v1, v0

    .line 63
    :goto_1
    :try_start_2
    const-class p1, Lcom/cloud/tmc/kernel/proxy/worker/JSAheadParamsProxy;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/worker/JSAheadParamsProxy;

    .line 70
    .line 71
    const-string p2, "workerType"

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/worker/IWorker;->type()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_2

    .line 84
    :catchall_1
    move-exception p1

    .line 85
    move-object v0, v1

    .line 86
    goto :goto_3

    .line 87
    :cond_2
    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {p2, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-static {p2}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/proxy/worker/JSAheadParamsProxy;->setParams(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :goto_3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/defaultimpl/WorkerImp;->workerType()I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v2, "create worker fail : "

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p1, " ; workerType = "

    .line 121
    .line 122
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    const-string p2, "miniapp"

    .line 133
    .line 134
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    move-object v1, v0

    .line 138
    :goto_4
    return-object v1
.end method

.method public workerType()I
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    return v0
.end method
