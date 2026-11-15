.class public Lcom/mgtv/webview/jsbridge/BridgeWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/webview/jsbridge/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mgtv/webview/jsbridge/d;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mgtv/webview/jsbridge/a;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/mgtv/webview/jsbridge/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 17
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, "BridgeWebView"

    iput-object v0, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->d:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->e:Ljava/util/Map;

    .line 21
    new-instance v0, Lcom/mgtv/webview/jsbridge/e;

    invoke-direct {v0}, Lcom/mgtv/webview/jsbridge/e;-><init>()V

    iput-object v0, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->f:Lcom/mgtv/webview/jsbridge/a;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->b:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->c:J

    .line 24
    invoke-direct {p0, p1}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const-string p2, "BridgeWebView"

    iput-object p2, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a:Ljava/lang/String;

    .line 3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->d:Ljava/util/Map;

    .line 4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->e:Ljava/util/Map;

    .line 5
    new-instance p2, Lcom/mgtv/webview/jsbridge/e;

    invoke-direct {p2}, Lcom/mgtv/webview/jsbridge/e;-><init>()V

    iput-object p2, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->f:Lcom/mgtv/webview/jsbridge/a;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->b:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->c:J

    .line 8
    invoke-direct {p0, p1}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const-string p2, "BridgeWebView"

    iput-object p2, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a:Ljava/lang/String;

    .line 11
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->d:Ljava/util/Map;

    .line 12
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->e:Ljava/util/Map;

    .line 13
    new-instance p2, Lcom/mgtv/webview/jsbridge/e;

    invoke-direct {p2}, Lcom/mgtv/webview/jsbridge/e;-><init>()V

    iput-object p2, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->f:Lcom/mgtv/webview/jsbridge/a;

    .line 14
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->b:Ljava/util/List;

    const-wide/16 p2, 0x0

    .line 15
    iput-wide p2, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->c:J

    .line 16
    invoke-direct {p0, p1}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 6
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/hunantv/imgo/util/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    .line 9
    :goto_0
    new-instance v0, Lcom/mgtv/webview/jsbridge/BridgeWebView$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/mgtv/webview/jsbridge/BridgeWebView$1;-><init>(Lcom/mgtv/webview/jsbridge/BridgeWebView;Lcom/mgtv/webview/jsbridge/BridgeWebView;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 10
    new-instance v0, Lcom/mgtv/webview/jsbridge/BridgeWebView$2;

    invoke-direct {v0, p0, p1}, Lcom/mgtv/webview/jsbridge/BridgeWebView$2;-><init>(Lcom/mgtv/webview/jsbridge/BridgeWebView;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/webview/jsbridge/BridgeWebView;Lcom/mgtv/webview/jsbridge/f;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->b(Lcom/mgtv/webview/jsbridge/f;)V

    return-void
.end method

.method private b(Lcom/mgtv/webview/jsbridge/f;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Lcom/mgtv/webview/jsbridge/f;)V

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/webview/jsbridge/d;)V
    .locals 5

    .line 2
    new-instance v0, Lcom/mgtv/webview/jsbridge/f;

    invoke-direct {v0}, Lcom/mgtv/webview/jsbridge/f;-><init>()V

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0, p2}, Lcom/mgtv/webview/jsbridge/f;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->c:J

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

    .line 6
    iget-object v1, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->d:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0, p2}, Lcom/mgtv/webview/jsbridge/f;->c(Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Lcom/mgtv/webview/jsbridge/f;->e(Ljava/lang/String;)V

    .line 10
    :cond_2
    invoke-direct {p0, v0}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->b(Lcom/mgtv/webview/jsbridge/f;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 2
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 3
    return-void
.end method

.method public a(Lcom/mgtv/webview/jsbridge/f;)V
    .locals 2

    .line 11
    invoke-virtual {p1}, Lcom/mgtv/webview/jsbridge/f;->f()Ljava/lang/String;

    move-result-object p1

    .line 12
    const-string v0, "(\\\\)([^utrn])"

    const-string v1, "\\\\\\\\$1$2"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    const-string v0, "(?<=[^\\\\])(\")"

    const-string v1, "\\\\\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    const-string v0, "(?<=[^\\\\])(\')"

    const-string v1, "\\\\\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    const-string v0, "%7B"

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    const-string v0, "%7D"

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    const-string v0, "%22"

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    const-string v0, "javascript:WebViewJavascriptBridge._handleMessageFromNative(\'%s\');"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mgtv/webview/jsbridge/a;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 23
    iget-object p0, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->e:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mgtv/webview/jsbridge/d;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 22
    iget-object p0, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->d:Ljava/util/Map;

    invoke-static {p1}, Lcom/mgtv/webview/jsbridge/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/webview/jsbridge/d;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->b(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/webview/jsbridge/d;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgtv/webview/jsbridge/f;",
            ">;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->b:Ljava/util/List;

    return-void
.end method

.method public b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgtv/webview/jsbridge/f;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->b:Ljava/util/List;

    return-object p0
.end method

.method public c(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public d()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/mgtv/webview/jsbridge/BridgeWebView$3;

    invoke-direct {v0, p0}, Lcom/mgtv/webview/jsbridge/BridgeWebView$3;-><init>(Lcom/mgtv/webview/jsbridge/BridgeWebView;)V

    const-string v1, "javascript:WebViewJavascriptBridge._fetchQueue();"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/webview/jsbridge/BridgeWebView;->a(Ljava/lang/String;Lcom/mgtv/webview/jsbridge/d;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/mgtv/webview/jsbridge/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/webview/jsbridge/d;

    invoke-static {p1}, Lcom/mgtv/webview/jsbridge/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/mgtv/webview/jsbridge/d;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/webview/jsbridge/BridgeWebView;->d:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
