.class public Lqp7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage$b;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/help/view/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/help/view/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lqp7;->a:Lcom/transsion/xuanniao/account/help/view/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lqp7;->a:Lcom/transsion/xuanniao/account/help/view/WebViewActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lqp7;->a:Lcom/transsion/xuanniao/account/help/view/WebViewActivity;

    iget-object v1, v0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;

    invoke-virtual {v1, v0}, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;->OppO00p(Landroid/app/Activity;)V

    iget-object v0, p0, Lqp7;->a:Lcom/transsion/xuanniao/account/help/view/WebViewActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lqp7;->a:Lcom/transsion/xuanniao/account/help/view/WebViewActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->g:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lqp7;->a:Lcom/transsion/xuanniao/account/help/view/WebViewActivity;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->e:Landroid/webkit/WebView;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method
