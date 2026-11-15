.class Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;
.super Lg7/e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->E(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Landroid/widget/ProgressBar;

.field final synthetic g:Landroid/widget/TextView;

.field final synthetic h:Landroid/view/View;

.field final synthetic i:Landroid/view/View;

.field final synthetic j:Landroid/widget/ImageView;

.field final synthetic k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;JJLandroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 2
    .line 3
    iput-object p6, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->f:Landroid/widget/ProgressBar;

    .line 4
    .line 5
    iput-object p7, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->g:Landroid/widget/TextView;

    .line 6
    .line 7
    iput-object p8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->h:Landroid/view/View;

    .line 8
    .line 9
    iput-object p9, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->i:Landroid/view/View;

    .line 10
    .line 11
    iput-object p10, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->j:Landroid/widget/ImageView;

    .line 12
    .line 13
    invoke-direct {p0, p2, p3, p4, p5}, Lg7/e;-><init>(JJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->u1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lg7/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lg7/e;->d()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->h:Landroid/view/View;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->f:Landroid/widget/ProgressBar;

    .line 17
    .line 18
    const/4 v2, 0x4

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->f:Landroid/widget/ProgressBar;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v3, "I01"

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->i:Landroid/view/View;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->j:Landroid/widget/ImageView;

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    sget v2, Lcom/cloud/hisavana/sdk/R$drawable;->ad_rewarded_time_rest_done:I

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->g:Landroid/widget/TextView;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    sget v3, Lcom/cloud/hisavana/sdk/R$string;->hs_download_t01_countdown_tv_done:I

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->g:Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 91
    .line 92
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->u(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;I)I

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public f(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 2
    .line 3
    long-to-float p1, p1

    .line 4
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 5
    .line 6
    div-float/2addr p1, p2

    .line 7
    float-to-double p1, p1

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    double-to-int p1, p1

    .line 13
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->u(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;I)I

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->f:Landroid/widget/ProgressBar;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->f:Landroid/widget/ProgressBar;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    sub-int/2addr p2, v0

    .line 41
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string p2, "I01"

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->g:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget v1, Lcom/cloud/hisavana/sdk/R$string;->hs_download_t01_countdown_tv:I

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const/4 v2, 0x1

    .line 92
    new-array v2, v2, [Ljava/lang/Object;

    .line 93
    .line 94
    const/4 v3, 0x0

    .line 95
    aput-object v1, v2, v3

    .line 96
    .line 97
    invoke-static {p2, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->g:Landroid/widget/TextView;

    .line 106
    .line 107
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 108
    .line 109
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .line 119
    .line 120
    :catchall_0
    :goto_0
    return-void
.end method
