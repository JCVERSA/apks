.class public final Lcom/cloud/tmc/render/system/SystemWebView;
.super Landroid/webkit/WebView;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/render/IWebView;
.implements Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/render/system/SystemWebView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0018\u0000 d2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001dB\u001b\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u00103\u001a\u00020\u000c2\u0006\u00104\u001a\u00020\u000cH\u0002J\u0008\u00105\u001a\u000206H\u0017J\u0008\u00107\u001a\u000206H\u0016J\u0008\u00108\u001a\u00020\u001dH\u0016J\u0008\u00109\u001a\u00020:H\u0016J\u0008\u0010;\u001a\u000206H\u0016J\r\u0010<\u001a\u00020\u0013H\u0016\u00a2\u0006\u0002\u0010=J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010>\u001a\u0002062\u0006\u00104\u001a\u00020\u000cH\u0016J4\u0010>\u001a\u0002062\u0006\u00104\u001a\u00020\u000c2\"\u0010?\u001a\u001e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0@j\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c`AH\u0016J8\u0010B\u001a\u0002062\u0008\u00104\u001a\u0004\u0018\u00010\u000c2\u0006\u0010C\u001a\u00020\u000c2\u0008\u0010D\u001a\u0004\u0018\u00010\u000c2\u0008\u0010E\u001a\u0004\u0018\u00010\u000c2\u0008\u0010F\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010G\u001a\u00020\u0013H\u0016J\u0008\u0010H\u001a\u000206H\u0016J\u001c\u0010I\u001a\u0002062\u0008\u0010J\u001a\u0004\u0018\u00010\u00012\u0008\u0010K\u001a\u0004\u0018\u00010LH\u0016J\u0008\u0010M\u001a\u000206H\u0016J(\u0010N\u001a\u0002062\u0006\u0010O\u001a\u00020\u001d2\u0006\u0010P\u001a\u00020\u001d2\u0006\u0010Q\u001a\u00020\u001d2\u0006\u0010R\u001a\u00020\u001dH\u0014J\u0012\u0010S\u001a\u0002062\u0008\u0010T\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010U\u001a\u000206H\u0017J\u0012\u0010V\u001a\u0002062\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0012\u0010W\u001a\u0002062\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0008\u0010X\u001a\u000206H\u0016J\u0010\u0010Y\u001a\u0002062\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010Z\u001a\u0002062\u0006\u0010[\u001a\u00020\u000cH\u0016J\u0012\u0010\\\u001a\u0002062\u0008\u0010]\u001a\u0004\u0018\u00010\u000cH\u0016J\u0010\u0010^\u001a\u0002062\u0006\u0010_\u001a\u00020\u001dH\u0016J\u0010\u0010`\u001a\u0002062\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0012\u0010a\u001a\u0002062\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0016J\u0010\u0010b\u001a\u0002062\u0006\u0010c\u001a\u00020\u0013H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010$\u001a\u0004\u0018\u00010%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u000e\u0010*\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010-\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102\u00a8\u0006e"
    }
    d2 = {
        "Lcom/cloud/tmc/render/system/SystemWebView;",
        "Landroid/webkit/WebView;",
        "Lcom/cloud/tmc/kernel/render/IWebView;",
        "Lcom/cloud/tmc/kernel/proxy/renderprocess/IRenderProcessListener;",
        "context",
        "Landroid/content/Context;",
        "attributeSet",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "adJSI",
        "Lcom/cloud/tmc/render/utils/ADJSI;",
        "appId",
        "",
        "bgColor",
        "customViewCallback",
        "Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;",
        "fullScreenJSI",
        "Lcom/cloud/tmc/render/utils/FullScreenJSI;",
        "isResume",
        "",
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
        "appendDarkThemeEnabledStatusParam",
        "url",
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
        "additionalHttpHeaders",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "loadData",
        "data",
        "mimeType",
        "encoding",
        "historyUrl",
        "onCheckIsTextEditor",
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
.field public static final Companion:Lcom/cloud/tmc/render/system/SystemWebView$Companion;

.field private static final TAG:Ljava/lang/String; = "SystemWebView"


# instance fields
.field private final adJSI:Lcom/cloud/tmc/render/utils/ADJSI;

.field private appId:Ljava/lang/String;

.field private bgColor:Ljava/lang/String;

.field private customViewCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

.field private final fullScreenJSI:Lcom/cloud/tmc/render/utils/FullScreenJSI;

.field private isResume:Z

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
    new-instance v0, Lcom/cloud/tmc/render/system/SystemWebView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/render/system/SystemWebView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/render/system/SystemWebView;->Companion:Lcom/cloud/tmc/render/system/SystemWebView$Companion;

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

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/cloud/tmc/render/system/SystemWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    sget-object p1, Lcom/cloud/tmc/kernel/constants/MiniAppType;->NORMAL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->miniappType:I

    .line 5
    new-instance p1, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;-><init>(Lcom/cloud/tmc/kernel/render/IWebView;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->isResume:Z

    .line 7
    new-instance p1, Lcom/cloud/tmc/render/utils/FullScreenJSI;

    invoke-direct {p1}, Lcom/cloud/tmc/render/utils/FullScreenJSI;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->fullScreenJSI:Lcom/cloud/tmc/render/utils/FullScreenJSI;

    .line 8
    new-instance p1, Lcom/cloud/tmc/render/utils/ADJSI;

    invoke-direct {p1}, Lcom/cloud/tmc/render/utils/ADJSI;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->adJSI:Lcom/cloud/tmc/render/utils/ADJSI;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/render/system/SystemWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final appendDarkThemeEnabledStatusParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "context"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/HybridHelper;->getDarkThemeEnableStatusParamValue(Landroid/content/Context;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "_transsion_dlt_miniapp_dark_theme_is_enabled"

    .line 19
    .line 20
    invoke-static {p1, v1, v0}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "addParam(\n            ur\u2026ext).toString()\n        )"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object p1
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
    iget-object v1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/render/system/SystemWebView;->pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->appId:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->node:Lcom/cloud/tmc/kernel/node/Node;

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
    iput-object v6, p0, Lcom/cloud/tmc/render/system/SystemWebView;->mWebViewClient:Lcom/cloud/tmc/render/system/DefaultWebViewClient;

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
    iget-object v2, p0, Lcom/cloud/tmc/render/system/SystemWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 56
    .line 57
    iget-object v3, p0, Lcom/cloud/tmc/render/system/SystemWebView;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/cloud/tmc/render/system/SystemWebView;->customViewCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

    .line 60
    .line 61
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/render/system/SupportFullScreenWebChromeClient;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->mWebChromeClient:Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

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
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 96
    .line 97
    .line 98
    const-string v0, ""

    .line 99
    .line 100
    invoke-virtual {p0, v0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->fullScreenJSI:Lcom/cloud/tmc/render/utils/FullScreenJSI;

    .line 104
    .line 105
    invoke-static {p0, v0}, Lcom/cloud/tmc/render/utils/WebViewExtensionKt;->addJavaScriptInterfaceFullScreen(Landroid/webkit/WebView;Lcom/cloud/tmc/render/utils/FullScreenJSI;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->adJSI:Lcom/cloud/tmc/render/utils/ADJSI;

    .line 109
    .line 110
    invoke-static {p0, v0}, Lcom/cloud/tmc/render/utils/WebViewExtensionKt;->addJavaScriptInterfaceAD(Landroid/webkit/WebView;Lcom/cloud/tmc/render/utils/ADJSI;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public destroy()V
    .locals 4

    .line 1
    const-string v0, "SystemWebView"

    .line 2
    .line 3
    const-class v1, Lcom/cloud/tmc/render/IRenderWebivewStrategyCache;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/cloud/tmc/render/IRenderWebivewStrategyCache;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/cloud/tmc/render/IRenderWebivewStrategyCache;->getSystemWebviewCacheStrategy()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->mWebViewClient:Lcom/cloud/tmc/render/system/DefaultWebViewClient;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/cloud/tmc/render/system/DefaultWebViewClient;->clear()V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->mWebViewClient:Lcom/cloud/tmc/render/system/DefaultWebViewClient;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/cloud/tmc/render/system/SystemWebView;->mWebChromeClient:Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;->clear()V

    .line 39
    .line 40
    .line 41
    :cond_2
    iput-object v1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->mWebChromeClient:Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->scrollChangedCallback:Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->customViewCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->port0:Landroid/webkit/WebMessagePort;

    .line 52
    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/webkit/WebMessagePort;->close()V

    .line 56
    .line 57
    .line 58
    :cond_3
    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 65
    .line 66
    const-string v2, "enableSystemDestory"

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigBoolean(Ljava/lang/String;Z)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 76
    .line 77
    .line 78
    const-string v1, "systemWebview Destory"

    .line 79
    .line 80
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v1

    .line 85
    const-string v2, "destroy"

    .line 86
    .line 87
    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_0
    return-void
.end method

.method public final getMWebChromeClient()Lcom/cloud/tmc/render/system/DefaultWebChromeClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->mWebChromeClient:Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMiniAppType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->miniappType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPort0()Landroid/webkit/WebMessagePort;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->port0:Landroid/webkit/WebMessagePort;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

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
    iget-object v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

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

.method public isRenderProcessGone()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->receivedRenderProcessGone:Z

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

.method public isResume()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->isResume:Z

    .line 2
    .line 3
    return v0
.end method

.method public load(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/render/system/SystemWebView;->load(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public load(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
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

    const-string v0, "SystemWebView"

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "additionalHttpHeaders"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->bgColor:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    const-string v1, "bgColor"

    iget-object v2, p0, Lcom/cloud/tmc/render/system/SystemWebView;->bgColor:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "addParam(url, \"bgColor\", bgColor)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    move-object v1, p1

    .line 4
    :goto_1
    invoke-direct {p0, v1}, Lcom/cloud/tmc/render/system/SystemWebView;->appendDarkThemeEnabledStatusParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 5
    :goto_2
    const-string v2, "add bgColor parameter is fail!"

    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Render]:[load Url]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
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
    const-string v0, "SystemWebView"

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

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->isResume:Z

    .line 6
    .line 7
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->receivedRenderProcessGone:Z

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
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->isResume:Z

    .line 6
    .line 7
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->scrollChangedCallback:Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;

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
    iput-object p1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->customViewCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

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
    iget-object v2, p0, Lcom/cloud/tmc/render/system/SystemWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

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
    iput-object v4, p0, Lcom/cloud/tmc/render/system/SystemWebView;->port0:Landroid/webkit/WebMessagePort;

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    new-instance v5, Lcom/cloud/tmc/render/system/SystemWebView$registerMessageChannel$1;

    .line 26
    .line 27
    invoke-direct {v5, v1}, Lcom/cloud/tmc/render/system/SystemWebView$registerMessageChannel$1;-><init>(Ljava/lang/ref/WeakReference;)V

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
    iput-object p1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->pageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    .line 2
    .line 3
    return-void
.end method

.method public registerPageEventCallback(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

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
    iput-object p1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->appId:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->mWebViewClient:Lcom/cloud/tmc/render/system/DefaultWebViewClient;

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
    iput-object p1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->bgColor:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    const-string v0, "SystemWebView"

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

.method public setCommonresId(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->mWebViewClient:Lcom/cloud/tmc/render/system/DefaultWebViewClient;

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

.method public final setMWebChromeClient(Lcom/cloud/tmc/render/system/DefaultWebChromeClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->mWebChromeClient:Lcom/cloud/tmc/render/system/DefaultWebChromeClient;

    .line 2
    .line 3
    return-void
.end method

.method public setMiniAppType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->miniappType:I

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
    iput-object p1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->mWebViewClient:Lcom/cloud/tmc/render/system/DefaultWebViewClient;

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
    iget-object v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->fullScreenJSI:Lcom/cloud/tmc/render/utils/FullScreenJSI;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/render/utils/FullScreenJSI;->setNode(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/cloud/tmc/render/system/SystemWebView;->adJSI:Lcom/cloud/tmc/render/utils/ADJSI;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/render/utils/ADJSI;->setNode(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final setPort0(Landroid/webkit/WebMessagePort;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->port0:Landroid/webkit/WebMessagePort;

    .line 2
    .line 3
    return-void
.end method

.method public setScrollChangedCallback(Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->scrollChangedCallback:Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setSupportFullScreen(Z)V
    .locals 0

    .line 1
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
    iput-object p1, p0, Lcom/cloud/tmc/render/system/SystemWebView;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    .line 7
    .line 8
    return-void
.end method
