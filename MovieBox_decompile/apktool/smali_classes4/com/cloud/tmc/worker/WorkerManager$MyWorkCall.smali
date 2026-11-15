.class public final Lcom/cloud/tmc/worker/WorkerManager$MyWorkCall;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/worker/WorkerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/worker/WorkerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyWorkCall"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/cloud/tmc/worker/WorkerManager$MyWorkCall;",
        "Lcom/cloud/tmc/kernel/worker/WorkerCallback;",
        "(Lcom/cloud/tmc/worker/WorkerManager;)V",
        "onCallBack",
        "",
        "resultObj",
        "Lcom/google/gson/JsonObject;",
        "com.cloud.tmc.worker"
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
.field final synthetic this$0:Lcom/cloud/tmc/worker/WorkerManager;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/worker/WorkerManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager$MyWorkCall;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/worker/WorkerManager;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/worker/WorkerManager$MyWorkCall;->onCallBack$lambda$0(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/worker/WorkerManager;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onCallBack$lambda$0(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/worker/WorkerManager;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    :try_start_0
    const-string v0, "abilityName"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    const-string v1, "callback"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const-string v0, "callbackId"

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {p1}, Lcom/cloud/tmc/worker/WorkerManager;->access$getCallbackMap$p(Lcom/cloud/tmc/worker/WorkerManager;)Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-interface {v1, p0}, Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;->onCallBack(Lcom/google/gson/JsonObject;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-static {p1}, Lcom/cloud/tmc/worker/WorkerManager;->access$getCallbackMap$p(Lcom/cloud/tmc/worker/WorkerManager;)Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const-class v0, Lcom/cloud/tmc/kernel/bridge/IMsgDispatcher;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/cloud/tmc/kernel/bridge/IMsgDispatcher;

    .line 72
    .line 73
    invoke-interface {v0, p1, p0}, Lcom/cloud/tmc/kernel/bridge/IMsgDispatcher;->handleMsgFromWorker(Lcom/cloud/tmc/kernel/worker/JSI;Lcom/google/gson/JsonObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v0, "Worker send message to Native/Render fail: "

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p0, " ; "

    .line 91
    .line 92
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    const-string p1, "TmcWorker"

    .line 100
    .line 101
    invoke-static {p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :goto_2
    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/google/gson/JsonObject;)V
    .locals 4

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerManager$MyWorkCall;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/cloud/tmc/worker/WorkerManager;->access$getAppId$p(Lcom/cloud/tmc/worker/WorkerManager;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->SEND_TO_NATIVE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 16
    .line 17
    new-instance v3, Lcom/google/gson/Gson;

    .line 18
    .line 19
    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager$MyWorkCall;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/cloud/tmc/worker/WorkerManager;->access$getMainHandler$p(Lcom/cloud/tmc/worker/WorkerManager;)Landroid/os/Handler;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerManager$MyWorkCall;->this$0:Lcom/cloud/tmc/worker/WorkerManager;

    .line 36
    .line 37
    new-instance v2, Lcom/cloud/tmc/worker/b;

    .line 38
    .line 39
    invoke-direct {v2, p1, v1}, Lcom/cloud/tmc/worker/b;-><init>(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/worker/WorkerManager;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method
