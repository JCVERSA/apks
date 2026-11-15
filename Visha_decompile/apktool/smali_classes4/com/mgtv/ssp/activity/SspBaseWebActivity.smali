.class public abstract Lcom/mgtv/ssp/activity/SspBaseWebActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Z

.field protected b:Ljava/lang/String;

.field protected c:Landroid/view/View;

.field protected d:Landroid/view/View;

.field protected e:Lcom/mgtv/webview/MgSspWebView;

.field protected f:Landroid/view/View;

.field protected g:Landroid/view/View;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/activity/SspBaseWebActivity;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->h()V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/activity/SspBaseWebActivity;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private g()V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->f:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->f:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->e:Lcom/mgtv/webview/MgSspWebView;

    if-eqz v0, :cond_0

    .line 5
    iput-object p1, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->b:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->g()V

    .line 7
    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->e:Lcom/mgtv/webview/MgSspWebView;

    invoke-virtual {p0, p1}, Lcom/mgtv/webview/MgSspWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    sget p1, Lcom/mgtv/ssp/R$string;->page_empty:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public abstract b()I
.end method

.method public abstract c()V
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->e:Lcom/mgtv/webview/MgSspWebView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mgtv/ssp/activity/SspBaseWebActivity$1;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/activity/SspBaseWebActivity$1;-><init>(Lcom/mgtv/ssp/activity/SspBaseWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/webview/MgSspWebView;->a(Lcom/mgtv/webview/d;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->e:Lcom/mgtv/webview/MgSspWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->e:Lcom/mgtv/webview/MgSspWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    iget-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->e:Lcom/mgtv/webview/MgSspWebView;

    invoke-virtual {v0}, Lcom/mgtv/webview/BaseWebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->e:Lcom/mgtv/webview/MgSspWebView;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/mgtv/ssp/R$id;->close_web:I

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->e:Lcom/mgtv/webview/MgSspWebView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->e:Lcom/mgtv/webview/MgSspWebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/mgtv/ssp/R$id;->error_view:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->c()V

    invoke-virtual {p0}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->d()V

    invoke-virtual {p0}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->a()V

    iget-object p1, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->f()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->e()V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
