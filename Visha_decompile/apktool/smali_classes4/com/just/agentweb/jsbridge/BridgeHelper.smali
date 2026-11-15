.class public Lcom/just/agentweb/jsbridge/BridgeHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/just/agentweb/jsbridge/WebViewJavascriptBridge;


# static fields
.field private static final BRIDGE_JS:Ljava/lang/String; = "WebViewJavascriptBridge.js"

.field private static final TAG:Ljava/lang/String; = "BridgeHelper"


# instance fields
.field private defaultHandler:Lcom/just/agentweb/jsbridge/BridgeHandler;

.field private final messageHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/just/agentweb/jsbridge/BridgeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final responseCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/just/agentweb/jsbridge/OnBridgeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private startupMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/just/agentweb/jsbridge/Message;",
            ">;"
        }
    .end annotation
.end field

.field private uniqueId:J

.field private final webView:Lcom/just/agentweb/jsbridge/IWebView;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/jsbridge/IWebView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->responseCallbacks:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->messageHandlers:Ljava/util/Map;

    new-instance v0, Lcom/just/agentweb/jsbridge/DefaultHandler;

    invoke-direct {v0}, Lcom/just/agentweb/jsbridge/DefaultHandler;-><init>()V

    iput-object v0, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->defaultHandler:Lcom/just/agentweb/jsbridge/BridgeHandler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->startupMessage:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->uniqueId:J

    iput-object p1, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->webView:Lcom/just/agentweb/jsbridge/IWebView;

    return-void
.end method

.method public static bridge synthetic a(Lcom/just/agentweb/jsbridge/BridgeHelper;)Lcom/just/agentweb/jsbridge/BridgeHandler;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->defaultHandler:Lcom/just/agentweb/jsbridge/BridgeHandler;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/just/agentweb/jsbridge/BridgeHelper;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->messageHandlers:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/just/agentweb/jsbridge/BridgeHelper;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->responseCallbacks:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/just/agentweb/jsbridge/BridgeHelper;Lcom/just/agentweb/jsbridge/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/just/agentweb/jsbridge/BridgeHelper;->queueMessage(Lcom/just/agentweb/jsbridge/Message;)V

    return-void
.end method

