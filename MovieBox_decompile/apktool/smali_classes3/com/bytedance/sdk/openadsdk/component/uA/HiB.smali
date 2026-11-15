.class public Lcom/bytedance/sdk/openadsdk/component/uA/HiB;
.super Lcom/bytedance/sdk/openadsdk/component/uA/TKC;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/uA/HiB$Sj;
    }
.end annotation


# instance fields
.field Fmk:Lcom/bytedance/sdk/openadsdk/component/uA/HiB$Sj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/uA/HiB;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;->Sj()Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/uA/HiB$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/uA/HiB$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/uA/HiB;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "open_ad"

    .line 19
    .line 20
    invoke-virtual {v0, p2, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    const/4 v2, -0x1

    .line 26
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->sU()V

    .line 33
    .line 34
    .line 35
    const/high16 v0, 0x41100000    # 9.0f

    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/high16 v1, 0x41200000    # 10.0f

    .line 42
    .line 43
    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->createPAGLogoViewByMaterial(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 52
    .line 53
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 54
    .line 55
    const/high16 v2, 0x41600000    # 14.0f

    .line 56
    .line 57
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/4 v4, -0x2

    .line 62
    invoke-direct {p2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 63
    .line 64
    .line 65
    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 66
    .line 67
    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 68
    .line 69
    const/16 v3, 0xc

    .line 70
    .line 71
    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    .line 73
    .line 74
    const/16 v4, 0x9

    .line 75
    .line 76
    invoke-virtual {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77
    .line 78
    .line 79
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 80
    .line 81
    invoke-virtual {p0, v4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .line 83
    .line 84
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/widget/TKC;

    .line 85
    .line 86
    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TKC;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->aa:Lcom/bytedance/sdk/openadsdk/core/widget/TKC;

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-virtual {p2, v0, v4, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setPadding(IIII)V

    .line 93
    .line 94
    .line 95
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->aa:Lcom/bytedance/sdk/openadsdk/core/widget/TKC;

    .line 96
    .line 97
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 98
    .line 99
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 100
    .line 101
    .line 102
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 103
    .line 104
    const/high16 v0, 0x42000000    # 32.0f

    .line 105
    .line 106
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    invoke-direct {p2, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 118
    .line 119
    .line 120
    const/16 p1, 0xb

    .line 121
    .line 122
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v4, v4, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->aa:Lcom/bytedance/sdk/openadsdk/core/widget/TKC;

    .line 129
    .line 130
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->Dq:Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;

    .line 134
    .line 135
    if-eqz p1, :cond_0

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 138
    .line 139
    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public getAdIconView()Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getAdTitleTextView()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getScoreBar()Lcom/bytedance/sdk/openadsdk/core/widget/Zq;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getUserInfo()Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/component/uA/HiB$Sj;

    .line 6
    .line 7
    return-void
.end method

.method public setRenderListener(Lcom/bytedance/sdk/openadsdk/component/uA/HiB$Sj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/component/uA/HiB$Sj;

    .line 2
    .line 3
    return-void
.end method
