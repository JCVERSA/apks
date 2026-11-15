.class public Lcom/just/agentweb/MiddlewareWebChromeBase;
.super Lcom/just/agentweb/WebChromeClientDelegate;
.source "SourceFile"


# instance fields
.field private mMiddlewareWebChromeBase:Lcom/just/agentweb/MiddlewareWebChromeBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/just/agentweb/WebChromeClientDelegate;-><init>(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebChromeClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/just/agentweb/WebChromeClientDelegate;-><init>(Landroid/webkit/WebChromeClient;)V

    return-void
.end method


# virtual methods
.method public final enq(Lcom/just/agentweb/MiddlewareWebChromeBase;)Lcom/just/agentweb/MiddlewareWebChromeBase;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/just/agentweb/MiddlewareWebChromeBase;->setDelegate(Landroid/webkit/WebChromeClient;)V

    iput-object p1, p0, Lcom/just/agentweb/MiddlewareWebChromeBase;->mMiddlewareWebChromeBase:Lcom/just/agentweb/MiddlewareWebChromeBase;

    return-object p1
.end method

.method public final next()Lcom/just/agentweb/MiddlewareWebChromeBase;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/MiddlewareWebChromeBase;->mMiddlewareWebChromeBase:Lcom/just/agentweb/MiddlewareWebChromeBase;

    return-object p0
.end method

.method public final setDelegate(Landroid/webkit/WebChromeClient;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/just/agentweb/WebChromeClientDelegate;->setDelegate(Landroid/webkit/WebChromeClient;)V

    return-void
.end method
