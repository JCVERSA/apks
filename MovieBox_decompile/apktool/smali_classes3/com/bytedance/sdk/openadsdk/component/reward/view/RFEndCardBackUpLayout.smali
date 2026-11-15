.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;
.super Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$Sj;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TTAD.RFEndCardBackUpL"


# instance fields
.field private adContext:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

.field private adLogo:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

.field private ivIcon:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

.field private mInit:Z

.field private rbScore:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

.field private shownAdCount:I

.field private tvDesc:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field private tvDownload:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x8

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->eMB:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    return-object p0
.end method

.method private bindDescData(Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->gR()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method private bindIconData(Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private bindTitleData(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->sP()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->sP()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method private initData(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->setDownloadButtonData(Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 3
    .line 4
    .line 5
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->ivIcon:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 6
    .line 7
    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->bindIconData(Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->rbScore:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/widget/Zq;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->rbScore:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 31
    .line 32
    const/16 v0, 0x8

    .line 33
    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->sP()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-nez p2, :cond_1

    .line 55
    .line 56
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->sP()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-nez p2, :cond_2

    .line 79
    .line 80
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 91
    .line 92
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDesc:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 96
    .line 97
    if-eqz p2, :cond_5

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-nez p2, :cond_4

    .line 108
    .line 109
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDesc:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 110
    .line 111
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDesc:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adLogo:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 121
    .line 122
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$1;

    .line 123
    .line 124
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method private initOneSlotMultipleAdsLayout()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "#C2FFFFFF"

    .line 6
    .line 7
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 24
    .line 25
    const/4 v3, -0x1

    .line 26
    const/4 v4, -0x2

    .line 27
    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    const/high16 v5, 0x41800000    # 16.0f

    .line 31
    .line 32
    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const/4 v7, 0x0

    .line 41
    invoke-virtual {v2, v6, v7, v5, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 42
    .line 43
    .line 44
    const/16 v5, 0x11

    .line 45
    .line 46
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 47
    .line 48
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 52
    .line 53
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    .line 54
    .line 55
    const/4 v5, 0x2

    .line 56
    if-ne v2, v5, :cond_0

    .line 57
    .line 58
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    .line 59
    .line 60
    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    .line 68
    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->shownAdCount:I

    .line 75
    .line 76
    invoke-direct {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initOneSlotMultipleAdsLayoutLandscape(Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->shownAdCount:I

    .line 81
    .line 82
    if-ne v0, v5, :cond_1

    .line 83
    .line 84
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initOneSlotMultipleAdsLayoutForTwoAdVertical(Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initOneSlotMultipleAdsLayoutForThreeAdVertical(Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 92
    .line 93
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 96
    .line 97
    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->createPAGLogoViewByMaterial(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const v2, 0x1f00003d

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$2;

    .line 111
    .line 112
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method private initOneSlotMultipleAdsLayoutForThreeAdVertical(Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    .line 5
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/dx;->CBE()Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ge v1, v2, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x3

    .line 27
    if-ge v1, v2, :cond_0

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 34
    .line 35
    invoke-direct {p0, p1, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initSingleCardInThreeCardStyle(Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method private initOneSlotMultipleAdsLayoutForTwoAdVertical(Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    .line 5
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/dx;->CBE()Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ge v1, v2, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    if-ge v1, v2, :cond_0

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 34
    .line 35
    invoke-direct {p0, p1, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initSingleCardInTwoCardStyle(Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method private initOneSlotMultipleAdsLayoutLandscape(Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    .line 5
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/dx;->CBE()Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ge v1, v2, :cond_0

    .line 25
    .line 26
    if-ge v1, p2, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    if-ge v1, v2, :cond_0

    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 36
    .line 37
    invoke-direct {p0, p1, v2, v1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initSingleCardInTwoCardStyleLandscape(Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;Lcom/bytedance/sdk/openadsdk/core/model/sU;II)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method private initSingleCardInThreeCardStyle(Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setGravity(I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    .line 19
    const/4 v4, -0x1

    .line 20
    const/4 v5, -0x2

    .line 21
    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 22
    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    if-lez p3, :cond_0

    .line 26
    .line 27
    const/high16 v7, 0x41400000    # 12.0f

    .line 28
    .line 29
    invoke-static {v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v7, v6

    .line 35
    :goto_0
    invoke-virtual {v3, v6, v7, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 36
    .line 37
    .line 38
    new-instance v7, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$Sj;

    .line 39
    .line 40
    invoke-direct {v7, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$Sj;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    .line 50
    .line 51
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 55
    .line 56
    .line 57
    const/16 v3, 0x10

    .line 58
    .line 59
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setGravity(I)V

    .line 60
    .line 61
    .line 62
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 63
    .line 64
    invoke-direct {v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    .line 66
    .line 67
    const/high16 v8, 0x41a00000    # 20.0f

    .line 68
    .line 69
    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 74
    .line 75
    const/high16 v9, 0x41880000    # 17.0f

    .line 76
    .line 77
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 82
    .line 83
    const/high16 v9, 0x41f00000    # 30.0f

    .line 84
    .line 85
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 90
    .line 91
    invoke-virtual {v1, p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    .line 93
    .line 94
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 95
    .line 96
    invoke-direct {v7, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;-><init>(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 100
    .line 101
    const/high16 v10, 0x428c0000    # 70.0f

    .line 102
    .line 103
    invoke-static {v0, v10}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    const/high16 v11, 0x427c0000    # 63.0f

    .line 108
    .line 109
    invoke-static {v0, v11}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0, v7, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->bindIconData(Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 120
    .line 121
    .line 122
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    .line 123
    .line 124
    invoke-direct {v7, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 128
    .line 129
    .line 130
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 131
    .line 132
    invoke-direct {v9, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 133
    .line 134
    .line 135
    const/high16 v10, 0x40e00000    # 7.0f

    .line 136
    .line 137
    invoke-static {v0, v10}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 142
    .line 143
    invoke-virtual {p1, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 147
    .line 148
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 152
    .line 153
    .line 154
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 155
    .line 156
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 157
    .line 158
    .line 159
    const/high16 v10, 0x41900000    # 18.0f

    .line 160
    .line 161
    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 162
    .line 163
    .line 164
    const-string v10, "#161823"

    .line 165
    .line 166
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    .line 172
    .line 173
    const v10, 0x800003

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v10}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    .line 177
    .line 178
    .line 179
    const/4 v10, 0x0

    .line 180
    invoke-virtual {p1, v10, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 181
    .line 182
    .line 183
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 184
    .line 185
    invoke-direct {v10, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7, p1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    invoke-direct {p0, p1, p2, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->bindTitleData(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 199
    .line 200
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 207
    .line 208
    .line 209
    const/high16 v2, 0x41800000    # 16.0f

    .line 210
    .line 211
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 212
    .line 213
    .line 214
    const-string v9, "#80161823"

    .line 215
    .line 216
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    .line 222
    .line 223
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 224
    .line 225
    invoke-direct {v10, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v7, p1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    .line 230
    .line 231
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->bindDescData(Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 232
    .line 233
    .line 234
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    .line 235
    .line 236
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setGravity(I)V

    .line 243
    .line 244
    .line 245
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 246
    .line 247
    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    .line 252
    .line 253
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 254
    .line 255
    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 259
    .line 260
    .line 261
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    .line 267
    .line 268
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 269
    .line 270
    invoke-direct {v6, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    .line 275
    .line 276
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    .line 277
    .line 278
    invoke-direct {v6, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Zq;-><init>(Landroid/content/Context;)V

    .line 279
    .line 280
    .line 281
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 282
    .line 283
    invoke-direct {v7, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 284
    .line 285
    .line 286
    const/high16 v5, 0x41000000    # 8.0f

    .line 287
    .line 288
    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 293
    .line 294
    invoke-virtual {p1, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    .line 296
    .line 297
    const/16 p1, 0x12

    .line 298
    .line 299
    invoke-static {v3, v6, p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/widget/Zq;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 300
    .line 301
    .line 302
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 303
    .line 304
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 305
    .line 306
    .line 307
    const/16 v3, 0x11

    .line 308
    .line 309
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    .line 310
    .line 311
    .line 312
    const v3, 0x1f00000b

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1, v3}, Landroid/view/View;->setId(I)V

    .line 316
    .line 317
    .line 318
    const-string v3, "tt_video_download_apk"

    .line 319
    .line 320
    invoke-static {v0, v3}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    .line 329
    .line 330
    const/4 v3, 0x2

    .line 331
    invoke-virtual {p1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 332
    .line 333
    .line 334
    const-string v2, "tt_reward_full_video_backup_btn_bg"

    .line 335
    .line 336
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/TEQ;->Sj(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 341
    .line 342
    .line 343
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 344
    .line 345
    const/high16 v3, 0x42100000    # 36.0f

    .line 346
    .line 347
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 352
    .line 353
    .line 354
    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    const/high16 v4, 0x41b00000    # 22.0f

    .line 359
    .line 360
    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 361
    .line 362
    .line 363
    move-result v4

    .line 364
    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    .line 377
    .line 378
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->setDownloadButtonData(Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 379
    .line 380
    .line 381
    return-void
.end method

.method private initSingleCardInTwoCardStyle(Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setGravity(I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    .line 19
    const/4 v4, -0x1

    .line 20
    const/4 v5, -0x2

    .line 21
    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 22
    .line 23
    .line 24
    const/high16 v6, 0x41400000    # 12.0f

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    if-lez p3, :cond_0

    .line 28
    .line 29
    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v8, v7

    .line 35
    :goto_0
    invoke-virtual {v3, v7, v8, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 36
    .line 37
    .line 38
    new-instance v8, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$Sj;

    .line 39
    .line 40
    invoke-direct {v8, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$Sj;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 50
    .line 51
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 55
    .line 56
    const/high16 v8, 0x428c0000    # 70.0f

    .line 57
    .line 58
    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const/high16 v9, 0x427c0000    # 63.0f

    .line 63
    .line 64
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    invoke-direct {v3, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    const/high16 v8, 0x41c00000    # 24.0f

    .line 72
    .line 73
    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-virtual {v3, v7, v8, v7, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->bindIconData(Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 91
    .line 92
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 96
    .line 97
    .line 98
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 99
    .line 100
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 101
    .line 102
    .line 103
    const/high16 v6, 0x41900000    # 18.0f

    .line 104
    .line 105
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 106
    .line 107
    .line 108
    const-string v6, "#161823"

    .line 109
    .line 110
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    .line 116
    .line 117
    const/16 v6, 0x11

    .line 118
    .line 119
    invoke-virtual {p1, v6}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    .line 120
    .line 121
    .line 122
    const/4 v8, 0x0

    .line 123
    invoke-virtual {p1, v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 124
    .line 125
    .line 126
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 127
    .line 128
    invoke-direct {v8, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 129
    .line 130
    .line 131
    const/high16 v9, 0x42600000    # 56.0f

    .line 132
    .line 133
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    invoke-virtual {v8, v10, v7, v11, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, p1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    invoke-direct {p0, p1, p2, v8}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->bindTitleData(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 155
    .line 156
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 163
    .line 164
    .line 165
    const/high16 v2, 0x41800000    # 16.0f

    .line 166
    .line 167
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 168
    .line 169
    .line 170
    const-string v3, "#80161823"

    .line 171
    .line 172
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    .line 178
    .line 179
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 180
    .line 181
    invoke-direct {v8, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 182
    .line 183
    .line 184
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    const/high16 v11, 0x40800000    # 4.0f

    .line 189
    .line 190
    invoke-static {v0, v11}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 191
    .line 192
    .line 193
    move-result v11

    .line 194
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    invoke-virtual {v8, v10, v11, v9, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, p1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    .line 203
    .line 204
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->bindDescData(Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 205
    .line 206
    .line 207
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    .line 208
    .line 209
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 213
    .line 214
    .line 215
    const/16 v7, 0x10

    .line 216
    .line 217
    invoke-virtual {p1, v7}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setGravity(I)V

    .line 218
    .line 219
    .line 220
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 221
    .line 222
    invoke-direct {v7, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    .line 227
    .line 228
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 229
    .line 230
    invoke-direct {v7, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 234
    .line 235
    .line 236
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    .line 242
    .line 243
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 244
    .line 245
    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    .line 250
    .line 251
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    .line 252
    .line 253
    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Zq;-><init>(Landroid/content/Context;)V

    .line 254
    .line 255
    .line 256
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 257
    .line 258
    invoke-direct {v8, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 259
    .line 260
    .line 261
    const/high16 v5, 0x41000000    # 8.0f

    .line 262
    .line 263
    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 268
    .line 269
    invoke-virtual {p1, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    .line 271
    .line 272
    const/16 p1, 0x12

    .line 273
    .line 274
    invoke-static {v7, v3, p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/widget/Zq;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 275
    .line 276
    .line 277
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 278
    .line 279
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, v6}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    .line 283
    .line 284
    .line 285
    const v3, 0x1f00000b

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, v3}, Landroid/view/View;->setId(I)V

    .line 289
    .line 290
    .line 291
    const-string v3, "tt_video_download_apk"

    .line 292
    .line 293
    invoke-static {v0, v3}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    .line 302
    .line 303
    const/4 v3, 0x2

    .line 304
    invoke-virtual {p1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 305
    .line 306
    .line 307
    const-string v2, "tt_reward_full_video_backup_btn_bg"

    .line 308
    .line 309
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/TEQ;->Sj(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 314
    .line 315
    .line 316
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 317
    .line 318
    const/high16 v3, 0x42100000    # 36.0f

    .line 319
    .line 320
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 321
    .line 322
    .line 323
    move-result v5

    .line 324
    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 325
    .line 326
    .line 327
    const/high16 v4, 0x41a00000    # 20.0f

    .line 328
    .line 329
    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 338
    .line 339
    .line 340
    move-result v6

    .line 341
    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    invoke-virtual {v2, v5, v3, v6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    .line 350
    .line 351
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->setDownloadButtonData(Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 352
    .line 353
    .line 354
    return-void
.end method

.method private initSingleCardInTwoCardStyleLandscape(Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;Lcom/bytedance/sdk/openadsdk/core/model/sU;II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    .line 12
    .line 13
    invoke-direct {v4, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setGravity(I)V

    .line 21
    .line 22
    .line 23
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, -0x2

    .line 27
    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    const/high16 v9, 0x3f800000    # 1.0f

    .line 31
    .line 32
    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 33
    .line 34
    const/high16 v9, 0x41400000    # 12.0f

    .line 35
    .line 36
    if-lez v2, :cond_0

    .line 37
    .line 38
    invoke-static {v3, v9}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    invoke-virtual {v6, v10, v7, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 43
    .line 44
    .line 45
    :cond_0
    new-instance v10, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$Sj;

    .line 46
    .line 47
    invoke-direct {v10, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout$Sj;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    move-object/from16 v10, p1

    .line 54
    .line 55
    invoke-virtual {v10, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    .line 59
    .line 60
    invoke-direct {v6, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 64
    .line 65
    .line 66
    const/16 v10, 0x30

    .line 67
    .line 68
    invoke-virtual {v6, v10}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setGravity(I)V

    .line 69
    .line 70
    .line 71
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 72
    .line 73
    const/4 v11, -0x1

    .line 74
    invoke-direct {v10, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75
    .line 76
    .line 77
    const/high16 v12, 0x41a00000    # 20.0f

    .line 78
    .line 79
    invoke-static {v3, v12}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    iput v13, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 84
    .line 85
    const/high16 v13, 0x41880000    # 17.0f

    .line 86
    .line 87
    invoke-static {v3, v13}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    iput v13, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 92
    .line 93
    const/high16 v13, 0x41f00000    # 30.0f

    .line 94
    .line 95
    invoke-static {v3, v13}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    iput v13, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 100
    .line 101
    invoke-virtual {v4, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .line 103
    .line 104
    new-instance v13, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 105
    .line 106
    invoke-direct {v13, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;-><init>(Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    .line 111
    const/high16 v15, 0x42300000    # 44.0f

    .line 112
    .line 113
    invoke-static {v3, v15}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    invoke-static {v3, v15}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 118
    .line 119
    .line 120
    move-result v15

    .line 121
    invoke-direct {v14, v12, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .line 126
    .line 127
    invoke-direct {v0, v13, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->bindIconData(Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 128
    .line 129
    .line 130
    new-instance v12, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    .line 131
    .line 132
    invoke-direct {v12, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    .line 137
    .line 138
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 139
    .line 140
    invoke-direct {v13, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    .line 142
    .line 143
    const/high16 v14, 0x40e00000    # 7.0f

    .line 144
    .line 145
    invoke-static {v3, v14}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 146
    .line 147
    .line 148
    move-result v14

    .line 149
    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 150
    .line 151
    invoke-virtual {v6, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    .line 153
    .line 154
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 155
    .line 156
    invoke-direct {v6, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 160
    .line 161
    .line 162
    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 163
    .line 164
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 165
    .line 166
    .line 167
    const/high16 v14, 0x41900000    # 18.0f

    .line 168
    .line 169
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 170
    .line 171
    .line 172
    const-string v14, "#161823"

    .line 173
    .line 174
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v14

    .line 178
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    .line 180
    .line 181
    const v14, 0x800003

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, v14}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    .line 185
    .line 186
    .line 187
    const/4 v14, 0x0

    .line 188
    invoke-virtual {v6, v14, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 189
    .line 190
    .line 191
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 192
    .line 193
    invoke-direct {v14, v11, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v12, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v14

    .line 203
    invoke-direct {v0, v6, v1, v14}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->bindTitleData(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    .line 207
    .line 208
    invoke-direct {v6, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 212
    .line 213
    .line 214
    const/16 v7, 0x10

    .line 215
    .line 216
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setGravity(I)V

    .line 217
    .line 218
    .line 219
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 220
    .line 221
    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v12, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    .line 226
    .line 227
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 228
    .line 229
    invoke-direct {v7, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 230
    .line 231
    .line 232
    const/high16 v12, 0x41800000    # 16.0f

    .line 233
    .line 234
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 235
    .line 236
    .line 237
    const-string v14, "#80161823"

    .line 238
    .line 239
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    move-result v15

    .line 243
    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    .line 245
    .line 246
    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    .line 247
    .line 248
    invoke-direct {v15, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v6, v7, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    .line 253
    .line 254
    new-instance v15, Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    .line 255
    .line 256
    invoke-direct {v15, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/Zq;-><init>(Landroid/content/Context;)V

    .line 257
    .line 258
    .line 259
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 260
    .line 261
    invoke-direct {v9, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 262
    .line 263
    .line 264
    const/high16 v8, 0x41000000    # 8.0f

    .line 265
    .line 266
    invoke-static {v3, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 267
    .line 268
    .line 269
    move-result v8

    .line 270
    iput v8, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 271
    .line 272
    invoke-virtual {v6, v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    .line 274
    .line 275
    const/16 v6, 0x12

    .line 276
    .line 277
    invoke-static {v7, v15, v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/widget/Zq;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 278
    .line 279
    .line 280
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 281
    .line 282
    invoke-direct {v6, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 283
    .line 284
    .line 285
    const/4 v7, 0x2

    .line 286
    move/from16 v8, p4

    .line 287
    .line 288
    if-ne v8, v7, :cond_1

    .line 289
    .line 290
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 291
    .line 292
    .line 293
    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLines(I)V

    .line 295
    .line 296
    .line 297
    :goto_0
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 301
    .line 302
    .line 303
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    .line 309
    .line 310
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 311
    .line 312
    const/4 v8, -0x2

    .line 313
    invoke-direct {v5, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 314
    .line 315
    .line 316
    iget v8, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 317
    .line 318
    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 319
    .line 320
    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 321
    .line 322
    const/high16 v8, 0x41400000    # 12.0f

    .line 323
    .line 324
    invoke-static {v3, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 325
    .line 326
    .line 327
    move-result v8

    .line 328
    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 329
    .line 330
    invoke-virtual {v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    .line 332
    .line 333
    invoke-direct {v0, v6, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->bindDescData(Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 334
    .line 335
    .line 336
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 337
    .line 338
    invoke-direct {v5, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 339
    .line 340
    .line 341
    const/16 v6, 0x11

    .line 342
    .line 343
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    .line 344
    .line 345
    .line 346
    const v6, 0x1f00000b

    .line 347
    .line 348
    .line 349
    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 350
    .line 351
    .line 352
    const-string v6, "tt_video_download_apk"

    .line 353
    .line 354
    invoke-static {v3, v6}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v5, v7, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 365
    .line 366
    .line 367
    const-string v6, "tt_reward_full_video_backup_btn_bg"

    .line 368
    .line 369
    invoke-static {v3, v6}, Lcom/bytedance/sdk/openadsdk/utils/TEQ;->Sj(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 374
    .line 375
    .line 376
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 377
    .line 378
    const/high16 v7, 0x42100000    # 36.0f

    .line 379
    .line 380
    invoke-static {v3, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 381
    .line 382
    .line 383
    move-result v7

    .line 384
    invoke-direct {v6, v11, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 385
    .line 386
    .line 387
    const/high16 v7, 0x41a00000    # 20.0f

    .line 388
    .line 389
    invoke-static {v3, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 390
    .line 391
    .line 392
    move-result v8

    .line 393
    const/high16 v9, 0x41b00000    # 22.0f

    .line 394
    .line 395
    invoke-static {v3, v9}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 396
    .line 397
    .line 398
    move-result v9

    .line 399
    invoke-static {v3, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 400
    .line 401
    .line 402
    move-result v10

    .line 403
    invoke-static {v3, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    invoke-virtual {v6, v8, v9, v10, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    .line 412
    .line 413
    invoke-direct {v0, v5, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->setDownloadButtonData(Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 414
    .line 415
    .line 416
    return-void
.end method

.method private initViews()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->mInit:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->mInit:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tR()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->kF()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->shownAdCount:I

    .line 32
    .line 33
    if-le v1, v0, :cond_1

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initOneSlotMultipleAdsLayout()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initViewsForVast()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initViewsDefault()V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDownload:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 57
    .line 58
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initData(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private initViewsDefault()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->liH()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v1, v3, :cond_0

    .line 16
    .line 17
    move v1, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    const/high16 v4, -0x1000000

    .line 21
    .line 22
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 23
    .line 24
    .line 25
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    .line 26
    .line 27
    invoke-direct {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 34
    .line 35
    .line 36
    const/4 v5, -0x2

    .line 37
    const/4 v6, -0x1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 41
    .line 42
    invoke-direct {v7, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 47
    .line 48
    const v8, 0x43a38000    # 327.0f

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    invoke-direct {v7, v8, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 56
    .line 57
    .line 58
    :goto_1
    const/16 v8, 0x11

    .line 59
    .line 60
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 61
    .line 62
    const/high16 v9, 0x41c00000    # 24.0f

    .line 63
    .line 64
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 69
    .line 70
    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 71
    .line 72
    invoke-virtual {p0, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .line 74
    .line 75
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 76
    .line 77
    invoke-direct {v7, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    iput-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->ivIcon:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 81
    .line 82
    invoke-virtual {v7, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 83
    .line 84
    .line 85
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 86
    .line 87
    const/high16 v7, 0x42a00000    # 80.0f

    .line 88
    .line 89
    invoke-static {v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    invoke-static {v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    invoke-direct {v2, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 98
    .line 99
    .line 100
    const/high16 v7, 0x41400000    # 12.0f

    .line 101
    .line 102
    invoke-static {v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 107
    .line 108
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->ivIcon:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 109
    .line 110
    invoke-virtual {v4, v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    .line 112
    .line 113
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 114
    .line 115
    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 119
    .line 120
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 121
    .line 122
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 131
    .line 132
    const/4 v11, 0x2

    .line 133
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 134
    .line 135
    .line 136
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 137
    .line 138
    const/high16 v12, 0x43340000    # 180.0f

    .line 139
    .line 140
    invoke-static {v0, v12}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 141
    .line 142
    .line 143
    move-result v12

    .line 144
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 145
    .line 146
    .line 147
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 148
    .line 149
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    .line 151
    .line 152
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 153
    .line 154
    invoke-virtual {v2, v11, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 155
    .line 156
    .line 157
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 158
    .line 159
    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 160
    .line 161
    .line 162
    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvTitle:Landroid/widget/TextView;

    .line 163
    .line 164
    invoke-virtual {v4, v12, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    .line 166
    .line 167
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 168
    .line 169
    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 170
    .line 171
    .line 172
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDesc:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 173
    .line 174
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 175
    .line 176
    .line 177
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDesc:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 178
    .line 179
    invoke-virtual {v2, v8}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    .line 180
    .line 181
    .line 182
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDesc:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 183
    .line 184
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 185
    .line 186
    .line 187
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDesc:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 188
    .line 189
    const-string v10, "#BFFFFFFF"

    .line 190
    .line 191
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    .line 197
    .line 198
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDesc:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 199
    .line 200
    const/high16 v10, 0x41800000    # 16.0f

    .line 201
    .line 202
    invoke-virtual {v2, v11, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 203
    .line 204
    .line 205
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 206
    .line 207
    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 208
    .line 209
    .line 210
    const/high16 v12, 0x41000000    # 8.0f

    .line 211
    .line 212
    invoke-static {v0, v12}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 213
    .line 214
    .line 215
    move-result v12

    .line 216
    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 217
    .line 218
    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDesc:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 219
    .line 220
    invoke-virtual {v4, v12, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    .line 222
    .line 223
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    .line 224
    .line 225
    invoke-direct {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/Zq;-><init>(Landroid/content/Context;Z)V

    .line 226
    .line 227
    .line 228
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->rbScore:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    .line 229
    .line 230
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 231
    .line 232
    invoke-static {v0, v10}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 237
    .line 238
    .line 239
    invoke-static {v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 244
    .line 245
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->rbScore:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    .line 246
    .line 247
    const/16 v7, 0x8

    .line 248
    .line 249
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 250
    .line 251
    .line 252
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->rbScore:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    .line 253
    .line 254
    invoke-virtual {v4, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    .line 256
    .line 257
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 258
    .line 259
    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 260
    .line 261
    .line 262
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDownload:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 263
    .line 264
    const v3, 0x1f00000b

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 268
    .line 269
    .line 270
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDownload:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 271
    .line 272
    invoke-virtual {v2, v8}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    .line 273
    .line 274
    .line 275
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDownload:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 276
    .line 277
    const-string v3, "tt_video_download_apk"

    .line 278
    .line 279
    invoke-static {v0, v3}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    .line 285
    .line 286
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDownload:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 287
    .line 288
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    .line 290
    .line 291
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDownload:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 292
    .line 293
    invoke-virtual {v2, v11, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 294
    .line 295
    .line 296
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDownload:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 297
    .line 298
    const-string v3, "tt_reward_full_video_backup_btn_bg"

    .line 299
    .line 300
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/TEQ;->Sj(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 305
    .line 306
    .line 307
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 308
    .line 309
    const/high16 v3, 0x42300000    # 44.0f

    .line 310
    .line 311
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    invoke-direct {v2, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 316
    .line 317
    .line 318
    const/high16 v3, 0x42580000    # 54.0f

    .line 319
    .line 320
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 325
    .line 326
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->tvDownload:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 327
    .line 328
    invoke-virtual {v4, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    .line 330
    .line 331
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 332
    .line 333
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 334
    .line 335
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->createPAGLogoViewByMaterial(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adLogo:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 340
    .line 341
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 342
    .line 343
    const/high16 v3, 0x41600000    # 14.0f

    .line 344
    .line 345
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    invoke-direct {v2, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 350
    .line 351
    .line 352
    const v3, 0x800053

    .line 353
    .line 354
    .line 355
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 356
    .line 357
    const/high16 v3, 0x41900000    # 18.0f

    .line 358
    .line 359
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 364
    .line 365
    if-eqz v1, :cond_2

    .line 366
    .line 367
    const/high16 v1, 0x42740000    # 61.0f

    .line 368
    .line 369
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 374
    .line 375
    goto :goto_2

    .line 376
    :cond_2
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 381
    .line 382
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adLogo:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 383
    .line 384
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    .line 386
    .line 387
    return-void
.end method

.method private initViewsForVast()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, -0x1000000

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    sget v2, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Dq:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 18
    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 26
    .line 27
    const/4 v4, -0x1

    .line 28
    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/bytedance/sdk/component/uA/vS;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-direct {v1, v0, v3}, Lcom/bytedance/sdk/component/uA/vS;-><init>(Landroid/content/Context;Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/uA/vS;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/Zq;->uA:I

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    .line 50
    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private setDownloadButtonData(Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    .line 4
    .line 5
    invoke-virtual {v1, v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/sP/HiB;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HiB:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v2, p2, v1}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Jcg;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    if-eq p3, v1, :cond_0

    .line 24
    .line 25
    new-instance v1, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    add-int/lit8 p3, p3, 0x1

    .line 31
    .line 32
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "ad_show_order"

    .line 37
    .line 38
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 42
    .line 43
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    const-string p3, "pag_json_data"

    .line 50
    .line 51
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    :catchall_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/util/Map;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ir()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    if-nez p3, :cond_1

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void
.end method


# virtual methods
.method public init(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->adContext:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initViews()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setShownAdCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->shownAdCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->initViews()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
