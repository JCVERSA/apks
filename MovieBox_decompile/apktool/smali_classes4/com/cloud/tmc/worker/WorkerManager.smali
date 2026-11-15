.class public final Lcom/cloud/tmc/worker/WorkerManager;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/worker/JSI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/worker/WorkerManager$Companion;,
        Lcom/cloud/tmc/worker/WorkerManager$MyWorkCall;,
        Lcom/cloud/tmc/worker/WorkerManager$MyWorkLifeCycle;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010$\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 S2\u00020\u0001:\u0003STUB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u001aH\u0016J\u001c\u0010\u001c\u001a\u00020\u001a2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0016J\r\u0010 \u001a\u00020\nH\u0016\u00a2\u0006\u0002\u0010!J\r\u0010\t\u001a\u00020\nH\u0016\u00a2\u0006\u0002\u0010!J\u0012\u0010\"\u001a\u00020\u001a2\u0008\u0010#\u001a\u0004\u0018\u00010\u0004H\u0016J\n\u0010$\u001a\u0004\u0018\u00010\u0004H\u0016J\n\u0010%\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010&\u001a\u00020\u0014H\u0016J\u0008\u0010\'\u001a\u00020\u000fH\u0016J\n\u0010(\u001a\u0004\u0018\u00010\u0004H\u0016J\u0008\u0010)\u001a\u00020\nH\u0016J\u000f\u0010*\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0002\u0010!J\u0008\u0010+\u001a\u00020\nH\u0016J\u001c\u0010,\u001a\u00020\u001a2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010-\u001a\u0004\u0018\u00010\u0004H\u0016J\u0008\u0010.\u001a\u00020\u001aH\u0002J\u001c\u0010/\u001a\u00020\u001a2\u0008\u00100\u001a\u0004\u0018\u00010\u00042\u0008\u00101\u001a\u0004\u0018\u00010\u0007H\u0017J&\u00102\u001a\u00020\u001a2\u0008\u00103\u001a\u0004\u0018\u00010\u00042\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000405H\u0016J(\u00106\u001a\u00020\u001a2\u001e\u00107\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040505H\u0016J\u0012\u00108\u001a\u00020\u001a2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u001c\u00109\u001a\u00020\u001a2\u0008\u0010:\u001a\u0004\u0018\u00010\u001e2\u0008\u00101\u001a\u0004\u0018\u00010\u0007H\u0016J&\u00109\u001a\u00020\u001a2\u0008\u0010;\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00042\u0008\u00101\u001a\u0004\u0018\u00010\u0007H\u0016J:\u00109\u001a\u00020\u001a2&\u0010<\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020>\u0018\u00010=j\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020>\u0018\u0001`?2\u0008\u00101\u001a\u0004\u0018\u00010\u0007H\u0016J0\u0010@\u001a\u00020\u001a2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010A\u001a\u0004\u0018\u00010\u00042\u0008\u00100\u001a\u0004\u0018\u00010\u00042\u0008\u0010B\u001a\u0004\u0018\u00010\u0007H\u0017J\u0012\u0010C\u001a\u00020\u001a2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010D\u001a\u00020\u001a2\u0008\u0010E\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010F\u001a\u00020\u001a2\u0008\u0010G\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010H\u001a\u00020\u001a2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010I\u001a\u00020\u001aH\u0016J\u0012\u0010J\u001a\u00020\u001a2\u0008\u0010K\u001a\u0004\u0018\u00010LH\u0016J\u0010\u0010M\u001a\u00020\u001a2\u0006\u0010N\u001a\u00020\u0014H\u0016J\u0008\u0010O\u001a\u00020\u001aH\u0016J\u0012\u0010P\u001a\u00020\u001a2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0004H\u0016J\r\u0010\u0015\u001a\u00020\nH\u0016\u00a2\u0006\u0002\u0010!J\u0008\u0010Q\u001a\u00020\u001aH\u0016J\u0008\u0010R\u001a\u00020\u0014H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006V"
    }
    d2 = {
        "Lcom/cloud/tmc/worker/WorkerManager;",
        "Lcom/cloud/tmc/kernel/worker/JSI;",
        "()V",
        "appId",
        "",
        "callbackMap",
        "",
        "Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;",
        "frameworkVersion",
        "fromWarmup",
        "",
        "listener",
        "Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;",
        "mGetPackageFileStatus",
        "mainHandler",
        "Landroid/os/Handler;",
        "node",
        "Lcom/cloud/tmc/kernel/node/Node;",
        "pendingCreateWorkerFail",
        "warmupChannel",
        "",
        "warmupSuccess",
        "worker",
        "Lcom/cloud/tmc/kernel/worker/IWorker;",
        "workerId",
        "debugRefresh",
        "",
        "destroy",
        "execJsCallback",
        "resultObj",
        "Lcom/google/gson/JsonObject;",
        "callbackId",
        "firstGetPackageFileStatus",
        "()Ljava/lang/Boolean;",
        "getFirstPackageFileSuccess",
        "miniAppId",
        "getFrameworkVersion",
        "getNode",
        "getWarmupChannel",
        "getWorkerHandler",
        "getWorkerId",
        "isDestroyed",
        "isRenderProcessGone",
        "isWorkerReady",
        "loadJS",
        "vUrl",
        "postCreateWorkerEvent",
        "postMessage",
        "message",
        "callBack",
        "registerObject",
        "key",
        "map",
        "",
        "registerObjects",
        "mapMap",
        "registerWorkerReadyListener",
        "sendJsonToWorker",
        "messageObject",
        "messageObjectStr",
        "messageObjectMap",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "sendMessageToWorker",
        "messageId",
        "workerCallback",
        "setAppId",
        "setCommonresId",
        "commonresId",
        "setFrameworkVersion",
        "version",
        "setNode",
        "setRenderReady",
        "setStartupParams",
        "params",
        "Landroid/os/Bundle;",
        "setWarmup",
        "channel",
        "setWarmupSuccess",
        "setWorkerId",
        "workerOnMessageReady",
        "workerType",
        "Companion",
        "MyWorkCall",
        "MyWorkLifeCycle",
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


# static fields
.field public static final Companion:Lcom/cloud/tmc/worker/WorkerManager$Companion;

.field private static final EVENT_RESEND_PAGE_ENTER:Ljava/lang/String;


# instance fields
.field private appId:Ljava/lang/String;

.field private callbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private frameworkVersion:Ljava/lang/String;

.field private fromWarmup:Z

.field private listener:Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;

.field private mGetPackageFileStatus:Z

.field private mainHandler:Landroid/os/Handler;

.field private node:Lcom/cloud/tmc/kernel/node/Node;

.field private pendingCreateWorkerFail:Z

.field private warmupChannel:I

.field private warmupSuccess:Z

.field private worker:Lcom/cloud/tmc/kernel/worker/IWorker;

.field private workerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/worker/WorkerManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/worker/WorkerManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/worker/WorkerManager;->Companion:Lcom/cloud/tmc/worker/WorkerManager$Companion;

    .line 8
    .line 9
    const-string v0, "resend_page_enter"

    .line 10
    .line 11
    sput-object v0, Lcom/cloud/tmc/worker/WorkerManager;->EVENT_RESEND_PAGE_ENTER:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->callbackMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->mainHandler:Landroid/os/Handler;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/worker/WorkerManager;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/worker/WorkerManager;->execJsCallback$lambda$0(Lcom/cloud/tmc/worker/WorkerManager;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getAppId$p(Lcom/cloud/tmc/worker/WorkerManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/worker/WorkerManager;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCallbackMap$p(Lcom/cloud/tmc/worker/WorkerManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/worker/WorkerManager;->callbackMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getEVENT_RESEND_PAGE_ENTER$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/worker/WorkerManager;->EVENT_RESEND_PAGE_ENTER:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getListener$p(Lcom/cloud/tmc/worker/WorkerManager;)Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/worker/WorkerManager;->listener:Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/cloud/tmc/worker/WorkerManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/worker/WorkerManager;->mainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getNode$p(Lcom/cloud/tmc/worker/WorkerManager;)Lcom/cloud/tmc/kernel/node/Node;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/worker/WorkerManager;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getWorker$p(Lcom/cloud/tmc/worker/WorkerManager;)Lcom/cloud/tmc/kernel/worker/IWorker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/worker/WorkerManager;->worker:Lcom/cloud/tmc/kernel/worker/IWorker;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getWorkerId$p(Lcom/cloud/tmc/worker/WorkerManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/worker/WorkerManager;->workerId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$postCreateWorkerEvent(Lcom/cloud/tmc/worker/WorkerManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/worker/WorkerManager;->postCreateWorkerEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setListener$p(Lcom/cloud/tmc/worker/WorkerManager;Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager;->listener:Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setPendingCreateWorkerFail$p(Lcom/cloud/tmc/worker/WorkerManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/worker/WorkerManager;->pendingCreateWorkerFail:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setWorker$p(Lcom/cloud/tmc/worker/WorkerManager;Lcom/cloud/tmc/kernel/worker/IWorker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager;->worker:Lcom/cloud/tmc/kernel/worker/IWorker;

    .line 2
    .line 3
    return-void
.end method

.method private static final execJsCallback$lambda$0(Lcom/cloud/tmc/worker/WorkerManager;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->callbackMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0, p2}, Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;->onCallBack(Lcom/google/gson/JsonObject;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/cloud/tmc/worker/WorkerManager;->callbackMap:Ljava/util/Map;

    .line 23
    .line 24
    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string p2, "Worker send message to Native/Render fail: "

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, " ; "

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string p1, "TmcWorker"

    .line 55
    .line 56
    invoke-static {p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_2
    return-void
.end method

.method private final postCreateWorkerEvent()V
    .locals 3

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerManager;->workerId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->createEvent(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/cloud/tmc/worker/WorkerManager;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 20
    .line 21
    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string v2, "create_miniapp_worker_fail"

    .line 28
    .line 29
    invoke-interface {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public debugRefresh()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->worker:Lcom/cloud/tmc/kernel/worker/IWorker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Landroid/webkit/WebView;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Landroid/webkit/WebView;

    .line 11
    .line 12
    const-string v6, "utf-8"

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const-string v4, ""

    .line 17
    .line 18
    const-string v5, "text/html"

    .line 19
    .line 20
    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->listener:Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerManager;->callbackMap:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerManager;->worker:Lcom/cloud/tmc/kernel/worker/IWorker;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/worker/IWorker;->destroy()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 17
    .line 18
    return-void
.end method

.method public execJsCallback(Lcom/google/gson/JsonObject;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->mainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/tmc/worker/a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2, p1}, Lcom/cloud/tmc/worker/a;-><init>(Lcom/cloud/tmc/worker/WorkerManager;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public firstGetPackageFileStatus()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->mGetPackageFileStatus:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public fromWarmup()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->fromWarmup:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getFirstPackageFileSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->mGetPackageFileStatus:Z

    .line 3
    .line 4
    const-class v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->createEvent(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerManager;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    sget-object v1, Lcom/cloud/tmc/worker/WorkerManager;->EVENT_RESEND_PAGE_ENTER:Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {v0, v1, p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public getFrameworkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->frameworkVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNode()Lcom/cloud/tmc/kernel/node/Node;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWarmupChannel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->warmupChannel:I

    .line 2
    .line 3
    return v0
.end method

.method public getWorkerHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->mainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWorkerId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->workerId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->worker:Lcom/cloud/tmc/kernel/worker/IWorker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/IWorker;->isDestroy()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :goto_1
    return v0
.end method

.method public isRenderProcessGone()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->worker:Lcom/cloud/tmc/kernel/worker/IWorker;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v2

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;->isRenderProcessGone()Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :cond_1
    return-object v2
.end method

.method public isWorkerReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->worker:Lcom/cloud/tmc/kernel/worker/IWorker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/IWorker;->isLoad()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :goto_1
    return v0
.end method

.method public loadJS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/cloud/tmc/worker/WorkerManager;->worker:Lcom/cloud/tmc/kernel/worker/IWorker;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/worker/IWorker;->loadJS(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v0, "parse appLoadResult fail:"

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p2, "TmcWorker"

    .line 40
    .line 41
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    :goto_0
    return-void
.end method

.method public postMessage(Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public registerObject(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "map"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->worker:Lcom/cloud/tmc/kernel/worker/IWorker;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/worker/IWorker;->registerObject(Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public registerObjects(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "mapMap"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->worker:Lcom/cloud/tmc/kernel/worker/IWorker;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/worker/IWorker;->registerObjects(Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public registerWorkerReadyListener(Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;)V
    .locals 10

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
    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerManager;->appId:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->INIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-interface {v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager;->listener:Lcom/cloud/tmc/kernel/worker/JSI$WorkerReadyListener;

    .line 18
    .line 19
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    new-instance v7, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;

    .line 28
    .line 29
    invoke-direct {v7, p0, v3}, Lcom/cloud/tmc/worker/WorkerManager$registerWorkerReadyListener$1;-><init>(Lcom/cloud/tmc/worker/WorkerManager;Lkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    const/4 v8, 0x3

    .line 33
    const/4 v9, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public sendJsonToWorker(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    const-string v0, "callbackId"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 2
    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerManager;->callbackMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/cloud/tmc/worker/WorkerManager;->worker:Lcom/cloud/tmc/kernel/worker/IWorker;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/worker/IWorker;->execute(Lcom/google/gson/JsonObject;)V

    :cond_2
    return-void
.end method

.method public sendJsonToWorker(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V
    .locals 0

    .line 4
    iget-object p2, p0, Lcom/cloud/tmc/worker/WorkerManager;->worker:Lcom/cloud/tmc/kernel/worker/IWorker;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/worker/IWorker;->execute(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendJsonToWorker(Ljava/util/HashMap;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 5
    const-string v0, "callbackId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 6
    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerManager;->callbackMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/cloud/tmc/worker/WorkerManager;->worker:Lcom/cloud/tmc/kernel/worker/IWorker;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/worker/IWorker;->execute(Ljava/util/HashMap;)V

    :cond_2
    return-void
.end method

.method public sendMessageToWorker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCommonresId(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->worker:Lcom/cloud/tmc/kernel/worker/IWorker;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/cloud/tmc/worker/debug/WebviewWorker;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/cloud/tmc/worker/debug/WebviewWorker;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->getmWebViewClientInstance()Lcom/cloud/tmc/worker/debug/DefaultWebViewClient;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-string p1, ""

    .line 22
    .line 23
    :cond_1
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/worker/debug/DefaultWebViewClient;->setCommonresId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :catchall_0
    :cond_2
    return-void
.end method

.method public setFrameworkVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager;->frameworkVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNode(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    return-void
.end method

.method public setRenderReady()V
    .locals 0

    .line 1
    return-void
.end method

.method public setStartupParams(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setWarmup(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->fromWarmup:Z

    .line 3
    .line 4
    iput p1, p0, Lcom/cloud/tmc/worker/WorkerManager;->warmupChannel:I

    .line 5
    .line 6
    return-void
.end method

.method public setWarmupSuccess()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->warmupSuccess:Z

    .line 3
    .line 4
    return-void
.end method

.method public setWorkerId(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->worker:Lcom/cloud/tmc/kernel/worker/IWorker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->workerId:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    const-string v3, "warmup_worker_id_"

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->pendingCreateWorkerFail:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iput-boolean v4, p0, Lcom/cloud/tmc/worker/WorkerManager;->pendingCreateWorkerFail:Z

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/cloud/tmc/worker/WorkerManager;->postCreateWorkerEvent()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iput-object p1, p0, Lcom/cloud/tmc/worker/WorkerManager;->workerId:Ljava/lang/String;

    .line 33
    .line 34
    return-void
.end method

.method public warmupSuccess()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->warmupSuccess:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public workerOnMessageReady()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->worker:Lcom/cloud/tmc/kernel/worker/IWorker;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/IWorker;->type()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x3

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->worker:Lcom/cloud/tmc/kernel/worker/IWorker;

    .line 13
    .line 14
    instance-of v1, v0, Lcom/cloud/tmc/worker/debug/WebviewWorker;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    check-cast v0, Lcom/cloud/tmc/worker/debug/WebviewWorker;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->registerWorkerMessageChannel()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public workerType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerManager;->worker:Lcom/cloud/tmc/kernel/worker/IWorker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/IWorker;->type()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method