.method private dispatchMessage(Lcom/just/agentweb/jsbridge/Message;)V
    .locals 2

    invoke-virtual {p1}, Lcom/just/agentweb/jsbridge/Message;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string v0, "(\\\\)([^utrn])"

    const-string v1, "\\\\\\\\$1$2"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(?<=[^\\\\])(\")"

    const-string v1, "\\\\\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(?<=[^\\\\])(\')"

    const-string v1, "\\\\\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "%7B"

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "%7D"

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "%22"

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "javascript:WebViewJavascriptBridge._handleMessageFromNative(%s);"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/just/agentweb/jsbridge/BridgeHelper;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doSend(Ljava/lang/String;Ljava/lang/String;Lcom/just/agentweb/jsbridge/OnBridgeCallback;)V
    .locals 5

    new-instance v0, Lcom/just/agentweb/jsbridge/Message;

    invoke-direct {v0}, Lcom/just/agentweb/jsbridge/Message;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/just/agentweb/jsbridge/Message;->setData(Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->uniqueId:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->uniqueId:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "JAVA_CB_%s"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->responseCallbacks:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Lcom/just/agentweb/jsbridge/Message;->setCallbackId(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v0, p1}, Lcom/just/agentweb/jsbridge/Message;->setHandlerName(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/just/agentweb/jsbridge/BridgeHelper;->queueMessage(Lcom/just/agentweb/jsbridge/Message;)V

    return-void
.end method

.method private flushMessageQueue()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/just/agentweb/jsbridge/BridgeHelper$1;

    invoke-direct {v0, p0}, Lcom/just/agentweb/jsbridge/BridgeHelper$1;-><init>(Lcom/just/agentweb/jsbridge/BridgeHelper;)V

    const-string v1, "javascript:WebViewJavascriptBridge._fetchQueue();"

    invoke-direct {p0, v1, v0}, Lcom/just/agentweb/jsbridge/BridgeHelper;->loadUrl(Ljava/lang/String;Lcom/just/agentweb/jsbridge/OnBridgeCallback;)V

    :cond_0
    return-void
.end method

.method private getStartupMessage()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/just/agentweb/jsbridge/Message;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->startupMessage:Ljava/util/List;

    return-object p0
.end method

.method private handlerReturnData(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/just/agentweb/jsbridge/BridgeUtil;->getFunctionFromReturnUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->responseCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/just/agentweb/jsbridge/OnBridgeCallback;

    invoke-static {p1}, Lcom/just/agentweb/jsbridge/BridgeUtil;->getDataFromReturnUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/just/agentweb/jsbridge/OnBridgeCallback;->onCallBack(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->responseCallbacks:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private loadUrl(Ljava/lang/String;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->webView:Lcom/just/agentweb/jsbridge/IWebView;

    invoke-interface {p0, p1}, Lcom/just/agentweb/jsbridge/IWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private loadUrl(Ljava/lang/String;Lcom/just/agentweb/jsbridge/OnBridgeCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/just/agentweb/jsbridge/BridgeHelper;->loadUrl(Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->responseCallbacks:Ljava/util/Map;

    invoke-static {p1}, Lcom/just/agentweb/jsbridge/BridgeUtil;->parseFunctionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private queueMessage(Lcom/just/agentweb/jsbridge/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->startupMessage:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/just/agentweb/jsbridge/BridgeHelper;->dispatchMessage(Lcom/just/agentweb/jsbridge/Message;)V

    :goto_0
    return-void
.end method

.method private setStartupMessage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/just/agentweb/jsbridge/Message;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->startupMessage:Ljava/util/List;

    return-void
.end method

.method private webViewLoadLocalJs()V
    .locals 3

    iget-object v0, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->webView:Lcom/just/agentweb/jsbridge/IWebView;

    invoke-interface {v0}, Lcom/just/agentweb/jsbridge/IWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "WebViewJavascriptBridge.js"

    invoke-static {v0, v1}, Lcom/just/agentweb/jsbridge/BridgeUtil;->assetFile2Str(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/just/agentweb/jsbridge/BridgeHelper;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public callHandler(Ljava/lang/String;Ljava/lang/String;Lcom/just/agentweb/jsbridge/OnBridgeCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/just/agentweb/jsbridge/BridgeHelper;->doSend(Ljava/lang/String;Ljava/lang/String;Lcom/just/agentweb/jsbridge/OnBridgeCallback;)V

    return-void
.end method

.method public onPageFinished()V
    .locals 2

    invoke-direct {p0}, Lcom/just/agentweb/jsbridge/BridgeHelper;->webViewLoadLocalJs()V

    invoke-direct {p0}, Lcom/just/agentweb/jsbridge/BridgeHelper;->getStartupMessage()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/just/agentweb/jsbridge/BridgeHelper;->getStartupMessage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/just/agentweb/jsbridge/Message;

    invoke-direct {p0, v1}, Lcom/just/agentweb/jsbridge/BridgeHelper;->dispatchMessage(Lcom/just/agentweb/jsbridge/Message;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/just/agentweb/jsbridge/BridgeHelper;->setStartupMessage(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public registerHandler(Ljava/lang/String;Lcom/just/agentweb/jsbridge/BridgeHandler;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->messageHandlers:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public sendToWeb(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/just/agentweb/jsbridge/BridgeHelper;->sendToWeb(Ljava/lang/String;Lcom/just/agentweb/jsbridge/OnBridgeCallback;)V

    return-void
.end method

.method public sendToWeb(Ljava/lang/String;Lcom/just/agentweb/jsbridge/OnBridgeCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/just/agentweb/jsbridge/BridgeHelper;->doSend(Ljava/lang/String;Ljava/lang/String;Lcom/just/agentweb/jsbridge/OnBridgeCallback;)V

    return-void
.end method

.method public varargs sendToWeb(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    const-string p2, "javascript:%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcom/just/agentweb/jsbridge/BridgeHelper;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDefaultHandler(Lcom/just/agentweb/jsbridge/BridgeHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->defaultHandler:Lcom/just/agentweb/jsbridge/BridgeHandler;

    return-void
.end method

.method public shouldOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    const-string v0, "%(?![0-9a-fA-F]{2})"

    const-string v1, "%25"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\+"

    const-string v2, "%2B"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BridgeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string v0, "yy://return/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/just/agentweb/jsbridge/BridgeHelper;->handlerReturnData(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "yy://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/just/agentweb/jsbridge/BridgeHelper;->flushMessageQueue()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public unregisterHandler(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/just/agentweb/jsbridge/BridgeHelper;->messageHandlers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
