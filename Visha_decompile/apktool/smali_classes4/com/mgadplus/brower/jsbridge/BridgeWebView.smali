.class public Lcom/mgadplus/brower/jsbridge/BridgeWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field public final e:Ljava/lang/String;

.field public f:Ljava/util/Map;

.field public g:Ljava/util/Map;

.field public h:Ld2d;

.field public i:Ljava/util/List;

.field public j:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 17
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, "BridgeWebView"

    iput-object v0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->e:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->f:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->g:Ljava/util/Map;

    .line 21
    new-instance v0, Lnbd;

    invoke-direct {v0}, Lnbd;-><init>()V

    iput-object v0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->h:Ld2d;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->i:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->j:J

    .line 24
    invoke-direct {p0, p1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const-string p2, "BridgeWebView"

    iput-object p2, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->e:Ljava/lang/String;

    .line 3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->f:Ljava/util/Map;

    .line 4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->g:Ljava/util/Map;

    .line 5
    new-instance p2, Lnbd;

    invoke-direct {p2}, Lnbd;-><init>()V

    iput-object p2, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->h:Ld2d;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->i:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->j:J

    .line 8
    invoke-direct {p0, p1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const-string p2, "BridgeWebView"

    iput-object p2, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->e:Ljava/lang/String;

    .line 11
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->f:Ljava/util/Map;

    .line 12
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->g:Ljava/util/Map;

    .line 13
    new-instance p2, Lnbd;

    invoke-direct {p2}, Lnbd;-><init>()V

    iput-object p2, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->h:Ld2d;

    .line 14
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->i:Ljava/util/List;

    const-wide/16 p2, 0x0

    .line 15
    iput-wide p2, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->j:J

    .line 16
    invoke-direct {p0, p1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lh2d;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    .line 5
    :goto_0
    new-instance v0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$a;

    invoke-direct {v0, p0, p0, p1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView$a;-><init>(Lcom/mgadplus/brower/jsbridge/BridgeWebView;Lcom/mgadplus/brower/jsbridge/BridgeWebView;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 6
    new-instance v0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$b;

    invoke-direct {v0, p0, p1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView$b;-><init>(Lcom/mgadplus/brower/jsbridge/BridgeWebView;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public static synthetic e(Lcom/mgadplus/brower/jsbridge/BridgeWebView;Lued;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->i(Lued;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ld2d;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 9
    iget-object p0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->g:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lz9d;)V
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->j(Ljava/lang/String;Ljava/lang/String;Lz9d;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lz9d;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->f:Ljava/util/Map;

    invoke-static {p1}, Lu5d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public b(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public f(Lued;)V
    .locals 2

    invoke-virtual {p1}, Lued;->k()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
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

    const-string v0, "javascript:WebViewJavascriptBridge._handleMessageFromNative(\'%s\');"

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

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public g(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getStartupMessage()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lued;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->i:Ljava/util/List;

    return-object p0
.end method

.method public h(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final i(Lued;)V
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->f(Lued;)V

    :goto_0
    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;Lz9d;)V
    .locals 5

    new-instance v0, Lued;

    invoke-direct {v0}, Lued;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Lued;->h(Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->j:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->j:J

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

    iget-object v1, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->f:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Lued;->f(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v0, p1}, Lued;->j(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->i(Lued;)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public l(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lu5d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz9d;

    invoke-static {p1}, Lu5d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lz9d;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->f:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/mgadplus/brower/jsbridge/BridgeWebView$c;

    invoke-direct {v0, p0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView$c;-><init>(Lcom/mgadplus/brower/jsbridge/BridgeWebView;)V

    const-string v1, "javascript:WebViewJavascriptBridge._fetchQueue();"

    invoke-virtual {p0, v1, v0}, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->a(Ljava/lang/String;Lz9d;)V

    :cond_0
    return-void
.end method

.method public setDefaultHandler(Ld2d;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->h:Ld2d;

    return-void
.end method

.method public setStartupMessage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lued;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mgadplus/brower/jsbridge/BridgeWebView;->i:Ljava/util/List;

    return-void
.end method
