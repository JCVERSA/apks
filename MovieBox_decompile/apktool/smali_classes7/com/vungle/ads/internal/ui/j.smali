.class public final Lcom/vungle/ads/internal/ui/j;
.super Landroid/webkit/WebViewClient;
.source "source.java"

# interfaces
.implements Lcom/vungle/ads/internal/ui/view/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/ui/j$a;,
        Lcom/vungle/ads/internal/ui/j$b;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/ui/j$a;

.field private static final TAG:Ljava/lang/String; = "VungleWebClient"


# instance fields
.field private final advertisement:Lcom/vungle/ads/internal/model/AdPayload;

.field private collectConsent:Z

.field private errorHandler:Lcom/vungle/ads/internal/ui/view/b$b;

.field private gdprAccept:Ljava/lang/String;

.field private gdprBody:Ljava/lang/String;

.field private gdprDeny:Ljava/lang/String;

.field private gdprTitle:Ljava/lang/String;

.field private isViewable:Ljava/lang/Boolean;

.field private loadedWebView:Landroid/webkit/WebView;

.field private mraidDelegate:Lcom/vungle/ads/internal/ui/view/b$a;

.field private final offloadExecutor:Ljava/util/concurrent/ExecutorService;

.field private final placement:Lcom/vungle/ads/internal/model/g;

.field private final platform:Lcom/vungle/ads/internal/platform/d;

.field private ready:Z

.field private final signalManager:Lcom/vungle/ads/internal/signals/SignalManager;

