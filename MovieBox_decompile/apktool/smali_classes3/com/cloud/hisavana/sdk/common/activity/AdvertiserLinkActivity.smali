.class public Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "source.java"


# static fields
.field private static final b:Ljava/lang/String; = "AdvertiserLinkActivity"


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic O(Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->Q(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private P()V
    .locals 2

    .line 1
    invoke-static {}, Lc7/b;->j()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lc7/b;->j()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic Q(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private R()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 7
    .line 8
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->webview_container:I

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/FrameLayout;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->b:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v4, "create webview error: "

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 57
    .line 58
    .line 59
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 60
    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const/4 v2, -0x1

    .line 114
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 127
    .line 128
    new-instance v1, Lg7/j;

    .line 129
    .line 130
    invoke-direct {v1}, Lg7/j;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 134
    .line 135
    .line 136
    :cond_0
    return-void
.end method

.method private S()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "url"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->b:Ljava/lang/String;

    .line 27
    .line 28
    const-string v2, "url is null"

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sget-object v2, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->b:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v4, "url is: "

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private U()V
    .locals 2

    .line 1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->im_back:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/a;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/a;-><init>(Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->P()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    sget p1, Lcom/cloud/hisavana/sdk/R$layout;->activity_advertiser_link:I

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    const p1, 0x1020002

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/view/ViewGroup;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->U()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->R()V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->S()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;->destroy()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    sget-object v2, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;->b:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 76
    .line 77
    .line 78
    return-void
.end method
