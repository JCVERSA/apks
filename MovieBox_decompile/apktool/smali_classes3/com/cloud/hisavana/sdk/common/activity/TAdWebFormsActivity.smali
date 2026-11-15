.class public Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;
.super Landroid/app/Activity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$c;,
        Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$d;,
        Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private c:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Landroid/webkit/WebView;

.field private h:Landroid/widget/FrameLayout;

.field private i:J

.field private final j:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$c;

.field private k:Landroid/webkit/WebViewClient;

.field private l:Landroid/webkit/WebChromeClient;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x320

    .line 5
    .line 6
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->a:I

    .line 7
    .line 8
    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$c;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$c;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->j:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$c;

    .line 18
    .line 19
    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->k:Landroid/webkit/WebViewClient;

    .line 25
    .line 26
    new-instance v0, Landroid/webkit/WebChromeClient;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->l:Landroid/webkit/WebChromeClient;

    .line 32
    .line 33
    return-void
.end method

.method private a(F)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float/2addr p1, v0

    .line 12
    const/high16 v0, 0x3f000000    # 0.5f

    .line 13
    .line 14
    add-float/2addr p1, v0

    .line 15
    float-to-int p1, p1

    .line 16
    return p1
.end method

.method static synthetic b(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method private d()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "ad_web_form_url"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "ad_web_form_file_path"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->e:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "ad_web_form_dto"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "ad_web_form_point"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->c:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->e:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_2
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->h()V

    .line 96
    .line 97
    .line 98
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :goto_0
    return-void
.end method

.method private h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "height"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/cloud/hisavana/sdk/common/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x320

    .line 10
    .line 11
    :try_start_0
    const-string v2, "formId"

    .line 12
    .line 13
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v2, v3}, Lcom/cloud/hisavana/sdk/common/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iput v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->f:I

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    move v0, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    int-to-float v0, v0

    .line 34
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->a(F)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    :goto_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 51
    .line 52
    mul-int/lit8 v2, v2, 0x4

    .line 53
    .line 54
    div-int/lit8 v2, v2, 0x5

    .line 55
    .line 56
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->h:Landroid/widget/FrameLayout;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    .line 65
    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 73
    .line 74
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 87
    .line 88
    mul-int/lit8 v2, v2, 0x4

    .line 89
    .line 90
    div-int/lit8 v2, v2, 0x5

    .line 91
    .line 92
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 93
    .line 94
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 95
    .line 96
    const/16 v1, 0x11

    .line 97
    .line 98
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 99
    .line 100
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->h:Landroid/widget/FrameLayout;

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->h:Landroid/widget/FrameLayout;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->h:Landroid/widget/FrameLayout;

    .line 111
    .line 112
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catch_1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d()V

    .line 123
    .line 124
    .line 125
    :goto_1
    return-void
.end method

.method static synthetic i(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private k()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 37
    .line 38
    .line 39
    const-string v3, "UTF-8"

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    .line 57
    .line 58
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$d;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$d;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)V

    .line 61
    .line 62
    .line 63
    const-string v2, "sspWebView"

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->k:Landroid/webkit/WebViewClient;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->l:Landroid/webkit/WebChromeClient;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    .line 83
    .line 84
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 85
    .line 86
    const/4 v2, -0x1

    .line 87
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v3, "create webview error: "

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-string v2, "TAdWebFormsActivity"

    .line 121
    .line 122
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    .line 127
    .line 128
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->d()V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method static synthetic l(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    return-object p0
.end method

.method private m()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/l;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method static synthetic n(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private o()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->c:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/Y0;->h(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Boolean;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 11
    .line 12
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->j:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$c;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Handler;Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 11
    .line 12
    .line 13
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->fl_content:I

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/FrameLayout;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->h:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->i:J

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->k()V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "SspWebWindow-----> submitForm    "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v3, "ssp"

    .line 23
    .line 24
    invoke-virtual {v0, v3, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;

    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;

    .line 34
    .line 35
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->setGaid(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->f:I

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->setFormId(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->h()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;->setIpAddress(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    invoke-static {p1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/J0;->Q(Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception p1

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 72
    .line 73
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->O(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/FormBean;)V
    :try_end_0
    .catch Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil$GsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v0, v3, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lc7/b;->j()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lc7/b;->j()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->e()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v0, 0x2

    .line 34
    if-ne p1, v0, :cond_2

    .line 35
    .line 36
    sget p1, Lcom/cloud/hisavana/sdk/R$style;->AppCompatTranscutes:I

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    sget p1, Lcom/cloud/hisavana/sdk/R$style;->TranslucentStyle:I

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 45
    .line 46
    .line 47
    :goto_1
    sget p1, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_web_forms:I

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 50
    .line 51
    .line 52
    const p1, 0x1020002

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroid/view/ViewGroup;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    invoke-virtual {p1, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v0, "TAdWebFormsActivity"

    .line 75
    .line 76
    const-string v1, "\u5c55\u793aform\u8868\u5355\u9875\u9762"

    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->p()V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->h:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    .line 20
    .line 21
    const-string v2, ""

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 49
    .line 50
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/webkit/WebView;->freeMemory()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v3, "TAdWebFormsActivity"

    .line 72
    .line 73
    invoke-virtual {v2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g:Landroid/webkit/WebView;

    .line 77
    .line 78
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->j:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$c;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->g()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
