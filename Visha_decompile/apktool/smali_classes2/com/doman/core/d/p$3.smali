.class final Lcom/doman/core/d/p$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/d/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/doman/core/a/j;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/doman/core/d/p;


# direct methods
.method public constructor <init>(Lcom/doman/core/d/p;Landroid/app/Activity;ZLjava/lang/String;Lcom/doman/core/a/j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/d/p$3;->f:Lcom/doman/core/d/p;

    iput-object p2, p0, Lcom/doman/core/d/p$3;->a:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/doman/core/d/p$3;->b:Z

    iput-object p4, p0, Lcom/doman/core/d/p$3;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/doman/core/d/p$3;->d:Lcom/doman/core/a/j;

    iput-object p6, p0, Lcom/doman/core/d/p$3;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/doman/core/webview/WsWebView;

    iget-object v1, p0, Lcom/doman/core/d/p$3;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/doman/core/webview/WsWebView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/doman/core/d/p$3;->a:Landroid/app/Activity;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/doman/core/d/p$3;->b:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/doman/core/d/p$3;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/doman/core/d/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/doman/core/d/p$3;->a:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/doman/core/d/p$3;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/doman/core/R$layout;->ad:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/doman/core/d/o;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/doman/core/d/o;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v2, p0, Lcom/doman/core/d/p$3;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    add-int v5, v3, v2

    if-ge v3, v2, :cond_2

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v4, Lcom/doman/core/R$id;->webview:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/doman/core/webview/WsWebView;

    invoke-static {}, Lcom/doman/core/webview/a;->a()Lcom/doman/core/webview/a;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/doman/core/webview/a;->a(Landroid/webkit/WebView;)V

    iget-object v6, p0, Lcom/doman/core/d/p$3;->d:Lcom/doman/core/a/j;

    iget-boolean v6, v6, Lcom/doman/core/a/j;->h:Z

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/doman/core/webview/a;->a()Lcom/doman/core/webview/a;

    invoke-static {}, Lcom/doman/core/webview/a;->b()V

    :cond_3
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    if-lez v5, :cond_4

    if-le v5, v3, :cond_4

    if-gt v5, v2, :cond_5

    :cond_4
    const/16 v5, 0x1f40

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v3, v5

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/doman/core/d/p$3;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/doman/core/d/p$3;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    new-instance v2, Lcom/doman/core/d/p$3$1;

    invoke-direct {v2, p0}, Lcom/doman/core/d/p$3$1;-><init>(Lcom/doman/core/d/p$3;)V

    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v2, Lcom/doman/core/d/p$3$2;

    invoke-direct {v2, p0, v4, v1}, Lcom/doman/core/d/p$3$2;-><init>(Lcom/doman/core/d/p$3;Lcom/doman/core/webview/WsWebView;Landroid/widget/FrameLayout;)V

    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    iget-object v2, p0, Lcom/doman/core/d/p$3;->c:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/doman/core/d/p;->a(Lcom/doman/core/webview/WsWebView;Ljava/lang/String;)V

    new-instance v2, Lcom/doman/core/d/p$3$3;

    invoke-direct {v2, p0, v4, v0, v1}, Lcom/doman/core/d/p$3$3;-><init>(Lcom/doman/core/d/p$3;Lcom/doman/core/webview/WsWebView;Landroid/view/ViewGroup;Landroid/widget/FrameLayout;)V

    invoke-static {v2}, Lcom/doman/core/d/n;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_8
    return-void
.end method
