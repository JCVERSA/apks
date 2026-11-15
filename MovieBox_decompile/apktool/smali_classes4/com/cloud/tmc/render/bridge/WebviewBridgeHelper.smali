.class public final Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bJ\u0018\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;",
        "",
        "webView",
        "Lcom/cloud/tmc/kernel/render/IWebView;",
        "(Lcom/cloud/tmc/kernel/render/IWebView;)V",
        "getWebView",
        "()Lcom/cloud/tmc/kernel/render/IWebView;",
        "getRenderBridge",
        "Lcom/cloud/tmc/kernel/bridge/RenderBridge;",
        "Landroid/webkit/WebView;",
        "registerMessageChannel",
        "",
        "sendConsole",
        "pageEventCallback",
        "Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;",
        "msg",
        "",
        "useMessageChannel",
        "",
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


# instance fields
.field private final webView:Lcom/cloud/tmc/kernel/render/IWebView;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/render/IWebView;)V
    .locals 1

    .line 1
    const-string v0, "webView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 10
    .line 11
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
    if-nez v2, :cond_1

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

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v1, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    move v1, v3

    .line 35
    :goto_1
    if-nez v1, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 38
    .line 39
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IWebView;->getMiniAppType()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sget-object v2, Lcom/cloud/tmc/kernel/constants/MiniAppType;->SHELL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eq v1, v2, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 52
    .line 53
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IWebView;->getMiniAppType()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    sget-object v2, Lcom/cloud/tmc/kernel/constants/MiniAppType;->SHELL_GAME:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    .line 60
    .line 61
    .line 62
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    if-eq v1, v2, :cond_2

    .line 64
    .line 65
    move v0, v3

    .line 66
    :catch_0
    :cond_2
    return v0
.end method


# virtual methods
.method public final getRenderBridge(Landroid/webkit/WebView;)Lcom/cloud/tmc/kernel/bridge/RenderBridge;
    .locals 1

    .line 1
    const-string v0, "webView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->useMessageChannel()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/cloud/tmc/render/bridge/MessageChannelBridge;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lcom/cloud/tmc/render/bridge/MessageChannelBridge;-><init>(Landroid/webkit/WebView;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v0, Lcom/cloud/tmc/render/bridge/DefaultRenderBridge;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lcom/cloud/tmc/render/bridge/DefaultRenderBridge;-><init>(Landroid/webkit/WebView;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final getWebView()Lcom/cloud/tmc/kernel/render/IWebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final registerMessageChannel()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->useMessageChannel()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->registerMessageChannel()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final sendConsole(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->useMessageChannel()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "DispatchEvent"

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const-string v0, "renderOnMessageReady"

    .line 24
    .line 25
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;->onConsoleMessage(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;->onConsoleMessage(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method
