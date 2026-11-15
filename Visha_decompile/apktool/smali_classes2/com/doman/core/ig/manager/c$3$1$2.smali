.class final Lcom/doman/core/ig/manager/c$3$1$2;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doman/core/ig/manager/c$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/webview/WsWebView;

.field final synthetic b:Landroid/widget/FrameLayout;

.field final synthetic c:Lcom/doman/core/ig/manager/c$3$1;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/manager/c$3$1;Lcom/doman/core/webview/WsWebView;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/ig/manager/c$3$1$2;->c:Lcom/doman/core/ig/manager/c$3$1;

    iput-object p2, p0, Lcom/doman/core/ig/manager/c$3$1$2;->a:Lcom/doman/core/webview/WsWebView;

    iput-object p3, p0, Lcom/doman/core/ig/manager/c$3$1$2;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/doman/core/ig/manager/c$3$1$2;->a:Lcom/doman/core/webview/WsWebView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/doman/core/ig/manager/c$3$1$2;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/doman/core/ig/manager/c$3$1$2;->c:Lcom/doman/core/ig/manager/c$3$1;

    iget-object p1, p1, Lcom/doman/core/ig/manager/c$3$1;->b:Lcom/doman/core/ig/manager/c$3;

    iget-object p1, p1, Lcom/doman/core/ig/manager/c$3;->a:Lcom/doman/core/a/g;

    iget-object p1, p1, Lcom/doman/core/a/g;->S:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/doman/core/d/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/doman/core/CoreMain;->mhandler:Landroid/os/Handler;

    new-instance v0, Lcom/doman/core/ig/manager/c$3$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/doman/core/ig/manager/c$3$1$2$1;-><init>(Lcom/doman/core/ig/manager/c$3$1$2;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method
