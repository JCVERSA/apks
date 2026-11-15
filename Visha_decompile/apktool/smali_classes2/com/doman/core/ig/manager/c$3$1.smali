.class final Lcom/doman/core/ig/manager/c$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doman/core/ig/manager/c$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/doman/core/ig/manager/c$3;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/manager/c$3;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/ig/manager/c$3$1;->b:Lcom/doman/core/ig/manager/c$3;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/doman/core/ig/manager/c$3$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/doman/core/ig/manager/c$3$1;->b:Lcom/doman/core/ig/manager/c$3;

    iget-object v0, v0, Lcom/doman/core/ig/manager/c$3;->a:Lcom/doman/core/a/g;

    iget-object v0, v0, Lcom/doman/core/a/g;->aa:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/doman/core/ig/manager/c$3$1;->b:Lcom/doman/core/ig/manager/c$3;

    iget-object v0, v0, Lcom/doman/core/ig/manager/c$3;->a:Lcom/doman/core/a/g;

    iget-object v0, v0, Lcom/doman/core/a/g;->aa:Ljava/lang/String;

    const-string v1, "4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/doman/core/webview/WsWebView;

    iget-object v1, p0, Lcom/doman/core/ig/manager/c$3$1;->b:Lcom/doman/core/ig/manager/c$3;

    iget-object v1, v1, Lcom/doman/core/ig/manager/c$3;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/doman/core/webview/WsWebView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/doman/core/ig/manager/c$3$1;->b:Lcom/doman/core/ig/manager/c$3;

    iget-object v0, v0, Lcom/doman/core/ig/manager/c$3;->b:Landroid/app/Activity;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/doman/core/ig/manager/c$3$1;->b:Lcom/doman/core/ig/manager/c$3;

    iget-boolean v1, v0, Lcom/doman/core/ig/manager/c$3;->d:Z

    if-eqz v1, :cond_8

    iget-object v0, v0, Lcom/doman/core/ig/manager/c$3;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/doman/core/ig/manager/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/doman/core/ig/manager/c$3$1;->b:Lcom/doman/core/ig/manager/c$3;

    iget-object v0, v0, Lcom/doman/core/ig/manager/c$3;->b:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/doman/core/ig/manager/c$3$1;->b:Lcom/doman/core/ig/manager/c$3;

    iget-object v0, v0, Lcom/doman/core/ig/manager/c$3;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/doman/core/R$layout;->ad:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-static {v4, v5}, Lcom/doman/core/d/o;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-static {v4, v5}, Lcom/doman/core/d/o;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/doman/core/ig/manager/c$3$1;->b:Lcom/doman/core/ig/manager/c$3;

    iget-object v0, v0, Lcom/doman/core/ig/manager/c$3;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    add-int v1, v6, v7

    if-ge v6, v7, :cond_2

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_0
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/doman/core/R$id;->webview:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/doman/core/webview/WsWebView;

    invoke-static {}, Lcom/doman/core/webview/a;->a()Lcom/doman/core/webview/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/doman/core/webview/a;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/doman/core/ig/manager/c$3$1;->b:Lcom/doman/core/ig/manager/c$3;

    iget-object v0, v0, Lcom/doman/core/ig/manager/c$3;->a:Lcom/doman/core/a/g;

    iget-boolean v0, v0, Lcom/doman/core/a/g;->Y:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/doman/core/webview/a;->a()Lcom/doman/core/webview/a;

    invoke-static {}, Lcom/doman/core/webview/a;->b()V

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    if-lez v1, :cond_4

    if-le v1, v6, :cond_4

    if-gt v1, v7, :cond_5

    :cond_4
    const/16 v1, 0x1f40

    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/doman/core/ig/manager/c$3$1;->b:Lcom/doman/core/ig/manager/c$3;

    iget-object v0, v0, Lcom/doman/core/ig/manager/c$3;->a:Lcom/doman/core/a/g;

    iget-object v0, v0, Lcom/doman/core/a/g;->Q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/doman/core/ig/manager/c$3$1;->b:Lcom/doman/core/ig/manager/c$3;

    iget-object v1, v1, Lcom/doman/core/ig/manager/c$3;->a:Lcom/doman/core/a/g;

    iget-object v1, v1, Lcom/doman/core/a/g;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    new-instance v0, Lcom/doman/core/ig/manager/c$3$1$1;

    invoke-direct {v0, p0}, Lcom/doman/core/ig/manager/c$3$1$1;-><init>(Lcom/doman/core/ig/manager/c$3$1;)V

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/doman/core/ig/manager/c$3$1$2;

    invoke-direct {v0, p0, v3, v5}, Lcom/doman/core/ig/manager/c$3$1$2;-><init>(Lcom/doman/core/ig/manager/c$3$1;Lcom/doman/core/webview/WsWebView;Landroid/widget/FrameLayout;)V

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/doman/core/ig/manager/c$3$1;->b:Lcom/doman/core/ig/manager/c$3;

    iget-object v0, v0, Lcom/doman/core/ig/manager/c$3;->c:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/doman/core/ig/manager/c;->a(Lcom/doman/core/webview/WsWebView;Ljava/lang/String;)V

    sget-object v0, Lcom/doman/core/webview/c;->ap:Ljava/lang/String;

    invoke-static {v0}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/doman/core/ig/manager/c$3$1$3;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/doman/core/ig/manager/c$3$1$3;-><init>(Lcom/doman/core/ig/manager/c$3$1;Lcom/doman/core/webview/WsWebView;Landroid/view/ViewGroup;Landroid/widget/FrameLayout;II)V

    invoke-static {v0}, Lcom/doman/core/d/n;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_8
    return-void

    :cond_9
    :goto_1
    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/doman/core/d/p;->a()Lcom/doman/core/d/p;

    move-result-object v0

    iget-object p0, p0, Lcom/doman/core/ig/manager/c$3$1;->b:Lcom/doman/core/ig/manager/c$3;

    iget-object p0, p0, Lcom/doman/core/ig/manager/c$3;->a:Lcom/doman/core/a/g;

    sget-object v1, Lcom/doman/core/CoreMain;->mhandler:Landroid/os/Handler;

    new-instance v2, Lcom/doman/core/d/p$2;

    invoke-direct {v2, v0, p0}, Lcom/doman/core/d/p$2;-><init>(Lcom/doman/core/d/p;Lcom/doman/core/a/g;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p0, Lcom/doman/core/webview/c;->ap:Ljava/lang/String;

    invoke-static {p0}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;)V

    :cond_a
    return-void
.end method
