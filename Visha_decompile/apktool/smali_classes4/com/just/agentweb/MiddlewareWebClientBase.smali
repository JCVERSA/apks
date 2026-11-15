.class public Lcom/just/agentweb/MiddlewareWebClientBase;
.super Lcom/just/agentweb/WebViewClientDelegate;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiddlewareWebClientBase"


# instance fields
.field private mMiddleWrareWebClientBase:Lcom/just/agentweb/MiddlewareWebClientBase;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/just/agentweb/WebViewClientDelegate;-><init>(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebViewClient;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/just/agentweb/WebViewClientDelegate;-><init>(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/just/agentweb/MiddlewareWebClientBase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/just/agentweb/WebViewClientDelegate;-><init>(Landroid/webkit/WebViewClient;)V

    .line 2
    iput-object p1, p0, Lcom/just/agentweb/MiddlewareWebClientBase;->mMiddleWrareWebClientBase:Lcom/just/agentweb/MiddlewareWebClientBase;

    return-void
.end method


# virtual methods
.method public final enq(Lcom/just/agentweb/MiddlewareWebClientBase;)Lcom/just/agentweb/MiddlewareWebClientBase;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/just/agentweb/MiddlewareWebClientBase;->setDelegate(Landroid/webkit/WebViewClient;)V

    iput-object p1, p0, Lcom/just/agentweb/MiddlewareWebClientBase;->mMiddleWrareWebClientBase:Lcom/just/agentweb/MiddlewareWebClientBase;

    return-object p1
.end method

.method public final next()Lcom/just/agentweb/MiddlewareWebClientBase;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/MiddlewareWebClientBase;->mMiddleWrareWebClientBase:Lcom/just/agentweb/MiddlewareWebClientBase;

    return-object p0
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/just/agentweb/WebViewClientDelegate;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p0

    return p0
.end method

.method public final setDelegate(Landroid/webkit/WebViewClient;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/just/agentweb/WebViewClientDelegate;->setDelegate(Landroid/webkit/WebViewClient;)V

    return-void
.end method