.field private webViewObserver:Lcom/vungle/ads/internal/omsdk/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/ui/j$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/ui/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/ui/j;->Companion:Lcom/vungle/ads/internal/ui/j$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/model/g;Ljava/util/concurrent/ExecutorService;Lcom/vungle/ads/internal/signals/SignalManager;Lcom/vungle/ads/internal/platform/d;)V
    .locals 1

    const-string v0, "advertisement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offloadExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/j;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 4
    iput-object p2, p0, Lcom/vungle/ads/internal/ui/j;->placement:Lcom/vungle/ads/internal/model/g;

    .line 5
    iput-object p3, p0, Lcom/vungle/ads/internal/ui/j;->offloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 6
    iput-object p4, p0, Lcom/vungle/ads/internal/ui/j;->signalManager:Lcom/vungle/ads/internal/signals/SignalManager;

    .line 7
    iput-object p5, p0, Lcom/vungle/ads/internal/ui/j;->platform:Lcom/vungle/ads/internal/platform/d;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/model/g;Ljava/util/concurrent/ExecutorService;Lcom/vungle/ads/internal/signals/SignalManager;Lcom/vungle/ads/internal/platform/d;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 1
    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/internal/ui/j;-><init>(Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/model/g;Ljava/util/concurrent/ExecutorService;Lcom/vungle/ads/internal/signals/SignalManager;Lcom/vungle/ads/internal/platform/d;)V

    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/ui/j;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/vungle/ads/internal/ui/j;->shouldOverrideUrlLoading$lambda-6$lambda-5$lambda-4$lambda-3(Lcom/vungle/ads/internal/ui/j;Landroid/webkit/WebView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/vungle/ads/internal/ui/view/b$a;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;Landroid/os/Handler;Lcom/vungle/ads/internal/ui/j;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/vungle/ads/internal/ui/j;->shouldOverrideUrlLoading$lambda-6$lambda-5$lambda-4(Lcom/vungle/ads/internal/ui/view/b$a;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;Landroid/os/Handler;Lcom/vungle/ads/internal/ui/j;Landroid/webkit/WebView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/vungle/ads/internal/ui/j;Landroid/os/Handler;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/vungle/ads/internal/ui/j;->shouldOverrideUrlLoading$lambda-6$lambda-1(Lcom/vungle/ads/internal/ui/j;Landroid/os/Handler;Landroid/webkit/WebView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/vungle/ads/internal/ui/j;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/vungle/ads/internal/ui/j;->shouldOverrideUrlLoading$lambda-6$lambda-1$lambda-0(Lcom/vungle/ads/internal/ui/j;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic getCollectConsent$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getErrorHandler$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getGdprAccept$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getGdprBody$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getGdprDeny$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getGdprTitle$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getLoadedWebView$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getMraidDelegate$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getReady$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getWebViewObserver$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final handleWebViewError(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const/16 p2, 0x20

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p2, p0, Lcom/vungle/ads/internal/ui/j;->errorHandler:Lcom/vungle/ads/internal/ui/view/b$b;

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-interface {p2, p1, p3}, Lcom/vungle/ads/internal/ui/view/b$b;->onReceivedError(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method private final isCriticalAsset(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/j;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/model/AdPayload;->isCriticalAsset(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public static synthetic isViewable$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final runJavascriptOnWebView(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 2
    .line 3
    const-string v1, "VungleWebClient"

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "mraid Injecting JS "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    new-instance p2, Lcom/vungle/ads/EvaluateJsError;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v1, "Evaluate js failed "

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p2, p1}, Lcom/vungle/ads/EvaluateJsError;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/j;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/AdPayload;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p2, p1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 70
    .line 71
    .line 72
    :cond_0
    :goto_0
    return-void
.end method

.method private static final shouldOverrideUrlLoading$lambda-6$lambda-1(Lcom/vungle/ads/internal/ui/j;Landroid/os/Handler;Landroid/webkit/WebView;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$handler"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/j;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->createMRAIDArgs()Lkotlinx/serialization/json/JsonObject;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "window.vungle.mraidBridge.notifyReadyEvent("

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v0, 0x29

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lcom/vungle/ads/internal/ui/g;

    .line 40
    .line 41
    invoke-direct {v1, p0, p2, v0}, Lcom/vungle/ads/internal/ui/g;-><init>(Lcom/vungle/ads/internal/ui/j;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private static final shouldOverrideUrlLoading$lambda-6$lambda-1$lambda-0(Lcom/vungle/ads/internal/ui/j;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$injectJs"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/vungle/ads/internal/ui/j;->runJavascriptOnWebView(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final shouldOverrideUrlLoading$lambda-6$lambda-5$lambda-4(Lcom/vungle/ads/internal/ui/view/b$a;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;Landroid/os/Handler;Lcom/vungle/ads/internal/ui/j;Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    const-string v0, "$it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$command"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "$args"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "$handler"

    .line 17
    .line 18
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "this$0"

    .line 22
    .line 23
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, p1, p2}, Lcom/vungle/ads/internal/ui/view/b$a;->processCommand(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    new-instance p0, Lcom/vungle/ads/internal/ui/f;

    .line 33
    .line 34
    invoke-direct {p0, p4, p5}, Lcom/vungle/ads/internal/ui/f;-><init>(Lcom/vungle/ads/internal/ui/j;Landroid/webkit/WebView;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method private static final shouldOverrideUrlLoading$lambda-6$lambda-5$lambda-4$lambda-3(Lcom/vungle/ads/internal/ui/j;Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "window.vungle.mraidBridge.notifyCommandComplete()"

    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Lcom/vungle/ads/internal/ui/j;->runJavascriptOnWebView(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getCollectConsent$vungle_ads_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/ui/j;->collectConsent:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getErrorHandler$vungle_ads_release()Lcom/vungle/ads/internal/ui/view/b$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/j;->errorHandler:Lcom/vungle/ads/internal/ui/view/b$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGdprAccept$vungle_ads_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/j;->gdprAccept:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGdprBody$vungle_ads_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/j;->gdprBody:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGdprDeny$vungle_ads_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/j;->gdprDeny:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGdprTitle$vungle_ads_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/j;->gdprTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLoadedWebView$vungle_ads_release()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/j;->loadedWebView:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMraidDelegate$vungle_ads_release()Lcom/vungle/ads/internal/ui/view/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/j;->mraidDelegate:Lcom/vungle/ads/internal/ui/view/b$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReady$vungle_ads_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/ui/j;->ready:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getWebViewObserver$vungle_ads_release()Lcom/vungle/ads/internal/omsdk/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/j;->webViewObserver:Lcom/vungle/ads/internal/omsdk/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isViewable$vungle_ads_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/j;->isViewable:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final notifyDiskAvailableSize(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/j;->loadedWebView:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "window.vungle.mraidBridgeExt.notifyAvailableDiskSpace("

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 p1, 0x29

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, v0, p1}, Lcom/vungle/ads/internal/ui/j;->runJavascriptOnWebView(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public notifyPropertiesChange(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/j;->loadedWebView:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    new-instance v1, Lkotlinx/serialization/json/s;

    .line 6
    .line 7
    invoke-direct {v1}, Lkotlinx/serialization/json/s;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lkotlinx/serialization/json/s;

    .line 11
    .line 12
    invoke-direct {v2}, Lkotlinx/serialization/json/s;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "width"

    .line 24
    .line 25
    invoke-static {v2, v4, v3}, Lkotlinx/serialization/json/i;->b(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/Number;)Lkotlinx/serialization/json/h;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v5, "height"

    .line 37
    .line 38
    invoke-static {v2, v5, v3}, Lkotlinx/serialization/json/i;->b(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/Number;)Lkotlinx/serialization/json/h;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lkotlinx/serialization/json/s;->a()Lkotlinx/serialization/json/JsonObject;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    new-instance v3, Lkotlinx/serialization/json/s;

    .line 46
    .line 47
    invoke-direct {v3}, Lkotlinx/serialization/json/s;-><init>()V

    .line 48
    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    const-string v8, "x"

    .line 56
    .line 57
    invoke-static {v3, v8, v7}, Lkotlinx/serialization/json/i;->b(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/Number;)Lkotlinx/serialization/json/h;

    .line 58
    .line 59
    .line 60
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    const-string v7, "y"

    .line 65
    .line 66
    invoke-static {v3, v7, v6}, Lkotlinx/serialization/json/i;->b(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/Number;)Lkotlinx/serialization/json/h;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-static {v3, v4, v6}, Lkotlinx/serialization/json/i;->b(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/Number;)Lkotlinx/serialization/json/h;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {v3, v5, v4}, Lkotlinx/serialization/json/i;->b(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/Number;)Lkotlinx/serialization/json/h;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Lkotlinx/serialization/json/s;->a()Lkotlinx/serialization/json/JsonObject;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    new-instance v4, Lkotlinx/serialization/json/s;

    .line 96
    .line 97
    invoke-direct {v4}, Lkotlinx/serialization/json/s;-><init>()V

    .line 98
    .line 99
    .line 100
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 101
    .line 102
    const-string v6, "sms"

    .line 103
    .line 104
    invoke-static {v4, v6, v5}, Lkotlinx/serialization/json/i;->a(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/h;

    .line 105
    .line 106
    .line 107
    const-string v6, "tel"

    .line 108
    .line 109
    invoke-static {v4, v6, v5}, Lkotlinx/serialization/json/i;->a(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/h;

    .line 110
    .line 111
    .line 112
    const-string v6, "calendar"

    .line 113
    .line 114
    invoke-static {v4, v6, v5}, Lkotlinx/serialization/json/i;->a(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/h;

    .line 115
    .line 116
    .line 117
    const-string v6, "storePicture"

    .line 118
    .line 119
    invoke-static {v4, v6, v5}, Lkotlinx/serialization/json/i;->a(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/h;

    .line 120
    .line 121
    .line 122
    const-string v6, "inlineVideo"

    .line 123
    .line 124
    invoke-static {v4, v6, v5}, Lkotlinx/serialization/json/i;->a(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/h;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Lkotlinx/serialization/json/s;->a()Lkotlinx/serialization/json/JsonObject;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    const-string v6, "maxSize"

    .line 132
    .line 133
    invoke-virtual {v1, v6, v2}, Lkotlinx/serialization/json/s;->b(Ljava/lang/String;Lkotlinx/serialization/json/h;)Lkotlinx/serialization/json/h;

    .line 134
    .line 135
    .line 136
    const-string v6, "screenSize"

    .line 137
    .line 138
    invoke-virtual {v1, v6, v2}, Lkotlinx/serialization/json/s;->b(Ljava/lang/String;Lkotlinx/serialization/json/h;)Lkotlinx/serialization/json/h;

    .line 139
    .line 140
    .line 141
    const-string v2, "defaultPosition"

    .line 142
    .line 143
    invoke-virtual {v1, v2, v3}, Lkotlinx/serialization/json/s;->b(Ljava/lang/String;Lkotlinx/serialization/json/h;)Lkotlinx/serialization/json/h;

    .line 144
    .line 145
    .line 146
    const-string v2, "currentPosition"

    .line 147
    .line 148
    invoke-virtual {v1, v2, v3}, Lkotlinx/serialization/json/s;->b(Ljava/lang/String;Lkotlinx/serialization/json/h;)Lkotlinx/serialization/json/h;

    .line 149
    .line 150
    .line 151
    const-string v2, "supports"

    .line 152
    .line 153
    invoke-virtual {v1, v2, v4}, Lkotlinx/serialization/json/s;->b(Ljava/lang/String;Lkotlinx/serialization/json/h;)Lkotlinx/serialization/json/h;

    .line 154
    .line 155
    .line 156
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/j;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 157
    .line 158
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/AdPayload;->templateType()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    const-string v3, "placementType"

    .line 163
    .line 164
    invoke-static {v1, v3, v2}, Lkotlinx/serialization/json/i;->c(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/h;

    .line 165
    .line 166
    .line 167
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/j;->isViewable:Ljava/lang/Boolean;

    .line 168
    .line 169
    if-eqz v2, :cond_0

    .line 170
    .line 171
    const-string v3, "isViewable"

    .line 172
    .line 173
    invoke-static {v1, v3, v2}, Lkotlinx/serialization/json/i;->a(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/h;

    .line 174
    .line 175
    .line 176
    :cond_0
    const-string v2, "os"

    .line 177
    .line 178
    const-string v3, "android"

    .line 179
    .line 180
    invoke-static {v1, v2, v3}, Lkotlinx/serialization/json/i;->c(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/h;

    .line 181
    .line 182
    .line 183
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 184
    .line 185
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    const-string v3, "osVersion"

    .line 190
    .line 191
    invoke-static {v1, v3, v2}, Lkotlinx/serialization/json/i;->c(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/h;

    .line 192
    .line 193
    .line 194
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/j;->placement:Lcom/vungle/ads/internal/model/g;

    .line 195
    .line 196
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/g;->isRewardedVideo()Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    const-string v3, "incentivized"

    .line 205
    .line 206
    invoke-static {v1, v3, v2}, Lkotlinx/serialization/json/i;->a(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/h;

    .line 207
    .line 208
    .line 209
    const-string v2, "version"

    .line 210
    .line 211
    const-string v3, "1.0"

    .line 212
    .line 213
    invoke-static {v1, v2, v3}, Lkotlinx/serialization/json/i;->c(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/h;

    .line 214
    .line 215
    .line 216
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/j;->platform:Lcom/vungle/ads/internal/platform/d;

    .line 217
    .line 218
    if-eqz v2, :cond_1

    .line 219
    .line 220
    invoke-interface {v2}, Lcom/vungle/ads/internal/platform/d;->isSilentModeEnabled()Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    const-string v3, "isSilent"

    .line 229
    .line 230
    invoke-static {v1, v3, v2}, Lkotlinx/serialization/json/i;->a(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/h;

    .line 231
    .line 232
    .line 233
    :cond_1
    iget-boolean v2, p0, Lcom/vungle/ads/internal/ui/j;->collectConsent:Z

    .line 234
    .line 235
    const-string v3, "consentRequired"

    .line 236
    .line 237
    if-eqz v2, :cond_2

    .line 238
    .line 239
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 240
    .line 241
    invoke-static {v1, v3, v2}, Lkotlinx/serialization/json/i;->a(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/h;

    .line 242
    .line 243
    .line 244
    const-string v2, "consentTitleText"

    .line 245
    .line 246
    iget-object v3, p0, Lcom/vungle/ads/internal/ui/j;->gdprTitle:Ljava/lang/String;

    .line 247
    .line 248
    invoke-static {v1, v2, v3}, Lkotlinx/serialization/json/i;->c(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/h;

    .line 249
    .line 250
    .line 251
    const-string v2, "consentBodyText"

    .line 252
    .line 253
    iget-object v3, p0, Lcom/vungle/ads/internal/ui/j;->gdprBody:Ljava/lang/String;

    .line 254
    .line 255
    invoke-static {v1, v2, v3}, Lkotlinx/serialization/json/i;->c(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/h;

    .line 256
    .line 257
    .line 258
    const-string v2, "consentAcceptButtonText"

    .line 259
    .line 260
    iget-object v3, p0, Lcom/vungle/ads/internal/ui/j;->gdprAccept:Ljava/lang/String;

    .line 261
    .line 262
    invoke-static {v1, v2, v3}, Lkotlinx/serialization/json/i;->c(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/h;

    .line 263
    .line 264
    .line 265
    const-string v2, "consentDenyButtonText"

    .line 266
    .line 267
    iget-object v3, p0, Lcom/vungle/ads/internal/ui/j;->gdprDeny:Ljava/lang/String;

    .line 268
    .line 269
    invoke-static {v1, v2, v3}, Lkotlinx/serialization/json/i;->c(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/h;

    .line 270
    .line 271
    .line 272
    goto :goto_0

    .line 273
    :cond_2
    invoke-static {v1, v3, v5}, Lkotlinx/serialization/json/i;->a(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/h;

    .line 274
    .line 275
    .line 276
    :goto_0
    sget-object v2, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    .line 277
    .line 278
    invoke-virtual {v2}, Lcom/vungle/ads/internal/ConfigManager;->signalsDisabled()Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-nez v2, :cond_6

    .line 283
    .line 284
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/j;->signalManager:Lcom/vungle/ads/internal/signals/SignalManager;

    .line 285
    .line 286
    const/4 v3, 0x0

    .line 287
    if-eqz v2, :cond_3

    .line 288
    .line 289
    invoke-virtual {v2}, Lcom/vungle/ads/internal/signals/SignalManager;->getUuid()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    goto :goto_1

    .line 294
    :cond_3
    move-object v2, v3

    .line 295
    :goto_1
    if-eqz v2, :cond_6

    .line 296
    .line 297
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    if-nez v2, :cond_4

    .line 302
    .line 303
    goto :goto_2

    .line 304
    :cond_4
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/j;->signalManager:Lcom/vungle/ads/internal/signals/SignalManager;

    .line 305
    .line 306
    if-eqz v2, :cond_5

    .line 307
    .line 308
    invoke-virtual {v2}, Lcom/vungle/ads/internal/signals/SignalManager;->getUuid()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    :cond_5
    const-string v2, "sessionId"

    .line 313
    .line 314
    invoke-static {v1, v2, v3}, Lkotlinx/serialization/json/i;->c(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/h;

    .line 315
    .line 316
    .line 317
    :cond_6
    :goto_2
    const-string v2, "sdkVersion"

    .line 318
    .line 319
    const-string v3, "7.5.0"

    .line 320
    .line 321
    invoke-static {v1, v2, v3}, Lkotlinx/serialization/json/i;->c(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/h;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1}, Lkotlinx/serialization/json/s;->a()Lkotlinx/serialization/json/JsonObject;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    const-string v3, "window.vungle.mraidBridge.notifyPropertiesChange("

    .line 334
    .line 335
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    const/16 v1, 0x2c

    .line 342
    .line 343
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const/16 p1, 0x29

    .line 350
    .line 351
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-direct {p0, v0, p1}, Lcom/vungle/ads/internal/ui/j;->runJavascriptOnWebView(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    :cond_7
    return-void
.end method

.method public final notifySilentModeChange(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/j;->loadedWebView:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lkotlinx/serialization/json/s;

    .line 6
    .line 7
    invoke-direct {v1}, Lkotlinx/serialization/json/s;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v2, "isSilent"

    .line 15
    .line 16
    invoke-static {v1, v2, p1}, Lkotlinx/serialization/json/i;->a(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/Boolean;)Lkotlinx/serialization/json/h;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lkotlinx/serialization/json/s;->a()Lkotlinx/serialization/json/JsonObject;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "window.vungle.mraidBridge.notifyPropertiesChange("

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 p1, 0x29

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p0, v0, p1}, Lcom/vungle/ads/internal/ui/j;->runJavascriptOnWebView(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/j;->loadedWebView:Landroid/webkit/WebView;

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    invoke-virtual {p0, p2}, Lcom/vungle/ads/internal/ui/j;->notifyPropertiesChange(Z)V

    .line 15
    .line 16
    .line 17
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v0, 0x1d

    .line 20
    .line 21
    if-lt p2, v0, :cond_1

    .line 22
    .line 23
    new-instance p2, Lcom/vungle/ads/internal/ui/j$b;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/j;->errorHandler:Lcom/vungle/ads/internal/ui/view/b$b;

    .line 26
    .line 27
    invoke-direct {p2, v0}, Lcom/vungle/ads/internal/ui/j$b;-><init>(Lcom/vungle/ads/internal/ui/view/b$b;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Lcom/vungle/ads/internal/ui/d;->a(Ljava/lang/Object;)Landroid/webkit/WebViewRenderProcessClient;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p1, p2}, Lcom/vungle/ads/internal/ui/e;->a(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcessClient;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object p2, p0, Lcom/vungle/ads/internal/ui/j;->webViewObserver:Lcom/vungle/ads/internal/omsdk/d;

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    invoke-interface {p2, p1}, Lcom/vungle/ads/internal/omsdk/d;->onPageFinished(Landroid/webkit/WebView;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failingUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 5

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p1

    :goto_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 5
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p2

    if-ne p2, v1, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    move p2, v0

    .line 6
    :goto_1
    sget-object v2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error desc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " for URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VungleWebClient"

    invoke-virtual {v2, v4, v3}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/ui/j;->isCriticalAsset(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    move v0, v1

    .line 8
    :cond_3
    invoke-direct {p0, p3, p1, v0}, Lcom/vungle/ads/internal/ui/j;->handleWebViewError(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p3, p1

    .line 17
    :goto_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x0

    .line 32
    const/4 v1, 0x1

    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-ne p2, v1, :cond_2

    .line 40
    .line 41
    move p2, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move p2, v0

    .line 44
    :goto_1
    sget-object v2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v4, "Http Error desc "

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const/16 v4, 0x20

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v4, " for URL "

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const-string v4, "VungleWebClient"

    .line 80
    .line 81
    invoke-virtual {v2, v4, v3}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/ui/j;->isCriticalAsset(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    if-eqz p2, :cond_3

    .line 91
    .line 92
    move v0, v1

    .line 93
    :cond_3
    invoke-direct {p0, p3, p1, v0}, Lcom/vungle/ads/internal/ui/j;->handleWebViewError(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/vungle/ads/internal/ui/j;->loadedWebView:Landroid/webkit/WebView;

    .line 3
    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v2, 0x1a

    .line 7
    .line 8
    const-string v3, "onRenderProcessGone url: "

    .line 9
    .line 10
    const-string v4, "VungleWebClient"

    .line 11
    .line 12
    if-ge v1, v2, :cond_2

    .line 13
    .line 14
    sget-object p2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2, v4, v0}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/vungle/ads/internal/ui/j;->errorHandler:Lcom/vungle/ads/internal/ui/view/b$b;

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-interface {p2, p1, v0}, Lcom/vungle/ads/internal/ui/view/b$b;->onWebRenderingProcessGone(Landroid/webkit/WebView;Ljava/lang/Boolean;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 p1, 0x1

    .line 52
    :goto_0
    return p1

    .line 53
    :cond_2
    sget-object v1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 54
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move-object v3, v0

    .line 71
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v3, ", did crash: "

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    if-eqz p2, :cond_4

    .line 80
    .line 81
    invoke-static {p2}, Lcom/vungle/ads/internal/ui/c;->a(Landroid/webkit/RenderProcessGoneDetail;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    move-object v3, v0

    .line 91
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v1, v4, v2}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/j;->errorHandler:Lcom/vungle/ads/internal/ui/view/b$b;

    .line 102
    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    if-eqz p2, :cond_5

    .line 106
    .line 107
    invoke-static {p2}, Lcom/vungle/ads/internal/ui/c;->a(Landroid/webkit/RenderProcessGoneDetail;)Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    :cond_5
    invoke-interface {v1, p1, v0}, Lcom/vungle/ads/internal/ui/view/b$b;->onWebRenderingProcessGone(Landroid/webkit/WebView;Ljava/lang/Boolean;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    goto :goto_3

    .line 120
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    :goto_3
    return p1
.end method

.method public setAdVisibility(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/j;->isViewable:Ljava/lang/Boolean;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/ui/j;->notifyPropertiesChange(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setCollectConsent$vungle_ads_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/vungle/ads/internal/ui/j;->collectConsent:Z

    .line 2
    .line 3
    return-void
.end method

.method public setConsentStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/vungle/ads/internal/ui/j;->collectConsent:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/vungle/ads/internal/ui/j;->gdprTitle:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/vungle/ads/internal/ui/j;->gdprBody:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/vungle/ads/internal/ui/j;->gdprAccept:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/vungle/ads/internal/ui/j;->gdprDeny:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public setErrorHandler(Lcom/vungle/ads/internal/ui/view/b$b;)V
    .locals 1

    .line 1
    const-string v0, "errorHandler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/j;->errorHandler:Lcom/vungle/ads/internal/ui/view/b$b;

    .line 7
    .line 8
    return-void
.end method

.method public final setErrorHandler$vungle_ads_release(Lcom/vungle/ads/internal/ui/view/b$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/j;->errorHandler:Lcom/vungle/ads/internal/ui/view/b$b;

    .line 2
    .line 3
    return-void
.end method

.method public final setGdprAccept$vungle_ads_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/j;->gdprAccept:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setGdprBody$vungle_ads_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/j;->gdprBody:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setGdprDeny$vungle_ads_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/j;->gdprDeny:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setGdprTitle$vungle_ads_release(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/j;->gdprTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLoadedWebView$vungle_ads_release(Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/j;->loadedWebView:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-void
.end method

.method public setMraidDelegate(Lcom/vungle/ads/internal/ui/view/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/j;->mraidDelegate:Lcom/vungle/ads/internal/ui/view/b$a;

    .line 2
    .line 3
    return-void
.end method

.method public final setMraidDelegate$vungle_ads_release(Lcom/vungle/ads/internal/ui/view/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/j;->mraidDelegate:Lcom/vungle/ads/internal/ui/view/b$a;

    .line 2
    .line 3
    return-void
.end method

.method public final setReady$vungle_ads_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/vungle/ads/internal/ui/j;->ready:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setViewable$vungle_ads_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/j;->isViewable:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setWebViewObserver(Lcom/vungle/ads/internal/omsdk/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/j;->webViewObserver:Lcom/vungle/ads/internal/omsdk/d;

    .line 2
    .line 3
    return-void
.end method

.method public final setWebViewObserver$vungle_ads_release(Lcom/vungle/ads/internal/omsdk/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/j;->webViewObserver:Lcom/vungle/ads/internal/omsdk/d;

    .line 2
    .line 3
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .line 1
    sget-object v1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 2
    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v3, "MRAID Command "

    .line 9
    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "VungleWebClient"

    .line 21
    .line 22
    invoke-virtual {v1, v3, v2}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz p2, :cond_a

    .line 27
    .line 28
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-eqz v4, :cond_9

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    if-nez v5, :cond_1

    .line 47
    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const-string v6, "mraid"

    .line 55
    .line 56
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const/4 v7, 0x1

    .line 61
    if-eqz v6, :cond_5

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_6

    .line 68
    .line 69
    const-string v0, "propertiesChangeCompleted"

    .line 70
    .line 71
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    iget-boolean v0, p0, Lcom/vungle/ads/internal/ui/j;->ready:Z

    .line 78
    .line 79
    if-nez v0, :cond_4

    .line 80
    .line 81
    iput-boolean v7, p0, Lcom/vungle/ads/internal/ui/j;->ready:Z

    .line 82
    .line 83
    new-instance v0, Landroid/os/Handler;

    .line 84
    .line 85
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/j;->offloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 93
    .line 94
    new-instance v2, Lcom/vungle/ads/internal/ui/h;

    .line 95
    .line 96
    invoke-direct {v2, p0, v0, p1}, Lcom/vungle/ads/internal/ui/h;-><init>(Lcom/vungle/ads/internal/ui/j;Landroid/os/Handler;Landroid/webkit/WebView;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/j;->mraidDelegate:Lcom/vungle/ads/internal/ui/view/b$a;

    .line 104
    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    new-instance v0, Lkotlinx/serialization/json/s;

    .line 108
    .line 109
    invoke-direct {v0}, Lkotlinx/serialization/json/s;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_3

    .line 125
    .line 126
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    check-cast v5, Ljava/lang/String;

    .line 131
    .line 132
    const-string v8, "param"

    .line 133
    .line 134
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    invoke-static {v0, v5, v8}, Lkotlinx/serialization/json/i;->c(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/h;

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_3
    invoke-virtual {v0}, Lkotlinx/serialization/json/s;->a()Lkotlinx/serialization/json/JsonObject;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    new-instance v5, Landroid/os/Handler;

    .line 150
    .line 151
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 156
    .line 157
    .line 158
    iget-object v8, p0, Lcom/vungle/ads/internal/ui/j;->offloadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 159
    .line 160
    new-instance v9, Lcom/vungle/ads/internal/ui/i;

    .line 161
    .line 162
    move-object v0, v9

    .line 163
    move-object v2, v3

    .line 164
    move-object v3, v4

    .line 165
    move-object v4, v5

    .line 166
    move-object v5, p0

    .line 167
    move-object v6, p1

    .line 168
    invoke-direct/range {v0 .. v6}, Lcom/vungle/ads/internal/ui/i;-><init>(Lcom/vungle/ads/internal/ui/view/b$a;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;Landroid/os/Handler;Lcom/vungle/ads/internal/ui/j;Landroid/webkit/WebView;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 172
    .line 173
    .line 174
    :cond_4
    :goto_1
    return v7

    .line 175
    :cond_5
    const-string v4, "http"

    .line 176
    .line 177
    invoke-static {v4, v5, v7}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-nez v4, :cond_7

    .line 182
    .line 183
    const-string v4, "https"

    .line 184
    .line 185
    invoke-static {v4, v5, v7}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    if-eqz v4, :cond_6

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_6
    return v2

    .line 193
    :cond_7
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v4, "Open URL"

    .line 199
    .line 200
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v1, v3, v2}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/j;->mraidDelegate:Lcom/vungle/ads/internal/ui/view/b$a;

    .line 214
    .line 215
    if-eqz v1, :cond_8

    .line 216
    .line 217
    new-instance v2, Lkotlinx/serialization/json/s;

    .line 218
    .line 219
    invoke-direct {v2}, Lkotlinx/serialization/json/s;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v3, "url"

    .line 223
    .line 224
    invoke-static {v2, v3, p2}, Lkotlinx/serialization/json/i;->c(Lkotlinx/serialization/json/s;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/h;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2}, Lkotlinx/serialization/json/s;->a()Lkotlinx/serialization/json/JsonObject;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    const-string v2, "openNonMraid"

    .line 232
    .line 233
    invoke-interface {v1, v2, v0}, Lcom/vungle/ads/internal/ui/view/b$a;->processCommand(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Z

    .line 234
    .line 235
    .line 236
    :cond_8
    return v7

    .line 237
    :cond_9
    :goto_3
    return v2

    .line 238
    :cond_a
    :goto_4
    const-string v0, "Invalid URL "

    .line 239
    .line 240
    invoke-virtual {v1, v3, v0}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    return v2
.end method
