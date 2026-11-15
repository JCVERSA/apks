.class public final Lcom/cloud/tmc/render/system/ShellWebView;
.super Landroid/webkit/WebView;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/render/IWebView;
.implements Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;
.implements Lcom/cloud/tmc/render/IPageChainCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/render/system/ShellWebView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0018\u0000 r2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001rB\u001b\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010?\u001a\u00020@H\u0017J\u0008\u0010A\u001a\u00020@H\u0016J\u0008\u0010B\u001a\u00020)H\u0016J\u0008\u0010C\u001a\u00020DH\u0016J\u0008\u0010E\u001a\u00020@H\u0016J\r\u0010F\u001a\u00020\u0018H\u0016\u00a2\u0006\u0002\u0010GJ\u0010\u0010H\u001a\u00020@2\u0006\u0010I\u001a\u00020\u000bH\u0016J4\u0010H\u001a\u00020@2\u0006\u0010I\u001a\u00020\u000b2\"\u0010J\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0Kj\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b`LH\u0016J8\u0010M\u001a\u00020@2\u0008\u0010I\u001a\u0004\u0018\u00010\u000b2\u0006\u0010N\u001a\u00020\u000b2\u0008\u0010O\u001a\u0004\u0018\u00010\u000b2\u0008\u0010P\u001a\u0004\u0018\u00010\u000b2\u0008\u0010Q\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010R\u001a\u00020\u0018H\u0016J\u0010\u0010S\u001a\u00020@2\u0006\u0010T\u001a\u00020\u000bH\u0016J\u0010\u0010U\u001a\u00020@2\u0006\u0010T\u001a\u00020\u000bH\u0016J\u0008\u0010V\u001a\u00020@H\u0016J\u001c\u0010W\u001a\u00020@2\u0008\u0010X\u001a\u0004\u0018\u00010\u00012\u0008\u0010Y\u001a\u0004\u0018\u00010ZH\u0016J\u0008\u0010[\u001a\u00020@H\u0016J(\u0010\\\u001a\u00020@2\u0006\u0010]\u001a\u00020)2\u0006\u0010^\u001a\u00020)2\u0006\u0010_\u001a\u00020)2\u0006\u0010`\u001a\u00020)H\u0014J\u0012\u0010a\u001a\u00020@2\u0008\u0010b\u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010c\u001a\u00020@H\u0017J\u0012\u0010d\u001a\u00020@2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0012\u0010e\u001a\u00020@2\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u0008\u0010f\u001a\u00020@H\u0016J\u0010\u0010g\u001a\u00020@2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010h\u001a\u00020@2\u0006\u0010i\u001a\u00020\u000bH\u0016J\u0012\u0010j\u001a\u00020@2\u0008\u0010k\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010l\u001a\u00020@2\u0006\u0010m\u001a\u00020)H\u0016J\u0010\u0010n\u001a\u00020@2\u0006\u0010*\u001a\u00020+H\u0016J\u0012\u0010o\u001a\u00020@2\u0008\u00107\u001a\u0004\u0018\u000108H\u0016J\u0010\u0010p\u001a\u00020@2\u0006\u0010q\u001a\u00020\u0018H\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0019\"\u0004\u0008\u001d\u0010\u001bR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010 \u001a\u0004\u0018\u00010!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u0010\u0010&\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u0004\u0018\u00010/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u00100\u001a\u0004\u0018\u000101X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u000e\u00106\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00107\u001a\u0004\u0018\u000108X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u00109\u001a\u00020:X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>\u00a8\u0006s"
    }
    d2 = {
        "Lcom/cloud/tmc/render/system/ShellWebView;",
        "Landroid/webkit/WebView;",
        "Lcom/cloud/tmc/kernel/render/IWebView;",
        "Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;",
        "Lcom/cloud/tmc/render/IPageChainCallback;",
        "context",
        "Landroid/content/Context;",
        "attributeSet",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "appId",
        "",
        "bgColor",
        "byteH5BridgeJsInterface",
        "Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;",
        "getByteH5BridgeJsInterface",
        "()Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;",
        "setByteH5BridgeJsInterface",
        "(Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;)V",
        "customViewCallback",
        "Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;",
        "fullScreenJSI",
        "Lcom/cloud/tmc/render/utils/FullScreenJSI;",
        "isLoadDataWithBaseURL",
        "",
        "()Z",
        "setLoadDataWithBaseURL",
        "(Z)V",
        "isOffScreenRender",
        "setOffScreenRender",
        "localChannelInterface",
        "Lcom/cloud/tmc/render/method/LocalChannelInterface;",
        "mWebChromeClient",
        "Lcom/cloud/tmc/render/system/DefaultWebChromeClient;",
        "getMWebChromeClient",
        "()Lcom/cloud/tmc/render/system/DefaultWebChromeClient;",
        "setMWebChromeClient",
        "(Lcom/cloud/tmc/render/system/DefaultWebChromeClient;)V",
        "mWebViewClient",
        "Lcom/cloud/tmc/render/system/DefaultWebViewClient;",
        "miniappType",
        "",
        "node",
        "Lcom/cloud/tmc/kernel/node/Node;",
        "pageCallback",
        "Lcom/cloud/tmc/kernel/render/WebviewPageCallback;",
        "pageEventCallback",
        "Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;",
        "port0",
        "Landroid/webkit/WebMessagePort;",
        "getPort0",
        "()Landroid/webkit/WebMessagePort;",
        "setPort0",
        "(Landroid/webkit/WebMessagePort;)V",
        "receivedRenderProcessGone",
        "scrollChangedCallback",
        "Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;",
        "webviewBridgeHelper",
        "Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;",
        "getWebviewBridgeHelper",
        "()Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;",
        "setWebviewBridgeHelper",
        "(Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;)V",
        "create",
        "",
        "destroy",
        "getMiniAppType",
        "getRenderBridge",
        "Lcom/cloud/tmc/kernel/bridge/RenderBridge;",
        "goBack",
        "isRenderProcessGone",
        "()Ljava/lang/Boolean;",
        "load",
        "url",
        "additionalHttpHeaders",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "loadData",
        "data",
        "mimeType",
        "encoding",
        "historyUrl",
        "onCheckIsTextEditor",
        "onConsoleMessage",
        "params",
        "onPageFinished",
        "onPause",
        "onRenderProcessGone",
        "view",
        "detail",
        "Landroid/webkit/RenderProcessGoneDetail;",
        "onResume",
        "onScrollChanged",
        "l",
        "t",
        "oldl",
        "oldt",
        "registerCustomViewVisiableCallback",
        "customViewVisiableCallback",
        "registerMessageChannel",
        "registerPageCallback",
        "registerPageEventCallback",
        "reload",
        "setAppId",
        "setBgColor",
        "color",
        "setCommonresId",
        "commonresId",
        "setMiniAppType",
        "type",
        "setNode",
        "setScrollChangedCallback",
        "setSupportFullScreen",
        "fullScreen",
        "Companion",
        "com.cloud.tmc.render"
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
.field public static final Companion:Lcom/cloud/tmc/render/system/ShellWebView$Companion;

.field private static final TAG:Ljava/lang/String; = "ShellWebView"


# instance fields
.field private appId:Ljava/lang/String;

.field private bgColor:Ljava/lang/String;

.field private byteH5BridgeJsInterface:Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;

.field private customViewCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

.field private fullScreenJSI:Lcom/cloud/tmc/render/utils/FullScreenJSI;

.field private isLoadDataWithBaseURL:Z

.field private isOffScreenRender:Z

.field private localChannelInterface:Lcom/cloud/tmc/render/method/LocalChannelInterface;

.field private mWebChromeClient:Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

.field private mWebViewClient:Lcom/cloud/tmc/render/system/DefaultWebViewClient;

.field private miniappType:I

.field private node:Lcom/cloud/tmc/kernel/node/Node;

.field private pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

.field private pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

.field private port0:Landroid/webkit/WebMessagePort;

.field private receivedRenderProcessGone:Z

.field private scrollChangedCallback:Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;

.field private webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/render/system/ShellWebView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/render/system/ShellWebView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/render/system/ShellWebView;->Companion:Lcom/cloud/tmc/render/system/ShellWebView$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/cloud/tmc/render/system/ShellWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    sget-object p1, Lcom/cloud/tmc/kernel/constants/MiniAppType;->SHELL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->miniappType:I

    .line 5
    new-instance p1, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;-><init>(Lcom/cloud/tmc/kernel/render/IWebView;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    .line 6
    new-instance p1, Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;

    invoke-direct {p1}, Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->byteH5BridgeJsInterface:Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;

    .line 7
    new-instance p1, Lcom/cloud/tmc/render/utils/FullScreenJSI;

    invoke-direct {p1}, Lcom/cloud/tmc/render/utils/FullScreenJSI;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->fullScreenJSI:Lcom/cloud/tmc/render/utils/FullScreenJSI;

    .line 8
    new-instance p1, Lcom/cloud/tmc/render/method/LocalChannelInterface;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/render/method/LocalChannelInterface;-><init>(Lcom/cloud/tmc/render/IPageChainCallback;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->localChannelInterface:Lcom/cloud/tmc/render/method/LocalChannelInterface;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/render/system/ShellWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public create()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/cloud/tmc/render/system/DefaultWebViewClient;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->appId:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "appId"

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    move-object v4, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v4, v0

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string v0, "node"

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v5, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v5, v0

    .line 32
    :goto_1
    move-object v0, v6

    .line 33
    move-object v3, v4

    .line 34
    move-object v4, v5

    .line 35
    move-object v5, p0

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/render/system/DefaultWebViewClient;-><init>(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/kernel/render/WebviewPageCallback;Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;)V

    .line 37
    .line 38
    .line 39
    iput-object v6, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebViewClient:Lcom/cloud/tmc/render/system/DefaultWebViewClient;

    .line 40
    .line 41
    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/cloud/tmc/render/system/SupportFullScreenWebChromeClient;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "context"

    .line 51
    .line 52
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 56
    .line 57
    iget-object v3, p0, Lcom/cloud/tmc/render/system/ShellWebView;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/cloud/tmc/render/system/ShellWebView;->customViewCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

    .line 60
    .line 61
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/render/system/SupportFullScreenWebChromeClient;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebChromeClient:Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/4 v1, 0x1

    .line 74
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 75
    .line 76
    .line 77
    const-string v2, "UTF-8"

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 83
    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->byteH5BridgeJsInterface:Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;->setWebviewPageEventCallback(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V

    .line 100
    .line 101
    .line 102
    const-string v0, ""

    .line 103
    .line 104
    invoke-virtual {p0, v0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    new-instance v0, Lcom/cloud/tmc/render/method/ShellGameJsInterface;

    .line 108
    .line 109
    invoke-direct {v0}, Lcom/cloud/tmc/render/method/ShellGameJsInterface;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v1, "dltms"

    .line 113
    .line 114
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->localChannelInterface:Lcom/cloud/tmc/render/method/LocalChannelInterface;

    .line 118
    .line 119
    const-string v1, "dltLocalChannel"

    .line 120
    .line 121
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lcom/cloud/tmc/render/method/MonitorLoadingInterface;

    .line 125
    .line 126
    invoke-direct {v0}, Lcom/cloud/tmc/render/method/MonitorLoadingInterface;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v1, "dltMonitor"

    .line 130
    .line 131
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->byteH5BridgeJsInterface:Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;

    .line 135
    .line 136
    const-string v1, "dlth5bridge"

    .line 137
    .line 138
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->fullScreenJSI:Lcom/cloud/tmc/render/utils/FullScreenJSI;

    .line 142
    .line 143
    invoke-static {p0, v0}, Lcom/cloud/tmc/render/utils/WebViewExtensionKt;->addJavaScriptInterfaceFullScreen(Landroid/webkit/WebView;Lcom/cloud/tmc/render/utils/FullScreenJSI;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public destroy()V
    .locals 4

    .line 1
    const-string v0, "ShellWebView"

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->localChannelInterface:Lcom/cloud/tmc/render/method/LocalChannelInterface;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/cloud/tmc/render/method/LocalChannelInterface;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->byteH5BridgeJsInterface:Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebViewClient:Lcom/cloud/tmc/render/system/DefaultWebViewClient;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->clear()V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebViewClient:Lcom/cloud/tmc/render/system/DefaultWebViewClient;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebChromeClient:Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;->clear()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iput-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebChromeClient:Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->scrollChangedCallback:Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->customViewCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->port0:Landroid/webkit/WebMessagePort;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/webkit/WebMessagePort;->close()V

    .line 48
    .line 49
    .line 50
    :cond_2
    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 57
    .line 58
    const-string v2, "enableShellDestory"

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigBoolean(Ljava/lang/String;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 68
    .line 69
    .line 70
    const-string v1, "shellWebView Destory"

    .line 71
    .line 72
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v1

    .line 77
    const-string v2, "destroy"

    .line 78
    .line 79
    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_0
    return-void
.end method

.method public final getByteH5BridgeJsInterface()Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->byteH5BridgeJsInterface:Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMWebChromeClient()Lcom/cloud/tmc/render/system/DefaultWebChromeClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebChromeClient:Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMiniAppType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->miniappType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPort0()Landroid/webkit/WebMessagePort;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->port0:Landroid/webkit/WebMessagePort;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->getRenderBridge(Landroid/webkit/WebView;)Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getWebviewBridgeHelper()Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    .line 2
    .line 3
    return-object v0
.end method

.method public goBack()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->goBack()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final isLoadDataWithBaseURL()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->isLoadDataWithBaseURL:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isOffScreenRender()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->isOffScreenRender:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRenderProcessGone()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->receivedRenderProcessGone:Z

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

.method public synthetic isResume()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/kernel/render/c;->a(Lcom/cloud/tmc/kernel/render/IWebView;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public load(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/render/system/ShellWebView;->load(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public load(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalHttpHeaders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Render]:[load Url]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShellWebView"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 4

    .line 1
    const-string v0, "ShellWebView"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-super {p0}, Landroid/webkit/WebView;->onCheckIsTextEditor()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v2, "onCheckIsTextEditor() does not run in the main thread"

    .line 26
    .line 27
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :goto_0
    const-string v3, "Probable deadlock detected due to WebView API being called on incorrect thread while the UI thread is blocked."

    .line 32
    .line 33
    invoke-static {v0, v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    return v1
.end method

.method public onConsoleMessage(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;->onConsoleMessage(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "h5OnPageFinished"

    .line 2
    .line 3
    const-string v1, "params"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/render/system/ShellWebView;->node:Lcom/cloud/tmc/kernel/node/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    const-string v3, "node"

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    :try_start_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const-class v2, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/cloud/tmc/render/system/ShellWebView;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 26
    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    :cond_1
    invoke-interface {v2, v4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    new-instance v3, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;

    .line 40
    .line 41
    invoke-direct {v3, v0}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v3, p1}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;->setData(Ljava/util/Map;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 56
    .line 57
    invoke-interface {v2, v0, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    :catchall_0
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->receivedRenderProcessGone:Z

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

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->scrollChangedCallback:Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sub-int/2addr p1, p3

    .line 9
    sub-int/2addr p2, p4

    .line 10
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;->onScroll(II)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public registerCustomViewVisiableCallback(Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->customViewCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

    .line 2
    .line 3
    return-void
.end method

.method public registerMessageChannel()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 5
    .line 6
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
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
    const/4 v3, 0x0

    .line 19
    aget-object v4, v2, v3

    .line 20
    .line 21
    iput-object v4, p0, Lcom/cloud/tmc/render/system/ShellWebView;->port0:Landroid/webkit/WebMessagePort;

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    new-instance v5, Lcom/cloud/tmc/render/system/ShellWebView$registerMessageChannel$1;

    .line 26
    .line 27
    invoke-direct {v5, v1}, Lcom/cloud/tmc/render/system/ShellWebView$registerMessageChannel$1;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v5}, Landroid/webkit/WebMessagePort;->setWebMessageCallback(Landroid/webkit/WebMessagePort$WebMessageCallback;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    new-instance v1, Landroid/webkit/WebMessage;

    .line 34
    .line 35
    aget-object v2, v2, v0

    .line 36
    .line 37
    new-array v0, v0, [Landroid/webkit/WebMessagePort;

    .line 38
    .line 39
    aput-object v2, v0, v3

    .line 40
    .line 41
    const-string v2, "mini_init"

    .line 42
    .line 43
    invoke-direct {v1, v2, v0}, Landroid/webkit/WebMessage;-><init>(Ljava/lang/String;[Landroid/webkit/WebMessagePort;)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 47
    .line 48
    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebView;->postWebMessage(Landroid/webkit/WebMessage;Landroid/net/Uri;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public registerPageCallback(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    .line 2
    .line 3
    return-void
.end method

.method public registerPageEventCallback(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 2
    .line 3
    return-void
.end method

.method public reload()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->appId:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebViewClient:Lcom/cloud/tmc/render/system/DefaultWebViewClient;

    .line 9
    .line 10
    instance-of v1, v0, Lcom/cloud/tmc/render/system/IChangeAppId;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lcom/cloud/tmc/render/system/IChangeAppId;->changeAppId(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->localChannelInterface:Lcom/cloud/tmc/render/method/LocalChannelInterface;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/render/method/LocalChannelInterface;->setAppId(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setBgColor(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "color"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->bgColor:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    const-string v0, "ShellWebView"

    .line 24
    .line 25
    const-string v1, "set content background color error"

    .line 26
    .line 27
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-void
.end method

.method public final setByteH5BridgeJsInterface(Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->byteH5BridgeJsInterface:Lcom/cloud/tmc/render/method/ByteH5BridgeJsInterface;

    .line 7
    .line 8
    return-void
.end method

.method public setCommonresId(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebViewClient:Lcom/cloud/tmc/render/system/DefaultWebViewClient;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->setCommonresId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    :cond_0
    return-void
.end method

.method public final setLoadDataWithBaseURL(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->isLoadDataWithBaseURL:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setMWebChromeClient(Lcom/cloud/tmc/render/system/DefaultWebChromeClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebChromeClient:Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

    .line 2
    .line 3
    return-void
.end method

.method public setMiniAppType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->miniappType:I

    .line 2
    .line 3
    return-void
.end method

.method public setNode(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 2

    .line 1
    const-string v0, "node"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebViewClient:Lcom/cloud/tmc/render/system/DefaultWebViewClient;

    .line 9
    .line 10
    instance-of v1, v0, Lcom/cloud/tmc/render/system/IChangeAppId;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lcom/cloud/tmc/render/system/IChangeAppId;->changeNode(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/render/system/ShellWebView;->fullScreenJSI:Lcom/cloud/tmc/render/utils/FullScreenJSI;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/render/utils/FullScreenJSI;->setNode(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final setOffScreenRender(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->isOffScreenRender:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPort0(Landroid/webkit/WebMessagePort;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->port0:Landroid/webkit/WebMessagePort;

    .line 2
    .line 3
    return-void
.end method

.method public setScrollChangedCallback(Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->scrollChangedCallback:Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setSupportFullScreen(Z)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "context"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/cloud/tmc/render/system/ShellWebView;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    .line 17
    .line 18
    invoke-direct {p1, v0, v1, v2}, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->mWebChromeClient:Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final setWebviewBridgeHelper(Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/render/system/ShellWebView;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    .line 7
    .line 8
    return-void
.end method
