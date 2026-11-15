.class public final Lcom/cloud/tmc/worker/debug/WebviewWorker;
.super Landroid/webkit/WebView;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/worker/IWorker;
.implements Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/worker/debug/WebviewWorker$MyJavascriptInterface;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u000b\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001OB/\u0008\u0007\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010&\u001a\u00020\'H\u0017J\u0008\u0010(\u001a\u00020\'H\u0016J\u0012\u0010)\u001a\u00020\'2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0012\u0010)\u001a\u00020\'2\u0008\u0010,\u001a\u0004\u0018\u00010\u0005H\u0016J0\u0010)\u001a\u00020\'2&\u0010-\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020/\u0018\u00010.j\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020/\u0018\u0001`0H\u0016J\u0012\u00101\u001a\u00020\'2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0002J\u0008\u00102\u001a\u000203H\u0016J\u0012\u00104\u001a\u0004\u0018\u0001052\u0006\u00106\u001a\u00020\u0005H\u0016J\u0008\u00107\u001a\u0004\u0018\u00010\u0014J\r\u0010\u000f\u001a\u00020\u0010H\u0016\u00a2\u0006\u0002\u00108J\r\u00109\u001a\u00020\u0010H\u0016\u00a2\u0006\u0002\u00108J\r\u0010:\u001a\u00020\u0010H\u0016\u00a2\u0006\u0002\u00108J\u0010\u0010;\u001a\u00020\'2\u0006\u0010<\u001a\u00020\u0005H\u0016J\u0010\u0010=\u001a\u00020\'2\u0006\u0010>\u001a\u00020\u0005H\u0016J\u001c\u0010?\u001a\u00020\'2\u0008\u0010@\u001a\u0004\u0018\u00010\u00012\u0008\u0010A\u001a\u0004\u0018\u00010BH\u0016J&\u0010C\u001a\u00020\'2\u0008\u00106\u001a\u0004\u0018\u00010\u00052\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050EH\u0016J(\u0010F\u001a\u00020\'2\u001e\u0010G\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050E0EH\u0016J\u0010\u0010H\u001a\u00020\'2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0012\u0010I\u001a\u00020\'2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0006\u0010J\u001a\u00020\'J\u0018\u0010K\u001a\u00020\'2\u0006\u00106\u001a\u00020\u00052\u0006\u0010L\u001a\u00020/H\u0016J\u0008\u0010M\u001a\u000203H\u0016J\u0008\u0010N\u001a\u00020\u0010H\u0002R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u000e\u0010!\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006P"
    }
    d2 = {
        "Lcom/cloud/tmc/worker/debug/WebviewWorker;",
        "Landroid/webkit/WebView;",
        "Lcom/cloud/tmc/kernel/worker/IWorker;",
        "Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;",
        "appId",
        "",
        "node",
        "Lcom/cloud/tmc/kernel/node/Node;",
        "context",
        "Landroid/content/Context;",
        "attributeSet",
        "Landroid/util/AttributeSet;",
        "(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "getAppId",
        "()Ljava/lang/String;",
        "isDestroy",
        "",
        "lifeCycle",
        "Lcom/cloud/tmc/kernel/worker/WorkerLifeCycle;",
        "mWebViewClient",
        "Lcom/cloud/tmc/worker/debug/DefaultWebViewClient;",
        "mainHandler",
        "Landroid/os/Handler;",
        "getNode",
        "()Lcom/cloud/tmc/kernel/node/Node;",
        "setNode",
        "(Lcom/cloud/tmc/kernel/node/Node;)V",
        "port0",
        "Landroid/webkit/WebMessagePort;",
        "getPort0",
        "()Landroid/webkit/WebMessagePort;",
        "setPort0",
        "(Landroid/webkit/WebMessagePort;)V",
        "receivedRenderProcessGone",
        "threadPool",
        "Ljava/util/concurrent/ExecutorService;",
        "workerCallback",
        "Lcom/cloud/tmc/kernel/worker/WorkerCallback;",
        "create",
        "",
        "destroy",
        "execute",
        "messageObj",
        "Lcom/google/gson/JsonObject;",
        "messageObjStr",
        "messageMap",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "executeJS",
        "getActivityRuntimes",
        "",
        "getData",
        "",
        "key",
        "getmWebViewClientInstance",
        "()Ljava/lang/Boolean;",
        "isLoad",
        "isRenderProcessGone",
        "loadJS",
        "filePath",
        "loadScript",
        "script",
        "onRenderProcessGone",
        "view",
        "detail",
        "Landroid/webkit/RenderProcessGoneDetail;",
        "registerObject",
        "map",
        "",
        "registerObjects",
        "mapMap",
        "registerWorkLifeCycle",
        "registerWorkerCallback",
        "registerWorkerMessageChannel",
        "setData",
        "value",
        "type",
        "useMessageChannel",
        "MyJavascriptInterface",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final appId:Ljava/lang/String;

.field private isDestroy:Z

.field private lifeCycle:Lcom/cloud/tmc/kernel/worker/WorkerLifeCycle;

.field private mWebViewClient:Lcom/cloud/tmc/worker/debug/DefaultWebViewClient;

.field private mainHandler:Landroid/os/Handler;

.field private node:Lcom/cloud/tmc/kernel/node/Node;

.field private port0:Landroid/webkit/WebMessagePort;

.field private receivedRenderProcessGone:Z

.field private threadPool:Ljava/util/concurrent/ExecutorService;

.field private workerCallback:Lcom/cloud/tmc/kernel/worker/WorkerCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Landroid/content/Context;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/worker/debug/WebviewWorker;-><init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->appId:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/worker/debug/WebviewWorker;-><init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/util/Map;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->registerObject$lambda$12$lambda$11(Ljava/lang/String;Ljava/util/Map;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getWorkerCallback$p(Lcom/cloud/tmc/worker/debug/WebviewWorker;)Lcom/cloud/tmc/kernel/worker/WorkerCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->workerCallback:Lcom/cloud/tmc/kernel/worker/WorkerCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->create$lambda$3$lambda$2(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->loadScript$lambda$8$lambda$7(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final create$lambda$3(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->mainHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Lcom/cloud/tmc/worker/debug/c;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/cloud/tmc/worker/debug/c;-><init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final create$lambda$3$lambda$2(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 4

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    .line 14
    .line 15
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;->isDebug()Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "get(BuildConfigProxy::class.java).isDebug"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    :catchall_0
    :cond_0
    new-instance v1, Lcom/cloud/tmc/worker/debug/DefaultWebViewClient;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->appId:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 38
    .line 39
    invoke-direct {v1, v2, v3, p0}, Lcom/cloud/tmc/worker/debug/DefaultWebViewClient;-><init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->mWebViewClient:Lcom/cloud/tmc/worker/debug/DefaultWebViewClient;

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lcom/cloud/tmc/worker/debug/DefaultWebChromeClient;

    .line 48
    .line 49
    invoke-direct {v1}, Lcom/cloud/tmc/worker/debug/DefaultWebChromeClient;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 60
    .line 61
    .line 62
    const-string v2, "UTF-8"

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Lcom/cloud/tmc/worker/debug/WebviewWorker$MyJavascriptInterface;

    .line 77
    .line 78
    invoke-direct {v0, p0}, Lcom/cloud/tmc/worker/debug/WebviewWorker$MyJavascriptInterface;-><init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    .line 79
    .line 80
    .line 81
    const-string v1, "debug"

    .line 82
    .line 83
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->lifeCycle:Lcom/cloud/tmc/kernel/worker/WorkerLifeCycle;

    .line 87
    .line 88
    if-eqz p0, :cond_1

    .line 89
    .line 90
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/worker/WorkerLifeCycle;->onCreate()V

    .line 91
    .line 92
    .line 93
    :cond_1
    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->loadJS$lambda$6$lambda$5(Ljava/lang/String;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->loadJS$lambda$6(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final execute$lambda$10(Lcom/cloud/tmc/worker/debug/WebviewWorker;Lcom/google/gson/JsonObject;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->mainHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Lcom/cloud/tmc/worker/debug/d;

    .line 9
    .line 10
    invoke-direct {v1, p1, p0}, Lcom/cloud/tmc/worker/debug/d;-><init>(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final execute$lambda$10$lambda$9(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
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
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "time"

    .line 17
    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p1, p0}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->executeJS(Lcom/google/gson/JsonObject;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final executeJS(Lcom/google/gson/JsonObject;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->useMessageChannel()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "miniapp"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "nativeSendToWorker MessageChannel= "

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->port0:Landroid/webkit/WebMessagePort;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    new-instance v2, Landroid/webkit/WebMessage;

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v2, p1}, Landroid/webkit/WebMessage;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/webkit/WebMessagePort;->postMessage(Landroid/webkit/WebMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v2, "port post message: "

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v2, "nativeSendToWorker DefaultChannel= "

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v1, "javascript:onMessage("

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const/16 p1, 0x29

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-instance v0, Lcom/cloud/tmc/worker/debug/WebviewWorker$executeJS$1;

    .line 111
    .line 112
    invoke-direct {v0}, Lcom/cloud/tmc/worker/debug/WebviewWorker$executeJS$1;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 116
    .line 117
    .line 118
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic f(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->execute$lambda$10$lambda$9(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->registerObject$lambda$12(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lcom/cloud/tmc/worker/debug/WebviewWorker;Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->execute$lambda$10(Lcom/cloud/tmc/worker/debug/WebviewWorker;Lcom/google/gson/JsonObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->create$lambda$3(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->loadScript$lambda$8(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final loadJS$lambda$6(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$filePath"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->mainHandler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v1, Lcom/cloud/tmc/worker/debug/f;

    .line 14
    .line 15
    invoke-direct {v1, p1, p0}, Lcom/cloud/tmc/worker/debug/f;-><init>(Ljava/lang/String;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static final loadJS$lambda$6$lambda$5(Ljava/lang/String;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 10

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 4
    .line 5
    const-string v2, "$filePath"

    .line 6
    .line 7
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "this$0"

    .line 11
    .line 12
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 31
    .line 32
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v4, "loadJS fail : js path : "

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, " is not exist"

    .line 48
    .line 49
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-interface {p1, v0, v2, p0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catch_0
    move-exception p0

    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :cond_0
    const-string v3, "/"

    .line 64
    .line 65
    const/4 v6, 0x6

    .line 66
    const/4 v7, 0x0

    .line 67
    const/4 v4, 0x0

    .line 68
    const/4 v5, 0x0

    .line 69
    move-object v2, p0

    .line 70
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const/16 v4, 0x2e

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 93
    .line 94
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    new-instance v2, Ljava/lang/StringBuffer;

    .line 105
    .line 106
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .line 108
    .line 109
    const-class v3, Lcom/cloud/tmc/kernel/proxy/worker/JSAheadParamsProxy;

    .line 110
    .line 111
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/worker/JSAheadParamsProxy;

    .line 116
    .line 117
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/proxy/worker/JSAheadParamsProxy;->getParasm()Ljava/util/Map;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    const-string v4, "get(JSAheadParamsProxy::class.java).parasm"

    .line 122
    .line 123
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_1

    .line 139
    .line 140
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    check-cast v4, Ljava/util/Map$Entry;

    .line 145
    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v6, "var "

    .line 152
    .line 153
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    check-cast v6, Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v6, " = \""

    .line 166
    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    check-cast v4, Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v4, "\";\n"

    .line 180
    .line 181
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string v4, "<!DOCTYPE html>\n<html>\n\t<head>\n\t\t<meta charset=\"utf-8\" />\n\t\t<title></title>\n\t</head>\n\t<script>\n\t"

    .line 198
    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v2, "\n\tvar global = window;\n\t\twindow.onload = function(){\n\u3000\u3000\u3000\u3000var script = document.createElement(\"script\");\n\u3000\u3000\u3000\u3000script.setAttribute(\"type\",\"text/javascript\");\n\u3000\u3000\u3000\u3000script.src = \""

    .line 206
    .line 207
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string p0, "\";\n\u3000\u3000\u3000\u3000document.getElementsByTagName(\"head\")[0].appendChild(script);  \n\u3000\u3000}\t</script></html>\n"

    .line 214
    .line 215
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    const-string v5, "https://100000.miniapp.transsion.com"

    .line 223
    .line 224
    const-string v7, "text/html"

    .line 225
    .line 226
    const-string v8, "utf-8"

    .line 227
    .line 228
    const/4 v9, 0x0

    .line 229
    move-object v4, p1

    .line 230
    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :goto_1
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 239
    .line 240
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 241
    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    const-string v3, "loadJS fail : Exception = "

    .line 248
    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    invoke-interface {p1, v0, v1, p0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :goto_2
    return-void
.end method

.method private static final loadScript$lambda$8(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$script"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->mainHandler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v1, Lcom/cloud/tmc/worker/debug/a;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/worker/debug/a;-><init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static final loadScript$lambda$8$lambda$7(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$script"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 18
    .line 19
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->LOAD_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 20
    .line 21
    const-string v3, ""

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-interface {v1, v3, v2, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :try_start_0
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 33
    .line 34
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->LOAD_JS_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 35
    .line 36
    invoke-interface {v2, v3, v5, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 44
    .line 45
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_WORKER_READY:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 46
    .line 47
    invoke-interface {v2, v3, v4, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Lcom/cloud/tmc/worker/debug/WebviewWorker$loadScript$1$1$1;

    .line 51
    .line 52
    invoke-direct {v2}, Lcom/cloud/tmc/worker/debug/WebviewWorker$loadScript$1$1$1;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    move-object p1, v3

    .line 60
    goto :goto_2

    .line 61
    :catch_0
    move-exception p1

    .line 62
    goto :goto_0

    .line 63
    :catch_1
    move-exception p1

    .line 64
    goto :goto_1

    .line 65
    :goto_0
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 70
    .line 71
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 72
    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v5, "loadJS fail : Error = "

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-interface {v0, v3, v2, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    goto :goto_2

    .line 98
    :goto_1
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 103
    .line 104
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 105
    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v5, "loadJS fail : Exception = "

    .line 112
    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-interface {v0, v3, v2, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    :goto_2
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 131
    .line 132
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v2, "abilityName"

    .line 136
    .line 137
    const-string v4, "callback"

    .line 138
    .line 139
    invoke-virtual {v0, v2, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v2, "callbackId"

    .line 143
    .line 144
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    new-instance v2, Lcom/google/gson/JsonObject;

    .line 148
    .line 149
    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v3, "eventName"

    .line 153
    .line 154
    const-string v4, "loadWorkerJS"

    .line 155
    .line 156
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance v3, Lcom/google/gson/JsonObject;

    .line 160
    .line 161
    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v4, "result"

    .line 165
    .line 166
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v3, v4, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string v1, "msg"

    .line 174
    .line 175
    invoke-virtual {v3, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const-string p1, "dataJson"

    .line 179
    .line 180
    invoke-virtual {v2, p1, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, p1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 184
    .line 185
    .line 186
    const-string p1, "source"

    .line 187
    .line 188
    const-string v1, "worker"

    .line 189
    .line 190
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const-string p1, "target"

    .line 194
    .line 195
    const-string v1, "render"

    .line 196
    .line 197
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object p0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->workerCallback:Lcom/cloud/tmc/kernel/worker/WorkerCallback;

    .line 201
    .line 202
    if-eqz p0, :cond_0

    .line 203
    .line 204
    invoke-interface {p0, v0}, Lcom/cloud/tmc/kernel/worker/WorkerCallback;->onCallBack(Lcom/google/gson/JsonObject;)V

    .line 205
    .line 206
    .line 207
    :cond_0
    return-void
.end method

.method private static final registerObject$lambda$12(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$map"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->mainHandler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v1, Lcom/cloud/tmc/worker/debug/j;

    .line 14
    .line 15
    invoke-direct {v1, p1, p2, p0}, Lcom/cloud/tmc/worker/debug/j;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static final registerObject$lambda$12$lambda$11(Ljava/lang/String;Ljava/util/Map;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 2

    .line 1
    const-string v0, "$map"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "var "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, " = "

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance p1, Lcom/cloud/tmc/worker/debug/WebviewWorker$registerObject$1$1$1;

    .line 37
    .line 38
    invoke-direct {p1}, Lcom/cloud/tmc/worker/debug/WebviewWorker$registerObject$1$1$1;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p0, p1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private final useMessageChannel()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 9
    .line 10
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->getFrameworkVersion()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "1.0.0"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const-string v2, "0.1.0"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    :cond_0
    move v0, v3

    .line 32
    :cond_1
    xor-int/2addr v0, v3

    .line 33
    :catch_0
    return v0
.end method


# virtual methods
.method public create()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/cloud/tmc/worker/debug/i;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/cloud/tmc/worker/debug/i;-><init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->isDestroy:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->isDestroy:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->lifeCycle:Lcom/cloud/tmc/kernel/worker/WorkerLifeCycle;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/WorkerLifeCycle;->onDestroy()V

    .line 17
    .line 18
    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->mWebViewClient:Lcom/cloud/tmc/worker/debug/DefaultWebViewClient;

    .line 28
    .line 29
    return-void
.end method

.method public execute(Lcom/google/gson/JsonObject;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->threadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cloud/tmc/worker/debug/h;

    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/worker/debug/h;-><init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;Lcom/google/gson/JsonObject;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public execute(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->execute(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public execute(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public getActivityRuntimes()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->getData(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getNode()Lcom/cloud/tmc/kernel/node/Node;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPort0()Landroid/webkit/WebMessagePort;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->port0:Landroid/webkit/WebMessagePort;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getmWebViewClientInstance()Lcom/cloud/tmc/worker/debug/DefaultWebViewClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->mWebViewClient:Lcom/cloud/tmc/worker/debug/DefaultWebViewClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public isDestroy()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->isDestroy:Z

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

.method public isLoad()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->isDestroy:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public isRenderProcessGone()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->receivedRenderProcessGone:Z

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

.method public loadJS(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "filePath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/cloud/tmc/worker/debug/g;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/worker/debug/g;-><init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public loadScript(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "script"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->isLoad()Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v1, ""

    .line 15
    .line 16
    const-class v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 25
    .line 26
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 27
    .line 28
    const-string v2, "loadJS fail : Worker is not load "

    .line 29
    .line 30
    invoke-interface {p1, v1, v0, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 45
    .line 46
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 47
    .line 48
    const-string v2, "loadJS fail : js string is null"

    .line 49
    .line 50
    invoke-interface {p1, v1, v0, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    new-instance v1, Lcom/cloud/tmc/worker/debug/b;

    .line 59
    .line 60
    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/worker/debug/b;-><init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->receivedRenderProcessGone:Z

    .line 3
    .line 4
    const-class v0, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/proxy/renderprocess/IOnRenderProcessGoneProxy;->received(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public registerObject(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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
    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/cloud/tmc/worker/debug/e;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1, p2}, Lcom/cloud/tmc/worker/debug/e;-><init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public registerObjects(Ljava/util/Map;)V
    .locals 2
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
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/util/Map;

    .line 37
    .line 38
    invoke-virtual {p0, v1, v0}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->registerObject(Ljava/lang/String;Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public registerWorkLifeCycle(Lcom/cloud/tmc/kernel/worker/WorkerLifeCycle;)V
    .locals 1

    .line 1
    const-string v0, "lifeCycle"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->lifeCycle:Lcom/cloud/tmc/kernel/worker/WorkerLifeCycle;

    .line 7
    .line 8
    return-void
.end method

.method public registerWorkerCallback(Lcom/cloud/tmc/kernel/worker/WorkerCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->workerCallback:Lcom/cloud/tmc/kernel/worker/WorkerCallback;

    .line 2
    .line 3
    return-void
.end method

.method public final registerWorkerMessageChannel()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->useMessageChannel()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/webkit/WebView;->createWebMessageChannel()[Landroid/webkit/WebMessagePort;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "this.createWebMessageChannel()"

    .line 14
    .line 15
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    aget-object v3, v2, v1

    .line 19
    .line 20
    iput-object v3, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->port0:Landroid/webkit/WebMessagePort;

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    new-instance v4, Lcom/cloud/tmc/worker/debug/WebviewWorker$registerWorkerMessageChannel$1;

    .line 25
    .line 26
    invoke-direct {v4, p0}, Lcom/cloud/tmc/worker/debug/WebviewWorker$registerWorkerMessageChannel$1;-><init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v4}, Landroid/webkit/WebMessagePort;->setWebMessageCallback(Landroid/webkit/WebMessagePort$WebMessageCallback;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    new-instance v3, Landroid/webkit/WebMessage;

    .line 33
    .line 34
    aget-object v2, v2, v0

    .line 35
    .line 36
    new-array v0, v0, [Landroid/webkit/WebMessagePort;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const-string v1, "mini_init"

    .line 41
    .line 42
    invoke-direct {v3, v1, v0}, Landroid/webkit/WebMessage;-><init>(Ljava/lang/String;[Landroid/webkit/WebMessagePort;)V

    .line 43
    .line 44
    .line 45
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 46
    .line 47
    invoke-virtual {p0, v3, v0}, Landroid/webkit/WebView;->postWebMessage(Landroid/webkit/WebMessage;Landroid/net/Uri;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "value"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setNode(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    return-void
.end method

.method public final setPort0(Landroid/webkit/WebMessagePort;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/WebviewWorker;->port0:Landroid/webkit/WebMessagePort;

    .line 2
    .line 3
    return-void
.end method

.method public type()I
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    return v0
.end method
