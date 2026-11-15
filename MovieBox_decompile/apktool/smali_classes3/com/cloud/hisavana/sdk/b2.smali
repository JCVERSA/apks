.class public Lcom/cloud/hisavana/sdk/b2;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/b2$e;,
        Lcom/cloud/hisavana/sdk/b2$g;,
        Lcom/cloud/hisavana/sdk/b2$f;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

.field private c:J

.field private final d:Lcom/cloud/hisavana/sdk/e1;

.field private e:Ljava/lang/String;

.field private f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Z

.field private l:Z

.field private m:Lcom/cloud/hisavana/sdk/j4;

.field private n:I

.field private final o:Lcom/cloud/hisavana/sdk/b2$e;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/e1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->e:Ljava/lang/String;

    .line 6
    .line 7
    const/high16 v0, -0x40800000    # -1.0f

    .line 8
    .line 9
    iput v0, p0, Lcom/cloud/hisavana/sdk/b2;->g:F

    .line 10
    .line 11
    iput v0, p0, Lcom/cloud/hisavana/sdk/b2;->h:F

    .line 12
    .line 13
    iput v0, p0, Lcom/cloud/hisavana/sdk/b2;->i:F

    .line 14
    .line 15
    iput v0, p0, Lcom/cloud/hisavana/sdk/b2;->j:F

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/b2;->k:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/b2;->l:Z

    .line 21
    .line 22
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 23
    .line 24
    new-instance p1, Lcom/cloud/hisavana/sdk/b2$e;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/cloud/hisavana/sdk/b2$e;-><init>(Lcom/cloud/hisavana/sdk/b2;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->o:Lcom/cloud/hisavana/sdk/b2$e;

    .line 30
    .line 31
    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/sdk/b2;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/b2;->g:F

    .line 2
    .line 3
    return p1
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/cloud/hisavana/sdk/b2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b2;->q(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/b2;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b2;->h(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lcom/cloud/hisavana/sdk/b2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b2;->l(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private h(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/e1;->B0()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/e1;->c0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :catchall_0
    :cond_0
    return-void
.end method

.method private i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->a:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/ImageView;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/e1;->H()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->a:Landroid/view/View;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->a:Landroid/view/View;

    .line 19
    .line 20
    check-cast v0, Landroid/widget/ImageView;

    .line 21
    .line 22
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/cloud/hisavana/sdk/b2$d;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/b2$d;-><init>(Lcom/cloud/hisavana/sdk/b2;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/b2;->a:Landroid/view/View;

    .line 37
    .line 38
    check-cast v2, Landroid/widget/ImageView;

    .line 39
    .line 40
    invoke-static {v0, p1, v1, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "file://"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    const/4 p2, 0x0

    .line 60
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/e1;->k0(Z)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_AD_INTERACTIVEAD_FILE_NOT_EXIST:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 65
    .line 66
    invoke-direct {p0, p2}, Lcom/cloud/hisavana/sdk/b2;->r(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 70
    .line 71
    if-eqz p2, :cond_2

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/e1;->z0()V

    .line 74
    .line 75
    .line 76
    :cond_2
    const/4 p2, 0x3

    .line 77
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_0
    return-void

    .line 81
    :cond_4
    :goto_1
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INDEXLOCATION_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 82
    .line 83
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b2;->r(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 87
    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/e1;->z0()V

    .line 91
    .line 92
    .line 93
    :cond_5
    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 2
    .line 3
    const-string v1, "SplashImage"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "trackInteractionEvent splashAd is null"

    .line 12
    .line 13
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "trackInteractionEvent adsDto is null"

    .line 26
    .line 27
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method static synthetic m(Lcom/cloud/hisavana/sdk/b2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/b2;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic n(Lcom/cloud/hisavana/sdk/b2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/b2;->k:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic o(Lcom/cloud/hisavana/sdk/b2;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/b2;->h:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic p(Lcom/cloud/hisavana/sdk/b2;)Lcom/cloud/hisavana/sdk/e1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 2
    .line 3
    return-object p0
.end method

.method private q(Landroid/view/View;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/b2;->c:J

    .line 9
    .line 10
    sub-long v2, v0, v2

    .line 11
    .line 12
    const-wide/16 v4, 0x3e8

    .line 13
    .line 14
    cmp-long v2, v2, v4

    .line 15
    .line 16
    if-lez v2, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/b2;->c:J

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 31
    .line 32
    new-instance v9, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 33
    .line 34
    iget v3, p0, Lcom/cloud/hisavana/sdk/b2;->g:F

    .line 35
    .line 36
    iget v4, p0, Lcom/cloud/hisavana/sdk/b2;->h:F

    .line 37
    .line 38
    iget v5, p0, Lcom/cloud/hisavana/sdk/b2;->i:F

    .line 39
    .line 40
    iget v6, p0, Lcom/cloud/hisavana/sdk/b2;->j:F

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    move-object v2, v9

    .line 51
    invoke-direct/range {v2 .. v8}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->v()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-static {v0, v1, v9, p1}, Lcom/cloud/hisavana/sdk/J0;->b(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Z)I

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->W(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/e1;->O()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string v1, "ssp"

    .line 90
    .line 91
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    :goto_0
    return-void
.end method

.method private r(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/cloud/hisavana/sdk/e1;->d0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :catchall_0
    :cond_0
    return-void
.end method

.method private s(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SplashImage"

    .line 6
    .line 7
    const-string v2, "attachImgAd"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->a:Landroid/view/View;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroid/widget/ImageView;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/e1;->H()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->a:Landroid/view/View;

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->a:Landroid/view/View;

    .line 30
    .line 31
    check-cast v0, Landroid/widget/ImageView;

    .line 32
    .line 33
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Lcom/cloud/hisavana/sdk/b2$c;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/b2$c;-><init>(Lcom/cloud/hisavana/sdk/b2;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/b2;->a:Landroid/view/View;

    .line 48
    .line 49
    check-cast v2, Landroid/widget/ImageView;

    .line 50
    .line 51
    const/4 v3, 0x2

    .line 52
    invoke-static {v0, p1, v3, v1, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method static synthetic t(Lcom/cloud/hisavana/sdk/b2;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/b2;->i:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic u(Lcom/cloud/hisavana/sdk/b2;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 2
    .line 3
    return-object p0
.end method

.method private v(Landroid/view/View;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/b2;->o:Lcom/cloud/hisavana/sdk/b2$e;

    .line 18
    .line 19
    invoke-virtual {v0, v1, p1, v2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/r;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/e1;->K()Landroid/view/ViewGroup;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v2, 0x0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    new-instance p1, Lcom/cloud/hisavana/sdk/b2$g;

    .line 48
    .line 49
    invoke-direct {p1, p0, v2}, Lcom/cloud/hisavana/sdk/b2$g;-><init>(Lcom/cloud/hisavana/sdk/b2;Lcom/cloud/hisavana/sdk/b2$a;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Lcom/cloud/hisavana/sdk/b2$f;

    .line 56
    .line 57
    invoke-direct {p1, p0, v2}, Lcom/cloud/hisavana/sdk/b2$f;-><init>(Lcom/cloud/hisavana/sdk/b2;Lcom/cloud/hisavana/sdk/b2$a;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    new-instance v0, Lcom/cloud/hisavana/sdk/b2$g;

    .line 65
    .line 66
    invoke-direct {v0, p0, v2}, Lcom/cloud/hisavana/sdk/b2$g;-><init>(Lcom/cloud/hisavana/sdk/b2;Lcom/cloud/hisavana/sdk/b2$a;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/cloud/hisavana/sdk/b2$f;

    .line 73
    .line 74
    invoke-direct {v0, p0, v2}, Lcom/cloud/hisavana/sdk/b2$f;-><init>(Lcom/cloud/hisavana/sdk/b2;Lcom/cloud/hisavana/sdk/b2$a;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method private w(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SplashImage"

    .line 6
    .line 7
    const-string v2, "attachInteractiveAd"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b2;->h(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/b2;->C(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 24
    .line 25
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/b2;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method static synthetic x(Lcom/cloud/hisavana/sdk/b2;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/b2;->j:F

    .line 2
    .line 3
    return p1
.end method

.method private y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SplashImage"

    .line 6
    .line 7
    const-string v2, "fillVideoAd"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/e1;->H()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 28
    .line 29
    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/r;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 40
    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    xor-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->resetVolumePosition(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b2;->m:Lcom/cloud/hisavana/sdk/j4;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/j4;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/w2;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_AD_MAINURL_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 72
    .line 73
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b2;->r(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 77
    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/e1;->z0()V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void

    .line 84
    :cond_2
    const-string v1, "http"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/b2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 91
    .line 92
    invoke-virtual {v2, v0, p1, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->setMediaData(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 96
    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/e1;->k0(Z)V

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void
.end method


# virtual methods
.method public A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b2;->h(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b2;->y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b2;->w(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x4

    .line 41
    if-ne v0, v1, :cond_4

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDefaultMaterialType()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v1, 0x1

    .line 48
    if-ne v0, v1, :cond_3

    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b2;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->a:Landroid/view/View;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b2;->y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b2;->s(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->a:Landroid/view/View;

    .line 66
    .line 67
    :goto_0
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b2;->v(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public B(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Landroid/view/View;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "SplashImage"

    .line 8
    .line 9
    const-string v1, "getView adsDto is null"

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Landroid/view/View;

    .line 15
    .line 16
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDefaultMaterialType()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/4 v0, 0x2

    .line 44
    if-ne p1, v0, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->a:Landroid/view/View;

    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 51
    .line 52
    return-object p1
.end method

.method public C(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 5

    .line 1
    const-string v0, "SplashImage"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v1, "initializeInteractiveAdView adsDTO is null"

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/e1;->H()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :try_start_0
    new-instance v2, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/e1;->H()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-direct {v2, v3}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/cloud/hisavana/sdk/b2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setWebClientCallback(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 45
    .line 46
    new-instance v0, Lcom/cloud/hisavana/sdk/b2$a;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/b2$a;-><init>(Lcom/cloud/hisavana/sdk/b2;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setInteractiveListener(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 55
    .line 56
    new-instance v0, Lcom/cloud/hisavana/sdk/b2$g;

    .line 57
    .line 58
    invoke-direct {v0, p0, v1}, Lcom/cloud/hisavana/sdk/b2$g;-><init>(Lcom/cloud/hisavana/sdk/b2;Lcom/cloud/hisavana/sdk/b2$a;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v4, "create webview error: "

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v2, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/b2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 95
    .line 96
    :cond_1
    :goto_0
    return-void
.end method

.method public D(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->pause()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b2;->d:Lcom/cloud/hisavana/sdk/e1;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/cloud/hisavana/sdk/e1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->g(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->a:Landroid/view/View;

    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/b2;->d(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->a:Landroid/view/View;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setInteractiveListener(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->destroy()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 41
    .line 42
    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/j4;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->release()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/b2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 55
    .line 56
    :cond_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "ssp"

    .line 61
    .line 62
    const-string v2, "destroy"

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/b2;->n:I

    .line 2
    .line 3
    return-void
.end method

.method public k(Lcom/cloud/hisavana/sdk/j4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->m:Lcom/cloud/hisavana/sdk/j4;

    .line 2
    .line 3
    return-void
.end method

.method public z(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 11
    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->play()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    new-instance v0, Lcom/cloud/hisavana/sdk/b2$b;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/b2$b;-><init>(Lcom/cloud/hisavana/sdk/b2;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "javascript:continuePlay()"

    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void
.end method
