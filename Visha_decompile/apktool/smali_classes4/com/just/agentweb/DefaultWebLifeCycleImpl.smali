.class public Lcom/just/agentweb/DefaultWebLifeCycleImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/just/agentweb/WebLifeCycle;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWebLifeCycleImpl"


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/just/agentweb/DefaultWebLifeCycleImpl;->mWebView:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/DefaultWebLifeCycleImpl;->mWebView:Landroid/webkit/WebView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/just/agentweb/DefaultWebLifeCycleImpl;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    iget-object p0, p0, Lcom/just/agentweb/DefaultWebLifeCycleImpl;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->pauseTimers()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/just/agentweb/DefaultWebLifeCycleImpl;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    iget-object p0, p0, Lcom/just/agentweb/DefaultWebLifeCycleImpl;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->resumeTimers()V

    :cond_0
    return-void
.end method
