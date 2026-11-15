.class public Lcom/transsion/xuanniao/account/help/view/WebViewActivity;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;
.source "SourceFile"


# instance fields
.field public e:Landroid/webkit/WebView;

.field public f:Lcom/transsion/xuanniao/account/help/view/b;

.field public g:Ljava/lang/String;

.field public h:Landroid/widget/ProgressBar;

.field public i:Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;-><init>()V

    return-void
.end method

.method public static B0(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    const-string v0, "com.android.chrome"

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p0, v0}, Lvl7;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "url"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    sget p1, Lcom/transsion/xuanniao/account/R$layout;->xn_activity_web_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->g:Ljava/lang/String;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->progress_bar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->h:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "title"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->webView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-ge p1, v0, :cond_3

    const-string p1, "FORCE_DARK"

    invoke-static {p1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    if-eqz p1, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroidx/webkit/WebSettingsCompat;->setForceDark(Landroid/webkit/WebSettings;I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/webkit/WebSettingsCompat;->setForceDark(Landroid/webkit/WebSettings;I)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->e:Landroid/webkit/WebView;

    new-instance v0, Lzp7;

    invoke-direct {v0, p0}, Lzp7;-><init>(Lcom/transsion/xuanniao/account/help/view/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->e:Landroid/webkit/WebView;

    new-instance v0, Lcom/transsion/xuanniao/account/help/view/d;

    invoke-direct {v0, p0}, Lcom/transsion/xuanniao/account/help/view/d;-><init>(Lcom/transsion/xuanniao/account/help/view/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->g:Ljava/lang/String;

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->e:Landroid/webkit/WebView;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->g:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_4
    return-void

    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    invoke-super {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;->OppO00p(Landroid/app/Activity;)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->f:Lcom/transsion/xuanniao/account/help/view/b;

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcom/transsion/xuanniao/account/help/view/b;->a:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_5

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;

    if-nez v0, :cond_4

    new-instance v0, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;

    invoke-direct {v0, p0}, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;

    new-instance v2, Lqp7;

    invoke-direct {v2, p0}, Lqp7;-><init>(Lcom/transsion/xuanniao/account/help/view/WebViewActivity;)V

    invoke-virtual {v0, v2}, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;->setReload(Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage$b;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;

    invoke-virtual {v0, p0}, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;->OppO0O0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->f:Lcom/transsion/xuanniao/account/help/view/b;

    if-nez v0, :cond_5

    new-instance v0, Lcom/transsion/xuanniao/account/help/view/b;

    new-instance v2, Lcom/transsion/xuanniao/account/help/view/c;

    invoke-direct {v2, p0}, Lcom/transsion/xuanniao/account/help/view/c;-><init>(Lcom/transsion/xuanniao/account/help/view/WebViewActivity;)V

    invoke-direct {v0, p0, v2}, Lcom/transsion/xuanniao/account/help/view/b;-><init>(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;Lcom/transsion/xuanniao/account/help/view/b$a;)V

    iput-object v0, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->f:Lcom/transsion/xuanniao/account/help/view/b;

    :cond_5
    iget-object v0, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->f:Lcom/transsion/xuanniao/account/help/view/b;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/help/view/b;->a:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    goto :goto_3

    :cond_6
    move v0, v1

    :goto_3
    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "isFAQ"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    invoke-virtual {v0}, Lxj;->Y()V

    goto :goto_4

    :cond_7
    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    invoke-virtual {v0}, Lxj;->Z0()V

    :goto_4
    iget-object v0, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->f:Lcom/transsion/xuanniao/account/help/view/b;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->g:Ljava/lang/String;

    iget-object v1, v0, Lcom/transsion/xuanniao/account/help/view/b;->a:Lcom/transsion/widgetslib/dialog/d;

    if-nez v1, :cond_8

    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v2, v0, Lcom/transsion/xuanniao/account/help/view/b;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v3, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v1, v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/transsion/xuanniao/account/R$layout;->xn_privacy_no_net_dialog:I

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->D(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/xuanniao/account/help/view/b;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_no_net:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/xuanniao/account/help/view/b;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_got_it:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/xuanniao/account/help/view/a;

    invoke-direct {v3, v0}, Lcom/transsion/xuanniao/account/help/view/a;-><init>(Lcom/transsion/xuanniao/account/help/view/b;)V

    invoke-virtual {v1, v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/xuanniao/account/help/view/b;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v2, Lcom/transsion/xuanniao/account/R$id;->note:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/transsion/xuanniao/account/help/view/b;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_privacy_no_net:I

    const-string v4, ""

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/transsion/xuanniao/account/help/view/b;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v2, Lcom/transsion/xuanniao/account/R$id;->urlTextView:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ltk7;

    invoke-direct {v2, v0, p0}, Ltk7;-><init>(Lcom/transsion/xuanniao/account/help/view/b;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lwl7;

    invoke-direct {v2, v0, p0}, Lwl7;-><init>(Lcom/transsion/xuanniao/account/help/view/b;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-nez p0, :cond_9

    iget-object p0, v0, Lcom/transsion/xuanniao/account/help/view/b;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    :cond_9
    :goto_5
    return-void
.end method
