.class public Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;
.super Landroid/app/Activity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$l;,
        Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;,
        Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$k;
    }
.end annotation


# static fields
.field private static c0:Ljava/lang/ref/WeakReference;


# instance fields
.field private A:J

.field private B:I

.field private C:Z

.field private final D:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$l;

.field private E:Lcom/cloud/hisavana/sdk/q;

.field private F:Lcom/cloud/hisavana/sdk/common/util/v;

.field private G:Lg7/e;

.field private H:I

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:I

.field private M:I

.field private N:Z

.field private O:I

.field P:Z

.field private Q:Lg7/d;

.field private R:I

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:I

.field private X:I

.field private Y:I

.field private Z:I

.field private a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

.field private a0:Landroid/animation/ObjectAnimator;

.field private b:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

.field private b0:Ljava/lang/Runnable;

.field private c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

.field private d:Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

.field private e:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

.field private f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/view/ViewGroup;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field private m:Landroid/view/ViewGroup;

.field private n:Landroid/widget/ImageView;

.field private o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

.field private p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

.field private q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private r:Ljava/lang/String;

.field private s:F

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s:F

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->t:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->u:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->v:Z

    .line 20
    .line 21
    const/high16 v1, -0x40800000    # -1.0f

    .line 22
    .line 23
    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->w:F

    .line 24
    .line 25
    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->x:F

    .line 26
    .line 27
    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->y:F

    .line 28
    .line 29
    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z:F

    .line 30
    .line 31
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$l;

    .line 32
    .line 33
    invoke-direct {v1, p0, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$l;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->D:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$l;

    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->H:I

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->I:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J:Z

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->K:Z

    .line 46
    .line 47
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L:I

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    iput v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 51
    .line 52
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->N:Z

    .line 53
    .line 54
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O:I

    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->P:Z

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S:Z

    .line 59
    .line 60
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->T:Z

    .line 61
    .line 62
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->U:Z

    .line 63
    .line 64
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->V:Z

    .line 65
    .line 66
    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->W:I

    .line 67
    .line 68
    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->X:I

    .line 69
    .line 70
    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Y:I

    .line 71
    .line 72
    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Z:I

    .line 73
    .line 74
    return-void
.end method

.method private A()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->n0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/util/a;->a(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const v0, 0x1020002

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/view/ViewGroup;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v2, -0x1

    .line 38
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method static synthetic A0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z:F

    .line 2
    .line 3
    return p1
.end method

.method private A1()V
    .locals 5

    .line 1
    const-string v0, "TAdInterstitialActivity"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "BroadCastPrefix"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "mAdBean"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    sget-object v1, Lcom/cloud/hisavana/sdk/common/util/b;->a:Lcom/cloud/hisavana/sdk/common/util/b;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/common/util/b;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->B:I

    .line 58
    .line 59
    const/4 v2, -0x1

    .line 60
    if-ne v1, v2, :cond_2

    .line 61
    .line 62
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "TAdInterstitialActivity --> adMediaType == INVALID_TYPE"

    .line 67
    .line 68
    invoke-virtual {v1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_INVALID_TYPE:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const/16 v2, 0xbc6

    .line 78
    .line 79
    invoke-direct {p0, v2, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->V0()V

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_3
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, "TAdInterstitialActivity --> null == mAdBean || null == mAdBean.materialStyle"

    .line 95
    .line 96
    invoke-virtual {v1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_INTERSTITIAL_MISS_ELEMENT:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const/16 v2, 0xbc5

    .line 106
    .line 107
    invoke-direct {p0, v2, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C(ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v4, "start "

    .line 124
    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v2, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :goto_3
    return-void
.end method

.method private B(F)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "I1107"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->n:Landroid/widget/ImageView;

    .line 19
    .line 20
    cmpl-float v2, p1, v0

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    sget v2, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_volume_close_i1107:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget v2, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_volume_open_i1107:I

    .line 28
    .line 29
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->n:Landroid/widget/ImageView;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    cmpl-float p1, p1, v0

    .line 38
    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    sget p1, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_volume_close:I

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    sget p1, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_volume_open:I

    .line 45
    .line 46
    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    .line 48
    .line 49
    :cond_3
    return-void
.end method

.method private B0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/w2;->n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/w2;->m(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x3

    .line 26
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L:I

    .line 27
    .line 28
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 29
    .line 30
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setEndCardType(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private C(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "error_msg"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const-string p2, "error_code"

    .line 12
    .line 13
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const-string p1, "_error"

    .line 17
    .line 18
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O(Ljava/lang/String;Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private synthetic C0(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r(Landroid/view/View;Z)I

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private D(Landroid/view/View;FFFF)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->W:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->X:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 17
    new-array v2, v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aget v4, v2, v3

    .line 24
    .line 25
    iput v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->W:I

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    aget v2, v2, v4

    .line 29
    .line 30
    iput v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->X:I

    .line 31
    .line 32
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    div-int/2addr v2, v0

    .line 48
    iput v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Y:I

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    div-int/2addr p1, v0

    .line 55
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Z:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    .line 57
    :catchall_1
    :cond_2
    :try_start_2
    iget p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Y:I

    .line 58
    .line 59
    int-to-float p1, p1

    .line 60
    cmpl-float p1, p1, p2

    .line 61
    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    iget p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Z:I

    .line 65
    .line 66
    int-to-float p1, p1

    .line 67
    cmpl-float p1, p1, p3

    .line 68
    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    :cond_3
    iget p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->W:I

    .line 72
    .line 73
    if-eq p1, v1, :cond_4

    .line 74
    .line 75
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->X:I

    .line 76
    .line 77
    if-eq v0, v1, :cond_4

    .line 78
    .line 79
    int-to-float p1, p1

    .line 80
    add-float/2addr p2, p1

    .line 81
    iput p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->w:F

    .line 82
    .line 83
    int-to-float p2, v0

    .line 84
    add-float/2addr p3, p2

    .line 85
    iput p3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->x:F

    .line 86
    .line 87
    add-float/2addr p4, p1

    .line 88
    iput p4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->y:F

    .line 89
    .line 90
    add-float/2addr p5, p2

    .line 91
    iput p5, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    new-instance p3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string p4, "setLocationInfo error:"

    .line 104
    .line 105
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string p3, "TAdInterstitialActivity"

    .line 120
    .line 121
    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    :goto_2
    return-void
.end method

.method private D0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

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
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->h1()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/a0;

    .line 41
    .line 42
    invoke-direct {v1, v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/a0;-><init>(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/16 p1, 0xbbd

    .line 50
    .line 51
    const-string v0, "interactive file not exists "

    .line 52
    .line 53
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 57
    .line 58
    const/4 v0, 0x3

    .line 59
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    return-void
.end method

.method private E(Landroid/view/View;I)V
    .locals 12

    .line 1
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->close_view:I

    .line 2
    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/widget/ImageView;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "I01"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->count_down_view:I

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/widget/TextView;

    .line 30
    .line 31
    sget v4, Lcom/cloud/hisavana/sdk/R$id;->iv_reward_rest:I

    .line 32
    .line 33
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroid/widget/ImageView;

    .line 38
    .line 39
    :try_start_0
    sget v5, Lcom/cloud/hisavana/sdk/R$id;->ad_close_container:I

    .line 40
    .line 41
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    new-instance v6, Lcom/cloud/hisavana/sdk/common/activity/n;

    .line 48
    .line 49
    invoke-direct {v6}, Lcom/cloud/hisavana/sdk/common/activity/n;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    :catch_0
    :cond_0
    :goto_0
    move-object v8, v2

    .line 56
    move-object v11, v4

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->count_down_view:I

    .line 59
    .line 60
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Landroid/widget/TextView;

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    goto :goto_0

    .line 68
    :goto_1
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->skip_view:I

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Landroid/widget/TextView;

    .line 75
    .line 76
    if-eqz v1, :cond_d

    .line 77
    .line 78
    if-eqz v8, :cond_d

    .line 79
    .line 80
    if-nez v2, :cond_2

    .line 81
    .line 82
    goto/16 :goto_7

    .line 83
    .line 84
    :cond_2
    iget-boolean v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J:Z

    .line 85
    .line 86
    const/16 v5, 0x8

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    move-object v9, v2

    .line 98
    goto :goto_2

    .line 99
    :cond_3
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    move-object v9, v1

    .line 106
    :goto_2
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/u;

    .line 107
    .line 108
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/u;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    .line 113
    .line 114
    const-string v1, "TAdInterstitialActivity"

    .line 115
    .line 116
    if-lez p2, :cond_b

    .line 117
    .line 118
    iget v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->H:I

    .line 119
    .line 120
    if-nez v2, :cond_4

    .line 121
    .line 122
    goto/16 :goto_6

    .line 123
    .line 124
    :cond_4
    if-lez v2, :cond_5

    .line 125
    .line 126
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    move v2, v0

    .line 131
    goto :goto_3

    .line 132
    :cond_5
    move v2, p2

    .line 133
    :goto_3
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    const/4 v0, 0x4

    .line 137
    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->B:I

    .line 141
    .line 142
    const/4 v3, 0x1

    .line 143
    if-eq v0, v3, :cond_6

    .line 144
    .line 145
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDefaultMaterialType()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    const/4 v4, 0x2

    .line 152
    if-ne v0, v4, :cond_8

    .line 153
    .line 154
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 163
    .line 164
    if-ne v0, v3, :cond_7

    .line 165
    .line 166
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    if-eqz v0, :cond_7

    .line 173
    .line 174
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    const-string v4, "I91602"

    .line 181
    .line 182
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_7

    .line 187
    .line 188
    iput-boolean v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->I:Z

    .line 189
    .line 190
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->new_ad_progress:I

    .line 191
    .line 192
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :catch_1
    move-exception v0

    .line 204
    goto :goto_4

    .line 205
    :cond_7
    iput-boolean v6, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->I:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :goto_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string v5, "*----> TAdInterstitialActivity --> get screen orientation error:"

    .line 218
    .line 219
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v3, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->G:Lg7/e;

    .line 237
    .line 238
    if-eqz v0, :cond_9

    .line 239
    .line 240
    invoke-virtual {v0}, Lg7/e;->d()V

    .line 241
    .line 242
    .line 243
    :cond_9
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->new_ad_progress:I

    .line 244
    .line 245
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    move-object v7, v0

    .line 250
    check-cast v7, Landroid/widget/ProgressBar;

    .line 251
    .line 252
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->I:Z

    .line 253
    .line 254
    if-eqz v0, :cond_a

    .line 255
    .line 256
    if-eqz v7, :cond_a

    .line 257
    .line 258
    invoke-virtual {v7, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 259
    .line 260
    .line 261
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->H:I

    .line 262
    .line 263
    if-lez v0, :cond_a

    .line 264
    .line 265
    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getMax()I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->H:I

    .line 270
    .line 271
    sub-int/2addr v0, v1

    .line 272
    invoke-virtual {v7, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 273
    .line 274
    .line 275
    :cond_a
    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;

    .line 276
    .line 277
    int-to-long v1, v2

    .line 278
    const-wide/16 v3, 0x3e8

    .line 279
    .line 280
    mul-long/2addr v3, v1

    .line 281
    const-wide/16 v5, 0x3e8

    .line 282
    .line 283
    move-object v1, v0

    .line 284
    move-object v2, p0

    .line 285
    move-object v10, p1

    .line 286
    invoke-direct/range {v1 .. v11}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;JJLandroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V

    .line 287
    .line 288
    .line 289
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->G:Lg7/e;

    .line 290
    .line 291
    invoke-virtual {v0}, Lg7/e;->g()Lg7/e;

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :cond_b
    :goto_6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 296
    .line 297
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-eqz v0, :cond_c

    .line 306
    .line 307
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 308
    .line 309
    .line 310
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_close_container:I

    .line 311
    .line 312
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    if-eqz v0, :cond_d

    .line 317
    .line 318
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 319
    .line 320
    .line 321
    goto :goto_7

    .line 322
    :cond_c
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    const-string v2, "current close delay time is 0, do not count down."

    .line 327
    .line 328
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 335
    .line 336
    .line 337
    :cond_d
    :goto_7
    return-void
.end method

.method static synthetic E0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->v:Z

    .line 2
    .line 3
    return p0
.end method

.method private F(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 p2, 0x8

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method static synthetic F0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->t:Z

    .line 2
    .line 3
    return p1
.end method

.method public static G(Lcom/cloud/hisavana/sdk/v2;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->c0:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic G0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->n:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic H(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private H0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i0(Landroid/view/View;Z)I

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method static synthetic I(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;FFFF)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->D(Landroid/view/View;FFFF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic I0(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i0(Landroid/view/View;Z)I

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static synthetic J(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private J0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/w2;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->NO_MAIN_VIDEO_DATA_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->t1()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->n:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->setVolumeView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b0(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method static synthetic K(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O(Ljava/lang/String;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private K0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v0, v1, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v1

    .line 17
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v4, "*----> TAdInterstitialActivity --> get screen orientation error:"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v3, "TAdInterstitialActivity"

    .line 43
    .line 44
    invoke-virtual {v2, v3, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->n0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    sget p1, Lcom/cloud/hisavana/sdk/R$style;->InterstitialFullscreenStyle:I

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 p1, 0x2

    .line 60
    if-ne v0, p1, :cond_2

    .line 61
    .line 62
    sget p1, Lcom/cloud/hisavana/sdk/R$style;->AppCompatTranscutes:I

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    sget p1, Lcom/cloud/hisavana/sdk/R$style;->InterstitialStyle:I

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 71
    .line 72
    .line 73
    :goto_1
    return v0
.end method

.method private static synthetic L(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "file://"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private M(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->K:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_9

    .line 14
    .line 15
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v2, 0x4

    .line 40
    if-ne v0, v2, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getLogoUrl()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J:Z

    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eq v0, v2, :cond_3

    .line 64
    .line 65
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J:Z

    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J:Z

    .line 85
    .line 86
    iput v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L:I

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRetentionEndCardRatio()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_4

    .line 93
    .line 94
    return-void

    .line 95
    :cond_4
    if-ltz p1, :cond_8

    .line 96
    .line 97
    const/16 v0, 0x64

    .line 98
    .line 99
    if-le p1, v0, :cond_5

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    const/4 v1, 0x1

    .line 103
    if-ne p1, v0, :cond_6

    .line 104
    .line 105
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J:Z

    .line 106
    .line 107
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->B0()V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_6
    new-instance v2, Ljava/util/Random;

    .line 112
    .line 113
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    add-int/2addr v0, v1

    .line 121
    if-gt v0, p1, :cond_7

    .line 122
    .line 123
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J:Z

    .line 124
    .line 125
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->B0()V

    .line 126
    .line 127
    .line 128
    :cond_7
    return-void

    .line 129
    :cond_8
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v2, "getRetentionEndCardRatio error,value is "

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const-string v1, "TAdInterstitialActivity"

    .line 151
    .line 152
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_9
    :goto_1
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J:Z

    .line 157
    .line 158
    return-void
.end method

.method private synthetic M0(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/util/r;->r(Landroid/webkit/WebView;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->U(Landroid/view/View;ZZ)I

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method private N(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->E:Lcom/cloud/hisavana/sdk/q;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/cloud/hisavana/sdk/q;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/q;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->E:Lcom/cloud/hisavana/sdk/q;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->E:Lcom/cloud/hisavana/sdk/q;

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S:Z

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q;->j(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->E:Lcom/cloud/hisavana/sdk/q;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 24
    .line 25
    new-instance v3, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;

    .line 26
    .line 27
    invoke-direct {v3, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/q;->d(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/f4;)V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 34
    .line 35
    const-string v8, "utf-8"

    .line 36
    .line 37
    const/4 v9, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    const-string v7, "text/html"

    .line 40
    .line 41
    move-object v6, p1

    .line 42
    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method static synthetic N0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->T:Z

    .line 2
    .line 3
    return p0
.end method

.method private O(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v0, "mAdBean"

    .line 9
    .line 10
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 11
    .line 12
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v0, "TAdInterstitialActivity"

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "sendBroadcast action: "

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p2, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_2
    return-void
.end method

.method static synthetic O0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->w:F

    .line 2
    .line 3
    return p0
.end method

.method private synthetic P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private P0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x4

    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 23
    .line 24
    invoke-static {v0, v3, v2, v4}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 35
    .line 36
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 37
    .line 38
    const/4 v5, 0x3

    .line 39
    invoke-static {v0, v3, v5, v2, v4}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g:Landroid/widget/ImageView;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-ne v0, v1, :cond_2

    .line 61
    .line 62
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getLogoUrl()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g:Landroid/widget/ImageView;

    .line 71
    .line 72
    invoke-static {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 87
    .line 88
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g:Landroid/widget/ImageView;

    .line 89
    .line 90
    const/4 v4, 0x1

    .line 91
    invoke-static {v0, v1, v4, v2, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v1, "I01"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_3

    .line 115
    .line 116
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g:Landroid/widget/ImageView;

    .line 117
    .line 118
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/x;

    .line 119
    .line 120
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/x;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    return-void
.end method

.method static synthetic Q(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S:Z

    .line 2
    .line 3
    return p0
.end method

.method private synthetic Q0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/J0;->k(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method static synthetic R(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->U:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic R0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->x:F

    .line 2
    .line 3
    return p0
.end method

.method private S(Landroid/view/View;)[I
    .locals 3

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/f0;->a(I)Lcom/cloud/hisavana/sdk/common/activity/f0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v1, v2, :cond_1

    .line 15
    .line 16
    iget p1, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->a:I

    .line 17
    .line 18
    iget v0, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->b:I

    .line 19
    .line 20
    filled-new-array {p1, v0}, [I

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_1
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->close_view:I

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 36
    .line 37
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->c:I

    .line 38
    .line 39
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 40
    .line 41
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 42
    .line 43
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->d:I

    .line 44
    .line 45
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 46
    .line 47
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 48
    .line 49
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ffIcon:I

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->e:I

    .line 60
    .line 61
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    .line 63
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 64
    .line 65
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroid/widget/TextView;

    .line 72
    .line 73
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->f:F

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 83
    .line 84
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->g:I

    .line 85
    .line 86
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 87
    .line 88
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon1:I

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    .line 99
    .line 100
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 101
    .line 102
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon1:I

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    .line 113
    .line 114
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    .line 116
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon2:I

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    .line 127
    .line 128
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 129
    .line 130
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon2:I

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    .line 141
    .line 142
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 143
    .line 144
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon3:I

    .line 145
    .line 146
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    .line 155
    .line 156
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 157
    .line 158
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon3:I

    .line 159
    .line 160
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    .line 169
    .line 170
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 171
    .line 172
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon4:I

    .line 173
    .line 174
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    .line 183
    .line 184
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 185
    .line 186
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon4:I

    .line 187
    .line 188
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    .line 197
    .line 198
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 199
    .line 200
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    .line 201
    .line 202
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    .line 211
    .line 212
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 213
    .line 214
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    .line 215
    .line 216
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    .line 225
    .line 226
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 227
    .line 228
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_area_view:I

    .line 229
    .line 230
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 239
    .line 240
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->i:I

    .line 241
    .line 242
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 243
    .line 244
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->desc_area_view:I

    .line 245
    .line 246
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->j:I

    .line 255
    .line 256
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 257
    .line 258
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->desc_area_view:I

    .line 259
    .line 260
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->k:I

    .line 269
    .line 270
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 271
    .line 272
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->desc_area_view:I

    .line 273
    .line 274
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 283
    .line 284
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->l:I

    .line 285
    .line 286
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 287
    .line 288
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon:I

    .line 289
    .line 290
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->m:I

    .line 299
    .line 300
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 301
    .line 302
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_icon:I

    .line 303
    .line 304
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->m:I

    .line 313
    .line 314
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 315
    .line 316
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->download_icon:I

    .line 317
    .line 318
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->m:I

    .line 327
    .line 328
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 329
    .line 330
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->download_icon:I

    .line 331
    .line 332
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->m:I

    .line 341
    .line 342
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 343
    .line 344
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_text:I

    .line 345
    .line 346
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    check-cast v1, Landroid/widget/TextView;

    .line 351
    .line 352
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->n:F

    .line 353
    .line 354
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 355
    .line 356
    .line 357
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->download_text:I

    .line 358
    .line 359
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    check-cast v1, Landroid/widget/TextView;

    .line 364
    .line 365
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->n:F

    .line 366
    .line 367
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 368
    .line 369
    .line 370
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_info:I

    .line 371
    .line 372
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    check-cast v1, Landroid/widget/TextView;

    .line 377
    .line 378
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->o:F

    .line 379
    .line 380
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 381
    .line 382
    .line 383
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->download_info:I

    .line 384
    .line 385
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    check-cast v1, Landroid/widget/TextView;

    .line 390
    .line 391
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->o:F

    .line 392
    .line 393
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 394
    .line 395
    .line 396
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->line_info:I

    .line 397
    .line 398
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->p:I

    .line 407
    .line 408
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 409
    .line 410
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ff_btn:I

    .line 411
    .line 412
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->q:I

    .line 421
    .line 422
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 423
    .line 424
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ff_btn:I

    .line 425
    .line 426
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->r:I

    .line 435
    .line 436
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 437
    .line 438
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ff_btn:I

    .line 439
    .line 440
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 449
    .line 450
    iget v2, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->s:I

    .line 451
    .line 452
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 453
    .line 454
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ff_ps_mark_view:I

    .line 455
    .line 456
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 465
    .line 466
    iget v1, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->t:I

    .line 467
    .line 468
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 469
    .line 470
    iget p1, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->a:I

    .line 471
    .line 472
    iget v0, v0, Lcom/cloud/hisavana/sdk/common/activity/f0;->b:I

    .line 473
    .line 474
    filled-new-array {p1, v0}, [I

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    return-object p1
.end method

.method private S0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private T(Landroid/view/View;Z)I
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->tvBtn:I

    .line 15
    .line 16
    const-string v3, "TAdInterstitialActivity"

    .line 17
    .line 18
    if-eq v0, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->btn_pop_confirm:I

    .line 25
    .line 26
    if-eq v0, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->btn:I

    .line 33
    .line 34
    if-eq v0, v2, :cond_1

    .line 35
    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 40
    .line 41
    invoke-virtual {p2, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTrackUserClickArea(I)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2, v1}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setClickType(I)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const-string v0, "pslink half setClickType, click_img"

    .line 58
    .line 59
    invoke-virtual {p2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    const/4 v0, 0x2

    .line 70
    invoke-virtual {p2, v0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setClickType(I)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 74
    .line 75
    invoke-virtual {p2, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTrackUserClickArea(I)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    const-string v0, "pslink half setClickType, click_install"

    .line 83
    .line 84
    invoke-virtual {p2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_1
    new-instance p2, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 88
    .line 89
    iget v5, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->w:F

    .line 90
    .line 91
    iget v6, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->x:F

    .line 92
    .line 93
    iget v7, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->y:F

    .line 94
    .line 95
    iget v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z:F

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    move-object v4, p2

    .line 106
    invoke-direct/range {v4 .. v10}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 110
    .line 111
    const/4 v0, 0x0

    .line 112
    if-eqz p1, :cond_3

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAllowTrackingADClick()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    xor-int/2addr p1, v1

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    move p1, v0

    .line 121
    :goto_2
    const-string v1, "_click"

    .line 122
    .line 123
    const/4 v2, 0x0

    .line 124
    invoke-direct {p0, v1, v2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O(Ljava/lang/String;Landroid/content/Intent;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 132
    .line 133
    invoke-static {v1, v2, p2, v0, p1}, Lcom/cloud/hisavana/sdk/J0;->c(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;ZZ)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    return p1
.end method

.method private synthetic T0(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r(Landroid/view/View;Z)I

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private U(Landroid/view/View;ZZ)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->V(Landroid/view/View;ZZZ)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method static synthetic U0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->y:F

    .line 2
    .line 3
    return p0
.end method

.method private V(Landroid/view/View;ZZZ)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "I01"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_7

    .line 16
    .line 17
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O:I

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v0, v1, :cond_6

    .line 22
    .line 23
    iget-boolean p4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->N:Z

    .line 24
    .line 25
    if-nez p4, :cond_3

    .line 26
    .line 27
    if-eqz p3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 31
    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    sget-object p4, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    .line 35
    .line 36
    new-instance v7, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 37
    .line 38
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->w:F

    .line 39
    .line 40
    iget v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->x:F

    .line 41
    .line 42
    iget v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->y:F

    .line 43
    .line 44
    iget v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z:F

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    move-object v0, v7

    .line 55
    invoke-direct/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p4, p3, v7}, Lcom/cloud/hisavana/sdk/common/util/r;->n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q:Lg7/d;

    .line 62
    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    new-instance p1, Lg7/d;

    .line 66
    .line 67
    new-instance p3, Lcom/cloud/hisavana/sdk/common/activity/s;

    .line 68
    .line 69
    invoke-direct {p3, p0, p2}, Lcom/cloud/hisavana/sdk/common/activity/s;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, p0, p3}, Lg7/d;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q:Lg7/d;

    .line 76
    .line 77
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lg7/d;->m(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q:Lg7/d;

    .line 83
    .line 84
    invoke-virtual {p1}, Lg7/d;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    :catchall_0
    const/4 p1, -0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    :goto_0
    invoke-static {}, Lc7/b;->h()Z

    .line 90
    .line 91
    .line 92
    move-result p4

    .line 93
    if-eqz p4, :cond_4

    .line 94
    .line 95
    sget p4, Lcom/cloud/hisavana/sdk/R$string;->hs_download_in_palm_store:I

    .line 96
    .line 97
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p4

    .line 101
    invoke-static {p4}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->f(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->U:Z

    .line 105
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s(Landroid/view/View;ZZ)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S:Z

    .line 111
    .line 112
    if-eqz p2, :cond_5

    .line 113
    .line 114
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->V:Z

    .line 115
    .line 116
    if-eqz p2, :cond_8

    .line 117
    .line 118
    :cond_5
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L0()V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_6
    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->P:Z

    .line 123
    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->t(Landroid/view/View;ZZZ)I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    goto :goto_1

    .line 129
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r(Landroid/view/View;Z)I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    :cond_8
    :goto_1
    return p1
.end method

.method private V0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "TAdInterstitialActivity"

    .line 23
    .line 24
    const-string v2, "TAdInterstitialActivity --> null == mAdBean |"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S0()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->d0()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q1()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->w1()V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->P0()V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j0()V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->v0()V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->e1()V

    .line 56
    .line 57
    .line 58
    :try_start_0
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/manager/a;->s(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    :catchall_0
    return-void
.end method

.method static synthetic W(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;Z)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i0(Landroid/view/View;Z)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private synthetic W0(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r(Landroid/view/View;Z)I

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private X(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/view/ViewGroup;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    .line 29
    .line 30
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 31
    .line 32
    const/4 v2, -0x1

    .line 33
    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic X0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z:F

    .line 2
    .line 3
    return p0
.end method

.method private Y(Landroid/view/View;I)V
    .locals 11

    .line 1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->close_view:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v9, v0

    .line 8
    check-cast v9, Landroid/widget/TextView;

    .line 9
    .line 10
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->count_down_view:I

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v7, v0

    .line 17
    check-cast v7, Landroid/widget/TextView;

    .line 18
    .line 19
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->separator:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v10

    .line 25
    if-eqz v9, :cond_6

    .line 26
    .line 27
    if-eqz v7, :cond_6

    .line 28
    .line 29
    if-nez v10, :cond_0

    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_0
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J:Z

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    :try_start_0
    sget v0, Lcom/cloud/hisavana/sdk/R$string;->hs_btn_skip:I

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    const-string v0, "SKIP"

    .line 45
    .line 46
    :goto_0
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/r;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/activity/r;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    if-lez p2, :cond_5

    .line 59
    .line 60
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->H:I

    .line 61
    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    if-lez v1, :cond_3

    .line 66
    .line 67
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    :cond_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->G:Lg7/e;

    .line 72
    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    invoke-virtual {v1}, Lg7/e;->d()V

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$d;

    .line 82
    .line 83
    int-to-long v1, p2

    .line 84
    const-wide/16 v3, 0x3e8

    .line 85
    .line 86
    mul-long/2addr v3, v1

    .line 87
    const-wide/16 v5, 0x3e8

    .line 88
    .line 89
    move-object v1, v0

    .line 90
    move-object v2, p0

    .line 91
    move-object v8, p1

    .line 92
    invoke-direct/range {v1 .. v10}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$d;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;JJLandroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->G:Lg7/e;

    .line 96
    .line 97
    invoke-virtual {v0}, Lg7/e;->g()Lg7/e;

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_5
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    const-string v1, "TAdInterstitialActivity"

    .line 106
    .line 107
    const-string v2, "current close delay time is 0, do not count down."

    .line 108
    .line 109
    invoke-virtual {p2, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/4 p2, 0x1

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 114
    .line 115
    .line 116
    const-string p2, "#222222"

    .line 117
    .line 118
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 130
    .line 131
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    .line 136
    .line 137
    const/16 p2, 0x8

    .line 138
    .line 139
    invoke-virtual {v7, p2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v10, p2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 146
    .line 147
    .line 148
    :cond_6
    :goto_2
    return-void
.end method

.method private Y0()V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "I91602"

    const-string v3, "I16902"

    const-string v4, "I16901"

    const-string v6, "I1107"

    const-string v8, "I1106"

    const-string v10, "I1103"

    const-string v11, "I1102"

    const-string v12, "I1101"

    const-string v14, "FA14"

    const-string v15, "I01"

    const/16 v16, -0x1

    const-string v5, "I91601"

    .line 1
    :try_start_0
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {v0, v2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->n0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->content_layout:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 3
    new-instance v9, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;

    const/4 v7, 0x0

    invoke-direct {v9, v0, v7}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$b;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4
    new-instance v7, Lcom/cloud/hisavana/sdk/common/activity/z;

    invoke-direct {v7, v0}, Lcom/cloud/hisavana/sdk/common/activity/z;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    :cond_0
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->llRoot:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->h:Landroid/view/ViewGroup;

    .line 6
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v7, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->h:Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    .line 8
    new-instance v9, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$b;

    invoke-direct {v9, v0, v2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$b;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :catchall_0
    :cond_1
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->ivIcon:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g:Landroid/widget/ImageView;

    .line 10
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i:Landroid/widget/TextView;

    .line 11
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->tvDescription:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    .line 12
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->tvSourceSize:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 13
    sget v7, Lcom/cloud/hisavana/sdk/R$id;->tvBtn:I

    invoke-virtual {v0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    .line 14
    iget-object v7, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v7, :cond_2f

    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v7

    if-eqz v7, :cond_2f

    iget-object v7, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 15
    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2f

    iget-object v7, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 16
    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-boolean v7, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S:Z

    if-nez v7, :cond_2

    goto/16 :goto_d

    .line 17
    :cond_2
    sget-object v7, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    iget-object v9, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v7, v9}, Lcom/cloud/hisavana/sdk/common/util/r;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v9

    .line 18
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-object/from16 v17, v9

    const-string v9, " \u00b7 "

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :goto_0
    move/from16 v13, v16

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_0

    :cond_3
    const/16 v13, 0xa

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_0

    :cond_4
    const/16 v13, 0x9

    goto :goto_1

    :sswitch_2
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_0

    :cond_5
    const/16 v13, 0x8

    goto :goto_1

    :sswitch_3
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    goto :goto_0

    :cond_6
    const/4 v13, 0x7

    goto :goto_1

    :sswitch_4
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    goto :goto_0

    :cond_7
    const/4 v13, 0x6

    goto :goto_1

    :sswitch_5
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    goto :goto_0

    :cond_8
    const/4 v13, 0x5

    goto :goto_1

    :sswitch_6
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    goto :goto_0

    :cond_9
    const/4 v13, 0x4

    goto :goto_1

    :sswitch_7
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    goto :goto_0

    :cond_a
    const/4 v13, 0x3

    goto :goto_1

    :sswitch_8
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    goto :goto_0

    :cond_b
    const/4 v13, 0x2

    goto :goto_1

    :sswitch_9
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    goto :goto_0

    :cond_c
    const/4 v13, 0x1

    goto :goto_1

    :sswitch_a
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    goto :goto_0

    :cond_d
    const/4 v13, 0x0

    :goto_1
    packed-switch v13, :pswitch_data_0

    goto/16 :goto_2

    .line 19
    :pswitch_0
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    iget-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/high16 v3, 0x40000000    # 2.0f

    .line 22
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 23
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z1()V

    goto :goto_2

    .line 25
    :pswitch_1
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    iget-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/high16 v3, 0x40000000    # 2.0f

    .line 29
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 30
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z1()V

    :goto_2
    move-object/from16 v18, v14

    move-object/from16 v1, v17

    const/4 v6, 0x0

    const/4 v13, 0x3

    goto/16 :goto_a

    .line 32
    :pswitch_2
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i:Landroid/widget/TextView;

    move-object/from16 v18, v14

    iget-object v14, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v14

    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    iget-object v14, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v14

    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v13

    iget-object v14, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    move-result-object v13

    .line 35
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 36
    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/common/util/r;->i()Ljava/lang/String;

    move-result-object v13

    .line 37
    :cond_e
    iget-object v14, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    const/high16 v14, 0x40000000    # 2.0f

    .line 39
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    sget-object v14, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    if-eqz v13, :cond_10

    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 42
    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    :cond_f
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 43
    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScale()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_10

    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 44
    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScale()Ljava/lang/String;

    move-result-object v13

    const-string v14, "9:16"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 45
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    :cond_10
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 47
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    const/4 v13, 0x3

    goto/16 :goto_6

    .line 48
    :cond_12
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_3

    :cond_13
    move-object/from16 v3, v17

    const/4 v6, 0x0

    const/4 v13, 0x3

    goto/16 :goto_8

    .line 49
    :cond_14
    :goto_3
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->score_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 50
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 51
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 52
    iget-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    if-eqz v6, :cond_17

    .line 53
    invoke-virtual {v7, v6}, Lcom/cloud/hisavana/sdk/common/util/r;->f(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iput-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a0:Landroid/animation/ObjectAnimator;

    if-eqz v6, :cond_17

    .line 54
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_4

    .line 55
    :cond_15
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 56
    iget-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    if-eqz v6, :cond_17

    .line 57
    sget v6, Lcom/cloud/hisavana/sdk/R$id;->view_animator_bg_color:I

    invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 58
    iget v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_16

    .line 59
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    const-string v14, "#260052E2"

    invoke-virtual {v7, v13, v6, v14}, Lcom/cloud/hisavana/sdk/common/util/r;->o(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v6

    iput-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b0:Ljava/lang/Runnable;

    goto :goto_4

    .line 60
    :cond_16
    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    const-string v14, "#4DFFFFFF"

    invoke-virtual {v7, v13, v6, v14}, Lcom/cloud/hisavana/sdk/common/util/r;->o(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v6

    iput-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b0:Ljava/lang/Runnable;

    .line 61
    :cond_17
    :goto_4
    iget v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O:I

    const/4 v13, 0x3

    if-ne v6, v13, :cond_1b

    .line 62
    iget-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 63
    iget-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    sget v7, Lcom/cloud/hisavana/sdk/R$string;->hs_download_t01_btn_pull_live:I

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    if-eqz v3, :cond_19

    const/4 v6, 0x0

    .line 64
    :try_start_1
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    :cond_19
    iget-object v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    move-result-object v3

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v7}, Lcom/cloud/hisavana/sdk/w2;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)F

    move-result v7

    invoke-static {v7}, Lcom/cloud/hisavana/sdk/w2;->b(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1a
    :goto_5
    move-object/from16 v3, v17

    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_1b
    const/4 v14, 0x2

    if-ne v6, v14, :cond_1e

    if-eqz v3, :cond_1c

    const/16 v6, 0x8

    .line 67
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1c
    if-eqz v1, :cond_1d

    .line 68
    :try_start_2
    iget-object v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->getSourceSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/cloud/hisavana/sdk/common/util/r;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    iget-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    move-result-object v6

    .line 70
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 71
    :catchall_2
    :cond_1d
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 72
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    sget v3, Lcom/cloud/hisavana/sdk/R$string;->hs_download_t01_btn_pull_new:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 73
    :cond_1e
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 74
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    sget v3, Lcom/cloud/hisavana/sdk/R$string;->hs_download_t01_btn_pull_live:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 75
    :goto_6
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->desc_area_view:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 76
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_text:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_22

    .line 77
    iget-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v6}, Lcom/cloud/hisavana/sdk/w2;->n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 78
    iget-object v6, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x0

    .line 79
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/w2;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)F

    move-result v1

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/w2;->b(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_1a

    .line 81
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v17

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_1f
    move-object/from16 v3, v17

    move-object v1, v3

    .line 83
    :goto_7
    invoke-direct {v0, v2, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_9

    :cond_20
    move-object/from16 v3, v17

    const/16 v6, 0x8

    .line 84
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 88
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    :cond_21
    iget-object v7, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_22
    move-object/from16 v3, v17

    const/4 v6, 0x0

    if-eqz v2, :cond_23

    .line 90
    invoke-direct {v0, v2, v3}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_23
    :goto_8
    move-object v1, v3

    .line 91
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z1()V

    .line 92
    :goto_a
    iget-object v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    :goto_b
    move/from16 v5, v16

    goto :goto_c

    :sswitch_b
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_b

    :cond_24
    const/4 v5, 0x6

    goto :goto_c

    :sswitch_c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_b

    :cond_25
    const/4 v5, 0x5

    goto :goto_c

    :sswitch_d
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_b

    :cond_26
    const/4 v5, 0x4

    goto :goto_c

    :sswitch_e
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_b

    :cond_27
    move v5, v13

    goto :goto_c

    :sswitch_f
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_b

    :cond_28
    const/4 v5, 0x2

    goto :goto_c

    :sswitch_10
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_b

    :cond_29
    const/4 v5, 0x1

    goto :goto_c

    :sswitch_11
    move-object/from16 v4, v18

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_b

    :cond_2a
    move v5, v6

    :goto_c
    packed-switch v5, :pswitch_data_1

    goto/16 :goto_d

    .line 93
    :pswitch_3
    iget v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    if-eqz v2, :cond_2f

    .line 94
    invoke-direct {v0, v2, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_d

    .line 95
    :cond_2b
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    if-eqz v2, :cond_2f

    .line 96
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    :cond_2c
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 100
    :pswitch_4
    iget v3, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2e

    .line 101
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    if-eqz v2, :cond_2f

    .line 102
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    :cond_2d
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_2e
    if-eqz v2, :cond_2f

    .line 106
    invoke-direct {v0, v2, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_d

    :pswitch_5
    if-eqz v2, :cond_2f

    .line 107
    invoke-direct {v0, v2, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_2f
    :goto_d
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1180a -> :sswitch_a
        0x20cc1e -> :sswitch_9
        0x41bb7ea -> :sswitch_8
        0x41bb7eb -> :sswitch_7
        0x41bb7ec -> :sswitch_6
        0x41bb7ef -> :sswitch_5
        0x41bb7f0 -> :sswitch_4
        0x7f5dad0c -> :sswitch_3
        0x7f5dad0d -> :sswitch_2
        0x7fcc17f6 -> :sswitch_1
        0x7fcc17f7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x20cc1e -> :sswitch_11
        0x41bb7ea -> :sswitch_10
        0x41bb7eb -> :sswitch_f
        0x41bb7ec -> :sswitch_e
        0x41bb7ef -> :sswitch_d
        0x7f5dad0c -> :sswitch_c
        0x7fcc17f6 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic Z(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->B(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic Z0(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->c1(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->B:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDefaultMaterialType()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v0, v2}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    .line 28
    .line 29
    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->I:Z

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    const/16 v2, 0x8

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->setProgressBarVisibility(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->setAutoReset(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    .line 44
    .line 45
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;

    .line 46
    .line 47
    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/j4;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method static synthetic a1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/common/util/v;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i1(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b0(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "setMediaData "

    .line 6
    .line 7
    const-string v2, "TAdInterstitialActivity"

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->X(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move v1, v0

    .line 33
    :goto_0
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    if-ne v1, v4, :cond_2

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v3, "I91602"

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/w2;->g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v3, "9:16"

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 75
    .line 76
    invoke-static {v3}, Lcom/cloud/hisavana/sdk/w2;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 81
    .line 82
    invoke-static {v5}, Lcom/cloud/hisavana/sdk/w2;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-lez v3, :cond_1

    .line 87
    .line 88
    if-lez v5, :cond_1

    .line 89
    .line 90
    int-to-float v5, v5

    .line 91
    int-to-float v3, v3

    .line 92
    div-float/2addr v5, v3

    .line 93
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->g()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 98
    .line 99
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->g()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    int-to-float v3, v3

    .line 104
    mul-float/2addr v3, v5

    .line 105
    float-to-int v3, v3

    .line 106
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    const/4 v3, -0x1

    .line 110
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 111
    .line 112
    const/4 v3, -0x2

    .line 113
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    .line 115
    :goto_1
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    .line 116
    .line 117
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->v:Z

    .line 121
    .line 122
    if-eqz v1, :cond_3

    .line 123
    .line 124
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    .line 125
    .line 126
    if-eqz v1, :cond_3

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->getDuration()J

    .line 129
    .line 130
    .line 131
    move-result-wide v5

    .line 132
    invoke-virtual {v1, v5, v6}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->seekToPosition(J)V

    .line 133
    .line 134
    .line 135
    :cond_3
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->u:Z

    .line 136
    .line 137
    if-eqz v1, :cond_4

    .line 138
    .line 139
    return-void

    .line 140
    :cond_4
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    .line 141
    .line 142
    if-eqz v1, :cond_6

    .line 143
    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_6

    .line 149
    .line 150
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v5, "setMediaData filePath "

    .line 160
    .line 161
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string v1, "http"

    .line 175
    .line 176
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    .line 181
    .line 182
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 183
    .line 184
    iget v5, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s:F

    .line 185
    .line 186
    const/4 v6, 0x0

    .line 187
    cmpl-float v5, v5, v6

    .line 188
    .line 189
    if-nez v5, :cond_5

    .line 190
    .line 191
    move v0, v4

    .line 192
    :cond_5
    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->setMediaData(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZZ)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    const-string v0, "I01"

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-nez p1, :cond_6

    .line 208
    .line 209
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    .line 210
    .line 211
    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;

    .line 212
    .line 213
    const/4 v1, 0x0

    .line 214
    invoke-direct {v0, p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$b;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    .line 221
    .line 222
    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/w;

    .line 223
    .line 224
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/activity/w;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    :cond_6
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    .line 231
    .line 232
    if-eqz p1, :cond_7

    .line 233
    .line 234
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 235
    .line 236
    if-eqz p1, :cond_7

    .line 237
    .line 238
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    if-eqz p1, :cond_7

    .line 243
    .line 244
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 245
    .line 246
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVideoMask()Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    if-eqz p1, :cond_7

    .line 255
    .line 256
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    .line 257
    .line 258
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVideoMask()Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VideoMask;->getResource()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->setCompanionSize(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :cond_7
    return-void
.end method

.method private b1()V
    .locals 5

    .line 1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ivCancel:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getDuration()Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getDuration()Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-lez v1, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCloseDelayTime()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getDuration()Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCloseDelayTime()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCloseDelayTime()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v4, "current close delay time is: "

    .line 105
    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const-string v4, "TAdInterstitialActivity"

    .line 117
    .line 118
    invoke-virtual {v2, v4, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    if-eqz v2, :cond_4

    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    const-string v3, "close_button"

    .line 132
    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_4

    .line 138
    .line 139
    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Y(Landroid/view/View;I)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->E(Landroid/view/View;I)V

    .line 144
    .line 145
    .line 146
    :goto_1
    return-void
.end method

.method public static synthetic c(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Z0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/cloud/hisavana/sdk/common/util/v;

    .line 6
    .line 7
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$a;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$a;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Lcom/cloud/hisavana/sdk/common/util/v;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/util/v$a;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/util/v;->k(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/util/v;->h(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 26
    .line 27
    invoke-virtual {p1, p3}, Lcom/cloud/hisavana/sdk/common/util/v;->g(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 31
    .line 32
    const/4 p2, 0x1

    .line 33
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/util/v;->j(Z)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    new-instance p3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v0, "showRuDialog error: "

    .line 53
    .line 54
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string p3, "TAdInterstitialActivity"

    .line 69
    .line 70
    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method private synthetic c1(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->D:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$l;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1, v2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic d(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d0()Z
    .locals 12

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "I01"

    .line 4
    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x4

    .line 7
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 8
    .line 9
    invoke-direct {p0, v5}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->K0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    iput v5, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    .line 14
    .line 15
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 16
    .line 17
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/4 v6, 0x7

    .line 26
    const/4 v7, 0x6

    .line 27
    const/4 v8, 0x1

    .line 28
    const/4 v9, 0x2

    .line 29
    if-eqz v5, :cond_16

    .line 30
    .line 31
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 32
    .line 33
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    const/4 v10, -0x1

    .line 41
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    sparse-switch v11, :sswitch_data_0

    .line 46
    .line 47
    .line 48
    :goto_0
    move v0, v10

    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :sswitch_0
    const-string v0, "I91602"

    .line 52
    .line 53
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/16 v0, 0xa

    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :sswitch_1
    const-string v0, "I91601"

    .line 65
    .line 66
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/16 v0, 0x9

    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :sswitch_2
    const-string v0, "I16902"

    .line 78
    .line 79
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const/16 v0, 0x8

    .line 87
    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :sswitch_3
    const-string v0, "I16901"

    .line 91
    .line 92
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    move v0, v6

    .line 100
    goto :goto_1

    .line 101
    :sswitch_4
    const-string v0, "I1107"

    .line 102
    .line 103
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_4

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    move v0, v7

    .line 111
    goto :goto_1

    .line 112
    :sswitch_5
    const-string v2, "I1106"

    .line 113
    .line 114
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_a

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :sswitch_6
    const-string v0, "I1103"

    .line 122
    .line 123
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_5

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_5
    move v0, v4

    .line 131
    goto :goto_1

    .line 132
    :sswitch_7
    const-string v0, "I1102"

    .line 133
    .line 134
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_6

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_6
    move v0, v3

    .line 142
    goto :goto_1

    .line 143
    :sswitch_8
    const-string v0, "I1101"

    .line 144
    .line 145
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_7

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_7
    move v0, v9

    .line 153
    goto :goto_1

    .line 154
    :sswitch_9
    const-string v0, "FA14"

    .line 155
    .line 156
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_8

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_8
    move v0, v8

    .line 164
    goto :goto_1

    .line 165
    :sswitch_a
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-nez v0, :cond_9

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_9
    move v0, v1

    .line 173
    :cond_a
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 174
    .line 175
    .line 176
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_AD_MATERIAL_STYLE_NOT_MATCH:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-direct {p0, v1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C(ILjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 190
    .line 191
    .line 192
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    const-string v2, "TAdTemplateActivity --> \u6ca1\u6709\u5339\u914d\u5230 materialStyle --> \u914d\u7f6e\u9519\u8bef materialStyle="

    .line 202
    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 207
    .line 208
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    const-string v2, "TAdInterstitialActivity"

    .line 220
    .line 221
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    return v8

    .line 225
    :pswitch_0
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_91602_layout:I

    .line 226
    .line 227
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 228
    .line 229
    .line 230
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    .line 231
    .line 232
    if-ne v0, v9, :cond_b

    .line 233
    .line 234
    iput v7, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 235
    .line 236
    goto/16 :goto_4

    .line 237
    .line 238
    :cond_b
    iput v6, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 239
    .line 240
    goto/16 :goto_4

    .line 241
    .line 242
    :pswitch_1
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_91601_layout:I

    .line 243
    .line 244
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 245
    .line 246
    .line 247
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    .line 248
    .line 249
    if-ne v0, v9, :cond_c

    .line 250
    .line 251
    iput v7, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 252
    .line 253
    goto/16 :goto_4

    .line 254
    .line 255
    :cond_c
    iput v6, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 256
    .line 257
    goto/16 :goto_4

    .line 258
    .line 259
    :pswitch_2
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_16902_layout:I

    .line 260
    .line 261
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 262
    .line 263
    .line 264
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    .line 265
    .line 266
    if-ne v0, v9, :cond_d

    .line 267
    .line 268
    iput v7, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 269
    .line 270
    goto/16 :goto_4

    .line 271
    .line 272
    :cond_d
    iput v6, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 273
    .line 274
    goto/16 :goto_4

    .line 275
    .line 276
    :pswitch_3
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_16901_layout:I

    .line 277
    .line 278
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 279
    .line 280
    .line 281
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    .line 282
    .line 283
    if-ne v0, v9, :cond_e

    .line 284
    .line 285
    iput v7, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 286
    .line 287
    goto/16 :goto_4

    .line 288
    .line 289
    :cond_e
    iput v6, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 290
    .line 291
    goto/16 :goto_4

    .line 292
    .line 293
    :pswitch_4
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_1107_layout:I

    .line 294
    .line 295
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 296
    .line 297
    .line 298
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    .line 299
    .line 300
    if-ne v0, v9, :cond_f

    .line 301
    .line 302
    iput v9, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 303
    .line 304
    goto :goto_2

    .line 305
    :cond_f
    iput v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 306
    .line 307
    :goto_2
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    .line 308
    .line 309
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 310
    .line 311
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/util/r;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O:I

    .line 316
    .line 317
    goto/16 :goto_4

    .line 318
    .line 319
    :pswitch_5
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_1106_layout:I

    .line 320
    .line 321
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 322
    .line 323
    .line 324
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    .line 325
    .line 326
    if-ne v0, v9, :cond_10

    .line 327
    .line 328
    iput v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 329
    .line 330
    goto/16 :goto_4

    .line 331
    .line 332
    :cond_10
    iput v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 333
    .line 334
    goto/16 :goto_4

    .line 335
    .line 336
    :pswitch_6
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_1103_layout:I

    .line 337
    .line 338
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 339
    .line 340
    .line 341
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    .line 342
    .line 343
    if-ne v0, v9, :cond_11

    .line 344
    .line 345
    iput v9, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 346
    .line 347
    goto/16 :goto_4

    .line 348
    .line 349
    :cond_11
    iput v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 350
    .line 351
    goto/16 :goto_4

    .line 352
    .line 353
    :pswitch_7
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_1102_layout:I

    .line 354
    .line 355
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 356
    .line 357
    .line 358
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    .line 359
    .line 360
    if-ne v0, v9, :cond_12

    .line 361
    .line 362
    iput v9, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 363
    .line 364
    goto/16 :goto_4

    .line 365
    .line 366
    :cond_12
    iput v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 367
    .line 368
    goto/16 :goto_4

    .line 369
    .line 370
    :pswitch_8
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_1101_layout:I

    .line 371
    .line 372
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 373
    .line 374
    .line 375
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    .line 376
    .line 377
    if-ne v0, v9, :cond_13

    .line 378
    .line 379
    iput v9, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 380
    .line 381
    goto/16 :goto_4

    .line 382
    .line 383
    :cond_13
    iput v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 384
    .line 385
    goto/16 :goto_4

    .line 386
    .line 387
    :pswitch_9
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_1104_1105_layout:I

    .line 388
    .line 389
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 390
    .line 391
    .line 392
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    .line 393
    .line 394
    if-ne v0, v9, :cond_14

    .line 395
    .line 396
    iput v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 397
    .line 398
    goto :goto_4

    .line 399
    :cond_14
    iput v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 400
    .line 401
    goto :goto_4

    .line 402
    :pswitch_a
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_01_layout:I

    .line 403
    .line 404
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 405
    .line 406
    .line 407
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    .line 408
    .line 409
    if-ne v0, v9, :cond_15

    .line 410
    .line 411
    iput v7, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 412
    .line 413
    goto :goto_3

    .line 414
    :cond_15
    iput v6, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 415
    .line 416
    :goto_3
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    .line 417
    .line 418
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 419
    .line 420
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/util/r;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->N:Z

    .line 425
    .line 426
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 427
    .line 428
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/util/r;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O:I

    .line 433
    .line 434
    goto :goto_4

    .line 435
    :cond_16
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 436
    .line 437
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    if-eqz v2, :cond_18

    .line 446
    .line 447
    iput-boolean v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S:Z

    .line 448
    .line 449
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    .line 450
    .line 451
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 452
    .line 453
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/util/r;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 454
    .line 455
    .line 456
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 457
    .line 458
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/util/r;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->N:Z

    .line 463
    .line 464
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 465
    .line 466
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/util/r;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O:I

    .line 471
    .line 472
    sget v0, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_01_layout:I

    .line 473
    .line 474
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 475
    .line 476
    .line 477
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    .line 478
    .line 479
    if-ne v0, v9, :cond_17

    .line 480
    .line 481
    iput v7, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 482
    .line 483
    goto :goto_4

    .line 484
    :cond_17
    iput v6, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 485
    .line 486
    goto :goto_4

    .line 487
    :cond_18
    sget v2, Lcom/cloud/hisavana/sdk/R$layout;->activity_t_ad_interstitial_adm_layout:I

    .line 488
    .line 489
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 490
    .line 491
    .line 492
    iget v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    .line 493
    .line 494
    if-ne v2, v9, :cond_19

    .line 495
    .line 496
    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 497
    .line 498
    goto :goto_4

    .line 499
    :cond_19
    iput v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M:I

    .line 500
    .line 501
    :goto_4
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->A()V

    .line 502
    .line 503
    .line 504
    return v1

    .line 505
    :sswitch_data_0
    .sparse-switch
        0x1180a -> :sswitch_a
        0x20cc1e -> :sswitch_9
        0x41bb7ea -> :sswitch_8
        0x41bb7eb -> :sswitch_7
        0x41bb7ec -> :sswitch_6
        0x41bb7ef -> :sswitch_5
        0x41bb7f0 -> :sswitch_4
        0x7f5dad0c -> :sswitch_3
        0x7f5dad0d -> :sswitch_2
        0x7fcc17f6 -> :sswitch_1
        0x7fcc17f7 -> :sswitch_0
    .end sparse-switch

    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
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
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->U:Z

    .line 2
    .line 3
    return p0
.end method

.method private e1()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "I01"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->content_layout:I

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/view/ViewGroup;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {v1, p0, v2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$b;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :catchall_0
    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->V:Z

    .line 2
    .line 3
    return p1
.end method

.method private synthetic f1(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i0(Landroid/view/View;Z)I

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static synthetic g(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->T0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->w:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic g1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->v1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private h0(Landroid/view/View;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->T(Landroid/view/View;Z)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method private h1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :try_start_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "create webview error: "

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v2, "TAdInterstitialActivity"

    .line 53
    .line 54
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 59
    .line 60
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    .line 61
    .line 62
    if-eqz v0, :cond_7

    .line 63
    .line 64
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 65
    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_2
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->j1()V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_6

    .line 84
    .line 85
    const-string v1, "I1107"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_3

    .line 92
    .line 93
    const-string v1, "I91601"

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_3

    .line 100
    .line 101
    const-string v1, "I91602"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_3

    .line 108
    .line 109
    const-string v1, "I16902"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_3

    .line 116
    .line 117
    const-string v1, "I01"

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_3

    .line 124
    .line 125
    const-string v1, "I16901"

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_6

    .line 132
    .line 133
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    .line 134
    .line 135
    const/4 v1, 0x2

    .line 136
    if-ne v0, v1, :cond_6

    .line 137
    .line 138
    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScale()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_5

    .line 149
    .line 150
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    if-eqz v0, :cond_4

    .line 157
    .line 158
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_4

    .line 169
    .line 170
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    const/4 v1, 0x0

    .line 177
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_4
    const-string v0, ""

    .line 185
    .line 186
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    .line 187
    .line 188
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 193
    .line 194
    if-eqz v2, :cond_6

    .line 195
    .line 196
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 197
    .line 198
    iput-object v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    .line 199
    .line 200
    :cond_6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 201
    .line 202
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->X(Landroid/view/View;)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L0()V

    .line 207
    .line 208
    .line 209
    return-void
.end method

.method public static synthetic i(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->w0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private i0(Landroid/view/View;Z)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->V(Landroid/view/View;ZZZ)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method private synthetic i1(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->T:Z

    .line 7
    .line 8
    sget-object p1, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/util/r;->r(Landroid/webkit/WebView;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->U(Landroid/view/View;ZZ)I

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public static synthetic j(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->f1(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private j0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 10
    .line 11
    if-ne v0, v1, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 28
    .line 29
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/p;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/p;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;->setListener(Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView$b;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget v1, Lcom/cloud/hisavana/sdk/R$dimen;->ad_disclaimer_height:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 48
    .line 49
    const/4 v2, -0x1

    .line 50
    invoke-direct {v1, v2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 60
    .line 61
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 68
    .line 69
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 76
    .line 77
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Landroid/view/ViewGroup;

    .line 92
    .line 93
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    .line 99
    .line 100
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 101
    .line 102
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    .line 106
    .line 107
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/q;

    .line 108
    .line 109
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/q;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->v0()V

    .line 116
    .line 117
    .line 118
    :cond_3
    :goto_0
    return-void
.end method

.method private j1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setWebClientCallback(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 9
    .line 10
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$b;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 20
    .line 21
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$k;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$k;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setInteractiveListener(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static synthetic k(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private k0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private k1(Landroid/view/View;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public static synthetic l(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->I0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic l0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->V:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->H0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->W0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->u:Z

    .line 2
    .line 3
    return p1
.end method

.method private m1()V
    .locals 3

    .line 1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_choices_view:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/v;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/v;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_badge_view:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->d:Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/util/e0;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_close_view:I

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->e:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    sget-object v2, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;->EXPAND:Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/cloud/hisavana/sdk/s2;->p()Lcom/cloud/hisavana/sdk/s2;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->e:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 78
    .line 79
    invoke-virtual {v0, p0, v1, p0, v2}, Lcom/cloud/hisavana/sdk/s2;->f(Landroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/h0;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ps_mark_view:I

    .line 89
    .line 90
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 95
    .line 96
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 97
    .line 98
    if-eqz v1, :cond_5

    .line 99
    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    const/4 v0, 0x0

    .line 103
    goto :goto_0

    .line 104
    :cond_3
    const/4 v0, 0x4

    .line 105
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 109
    .line 110
    const/high16 v1, 0x40c00000    # 6.0f

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextSize(F)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const-string v2, "I1107"

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->R:I

    .line 130
    .line 131
    const/4 v2, 0x2

    .line 132
    if-eq v0, v2, :cond_4

    .line 133
    .line 134
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 135
    .line 136
    const-string v1, "#FFFFFFFF"

    .line 137
    .line 138
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextColor(I)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 146
    .line 147
    const/high16 v1, 0x41000000    # 8.0f

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextSize(F)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 154
    .line 155
    const v2, -0x878788

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextColor(I)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextSize(F)V

    .line 164
    .line 165
    .line 166
    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 167
    .line 168
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->attachInfo(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .line 172
    .line 173
    :catchall_0
    :cond_5
    return-void
.end method

.method public static synthetic n(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private n0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "I91601"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "I16901"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "I91602"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "I16902"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v1, "I01"

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    return v0

    .line 73
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 74
    return p1

    .line 75
    :cond_3
    :goto_1
    return v0
.end method

.method static synthetic n1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->x1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z(Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic o0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->x:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic o1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->H:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic p(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic p0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method private p1()V
    .locals 11

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->ad_interstitial_end_card_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S(Landroid/view/View;)[I

    move-result-object v1

    .line 3
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->close_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$e;

    invoke-direct {v4, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$e;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g:Landroid/widget/ImageView;

    const/4 v4, 0x1

    const/high16 v5, 0x40800000    # 4.0f

    const/16 v6, 0x8

    const/4 v7, -0x1

    if-eqz v3, :cond_0

    .line 5
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->ffIcon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 6
    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g:Landroid/widget/ImageView;

    invoke-direct {p0, v8}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k1(Landroid/view/View;)V

    .line 7
    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g:Landroid/widget/ImageView;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 8
    :cond_0
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v3

    const/4 v8, 0x4

    if-ne v3, v8, :cond_1

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    new-instance v3, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-direct {v3, p0}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;-><init>(Landroid/content/Context;)V

    .line 10
    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v8, v9, v2, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 11
    invoke-static {v5}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setRadius(F)V

    .line 12
    sget v8, Lcom/cloud/hisavana/sdk/R$id;->ffIcon:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 13
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 15
    new-instance v8, Lcom/cloud/hisavana/sdk/common/activity/b0;

    invoke-direct {v8, p0}, Lcom/cloud/hisavana/sdk/common/activity/b0;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 17
    new-instance v3, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-direct {v3, p0}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;-><init>(Landroid/content/Context;)V

    .line 18
    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v8, v9, v4, v2, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 19
    invoke-static {v5}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setRadius(F)V

    .line 20
    sget v8, Lcom/cloud/hisavana/sdk/R$id;->ffIcon:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 21
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 23
    new-instance v8, Lcom/cloud/hisavana/sdk/common/activity/c0;

    invoke-direct {v8, p0}, Lcom/cloud/hisavana/sdk/common/activity/c0;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 24
    :cond_2
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->ffIcon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 26
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 27
    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 28
    :cond_4
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 29
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 30
    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 31
    :cond_5
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 32
    :goto_1
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 33
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->btn:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 34
    iget-object v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v8

    iget-object v9, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v9}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    new-instance v8, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$f;

    invoke-direct {v8, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$f;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 36
    :cond_6
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->ff_btn:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 37
    :goto_2
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->ff_ps_mark_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 38
    sget v8, Lcom/cloud/hisavana/sdk/R$id;->ps_mark_view:I

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 39
    invoke-direct {p0, v8}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k1(Landroid/view/View;)V

    .line 40
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/w2;->n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v3

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v3, :cond_12

    .line 42
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/w2;->m(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 43
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 44
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v5}, Lcom/cloud/hisavana/sdk/w2;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)F

    move-result v5

    invoke-static {v5}, Lcom/cloud/hisavana/sdk/w2;->b(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->download_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 46
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v5}, Lcom/cloud/hisavana/sdk/w2;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/cloud/hisavana/sdk/common/util/c0;->b(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iput v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L:I

    goto/16 :goto_4

    .line 48
    :cond_7
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->desc_area_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 49
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 50
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_area_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 51
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/w2;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    const/high16 v10, 0x3f000000    # 0.5f

    if-lez v6, :cond_8

    cmpg-float v6, v3, v10

    if-gez v6, :cond_8

    .line 53
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon1:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon2:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon3:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon4:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_8
    cmpl-float v6, v3, v10

    const/high16 v10, 0x3f800000    # 1.0f

    if-ltz v6, :cond_9

    cmpg-float v6, v3, v10

    if-gez v6, :cond_9

    .line 58
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon1:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_halfstar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon2:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon3:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon4:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_9
    cmpl-float v6, v3, v10

    const/high16 v10, 0x3fc00000    # 1.5f

    if-ltz v6, :cond_a

    cmpg-float v6, v3, v10

    if-gez v6, :cond_a

    .line 63
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon2:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon3:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon4:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_a
    cmpl-float v6, v3, v10

    const/high16 v10, 0x40000000    # 2.0f

    if-ltz v6, :cond_b

    cmpg-float v6, v3, v10

    if-gez v6, :cond_b

    .line 67
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon2:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_halfstar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon3:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon4:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_b
    cmpl-float v6, v3, v10

    const/high16 v10, 0x40200000    # 2.5f

    if-ltz v6, :cond_c

    cmpg-float v6, v3, v10

    if-gez v6, :cond_c

    .line 71
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon3:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon4:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_c
    cmpl-float v6, v3, v10

    const/high16 v10, 0x40400000    # 3.0f

    if-ltz v6, :cond_d

    cmpg-float v6, v3, v10

    if-gez v6, :cond_d

    .line 74
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon3:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_halfstar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon4:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_d
    cmpl-float v6, v3, v10

    const/high16 v10, 0x40600000    # 3.5f

    if-ltz v6, :cond_e

    cmpg-float v6, v3, v10

    if-gez v6, :cond_e

    .line 77
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon4:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_e
    cmpl-float v6, v3, v10

    if-ltz v6, :cond_f

    cmpg-float v6, v3, v5

    if-gez v6, :cond_f

    .line 79
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon4:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_halfstar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_f
    cmpl-float v5, v3, v5

    const/high16 v6, 0x40900000    # 4.5f

    if-ltz v5, :cond_10

    cmpg-float v5, v3, v6

    if-gez v5, :cond_10

    .line 81
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_nostar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_10
    cmpl-float v5, v3, v6

    if-ltz v5, :cond_11

    const/high16 v5, 0x40a00000    # 5.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_11

    .line 82
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->score_icon5:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_halfstar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    :cond_11
    :goto_3
    iput v8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L:I

    goto :goto_4

    .line 84
    :cond_12
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->desc_area_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 85
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x3

    .line 86
    iput v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L:I

    .line 87
    :goto_4
    new-instance v3, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;

    invoke-direct {v3, p0, v2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$m;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$b;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    new-instance v2, Lcom/cloud/hisavana/sdk/common/activity/o;

    invoke-direct {v2}, Lcom/cloud/hisavana/sdk/common/activity/o;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0, v2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->n0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 90
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_6

    .line 91
    :cond_13
    sget v2, Lcom/cloud/hisavana/sdk/R$id;->content_layout:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 92
    instance-of v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v3, :cond_15

    if-eqz v1, :cond_14

    .line 93
    array-length v3, v1

    if-ne v3, v8, :cond_14

    .line 94
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    aget v5, v1, v9

    aget v1, v1, v4

    invoke-direct {v3, v5, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    goto :goto_5

    .line 95
    :cond_14
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v3, v7, v7}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 96
    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 97
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 98
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 99
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 100
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 101
    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 102
    :cond_15
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 103
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    :goto_6
    iput-boolean v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->K:Z

    .line 105
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L:I

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setEndCardType(I)V

    return-void
.end method

.method static synthetic q(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s:F

    .line 2
    .line 3
    return p1
.end method

.method private q0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    const-string v1, "TAdInterstitialActivity"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "attachAdmView adBean is null"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S0()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScale()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/String;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const-string v0, ""

    .line 65
    .line 66
    :cond_2
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v2, "attachAdmView scale is empty,finish"

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S0()V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    instance-of v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 92
    .line 93
    if-eqz v3, :cond_4

    .line 94
    .line 95
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 96
    .line 97
    iput-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    .line 98
    .line 99
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v2, "<script>   window.addEventListener(\n          \"error\",\n          function (e) {\n            var target = e.srcElement;\n            var tagName = target.tagName || \"\";\n            if (tagName && tagName.toUpperCase() === \"IMG\" && target) {\n              const isShow = window.getComputedStyle(target).display != \"none\";\n              const isShow1 = window.getComputedStyle(target).visibility != \"hidden\";\n              const { width, height } = target.getBoundingClientRect();\n              const hasWidth = typeof width == \"number\" && width > 1;\n              const hasHeight = typeof height == \"number\" && height > 1;\n              if (hasWidth && hasHeight && isShow && isShow1) {\n                 window.loadError&&window.loadError.loadMaterialError&&window.loadError.loadMaterialError(target.src);\n              }\n            }\n          },\n          true\n        );\n        </script>"

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 123
    .line 124
    if-nez v2, :cond_5

    .line 125
    .line 126
    :try_start_0
    new-instance v2, Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-direct {v2, v3}, Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;-><init>(Landroid/content/Context;)V

    .line 133
    .line 134
    .line 135
    iput-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v4, "create webview error: "

    .line 149
    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 169
    .line 170
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S0()V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_5
    :goto_1
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->N(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 178
    .line 179
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->X(Landroid/view/View;)V

    .line 180
    .line 181
    .line 182
    return-void
.end method

.method private q1()V
    .locals 1

    .line 1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->main_layout:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    .line 10
    .line 11
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->iv_main_image:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Y0()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->M(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b1()V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m1()V

    .line 33
    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->K:Z

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p1()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method private r(Landroid/view/View;Z)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s(Landroid/view/View;ZZ)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method private static synthetic r0(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method static synthetic r1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->I:Z

    .line 2
    .line 3
    return p0
.end method

.method private s(Landroid/view/View;ZZ)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->t(Landroid/view/View;ZZZ)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method private s0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$g;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$g;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 14
    .line 15
    invoke-static {v0, p1, v1, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "use image to show ad is:= "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "TAdInterstitialActivity"

    .line 46
    .line 47
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method static synthetic s1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    return-object p0
.end method

.method private t(Landroid/view/View;ZZZ)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "TAdInterstitialActivity"

    .line 7
    .line 8
    const-string v3, "asyncAction"

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->A:J

    .line 18
    .line 19
    sub-long v3, v1, v3

    .line 20
    .line 21
    const-wide/16 v5, 0x3e8

    .line 22
    .line 23
    cmp-long v3, v3, v5

    .line 24
    .line 25
    if-gtz v3, :cond_0

    .line 26
    .line 27
    if-eqz p4, :cond_4

    .line 28
    .line 29
    :cond_0
    if-eqz p2, :cond_2

    .line 30
    .line 31
    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J:Z

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->K:Z

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p1()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string p1, "_close"

    .line 46
    .line 47
    const/4 p2, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O(Ljava/lang/String;Landroid/content/Intent;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S0()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->T(Landroid/view/View;Z)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    :cond_3
    :goto_0
    iput-wide v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->A:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p2, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_2
    return v0
.end method

.method static synthetic t0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->v:Z

    .line 2
    .line 3
    return p1
.end method

.method private t1()V
    .locals 2

    .line 1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->im_volume:I

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
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->n:Landroid/widget/ImageView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s:F

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->B(F)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->H:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic u0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->y:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic u1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lg7/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->G:Lg7/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->h0(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private v0()V
    .locals 1

    .line 1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_flag:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private synthetic v1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/util/e0;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 16
    .line 17
    invoke-static {v3}, Lcom/cloud/hisavana/sdk/common/util/e0;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method static synthetic w(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;Z)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r(Landroid/view/View;Z)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private synthetic w0(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r(Landroid/view/View;Z)I

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private w1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L0()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
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
    if-eqz v0, :cond_5

    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 28
    .line 29
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->D0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 42
    .line 43
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x4

    .line 54
    if-ne v0, v1, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDefaultMaterialType()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v1, 0x1

    .line 63
    if-ne v0, v1, :cond_3

    .line 64
    .line 65
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 66
    .line 67
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 72
    .line 73
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->J0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 78
    .line 79
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->x0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q0()V

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->y1()V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method static synthetic x(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;ZZ)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->U(Landroid/view/View;ZZ)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private x0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$i;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$i;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-static {v0, p1, v3, v1, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "use image to show ad is:= "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "TAdInterstitialActivity"

    .line 47
    .line 48
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private x1()V
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->c0:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/cloud/hisavana/sdk/v2;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 19
    .line 20
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->e:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 24
    .line 25
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 29
    .line 30
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 34
    .line 35
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->d:Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    .line 39
    .line 40
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/F;->v()Lcom/cloud/hisavana/sdk/F0;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->h:Landroid/view/ViewGroup;

    .line 50
    .line 51
    invoke-static {v0, v2, v3, v1}, Lcom/cloud/hisavana/sdk/z;->a(Lcom/cloud/hisavana/sdk/F0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method static synthetic y(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;ZZZ)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->V(Landroid/view/View;ZZZ)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic y0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->u:Z

    .line 2
    .line 3
    return p0
.end method

.method private y1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->t:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/y;

    .line 30
    .line 31
    invoke-direct {v1, p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/y;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method private synthetic z(Z)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-static {}, Lc7/b;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/cloud/hisavana/sdk/R$string;->hs_download_in_palm_store:I

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAdClickTracking(Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->U:Z

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {p0, v1, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s(Landroid/view/View;ZZ)I

    .line 36
    .line 37
    .line 38
    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S:Z

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->V:Z

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L0()V

    .line 47
    .line 48
    .line 49
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 50
    .line 51
    return-object p1
.end method

.method static synthetic z0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->T:Z

    .line 2
    .line 3
    return p1
.end method

.method private z1()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/t;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/t;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public L0()V
    .locals 2

    .line 1
    const-string v0, "_close"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O(Ljava/lang/String;Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->S0()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "TAdInterstitialActivity"

    .line 6
    .line 7
    const-string v2, "sendBroadcast(TAG_CLOSE);"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-string v0, "_close"

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O(Ljava/lang/String;Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->W:I

    .line 6
    .line 7
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->X:I

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->V0()V

    .line 10
    .line 11
    .line 12
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
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lc7/b;->j()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v2, "mAdBean"

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->K0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :catch_0
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->h()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/e;->g(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INIT_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const/16 v0, 0x1782

    .line 70
    .line 71
    invoke-direct {p0, v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C(ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    invoke-static {}, Lc7/b;->n()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 87
    .line 88
    :goto_1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s:F

    .line 89
    .line 90
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->A1()V

    .line 91
    .line 92
    .line 93
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C:Z

    .line 94
    .line 95
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const-string v0, "_close"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O(Ljava/lang/String;Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "_destroy"

    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O(Ljava/lang/String;Landroid/content/Intent;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->g(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g:Landroid/widget/ImageView;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->h:Landroid/view/ViewGroup;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->h:Landroid/view/ViewGroup;

    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m:Landroid/view/ViewGroup;

    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;->destroy()V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 65
    .line 66
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->E:Lcom/cloud/hisavana/sdk/q;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q;->c()V

    .line 71
    .line 72
    .line 73
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->E:Lcom/cloud/hisavana/sdk/q;

    .line 74
    .line 75
    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->destroy()V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 83
    .line 84
    :cond_4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    .line 85
    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->release()V

    .line 89
    .line 90
    .line 91
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    .line 92
    .line 93
    :cond_5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 94
    .line 95
    if-eqz v0, :cond_6

    .line 96
    .line 97
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 98
    .line 99
    :cond_6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 100
    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 104
    .line 105
    .line 106
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->F:Lcom/cloud/hisavana/sdk/common/util/v;

    .line 107
    .line 108
    :cond_7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->G:Lg7/e;

    .line 109
    .line 110
    if-eqz v0, :cond_8

    .line 111
    .line 112
    invoke-virtual {v0}, Lg7/e;->d()V

    .line 113
    .line 114
    .line 115
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->G:Lg7/e;

    .line 116
    .line 117
    :cond_8
    sput-object v1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->c0:Ljava/lang/ref/WeakReference;

    .line 118
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q:Lg7/d;

    .line 120
    .line 121
    if-eqz v0, :cond_a

    .line 122
    .line 123
    invoke-virtual {v0}, Lg7/d;->l()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_9

    .line 128
    .line 129
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q:Lg7/d;

    .line 130
    .line 131
    invoke-virtual {v0}, Lg7/d;->dismiss()V

    .line 132
    .line 133
    .line 134
    :cond_9
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q:Lg7/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .line 136
    :catchall_0
    :cond_a
    :try_start_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a0:Landroid/animation/ObjectAnimator;

    .line 137
    .line 138
    if-eqz v0, :cond_b

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 141
    .line 142
    .line 143
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a0:Landroid/animation/ObjectAnimator;

    .line 144
    .line 145
    :cond_b
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->b0:Ljava/lang/Runnable;

    .line 146
    .line 147
    if-eqz v0, :cond_c

    .line 148
    .line 149
    sget-object v1, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    .line 150
    .line 151
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->k:Landroid/widget/TextView;

    .line 152
    .line 153
    invoke-virtual {v1, v2, v0}, Lcom/cloud/hisavana/sdk/common/util/r;->m(Landroid/view/View;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    .line 155
    .line 156
    :catch_0
    :cond_c
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "TAdInterstitialActivity"

    .line 9
    .line 10
    const-string v2, "onNewIntent ----------------------->"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->C:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->A1()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q:Lg7/d;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lg7/d;->l()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q:Lg7/d;

    .line 15
    .line 16
    invoke-virtual {v0}, Lg7/d;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "onPause dismiss bubble dialog failed: "

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v2, "TAdInterstitialActivity"

    .line 47
    .line 48
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1d

    .line 7
    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->A()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O:I

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->P:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->P:Z

    .line 24
    .line 25
    invoke-static {}, Lc7/b;->h()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget v0, Lcom/cloud/hisavana/sdk/R$string;->hs_interstitial_breadk_ended:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->f(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    :catchall_0
    :cond_2
    return-void
.end method
