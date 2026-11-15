.class public Lcom/cloud/tmc/render/system/DefaultWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/render/system/DefaultWebChromeClient$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u0013\u001a\u00020\u0014J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\n\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u001e\u0010\u0019\u001a\u00020\u00142\u0014\u0010\u001a\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c\u0018\u00010\u001bH\u0016J\u0012\u0010\u001e\u001a\u00020\u00142\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0012\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J,\u0010%\u001a\u00020\"2\u0008\u0010&\u001a\u0004\u0018\u00010 2\u0006\u0010\'\u001a\u00020\"2\u0006\u0010(\u001a\u00020\"2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0008\u0010+\u001a\u00020\u0014H\u0016J\u001c\u0010,\u001a\u00020\u00142\u0008\u0010-\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001a\u001a\u0004\u0018\u00010.H\u0016J0\u0010/\u001a\u00020\"2\u0008\u0010&\u001a\u0004\u0018\u00010 2\u0008\u00100\u001a\u0004\u0018\u00010\u001d2\u0008\u00101\u001a\u0004\u0018\u00010\u001d2\u0008\u00102\u001a\u0004\u0018\u000103H\u0016J0\u00104\u001a\u00020\"2\u0008\u0010&\u001a\u0004\u0018\u00010 2\u0008\u00100\u001a\u0004\u0018\u00010\u001d2\u0008\u00101\u001a\u0004\u0018\u00010\u001d2\u0008\u00102\u001a\u0004\u0018\u000103H\u0016J0\u00105\u001a\u00020\"2\u0008\u0010&\u001a\u0004\u0018\u00010 2\u0008\u00100\u001a\u0004\u0018\u00010\u001d2\u0008\u00101\u001a\u0004\u0018\u00010\u001d2\u0008\u00102\u001a\u0004\u0018\u000103H\u0016J:\u00106\u001a\u00020\"2\u0008\u0010&\u001a\u0004\u0018\u00010 2\u0008\u00100\u001a\u0004\u0018\u00010\u001d2\u0008\u00101\u001a\u0004\u0018\u00010\u001d2\u0008\u00107\u001a\u0004\u0018\u00010\u001d2\u0008\u00102\u001a\u0004\u0018\u000108H\u0016J\u0012\u00109\u001a\u00020\u00142\u0008\u0010:\u001a\u0004\u0018\u00010;H\u0016J\u0012\u0010<\u001a\u00020\u00142\u0008\u0010:\u001a\u0004\u0018\u00010;H\u0016J\u001a\u0010=\u001a\u00020\u00142\u0008\u0010&\u001a\u0004\u0018\u00010 2\u0006\u0010>\u001a\u00020?H\u0016J\u001c\u0010@\u001a\u00020\u00142\u0008\u0010&\u001a\u0004\u0018\u00010 2\u0008\u0010A\u001a\u0004\u0018\u00010\u0016H\u0016J\u001c\u0010B\u001a\u00020\u00142\u0008\u0010&\u001a\u0004\u0018\u00010 2\u0008\u0010C\u001a\u0004\u0018\u00010\u001dH\u0016J$\u0010D\u001a\u00020\u00142\u0008\u0010&\u001a\u0004\u0018\u00010 2\u0008\u00100\u001a\u0004\u0018\u00010\u001d2\u0006\u0010E\u001a\u00020\"H\u0016J\u0012\u0010F\u001a\u00020\u00142\u0008\u0010&\u001a\u0004\u0018\u00010 H\u0016J2\u0010G\u001a\u00020\"2\u0008\u0010H\u001a\u0004\u0018\u00010 2\u0014\u0010I\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020J0\u001c\u0018\u00010\u001b2\u0008\u0010K\u001a\u0004\u0018\u00010LH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006M"
    }
    d2 = {
        "Lcom/cloud/tmc/render/system/DefaultWebChromeClient;",
        "Landroid/webkit/WebChromeClient;",
        "context",
        "Landroid/content/Context;",
        "pageEventCallback",
        "Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;",
        "webviewBridgeHelper",
        "Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;",
        "(Landroid/content/Context;Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "getPageEventCallback",
        "()Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;",
        "setPageEventCallback",
        "(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V",
        "getWebviewBridgeHelper",
        "()Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;",
        "clear",
        "",
        "getDefaultVideoPoster",
        "Landroid/graphics/Bitmap;",
        "getVideoLoadingProgressView",
        "Landroid/view/View;",
        "getVisitedHistory",
        "callback",
        "Landroid/webkit/ValueCallback;",
        "",
        "",
        "onCloseWindow",
        "window",
        "Landroid/webkit/WebView;",
        "onConsoleMessage",
        "",
        "consoleMessage",
        "Landroid/webkit/ConsoleMessage;",
        "onCreateWindow",
        "view",
        "isDialog",
        "isUserGesture",
        "resultMsg",
        "Landroid/os/Message;",
        "onGeolocationPermissionsHidePrompt",
        "onGeolocationPermissionsShowPrompt",
        "origin",
        "Landroid/webkit/GeolocationPermissions$Callback;",
        "onJsAlert",
        "url",
        "message",
        "result",
        "Landroid/webkit/JsResult;",
        "onJsBeforeUnload",
        "onJsConfirm",
        "onJsPrompt",
        "defaultValue",
        "Landroid/webkit/JsPromptResult;",
        "onPermissionRequest",
        "request",
        "Landroid/webkit/PermissionRequest;",
        "onPermissionRequestCanceled",
        "onProgressChanged",
        "newProgress",
        "",
        "onReceivedIcon",
        "icon",
        "onReceivedTitle",
        "title",
        "onReceivedTouchIconUrl",
        "precomposed",
        "onRequestFocus",
        "onShowFileChooser",
        "webView",
        "filePathCallback",
        "Landroid/net/Uri;",
        "fileChooserParams",
        "Landroid/webkit/WebChromeClient$FileChooserParams;",
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
.field private context:Landroid/content/Context;

.field private pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

.field private final webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;->setPageEventCallback(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget v1, Lcom/cloud/tmc/render/R$drawable;->icon_video:I

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    return-object v0
.end method

.method public getPageEventCallback()Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getWebviewBridgeHelper()Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;->webviewBridgeHelper:Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "consoleMessage = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v2, v1

    .line 20
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, " ; "

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object v3, v1

    .line 36
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move-object v3, v1

    .line 50
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "TmcRender"

    .line 74
    .line 75
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    if-eqz p1, :cond_6

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    const-string v1, "message()"

    .line 87
    .line 88
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-nez v1, :cond_4

    .line 96
    .line 97
    const/4 v1, -0x1

    .line 98
    goto :goto_3

    .line 99
    :cond_4
    sget-object v2, Lcom/cloud/tmc/render/system/DefaultWebChromeClient$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    aget v1, v2, v1

    .line 106
    .line 107
    :goto_3
    const/4 v2, 0x1

    .line 108
    const-string v3, ""

    .line 109
    .line 110
    const-class v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 111
    .line 112
    if-ne v1, v2, :cond_5

    .line 113
    .line 114
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 119
    .line 120
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    .line 121
    .line 122
    invoke-interface {v1, v3, v2, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_5
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 131
    .line 132
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->CONSOLE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    .line 133
    .line 134
    invoke-interface {v1, v3, v2, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v2, "console:"

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    const-string v2, "juggist"

    .line 155
    .line 156
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;->getWebviewBridgeHelper()Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    if-eqz v1, :cond_6

    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;->getPageEventCallback()Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v1, v2, v0}, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->sendConsole(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    return p1
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;->getPageEventCallback()Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;->getPageEventCallback()Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;->onReceivedIcon(Landroid/graphics/Bitmap;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;->getPageEventCallback()Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;->onReceivedTitle(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;->getPageEventCallback()Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;->onRequestFocus()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public setPageEventCallback(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/system/DefaultWebChromeClient;->pageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    .line 2
    .line 3
    return-void
.end method
