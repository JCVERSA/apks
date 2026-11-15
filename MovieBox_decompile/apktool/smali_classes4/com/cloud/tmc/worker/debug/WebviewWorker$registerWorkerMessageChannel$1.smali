.class public final Lcom/cloud/tmc/worker/debug/WebviewWorker$registerWorkerMessageChannel$1;
.super Landroid/webkit/WebMessagePort$WebMessageCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/worker/debug/WebviewWorker;->registerWorkerMessageChannel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/cloud/tmc/worker/debug/WebviewWorker$registerWorkerMessageChannel$1",
        "Landroid/webkit/WebMessagePort$WebMessageCallback;",
        "onMessage",
        "",
        "port",
        "Landroid/webkit/WebMessagePort;",
        "message",
        "Landroid/webkit/WebMessage;",
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
.field final synthetic this$0:Lcom/cloud/tmc/worker/debug/WebviewWorker;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker$registerWorkerMessageChannel$1;->this$0:Lcom/cloud/tmc/worker/debug/WebviewWorker;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebMessagePort$WebMessageCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMessage(Landroid/webkit/WebMessagePort;Landroid/webkit/WebMessage;)V
    .locals 1

    .line 1
    const-string v0, "port"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "message"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/webkit/WebMessage;->getData()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "workerSendToNative MessageChannel = "

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string v0, "miniapp"

    .line 33
    .line 34
    invoke-static {v0, p2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string p2, "abilityName"

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    const-string v0, "debugRefresh"

    .line 62
    .line 63
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_0

    .line 68
    .line 69
    invoke-static {}, Lcom/cloud/tmc/kernel/debug/a;->b()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker$registerWorkerMessageChannel$1;->this$0:Lcom/cloud/tmc/worker/debug/WebviewWorker;

    .line 74
    .line 75
    invoke-static {p2}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->access$getWorkerCallback$p(Lcom/cloud/tmc/worker/debug/WebviewWorker;)Lcom/cloud/tmc/kernel/worker/WorkerCallback;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    if-eqz p2, :cond_1

    .line 80
    .line 81
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/worker/WorkerCallback;->onCallBack(Lcom/google/gson/JsonObject;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    :goto_0
    return-void
.end method
