.class public Lcom/cloud/hisavana/sdk/t;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/t$g;,
        Lcom/cloud/hisavana/sdk/t$i;,
        Lcom/cloud/hisavana/sdk/t$h;,
        Lcom/cloud/hisavana/sdk/t$f;
    }
.end annotation


# instance fields
.field private final a:Lcom/cloud/hisavana/sdk/p2;

.field private b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

.field private g:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

.field private h:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field private i:Z

.field private j:Z

.field private final k:Lg7/n;

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:J

.field private final q:Lcom/cloud/hisavana/sdk/t$g;

.field private r:Lcom/cloud/hisavana/sdk/q;

.field s:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/p2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/t;->i:Z

    .line 11
    .line 12
    new-instance v0, Lg7/n;

    .line 13
    .line 14
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Lg7/n;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/t;->k:Lg7/n;

    .line 22
    .line 23
    const/high16 v0, -0x40800000    # -1.0f

    .line 24
    .line 25
    iput v0, p0, Lcom/cloud/hisavana/sdk/t;->l:F

    .line 26
    .line 27
    iput v0, p0, Lcom/cloud/hisavana/sdk/t;->m:F

    .line 28
    .line 29
    iput v0, p0, Lcom/cloud/hisavana/sdk/t;->n:F

    .line 30
    .line 31
    iput v0, p0, Lcom/cloud/hisavana/sdk/t;->o:F

    .line 32
    .line 33
    new-instance v0, Lcom/cloud/hisavana/sdk/t$e;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/t$e;-><init>(Lcom/cloud/hisavana/sdk/t;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/t;->s:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 41
    .line 42
    new-instance p1, Lcom/cloud/hisavana/sdk/t$g;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/cloud/hisavana/sdk/t$g;-><init>(Lcom/cloud/hisavana/sdk/t;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t;->q:Lcom/cloud/hisavana/sdk/t$g;

    .line 48
    .line 49
    return-void
.end method

.method private A(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->h:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->destroy()V

    .line 20
    .line 21
    .line 22
    :cond_2
    :try_start_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 23
    .line 24
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/t;->h:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    invoke-virtual {p0, v0, p1}, Lcom/cloud/hisavana/sdk/t;->i(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Landroid/view/ViewGroup;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "create webview error: "

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v1, "BannerGemini"

    .line 64
    .line 65
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t;->h:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 70
    .line 71
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INTERACTIVE_WEBVIEW_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    return-void
.end method

.method private B(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "B20301"

    .line 26
    .line 27
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "B20302"

    .line 40
    .line 41
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "B20303"

    .line 54
    .line 55
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const/4 v1, 0x1

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    const/4 v1, 0x2

    .line 90
    :goto_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/t;->e(Landroid/view/ViewGroup;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    const/4 v2, 0x4

    .line 100
    if-ne p1, v2, :cond_5

    .line 101
    .line 102
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 103
    .line 104
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t;->s:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 105
    .line 106
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/t;->d:Landroid/widget/ImageView;

    .line 107
    .line 108
    if-nez v2, :cond_4

    .line 109
    .line 110
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/t;->e:Landroid/widget/ImageView;

    .line 111
    .line 112
    :cond_4
    invoke-static {v0, p1, v1, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 117
    .line 118
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/t;->s:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 119
    .line 120
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/t;->d:Landroid/widget/ImageView;

    .line 121
    .line 122
    if-nez v3, :cond_6

    .line 123
    .line 124
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/t;->e:Landroid/widget/ImageView;

    .line 125
    .line 126
    :cond_6
    invoke-static {v0, p1, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 127
    .line 128
    .line 129
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/sdk/t;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/t;->l:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic b(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/p2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 2
    .line 3
    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->tvBtn:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    const-string v2, "BannerGemini"

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    :try_start_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setClickType(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTrackUserClickArea(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "pslink half setClickType, click_install"

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setClickType(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTrackUserClickArea(I)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "pslink half setClickType, click_img"

    .line 68
    .line 69
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/t;->p:J

    .line 77
    .line 78
    sub-long v2, v0, v2

    .line 79
    .line 80
    const-wide/16 v4, 0x3e8

    .line 81
    .line 82
    cmp-long v2, v2, v4

    .line 83
    .line 84
    if-lez v2, :cond_2

    .line 85
    .line 86
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/t;->q(Landroid/view/View;)I

    .line 87
    .line 88
    .line 89
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/t;->p:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_2
    return-void
.end method

.method private f(Landroid/view/ViewGroup;Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 10
    .line 11
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ad_flag:I

    .line 12
    .line 13
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 21
    .line 22
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ad_close_view:I

    .line 23
    .line 24
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 32
    .line 33
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ps_mark_view:I

    .line 34
    .line 35
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 43
    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/F;->v()Lcom/cloud/hisavana/sdk/F0;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 51
    .line 52
    invoke-static {p2, v1, p1, v0}, Lcom/cloud/hisavana/sdk/z;->a(Lcom/cloud/hisavana/sdk/F0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/t;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/t;->d(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private k(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;ZZZ)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    move-object v0, p2

    .line 5
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    const/16 v1, 0x11

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->banner_style_3201_layout:I

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 28
    .line 29
    if-nez p5, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    .line 32
    .line 33
    .line 34
    move-result-object p5

    .line 35
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t;->q:Lcom/cloud/hisavana/sdk/t$g;

    .line 38
    .line 39
    invoke-virtual {p5, v0, p2, v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    new-instance p5, Landroid/widget/FrameLayout$LayoutParams;

    .line 43
    .line 44
    const/4 v0, -0x1

    .line 45
    const/4 v1, -0x2

    .line 46
    invoke-direct {p5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 47
    .line 48
    .line 49
    const/16 v3, 0x31

    .line 50
    .line 51
    iput v3, p5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 52
    .line 53
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 54
    .line 55
    sget v4, Lcom/cloud/hisavana/sdk/R$id;->ivBanner:I

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    instance-of v4, v3, Landroid/widget/FrameLayout;

    .line 62
    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    move-object v4, v3

    .line 66
    check-cast v4, Landroid/widget/FrameLayout;

    .line 67
    .line 68
    invoke-virtual {v4, p1, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    if-eqz p4, :cond_2

    .line 72
    .line 73
    iget-object p4, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 74
    .line 75
    sget p5, Lcom/cloud/hisavana/sdk/R$id;->ad_flag:I

    .line 76
    .line 77
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p4

    .line 81
    if-eqz p4, :cond_2

    .line 82
    .line 83
    const/16 p5, 0x8

    .line 84
    .line 85
    invoke-virtual {p4, p5}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    :cond_2
    iget-object p4, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 89
    .line 90
    iget-object p5, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 91
    .line 92
    invoke-direct {p0, p4, p5}, Lcom/cloud/hisavana/sdk/t;->v(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    iget-object p4, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 96
    .line 97
    iget-object p5, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 98
    .line 99
    invoke-direct {p0, p4, p5}, Lcom/cloud/hisavana/sdk/t;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    iget-object p4, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 103
    .line 104
    iget-object p5, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 105
    .line 106
    invoke-direct {p0, p4, p5, p3}, Lcom/cloud/hisavana/sdk/t;->m(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;Z)V

    .line 107
    .line 108
    .line 109
    iget-object p3, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 110
    .line 111
    sget p4, Lcom/cloud/hisavana/sdk/R$id;->ivIcon:I

    .line 112
    .line 113
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    check-cast p3, Landroid/widget/ImageView;

    .line 118
    .line 119
    const/4 p4, 0x1

    .line 120
    if-eqz p3, :cond_3

    .line 121
    .line 122
    iget-object p5, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 123
    .line 124
    invoke-virtual {p5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 125
    .line 126
    .line 127
    move-result-object p5

    .line 128
    if-eqz p5, :cond_3

    .line 129
    .line 130
    iget-object p5, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 131
    .line 132
    invoke-virtual {p5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 133
    .line 134
    .line 135
    move-result-object p5

    .line 136
    invoke-virtual {p5}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p5

    .line 140
    if-eqz p5, :cond_3

    .line 141
    .line 142
    iget-object p5, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 143
    .line 144
    invoke-virtual {p5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 145
    .line 146
    .line 147
    move-result-object p5

    .line 148
    invoke-virtual {p5}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p5

    .line 152
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 153
    .line 154
    const/4 v5, 0x0

    .line 155
    invoke-static {p5, v4, p4, v5, p3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    const/4 p5, 0x2

    .line 163
    if-eqz p3, :cond_a

    .line 164
    .line 165
    iget-object p3, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 166
    .line 167
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object p3

    .line 171
    if-eqz p3, :cond_7

    .line 172
    .line 173
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-nez v4, :cond_7

    .line 178
    .line 179
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->e()I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-ne v4, p4, :cond_6

    .line 184
    .line 185
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p3

    .line 189
    check-cast p3, Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 192
    .line 193
    .line 194
    const-string v4, "3:2"

    .line 195
    .line 196
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-nez v4, :cond_5

    .line 201
    .line 202
    const-string p4, "20:3"

    .line 203
    .line 204
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p3

    .line 208
    if-nez p3, :cond_4

    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 213
    .line 214
    .line 215
    move-result-object p3

    .line 216
    invoke-static {}, Lk7/c;->k()I

    .line 217
    .line 218
    .line 219
    move-result p4

    .line 220
    mul-int/lit8 p4, p4, 0x3

    .line 221
    .line 222
    div-int/lit8 p4, p4, 0x14

    .line 223
    .line 224
    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 225
    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 227
    .line 228
    .line 229
    move-result-object p3

    .line 230
    invoke-static {}, Lk7/c;->k()I

    .line 231
    .line 232
    .line 233
    move-result p4

    .line 234
    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 235
    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 239
    .line 240
    .line 241
    move-result-object p3

    .line 242
    invoke-static {}, Lk7/c;->k()I

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    mul-int/2addr v4, p5

    .line 247
    div-int/lit8 v4, v4, 0x3

    .line 248
    .line 249
    iput v4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 250
    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 252
    .line 253
    .line 254
    move-result-object p3

    .line 255
    invoke-static {}, Lk7/c;->k()I

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    iput v4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 260
    .line 261
    goto :goto_1

    .line 262
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 263
    .line 264
    .line 265
    move-result-object p3

    .line 266
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 267
    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 269
    .line 270
    .line 271
    move-result-object p3

    .line 272
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 273
    .line 274
    goto :goto_0

    .line 275
    :cond_7
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->e()I

    .line 276
    .line 277
    .line 278
    move-result p3

    .line 279
    if-ne p3, p4, :cond_9

    .line 280
    .line 281
    iget-object p3, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 282
    .line 283
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p3

    .line 287
    const-string v4, "B3201"

    .line 288
    .line 289
    invoke-static {p3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 290
    .line 291
    .line 292
    move-result p3

    .line 293
    if-eqz p3, :cond_8

    .line 294
    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 296
    .line 297
    .line 298
    move-result-object p3

    .line 299
    invoke-static {}, Lk7/c;->k()I

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    mul-int/2addr v4, p5

    .line 304
    div-int/lit8 v4, v4, 0x3

    .line 305
    .line 306
    iput v4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 307
    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 309
    .line 310
    .line 311
    move-result-object p3

    .line 312
    invoke-static {}, Lk7/c;->k()I

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    iput v4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 317
    .line 318
    goto :goto_1

    .line 319
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 320
    .line 321
    .line 322
    move-result-object p3

    .line 323
    invoke-static {}, Lk7/c;->k()I

    .line 324
    .line 325
    .line 326
    move-result p4

    .line 327
    mul-int/lit8 p4, p4, 0x3

    .line 328
    .line 329
    div-int/lit8 p4, p4, 0x14

    .line 330
    .line 331
    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 332
    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 334
    .line 335
    .line 336
    move-result-object p3

    .line 337
    invoke-static {}, Lk7/c;->k()I

    .line 338
    .line 339
    .line 340
    move-result p4

    .line 341
    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 342
    .line 343
    goto :goto_0

    .line 344
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 345
    .line 346
    .line 347
    move-result-object p3

    .line 348
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 349
    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 351
    .line 352
    .line 353
    move-result-object p3

    .line 354
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 355
    .line 356
    :cond_a
    :goto_0
    move p4, v2

    .line 357
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 358
    .line 359
    .line 360
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    const-string p3, "BannerGemini"

    .line 365
    .line 366
    const-string v4, "banner attachBannerToViewTree"

    .line 367
    .line 368
    invoke-virtual {p1, p3, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    if-eqz p1, :cond_b

    .line 376
    .line 377
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 382
    .line 383
    .line 384
    :cond_b
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 385
    .line 386
    .line 387
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->e()I

    .line 388
    .line 389
    .line 390
    move-result p1

    .line 391
    if-ne p1, p5, :cond_d

    .line 392
    .line 393
    if-eqz p4, :cond_c

    .line 394
    .line 395
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 396
    .line 397
    const/high16 p3, 0x43960000    # 300.0f

    .line 398
    .line 399
    invoke-static {p3}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 400
    .line 401
    .line 402
    move-result p3

    .line 403
    const/high16 p4, 0x43480000    # 200.0f

    .line 404
    .line 405
    invoke-static {p4}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 406
    .line 407
    .line 408
    move-result p4

    .line 409
    invoke-virtual {p2, p1, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 410
    .line 411
    .line 412
    goto :goto_2

    .line 413
    :cond_c
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 414
    .line 415
    const/high16 p3, 0x43b40000    # 360.0f

    .line 416
    .line 417
    invoke-static {p3}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 418
    .line 419
    .line 420
    move-result p3

    .line 421
    const/high16 p4, 0x42580000    # 54.0f

    .line 422
    .line 423
    invoke-static {p4}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 424
    .line 425
    .line 426
    move-result p4

    .line 427
    invoke-virtual {p2, p1, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 428
    .line 429
    .line 430
    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 435
    .line 436
    goto :goto_3

    .line 437
    :cond_d
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 438
    .line 439
    invoke-virtual {p2, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 440
    .line 441
    .line 442
    :goto_3
    return-void
.end method

.method private l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-nez p2, :cond_1

    .line 5
    .line 6
    return-void

    .line 7
    :cond_1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_badge_view:I

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    .line 14
    .line 15
    if-nez p2, :cond_2

    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/util/e0;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p2, v0, p1}, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private m(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;Z)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-nez p2, :cond_1

    .line 5
    .line 6
    return-void

    .line 7
    :cond_1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_close_view:I

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 14
    .line 15
    if-nez p2, :cond_2

    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    if-eqz p3, :cond_3

    .line 19
    .line 20
    iget-boolean p3, p0, Lcom/cloud/hisavana/sdk/t;->i:Z

    .line 21
    .line 22
    if-eqz p3, :cond_3

    .line 23
    .line 24
    const/16 p1, 0x8

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    const/4 p3, 0x0

    .line 31
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/cloud/hisavana/sdk/s2;->p()Lcom/cloud/hisavana/sdk/s2;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 43
    .line 44
    iget-boolean v5, p0, Lcom/cloud/hisavana/sdk/t;->j:Z

    .line 45
    .line 46
    move-object v2, p2

    .line 47
    move-object v4, p1

    .line 48
    invoke-virtual/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/s2;->g(Landroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sget-object p3, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;->CLOSE:Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    .line 56
    .line 57
    invoke-virtual {p2, p1, p3}, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method private n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_3

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
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    if-eqz p2, :cond_1

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
    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p2;->P()V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 64
    .line 65
    const/4 p2, 0x3

    .line 66
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_0
    return-void
.end method

.method private o(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLandroid/view/View;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/util/h0;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ps_mark_view:I

    .line 11
    .line 12
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    check-cast p3, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 17
    .line 18
    if-eqz p3, :cond_4

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/16 v0, 0x8

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_2

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const v0, -0x878788

    .line 34
    .line 35
    .line 36
    :goto_1
    invoke-virtual {p3, v0}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    const/high16 p2, 0x41000000    # 8.0f

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    const/high16 p2, 0x40c00000    # 6.0f

    .line 45
    .line 46
    :goto_2
    invoke-virtual {p3, p2}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextSize(F)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, p1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->attachInfo(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 50
    .line 51
    .line 52
    :cond_4
    :goto_3
    return-void
.end method

.method static synthetic p(Lcom/cloud/hisavana/sdk/t;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/t;->m:F

    .line 2
    .line 3
    return p1
.end method

.method private q(Landroid/view/View;)I
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    new-instance v9, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 8
    .line 9
    iget v3, p0, Lcom/cloud/hisavana/sdk/t;->l:F

    .line 10
    .line 11
    iget v4, p0, Lcom/cloud/hisavana/sdk/t;->m:F

    .line 12
    .line 13
    iget v5, p0, Lcom/cloud/hisavana/sdk/t;->n:F

    .line 14
    .line 15
    iget v6, p0, Lcom/cloud/hisavana/sdk/t;->o:F

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    move-object v2, v9

    .line 26
    invoke-direct/range {v2 .. v8}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->v()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    :goto_0
    invoke-static {v0, v1, v9, p1}, Lcom/cloud/hisavana/sdk/J0;->b(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Z)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->W(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p2;->U()V

    .line 57
    .line 58
    .line 59
    :cond_1
    return p1
.end method

.method static synthetic r(Lcom/cloud/hisavana/sdk/t;Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/t;->q(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic s(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/t$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/t;->q:Lcom/cloud/hisavana/sdk/t$g;

    .line 2
    .line 3
    return-object p0
.end method

.method private t(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->g:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;->destroy()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :try_start_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 26
    .line 27
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/t;->g:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    invoke-virtual {p0, v0, p1}, Lcom/cloud/hisavana/sdk/t;->j(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "create webview error: "

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v1, "BannerGemini"

    .line 67
    .line 68
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t;->g:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 73
    .line 74
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 75
    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADM_WEBVIEW_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void

    .line 84
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 85
    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 89
    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 109
    .line 110
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADM_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 117
    .line 118
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIEWGROUP_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 121
    .line 122
    .line 123
    :cond_6
    :goto_1
    return-void
.end method

.method private v(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-nez p2, :cond_1

    .line 5
    .line 6
    return-void

    .line 7
    :cond_1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_choices_view:I

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 14
    .line 15
    if-nez p2, :cond_2

    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x4

    .line 23
    const/4 v2, 0x0

    .line 24
    if-ne v0, v1, :cond_3

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0, p1, v2, p2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x3

    .line 39
    invoke-static {v0, p1, v1, v2, p2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    new-instance p1, Lcom/cloud/hisavana/sdk/t$f;

    .line 43
    .line 44
    invoke-direct {p1, p0, v2}, Lcom/cloud/hisavana/sdk/t$f;-><init>(Lcom/cloud/hisavana/sdk/t;Lcom/cloud/hisavana/sdk/t$a;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/t;->f:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 51
    .line 52
    return-void
.end method

.method static synthetic w(Lcom/cloud/hisavana/sdk/t;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/t;->n:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic x(Lcom/cloud/hisavana/sdk/t;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    return-object p0
.end method

.method private y(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIEWGROUP_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->g:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;->destroy()V

    .line 18
    .line 19
    .line 20
    :cond_2
    :try_start_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 21
    .line 22
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/t;->g:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    invoke-virtual {p0, v0, p1}, Lcom/cloud/hisavana/sdk/t;->u(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "create webview error: "

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v1, "BannerGemini"

    .line 62
    .line 63
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t;->g:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 68
    .line 69
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADM_WEBVIEW_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method static synthetic z(Lcom/cloud/hisavana/sdk/t;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/t;->o:F

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->d:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->e:Landroid/widget/ImageView;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->f:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->g:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;->destroy()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/t;->g:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->h:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->destroy()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/t;->h:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->r:Lcom/cloud/hisavana/sdk/q;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q;->c()V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method e(Landroid/view/ViewGroup;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v3, "B20303"

    .line 6
    .line 7
    const-string v4, "B20302"

    .line 8
    .line 9
    const-string v5, "B20301"

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x1

    .line 13
    const/4 v9, 0x2

    .line 14
    iget-object v10, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 15
    .line 16
    if-eqz v10, :cond_24

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_c

    .line 21
    .line 22
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 23
    .line 24
    .line 25
    move-object v10, v1

    .line 26
    check-cast v10, Landroid/widget/RelativeLayout;

    .line 27
    .line 28
    const/16 v11, 0x11

    .line 29
    .line 30
    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 31
    .line 32
    .line 33
    iget-object v10, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 34
    .line 35
    invoke-virtual {v10}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 36
    .line 37
    .line 38
    move-result-object v10

    .line 39
    const-string v11, "BannerGemini"

    .line 40
    .line 41
    if-eqz v10, :cond_22

    .line 42
    .line 43
    iget-object v10, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 44
    .line 45
    invoke-virtual {v10}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    if-nez v10, :cond_1

    .line 50
    .line 51
    goto/16 :goto_b

    .line 52
    .line 53
    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    new-instance v12, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v13, "*----> TranBanner --> MaterialStyle ="

    .line 63
    .line 64
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 68
    .line 69
    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v13

    .line 73
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    invoke-virtual {v10, v11, v12}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v10, Lcom/cloud/hisavana/sdk/w;

    .line 84
    .line 85
    iget-object v12, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 86
    .line 87
    invoke-direct {v10, v12}, Lcom/cloud/hisavana/sdk/w;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v10}, Lcom/cloud/hisavana/sdk/w;->g()I

    .line 91
    .line 92
    .line 93
    move-result v12

    .line 94
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 95
    .line 96
    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 101
    .line 102
    .line 103
    const/4 v14, 0x0

    .line 104
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 105
    .line 106
    .line 107
    move-result v15

    .line 108
    sparse-switch v15, :sswitch_data_0

    .line 109
    .line 110
    .line 111
    :goto_0
    const/4 v13, -0x1

    .line 112
    goto :goto_1

    .line 113
    :sswitch_0
    const-string v15, "B20304"

    .line 114
    .line 115
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    if-nez v13, :cond_2

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    const/4 v13, 0x4

    .line 123
    goto :goto_1

    .line 124
    :sswitch_1
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v13

    .line 128
    if-nez v13, :cond_3

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    const/4 v13, 0x3

    .line 132
    goto :goto_1

    .line 133
    :sswitch_2
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    if-nez v13, :cond_4

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_4
    move v13, v9

    .line 141
    goto :goto_1

    .line 142
    :sswitch_3
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v13

    .line 146
    if-nez v13, :cond_5

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_5
    move v13, v7

    .line 150
    goto :goto_1

    .line 151
    :sswitch_4
    const-string v15, "B3201"

    .line 152
    .line 153
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v13

    .line 157
    if-nez v13, :cond_6

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_6
    move v13, v6

    .line 161
    :goto_1
    packed-switch v13, :pswitch_data_0

    .line 162
    .line 163
    .line 164
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v3, "TranBanner --> \u6ca1\u6709\u5339\u914d\u5230 materialStyle --> \u914d\u7f6e\u9519\u8bef materialStyle="

    .line 174
    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object v3, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 179
    .line 180
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v1, v11, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 196
    .line 197
    .line 198
    move-result-object v12

    .line 199
    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 200
    .line 201
    .line 202
    move-result-object v12

    .line 203
    sget v13, Lcom/cloud/hisavana/sdk/R$layout;->banner_style_20304_layout:I

    .line 204
    .line 205
    invoke-virtual {v12, v13, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v12

    .line 209
    iput-object v12, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 210
    .line 211
    move v13, v6

    .line 212
    :goto_2
    move v15, v13

    .line 213
    const/4 v12, -0x1

    .line 214
    goto :goto_3

    .line 215
    :pswitch_1
    sget v13, Lcom/cloud/hisavana/sdk/R$layout;->banner_style_20301_20302_20303_layout:I

    .line 216
    .line 217
    if-eq v12, v7, :cond_7

    .line 218
    .line 219
    if-ne v12, v9, :cond_8

    .line 220
    .line 221
    :cond_7
    sget v13, Lcom/cloud/hisavana/sdk/R$layout;->banner_style_203_newstyle_layout:I

    .line 222
    .line 223
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 224
    .line 225
    .line 226
    move-result-object v15

    .line 227
    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 228
    .line 229
    .line 230
    move-result-object v15

    .line 231
    invoke-virtual {v15, v13, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object v13

    .line 235
    iput-object v13, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 236
    .line 237
    sget v15, Lcom/cloud/hisavana/sdk/R$id;->clRoot:I

    .line 238
    .line 239
    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object v13

    .line 243
    new-instance v15, Lcom/cloud/hisavana/sdk/t$i;

    .line 244
    .line 245
    invoke-direct {v15, v0, v14}, Lcom/cloud/hisavana/sdk/t$i;-><init>(Lcom/cloud/hisavana/sdk/t;Lcom/cloud/hisavana/sdk/t$a;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v13, v15}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 249
    .line 250
    .line 251
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 252
    .line 253
    sget v15, Lcom/cloud/hisavana/sdk/R$id;->clRoot:I

    .line 254
    .line 255
    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 256
    .line 257
    .line 258
    move-result-object v13

    .line 259
    new-instance v15, Lcom/cloud/hisavana/sdk/t$h;

    .line 260
    .line 261
    invoke-direct {v15, v0, v14}, Lcom/cloud/hisavana/sdk/t$h;-><init>(Lcom/cloud/hisavana/sdk/t;Lcom/cloud/hisavana/sdk/t$a;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v13, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    .line 266
    .line 267
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 268
    .line 269
    sget v15, Lcom/cloud/hisavana/sdk/R$id;->tvBtn:I

    .line 270
    .line 271
    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object v13

    .line 275
    new-instance v15, Lcom/cloud/hisavana/sdk/t$h;

    .line 276
    .line 277
    invoke-direct {v15, v0, v14}, Lcom/cloud/hisavana/sdk/t$h;-><init>(Lcom/cloud/hisavana/sdk/t;Lcom/cloud/hisavana/sdk/t$a;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v13, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    .line 282
    .line 283
    move v13, v6

    .line 284
    move v15, v13

    .line 285
    goto :goto_3

    .line 286
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 287
    .line 288
    .line 289
    move-result-object v12

    .line 290
    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 291
    .line 292
    .line 293
    move-result-object v12

    .line 294
    sget v13, Lcom/cloud/hisavana/sdk/R$layout;->banner_style_3201_layout:I

    .line 295
    .line 296
    invoke-virtual {v12, v13, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 297
    .line 298
    .line 299
    move-result-object v12

    .line 300
    iput-object v12, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 301
    .line 302
    move v13, v7

    .line 303
    goto :goto_2

    .line 304
    :goto_3
    iget-object v8, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 305
    .line 306
    invoke-virtual {v8, v12}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setBannerStyle(I)V

    .line 307
    .line 308
    .line 309
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 314
    .line 315
    iget-object v9, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 316
    .line 317
    iget-object v14, v0, Lcom/cloud/hisavana/sdk/t;->q:Lcom/cloud/hisavana/sdk/t$g;

    .line 318
    .line 319
    invoke-virtual {v8, v2, v9, v14}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    .line 320
    .line 321
    .line 322
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 323
    .line 324
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 325
    .line 326
    .line 327
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 328
    .line 329
    if-nez v2, :cond_a

    .line 330
    .line 331
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 332
    .line 333
    if-eqz v1, :cond_9

    .line 334
    .line 335
    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_RENDERVIEW_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 336
    .line 337
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 338
    .line 339
    .line 340
    :cond_9
    return-void

    .line 341
    :cond_a
    sget v8, Lcom/cloud/hisavana/sdk/R$id;->tvDescription:I

    .line 342
    .line 343
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    check-cast v2, Landroid/widget/TextView;

    .line 348
    .line 349
    sget-object v8, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    .line 350
    .line 351
    iget-object v9, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 352
    .line 353
    invoke-virtual {v8, v9}, Lcom/cloud/hisavana/sdk/common/util/r;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    iget-object v9, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 358
    .line 359
    invoke-virtual {v9}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v9

    .line 363
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 364
    .line 365
    .line 366
    const/16 v14, 0x8

    .line 367
    .line 368
    const-string v7, " \u00b7 "

    .line 369
    .line 370
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 371
    .line 372
    .line 373
    move-result v16

    .line 374
    packed-switch v16, :pswitch_data_1

    .line 375
    .line 376
    .line 377
    :goto_4
    const/4 v3, -0x1

    .line 378
    goto :goto_5

    .line 379
    :pswitch_3
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    if-nez v3, :cond_b

    .line 384
    .line 385
    goto :goto_4

    .line 386
    :cond_b
    const/4 v3, 0x2

    .line 387
    goto :goto_5

    .line 388
    :pswitch_4
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    if-nez v3, :cond_c

    .line 393
    .line 394
    goto :goto_4

    .line 395
    :cond_c
    const/4 v3, 0x1

    .line 396
    goto :goto_5

    .line 397
    :pswitch_5
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    if-nez v3, :cond_d

    .line 402
    .line 403
    goto :goto_4

    .line 404
    :cond_d
    move v3, v6

    .line 405
    :goto_5
    packed-switch v3, :pswitch_data_2

    .line 406
    .line 407
    .line 408
    goto/16 :goto_6

    .line 409
    .line 410
    :pswitch_6
    if-eqz v2, :cond_f

    .line 411
    .line 412
    iget-object v3, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 413
    .line 414
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 423
    .line 424
    .line 425
    move-result v4

    .line 426
    if-nez v4, :cond_e

    .line 427
    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    :cond_e
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    .line 448
    .line 449
    :cond_f
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 450
    .line 451
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    .line 452
    .line 453
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    check-cast v2, Landroid/widget/TextView;

    .line 458
    .line 459
    iget-object v3, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 460
    .line 461
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v3

    .line 469
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    .line 471
    .line 472
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 473
    .line 474
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tvBtn:I

    .line 475
    .line 476
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    check-cast v2, Landroid/widget/TextView;

    .line 481
    .line 482
    iget-object v3, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 483
    .line 484
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    iget-object v4, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 489
    .line 490
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    invoke-virtual {v3, v4}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    .line 500
    .line 501
    goto/16 :goto_6

    .line 502
    .line 503
    :pswitch_7
    iget-object v3, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 504
    .line 505
    sget v4, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    .line 506
    .line 507
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 508
    .line 509
    .line 510
    move-result-object v3

    .line 511
    check-cast v3, Landroid/widget/TextView;

    .line 512
    .line 513
    iget-object v4, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 514
    .line 515
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    .line 525
    .line 526
    iget-object v3, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 527
    .line 528
    sget v4, Lcom/cloud/hisavana/sdk/R$id;->tvBtn:I

    .line 529
    .line 530
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    check-cast v3, Landroid/widget/TextView;

    .line 535
    .line 536
    iget-object v4, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 537
    .line 538
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 539
    .line 540
    .line 541
    move-result-object v4

    .line 542
    iget-object v5, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 543
    .line 544
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    .line 545
    .line 546
    .line 547
    move-result v5

    .line 548
    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v4

    .line 552
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    .line 554
    .line 555
    if-eqz v2, :cond_13

    .line 556
    .line 557
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    if-nez v3, :cond_10

    .line 562
    .line 563
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    .line 568
    .line 569
    goto :goto_6

    .line 570
    :cond_10
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 571
    .line 572
    .line 573
    goto :goto_6

    .line 574
    :pswitch_8
    iget-object v3, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 575
    .line 576
    sget v4, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    .line 577
    .line 578
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 579
    .line 580
    .line 581
    move-result-object v3

    .line 582
    check-cast v3, Landroid/widget/TextView;

    .line 583
    .line 584
    iget-object v4, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 585
    .line 586
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 587
    .line 588
    .line 589
    move-result-object v4

    .line 590
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    .line 596
    .line 597
    if-eqz v2, :cond_12

    .line 598
    .line 599
    iget-object v3, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 600
    .line 601
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v3

    .line 609
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 610
    .line 611
    .line 612
    move-result v4

    .line 613
    if-nez v4, :cond_11

    .line 614
    .line 615
    new-instance v4, Ljava/lang/StringBuilder;

    .line 616
    .line 617
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    :cond_11
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    .line 635
    .line 636
    :cond_12
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 637
    .line 638
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tvBtn:I

    .line 639
    .line 640
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    check-cast v2, Landroid/widget/TextView;

    .line 645
    .line 646
    iget-object v3, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 647
    .line 648
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 649
    .line 650
    .line 651
    move-result-object v3

    .line 652
    iget-object v4, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 653
    .line 654
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    .line 655
    .line 656
    .line 657
    move-result v4

    .line 658
    invoke-virtual {v3, v4}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    .line 664
    .line 665
    :cond_13
    :goto_6
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 666
    .line 667
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/util/h0;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 668
    .line 669
    .line 670
    move-result v2

    .line 671
    iget-object v3, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 672
    .line 673
    sget v4, Lcom/cloud/hisavana/sdk/R$id;->ps_mark_view:I

    .line 674
    .line 675
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 676
    .line 677
    .line 678
    move-result-object v3

    .line 679
    check-cast v3, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 680
    .line 681
    if-eqz v3, :cond_17

    .line 682
    .line 683
    if-eqz v2, :cond_14

    .line 684
    .line 685
    move v14, v6

    .line 686
    :cond_14
    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 687
    .line 688
    .line 689
    if-eqz v13, :cond_15

    .line 690
    .line 691
    const/4 v2, -0x1

    .line 692
    goto :goto_7

    .line 693
    :cond_15
    const v2, -0x878788

    .line 694
    .line 695
    .line 696
    :goto_7
    invoke-virtual {v3, v2}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextColor(I)V

    .line 697
    .line 698
    .line 699
    if-eqz v13, :cond_16

    .line 700
    .line 701
    const/high16 v2, 0x41000000    # 8.0f

    .line 702
    .line 703
    goto :goto_8

    .line 704
    :cond_16
    const/high16 v2, 0x40c00000    # 6.0f

    .line 705
    .line 706
    :goto_8
    invoke-virtual {v3, v2}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextSize(F)V

    .line 707
    .line 708
    .line 709
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 710
    .line 711
    invoke-virtual {v3, v2}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->attachInfo(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 712
    .line 713
    .line 714
    :cond_17
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 715
    .line 716
    sget v4, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    .line 717
    .line 718
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 719
    .line 720
    .line 721
    move-result-object v2

    .line 722
    check-cast v2, Landroid/widget/TextView;

    .line 723
    .line 724
    if-eqz v2, :cond_18

    .line 725
    .line 726
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 727
    .line 728
    .line 729
    move-result-object v4

    .line 730
    if-eqz v4, :cond_18

    .line 731
    .line 732
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    const/4 v4, 0x1

    .line 737
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 738
    .line 739
    .line 740
    :cond_18
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 741
    .line 742
    sget v4, Lcom/cloud/hisavana/sdk/R$id;->iv_main_image:I

    .line 743
    .line 744
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 745
    .line 746
    .line 747
    move-result-object v2

    .line 748
    check-cast v2, Landroid/widget/ImageView;

    .line 749
    .line 750
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/t;->d:Landroid/widget/ImageView;

    .line 751
    .line 752
    if-eqz v2, :cond_19

    .line 753
    .line 754
    new-instance v4, Lcom/cloud/hisavana/sdk/t$i;

    .line 755
    .line 756
    const/4 v5, 0x0

    .line 757
    invoke-direct {v4, v0, v5}, Lcom/cloud/hisavana/sdk/t$i;-><init>(Lcom/cloud/hisavana/sdk/t;Lcom/cloud/hisavana/sdk/t$a;)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 761
    .line 762
    .line 763
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/t;->d:Landroid/widget/ImageView;

    .line 764
    .line 765
    new-instance v4, Lcom/cloud/hisavana/sdk/t$h;

    .line 766
    .line 767
    invoke-direct {v4, v0, v5}, Lcom/cloud/hisavana/sdk/t$h;-><init>(Lcom/cloud/hisavana/sdk/t;Lcom/cloud/hisavana/sdk/t$a;)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    .line 772
    .line 773
    :cond_19
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 774
    .line 775
    sget v4, Lcom/cloud/hisavana/sdk/R$id;->ivIcon:I

    .line 776
    .line 777
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 778
    .line 779
    .line 780
    move-result-object v2

    .line 781
    check-cast v2, Landroid/widget/ImageView;

    .line 782
    .line 783
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/t;->e:Landroid/widget/ImageView;

    .line 784
    .line 785
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 786
    .line 787
    iget-object v4, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 788
    .line 789
    invoke-direct {v0, v2, v4}, Lcom/cloud/hisavana/sdk/t;->v(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;)V

    .line 790
    .line 791
    .line 792
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 793
    .line 794
    iget-object v4, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 795
    .line 796
    invoke-direct {v0, v2, v4}, Lcom/cloud/hisavana/sdk/t;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;)V

    .line 797
    .line 798
    .line 799
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 800
    .line 801
    iget-object v4, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 802
    .line 803
    const/4 v5, 0x1

    .line 804
    invoke-direct {v0, v2, v4, v5}, Lcom/cloud/hisavana/sdk/t;->m(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;Z)V

    .line 805
    .line 806
    .line 807
    if-eq v12, v5, :cond_1a

    .line 808
    .line 809
    const/4 v2, 0x2

    .line 810
    if-ne v12, v2, :cond_1e

    .line 811
    .line 812
    :cond_1a
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 813
    .line 814
    sget v4, Lcom/cloud/hisavana/sdk/R$id;->score_icon:I

    .line 815
    .line 816
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 817
    .line 818
    .line 819
    move-result-object v2

    .line 820
    check-cast v2, Landroid/widget/ImageView;

    .line 821
    .line 822
    iget-object v4, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 823
    .line 824
    sget v5, Lcom/cloud/hisavana/sdk/R$id;->score_text:I

    .line 825
    .line 826
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 827
    .line 828
    .line 829
    move-result-object v4

    .line 830
    check-cast v4, Landroid/widget/TextView;

    .line 831
    .line 832
    iget-object v5, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 833
    .line 834
    sget v9, Lcom/cloud/hisavana/sdk/R$id;->source_size:I

    .line 835
    .line 836
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 837
    .line 838
    .line 839
    move-result-object v5

    .line 840
    check-cast v5, Landroid/widget/TextView;

    .line 841
    .line 842
    if-eqz v2, :cond_1b

    .line 843
    .line 844
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 845
    .line 846
    .line 847
    move-result-object v9

    .line 848
    invoke-virtual {v10, v12}, Lcom/cloud/hisavana/sdk/w;->f(I)I

    .line 849
    .line 850
    .line 851
    move-result v13

    .line 852
    invoke-static {v9, v13}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 853
    .line 854
    .line 855
    move-result-object v9

    .line 856
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 857
    .line 858
    .line 859
    :cond_1b
    if-eqz v4, :cond_1c

    .line 860
    .line 861
    invoke-virtual {v10, v12}, Lcom/cloud/hisavana/sdk/w;->h(I)Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v2

    .line 865
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    .line 867
    .line 868
    :cond_1c
    if-eqz v5, :cond_1e

    .line 869
    .line 870
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 871
    .line 872
    .line 873
    move-result v2

    .line 874
    if-nez v2, :cond_1d

    .line 875
    .line 876
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 877
    .line 878
    .line 879
    new-instance v2, Ljava/lang/StringBuilder;

    .line 880
    .line 881
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v2

    .line 894
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    .line 896
    .line 897
    goto :goto_9

    .line 898
    :cond_1d
    const/4 v2, 0x4

    .line 899
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 900
    .line 901
    .line 902
    :cond_1e
    :goto_9
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->e()I

    .line 903
    .line 904
    .line 905
    move-result v2

    .line 906
    const/4 v4, 0x2

    .line 907
    if-ne v2, v4, :cond_20

    .line 908
    .line 909
    if-eqz v15, :cond_1f

    .line 910
    .line 911
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 912
    .line 913
    const/high16 v4, 0x43960000    # 300.0f

    .line 914
    .line 915
    invoke-static {v4}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 916
    .line 917
    .line 918
    move-result v4

    .line 919
    const/high16 v5, 0x43480000    # 200.0f

    .line 920
    .line 921
    invoke-static {v5}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 922
    .line 923
    .line 924
    move-result v5

    .line 925
    invoke-virtual {v1, v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 926
    .line 927
    .line 928
    goto :goto_a

    .line 929
    :cond_1f
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 930
    .line 931
    const/high16 v4, 0x43b40000    # 360.0f

    .line 932
    .line 933
    invoke-static {v4}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 934
    .line 935
    .line 936
    move-result v4

    .line 937
    const/high16 v5, 0x42580000    # 54.0f

    .line 938
    .line 939
    invoke-static {v5}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 940
    .line 941
    .line 942
    move-result v5

    .line 943
    invoke-virtual {v1, v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 944
    .line 945
    .line 946
    goto :goto_a

    .line 947
    :cond_20
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 948
    .line 949
    const/4 v4, -0x2

    .line 950
    const/4 v5, -0x1

    .line 951
    invoke-virtual {v1, v2, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 952
    .line 953
    .line 954
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 955
    .line 956
    .line 957
    move-result-object v2

    .line 958
    if-eqz v2, :cond_21

    .line 959
    .line 960
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 961
    .line 962
    .line 963
    move-result-object v2

    .line 964
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 965
    .line 966
    .line 967
    :cond_21
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 968
    .line 969
    .line 970
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 971
    .line 972
    .line 973
    move-result-object v2

    .line 974
    const-string v4, "ad banner show..."

    .line 975
    .line 976
    invoke-virtual {v2, v11, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    invoke-direct {v0, v1, v3}, Lcom/cloud/hisavana/sdk/t;->f(Landroid/view/ViewGroup;Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;)V

    .line 980
    .line 981
    .line 982
    return-void

    .line 983
    :cond_22
    :goto_b
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 984
    .line 985
    .line 986
    move-result-object v1

    .line 987
    const-string v2, "TranBanner --> null == mAdBean.nativeBean || null == mAdBean.materialStyle"

    .line 988
    .line 989
    invoke-virtual {v1, v11, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    .line 991
    .line 992
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 993
    .line 994
    if-eqz v1, :cond_23

    .line 995
    .line 996
    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_NATIVEOBJ_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 997
    .line 998
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 999
    .line 1000
    .line 1001
    :cond_23
    return-void

    .line 1002
    :cond_24
    :goto_c
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 1003
    .line 1004
    if-eqz v1, :cond_26

    .line 1005
    .line 1006
    if-nez v10, :cond_25

    .line 1007
    .line 1008
    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 1009
    .line 1010
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 1011
    .line 1012
    .line 1013
    goto :goto_d

    .line 1014
    :cond_25
    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIEWGROUP_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 1015
    .line 1016
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 1017
    .line 1018
    .line 1019
    :cond_26
    :goto_d
    return-void

    .line 1020
    nop

    .line 1021
    :sswitch_data_0
    .sparse-switch
        0x3b9ffe2 -> :sswitch_4
        0x73770774 -> :sswitch_3
        0x73770775 -> :sswitch_2
        0x73770776 -> :sswitch_1
        0x73770777 -> :sswitch_0
    .end sparse-switch

    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    :pswitch_data_1
    .packed-switch 0x73770774
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public g(Landroid/view/ViewGroup;ZZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/t;->i:Z

    .line 2
    .line 3
    iput-boolean p3, p0, Lcom/cloud/hisavana/sdk/t;->j:Z

    .line 4
    .line 5
    if-eqz p4, :cond_4

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 8
    .line 9
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/p3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p2, 0x0

    .line 29
    :goto_0
    const/4 p3, 0x0

    .line 30
    invoke-static {p3}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-eqz p3, :cond_1

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isPriorityH5Ad()Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    if-eqz p3, :cond_1

    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getH5AdUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/util/o0;->f(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_1

    .line 57
    .line 58
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/t;->y(Landroid/view/ViewGroup;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-nez p2, :cond_2

    .line 71
    .line 72
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/t;->t(Landroid/view/ViewGroup;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_3

    .line 81
    .line 82
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/t;->A(Landroid/view/ViewGroup;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/t;->B(Landroid/view/ViewGroup;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    :goto_1
    return-void
.end method

.method i(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Landroid/view/ViewGroup;)V
    .locals 12

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, -0x1

    .line 5
    const/4 v4, 0x0

    .line 6
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 7
    .line 8
    if-eqz v5, :cond_14

    .line 9
    .line 10
    if-eqz p2, :cond_14

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_7

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    .line 18
    .line 19
    move-object v6, p2

    .line 20
    check-cast v6, Landroid/widget/RelativeLayout;

    .line 21
    .line 22
    const/16 v7, 0x11

    .line 23
    .line 24
    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    const-string v7, "BannerGemini"

    .line 32
    .line 33
    if-eqz v6, :cond_12

    .line 34
    .line 35
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    if-nez v6, :cond_1

    .line 40
    .line 41
    goto/16 :goto_6

    .line 42
    .line 43
    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    new-instance v8, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v9, "*----> TranBanner --> MaterialStyle ="

    .line 53
    .line 54
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {v6, v7, v8}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    sparse-switch v8, :sswitch_data_0

    .line 83
    .line 84
    .line 85
    :goto_0
    move v6, v3

    .line 86
    goto :goto_1

    .line 87
    :sswitch_0
    const-string v8, "B20304"

    .line 88
    .line 89
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-nez v6, :cond_2

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    const/4 v6, 0x4

    .line 97
    goto :goto_1

    .line 98
    :sswitch_1
    const-string v8, "B20303"

    .line 99
    .line 100
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-nez v6, :cond_3

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    move v6, v0

    .line 108
    goto :goto_1

    .line 109
    :sswitch_2
    const-string v8, "B20302"

    .line 110
    .line 111
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-nez v6, :cond_4

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    move v6, v1

    .line 119
    goto :goto_1

    .line 120
    :sswitch_3
    const-string v8, "B20301"

    .line 121
    .line 122
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-nez v6, :cond_5

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_5
    move v6, v2

    .line 130
    goto :goto_1

    .line 131
    :sswitch_4
    const-string v8, "B3201"

    .line 132
    .line 133
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-nez v6, :cond_6

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_6
    move v6, v4

    .line 141
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v0, "TranBanner --> \u6ca1\u6709\u5339\u914d\u5230 materialStyle --> \u914d\u7f6e\u9519\u8bef materialStyle="

    .line 154
    .line 155
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-virtual {p1, v7, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 173
    .line 174
    if-eqz p1, :cond_7

    .line 175
    .line 176
    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_MATERIAL_STYLE_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 177
    .line 178
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 179
    .line 180
    .line 181
    :cond_7
    return-void

    .line 182
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    sget v6, Lcom/cloud/hisavana/sdk/R$layout;->banner_style_20304_layout:I

    .line 191
    .line 192
    invoke-virtual {v2, v6, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    iput-object v2, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 197
    .line 198
    move v2, v4

    .line 199
    :goto_2
    move v6, v2

    .line 200
    goto :goto_3

    .line 201
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    sget v8, Lcom/cloud/hisavana/sdk/R$layout;->banner_style_3201_layout:I

    .line 210
    .line 211
    invoke-virtual {v6, v8, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    iput-object v6, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :goto_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    iget-object v9, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 223
    .line 224
    iget-object v10, p0, Lcom/cloud/hisavana/sdk/t;->q:Lcom/cloud/hisavana/sdk/t$g;

    .line 225
    .line 226
    invoke-virtual {v8, v5, v9, v10}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    .line 227
    .line 228
    .line 229
    iget-object v8, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 230
    .line 231
    invoke-static {v8}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 232
    .line 233
    .line 234
    iget-object v8, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 235
    .line 236
    if-nez v8, :cond_9

    .line 237
    .line 238
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 239
    .line 240
    if-eqz p1, :cond_8

    .line 241
    .line 242
    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_RENDERVIEW_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 243
    .line 244
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 245
    .line 246
    .line 247
    :cond_8
    return-void

    .line 248
    :cond_9
    sget v9, Lcom/cloud/hisavana/sdk/R$id;->ivBanner:I

    .line 249
    .line 250
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    check-cast v8, Landroid/widget/FrameLayout;

    .line 255
    .line 256
    if-eqz v8, :cond_d

    .line 257
    .line 258
    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 259
    .line 260
    .line 261
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 262
    .line 263
    invoke-direct {v9, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    .line 270
    .line 271
    .line 272
    move-result-object v10

    .line 273
    if-eqz v10, :cond_c

    .line 274
    .line 275
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 276
    .line 277
    .line 278
    move-result v11

    .line 279
    if-nez v11, :cond_c

    .line 280
    .line 281
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v10

    .line 285
    check-cast v10, Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 288
    .line 289
    .line 290
    const-string v11, "3:2"

    .line 291
    .line 292
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v11

    .line 296
    if-nez v11, :cond_b

    .line 297
    .line 298
    const-string v11, "20:3"

    .line 299
    .line 300
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v10

    .line 304
    if-nez v10, :cond_a

    .line 305
    .line 306
    goto :goto_4

    .line 307
    :cond_a
    invoke-static {}, Lk7/c;->k()I

    .line 308
    .line 309
    .line 310
    move-result v10

    .line 311
    mul-int/2addr v10, v0

    .line 312
    div-int/lit8 v10, v10, 0x14

    .line 313
    .line 314
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 315
    .line 316
    invoke-static {}, Lk7/c;->k()I

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 321
    .line 322
    goto :goto_4

    .line 323
    :cond_b
    invoke-static {}, Lk7/c;->k()I

    .line 324
    .line 325
    .line 326
    move-result v10

    .line 327
    mul-int/2addr v10, v1

    .line 328
    div-int/2addr v10, v0

    .line 329
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 330
    .line 331
    invoke-static {}, Lk7/c;->k()I

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 336
    .line 337
    :cond_c
    :goto_4
    invoke-virtual {v8, p1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    .line 339
    .line 340
    new-instance v0, Lcom/cloud/hisavana/sdk/t$i;

    .line 341
    .line 342
    const/4 v9, 0x0

    .line 343
    invoke-direct {v0, p0, v9}, Lcom/cloud/hisavana/sdk/t$i;-><init>(Lcom/cloud/hisavana/sdk/t;Lcom/cloud/hisavana/sdk/t$a;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v8, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p1, v5}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setWebClientCallback(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 350
    .line 351
    .line 352
    new-instance v0, Lcom/cloud/hisavana/sdk/t$a;

    .line 353
    .line 354
    invoke-direct {v0, p0, v5, p1}, Lcom/cloud/hisavana/sdk/t$a;-><init>(Lcom/cloud/hisavana/sdk/t;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setInteractiveListener(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;)V

    .line 358
    .line 359
    .line 360
    invoke-direct {p0, v5, p1}, Lcom/cloud/hisavana/sdk/t;->n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V

    .line 361
    .line 362
    .line 363
    :cond_d
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 364
    .line 365
    invoke-direct {p0, v5, v2, v0}, Lcom/cloud/hisavana/sdk/t;->o(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLandroid/view/View;)V

    .line 366
    .line 367
    .line 368
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 369
    .line 370
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->ivIcon:I

    .line 371
    .line 372
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    check-cast v0, Landroid/widget/ImageView;

    .line 377
    .line 378
    if-eqz v0, :cond_e

    .line 379
    .line 380
    const/16 v2, 0x8

    .line 381
    .line 382
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    .line 384
    .line 385
    :cond_e
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 386
    .line 387
    invoke-direct {p0, v5, v0}, Lcom/cloud/hisavana/sdk/t;->v(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;)V

    .line 388
    .line 389
    .line 390
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 391
    .line 392
    invoke-direct {p0, v5, v0}, Lcom/cloud/hisavana/sdk/t;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;)V

    .line 393
    .line 394
    .line 395
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 396
    .line 397
    invoke-direct {p0, v5, v0, v4}, Lcom/cloud/hisavana/sdk/t;->m(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;Z)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 401
    .line 402
    .line 403
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->e()I

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    if-ne p1, v1, :cond_10

    .line 408
    .line 409
    if-eqz v6, :cond_f

    .line 410
    .line 411
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 412
    .line 413
    const/high16 v0, 0x43960000    # 300.0f

    .line 414
    .line 415
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    const/high16 v1, 0x43480000    # 200.0f

    .line 420
    .line 421
    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    invoke-virtual {p2, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 426
    .line 427
    .line 428
    goto :goto_5

    .line 429
    :cond_f
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 430
    .line 431
    const/high16 v0, 0x43b40000    # 360.0f

    .line 432
    .line 433
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    const/high16 v1, 0x42580000    # 54.0f

    .line 438
    .line 439
    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    invoke-virtual {p2, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 444
    .line 445
    .line 446
    goto :goto_5

    .line 447
    :cond_10
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->c:Landroid/view/View;

    .line 448
    .line 449
    const/4 v0, -0x2

    .line 450
    invoke-virtual {p2, p1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 451
    .line 452
    .line 453
    :goto_5
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    if-eqz p1, :cond_11

    .line 458
    .line 459
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 464
    .line 465
    .line 466
    :cond_11
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 467
    .line 468
    .line 469
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    const-string p2, "ad banner attachInteractiveAd show..."

    .line 474
    .line 475
    invoke-virtual {p1, v7, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    return-void

    .line 479
    :cond_12
    :goto_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    const-string p2, "TranBanner --> null == mAdBean.nativeBean || null == mAdBean.materialStyle"

    .line 484
    .line 485
    invoke-virtual {p1, v7, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 489
    .line 490
    if-eqz p1, :cond_13

    .line 491
    .line 492
    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_NATIVEOBJ_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 493
    .line 494
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 495
    .line 496
    .line 497
    :cond_13
    return-void

    .line 498
    :cond_14
    :goto_7
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INTERACTIVE_WEBVIEW_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 499
    .line 500
    if-nez v5, :cond_15

    .line 501
    .line 502
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 503
    .line 504
    goto :goto_8

    .line 505
    :cond_15
    if-nez p2, :cond_16

    .line 506
    .line 507
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIEWGROUP_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 508
    .line 509
    :cond_16
    :goto_8
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 510
    .line 511
    if-eqz p2, :cond_17

    .line 512
    .line 513
    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 514
    .line 515
    .line 516
    :cond_17
    return-void

    .line 517
    :sswitch_data_0
    .sparse-switch
        0x3b9ffe2 -> :sswitch_4
        0x73770774 -> :sswitch_3
        0x73770775 -> :sswitch_2
        0x73770776 -> :sswitch_1
        0x73770777 -> :sswitch_0
    .end sparse-switch

    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method j(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;)V
    .locals 9

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->r:Lcom/cloud/hisavana/sdk/q;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Lcom/cloud/hisavana/sdk/q;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/q;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/t;->r:Lcom/cloud/hisavana/sdk/q;

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->r:Lcom/cloud/hisavana/sdk/q;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 39
    .line 40
    new-instance v2, Lcom/cloud/hisavana/sdk/t$b;

    .line 41
    .line 42
    invoke-direct {v2, p0, p1}, Lcom/cloud/hisavana/sdk/t$b;-><init>(Lcom/cloud/hisavana/sdk/t;Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1, v1, v2}, Lcom/cloud/hisavana/sdk/q;->d(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/f4;)V

    .line 46
    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v8, 0x0

    .line 50
    const/4 v6, 0x0

    .line 51
    move-object v3, p0

    .line 52
    move-object v4, p1

    .line 53
    move-object v5, p2

    .line 54
    invoke-direct/range {v3 .. v8}, Lcom/cloud/hisavana/sdk/t;->k(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;ZZZ)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p2, "<script>   window.addEventListener(\n          \"error\",\n          function (e) {\n            var target = e.srcElement;\n            var tagName = target.tagName || \"\";\n            if (tagName && tagName.toUpperCase() === \"IMG\" && target) {\n              const isShow = window.getComputedStyle(target).display != \"none\";\n              const isShow1 = window.getComputedStyle(target).visibility != \"hidden\";\n              const { width, height } = target.getBoundingClientRect();\n              const hasWidth = typeof width == \"number\" && width > 1;\n              const hasHeight = typeof height == \"number\" && height > 1;\n              if (hasWidth && hasHeight && isShow && isShow1) {\n                 window.loadError&&window.loadError.loadMaterialError&&window.loadError.loadMaterialError(target.src);\n              }\n            }\n          },\n          true\n        );\n        </script>"

    .line 72
    .line 73
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const-string v5, "utf-8"

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    const/4 v2, 0x0

    .line 84
    const-string v4, "text/html"

    .line 85
    .line 86
    move-object v1, p1

    .line 87
    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_0
    return-void
.end method

.method u(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;)V
    .locals 11

    .line 1
    if-eqz p2, :cond_9

    .line 2
    .line 3
    if-eqz p1, :cond_9

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v0, v1

    .line 32
    :goto_0
    if-eqz v0, :cond_7

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getH5AdUrl()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_2
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 47
    .line 48
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-static {v3, v1, v1, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->z(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const/4 v2, -0x1

    .line 62
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const/4 v2, 0x1

    .line 70
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1, p1, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;

    .line 88
    .line 89
    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->setWebview(Landroid/webkit/WebView;)V

    .line 93
    .line 94
    .line 95
    new-instance v3, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getH5AdUrl()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 102
    .line 103
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    iget-object v6, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 108
    .line 109
    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTriggerId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-direct {v3, v4, v5, v6}, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v3}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->setCurrentAdInfo(Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;)V

    .line 117
    .line 118
    .line 119
    new-instance v4, Lcom/cloud/hisavana/sdk/t$c;

    .line 120
    .line 121
    invoke-direct {v4, p0, p2}, Lcom/cloud/hisavana/sdk/t$c;-><init>(Lcom/cloud/hisavana/sdk/t;Landroid/view/ViewGroup;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v4}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->setAdActionListener(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;)V

    .line 125
    .line 126
    .line 127
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 128
    .line 129
    invoke-virtual {v1, v4}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->setCurrentAd(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 130
    .line 131
    .line 132
    const-string v4, "AgentPageJsBridge"

    .line 133
    .line 134
    invoke-virtual {p1, v1, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance v1, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageWebViewClient;

    .line 138
    .line 139
    new-instance v4, Lcom/cloud/hisavana/sdk/t$d;

    .line 140
    .line 141
    invoke-direct {v4, p0}, Lcom/cloud/hisavana/sdk/t$d;-><init>(Lcom/cloud/hisavana/sdk/t;)V

    .line 142
    .line 143
    .line 144
    invoke-direct {v1, v4}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageWebViewClient;-><init>(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageWebViewClient$OverrideListener;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getH5AdUrl()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v1, v4}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageWebViewClient;->setMainPageUrl(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 155
    .line 156
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    invoke-virtual {v1, v4}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageWebViewClient;->setSource(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 164
    .line 165
    .line 166
    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/t;->i:Z

    .line 167
    .line 168
    const/4 v9, 0x1

    .line 169
    const/4 v10, 0x1

    .line 170
    const/4 v8, 0x1

    .line 171
    move-object v5, p0

    .line 172
    move-object v6, p1

    .line 173
    move-object v7, p2

    .line 174
    invoke-direct/range {v5 .. v10}, Lcom/cloud/hisavana/sdk/t;->k(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;ZZZ)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    if-eqz p2, :cond_6

    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 188
    .line 189
    if-lez p2, :cond_4

    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 196
    .line 197
    if-gtz p2, :cond_3

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 205
    .line 206
    invoke-virtual {v3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->setWidth(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 214
    .line 215
    invoke-virtual {v3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->setHeight(I)V

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 220
    .line 221
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    const-string v1, "B3201"

    .line 226
    .line 227
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result p2

    .line 231
    if-eqz p2, :cond_5

    .line 232
    .line 233
    const/high16 p2, 0x43480000    # 200.0f

    .line 234
    .line 235
    invoke-static {p2}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 236
    .line 237
    .line 238
    move-result p2

    .line 239
    invoke-virtual {v3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->setHeight(I)V

    .line 240
    .line 241
    .line 242
    const/high16 p2, 0x43960000    # 300.0f

    .line 243
    .line 244
    invoke-static {p2}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    invoke-virtual {v3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->setWidth(I)V

    .line 249
    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_5
    const/high16 p2, 0x42580000    # 54.0f

    .line 253
    .line 254
    invoke-static {p2}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 255
    .line 256
    .line 257
    move-result p2

    .line 258
    invoke-virtual {v3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->setHeight(I)V

    .line 259
    .line 260
    .line 261
    const/high16 p2, 0x43b40000    # 360.0f

    .line 262
    .line 263
    invoke-static {p2}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    invoke-virtual {v3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->setWidth(I)V

    .line 268
    .line 269
    .line 270
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getH5AdUrl()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :cond_7
    :goto_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    const-string p2, "BannerGemini"

    .line 283
    .line 284
    const-string v0, "getConfig().getH5AdUrl() == null"

    .line 285
    .line 286
    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 290
    .line 291
    if-eqz p1, :cond_8

    .line 292
    .line 293
    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_H5_ADURL_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 294
    .line 295
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 296
    .line 297
    .line 298
    :cond_8
    return-void

    .line 299
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/p2;

    .line 300
    .line 301
    if-eqz p1, :cond_a

    .line 302
    .line 303
    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 304
    .line 305
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 306
    .line 307
    .line 308
    :cond_a
    return-void
.end method
