.class public Lcom/bytedance/sdk/openadsdk/component/reward/sP/EjP;
.super Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;
.source "source.java"


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected static Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/component/uA/vS;
    .locals 1

    .line 46
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/component/uA/vS;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setLpPreRender(Z)V

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    .line 49
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Lcom/bytedance/sdk/component/uA/vS;

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/component/uA/vS;-><init>(Landroid/content/Context;Z)V

    const/4 p0, 0x2

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/component/uA/vS;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 52
    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 53
    sget p0, Lcom/bytedance/sdk/openadsdk/utils/Zq;->dx:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setId(I)V

    .line 54
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method static Sj(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 8

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 10
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    .line 12
    sget v2, Lcom/bytedance/sdk/openadsdk/utils/Zq;->WMZ:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setId(I)V

    .line 13
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 14
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 15
    invoke-virtual {v1, p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    .line 17
    sget v5, Lcom/bytedance/sdk/openadsdk/utils/Zq;->TEQ:I

    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    .line 18
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v5

    .line 20
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-direct {v5, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    .line 22
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/Zq;->TzV:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    const/16 v6, 0x8

    .line 23
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const/high16 v6, -0x1000000

    .line 24
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x11

    .line 26
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 27
    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    .line 29
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/Zq;->RiZ:I

    invoke-virtual {v2, v6}, Landroid/view/View;->setId(I)V

    .line 30
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 31
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/EjP;->Sj(Landroid/widget/FrameLayout;)V

    .line 33
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    .line 34
    sget v2, Lcom/bytedance/sdk/openadsdk/utils/Zq;->sU:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setId(I)V

    .line 35
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    .line 36
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 37
    invoke-virtual {v1, p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/EjP;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v1

    .line 39
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 40
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/EjP;->sP(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 41
    const-string v2, "#70161823"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 42
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/EjP;->TKC(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/EjP;->Sj(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/EjP;->Sj(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    return-void

    .line 6
    :cond_2
    :goto_0
    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/EjP;->sP(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static TKC(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 4

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "tt_up_slide"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lcom/bytedance/sdk/component/utils/ib;->EjP(Landroid/content/Context;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    .line 19
    .line 20
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->ib:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    .line 27
    const/high16 v2, 0x41900000    # 18.0f

    .line 28
    .line 29
    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/high16 v3, 0x41800000    # 16.0f

    .line 34
    .line 35
    invoke-static {p0, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 40
    .line 41
    .line 42
    const/16 v2, 0x11

    .line 43
    .line 44
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 45
    .line 46
    const/high16 v2, 0x42340000    # 45.0f

    .line 47
    .line 48
    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    return-object v0
.end method

.method private static sP(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 2
    sget p0, Lcom/bytedance/sdk/openadsdk/utils/Zq;->zR:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    const/4 p0, 0x1

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p0, 0x8

    .line 4
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static sP(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 6

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    .line 8
    sget v2, Lcom/bytedance/sdk/openadsdk/utils/Zq;->sU:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 9
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/EjP;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 12
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/EjP;->sP(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 13
    const-string v4, "#99161823"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 14
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 15
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/EjP;->TKC(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v4

    .line 16
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/EjP;->Sj(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 18
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    .line 19
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->WMZ:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 20
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    .line 22
    sget v2, Lcom/bytedance/sdk/openadsdk/utils/Zq;->TEQ:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 23
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    .line 27
    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->TzV:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    const/16 v4, 0x8

    .line 28
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const/high16 v4, -0x1000000

    .line 29
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 30
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    .line 31
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 32
    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    .line 34
    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->RiZ:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    .line 35
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 36
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/EjP;->Sj(Landroid/widget/FrameLayout;)V

    .line 38
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;-><init>(Landroid/content/Context;)V

    .line 39
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Mts:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 42
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public Dq()Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public Fmk()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->Zq:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->sP(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uvD:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->dNu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49
    .line 50
    .line 51
    const/16 v0, 0x50

    .line 52
    .line 53
    invoke-virtual {p0, v2, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(ZZZI)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    :cond_2
    const/16 v0, 0x46

    .line 77
    .line 78
    invoke-virtual {p0, v2, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(ZZZI)V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void
.end method

.method public HiB()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public Jcg()V
    .locals 0

    .line 1
    return-void
.end method

.method public Sj(Landroid/widget/FrameLayout;)V
    .locals 5

    .line 56
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xu:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    if-eqz v0, :cond_0

    .line 58
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->sP()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->Sj(J)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    return-void
.end method

.method public vS()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    return v0
.end method
