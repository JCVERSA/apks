.class public Lcom/bytedance/sdk/openadsdk/core/widget/vS;
.super Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;
.source "source.java"


# instance fields
.field private Sj:F

.field private sP:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x40100000    # 2.25f

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/vS;->Sj:F

    const/16 p1, 0xc

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/vS;->sP:I

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/vS;->Sj()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    .line 6
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/vS;->Sj:F

    .line 7
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/vS;->sP:I

    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/vS;->Sj()V

    return-void
.end method

.method public static Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;
    .locals 1

    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/vS;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/vS;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private Sj()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/EjP;->Sj()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_close_btn"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ib;->EjP(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/vS;->Sj:F

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setPadding(IIII)V

    .line 5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public static sP(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/vS;

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    const/high16 v2, 0x40a00000    # 5.0f

    .line 6
    .line 7
    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/vS;-><init>(Landroid/content/Context;IF)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/vS;->sP:I

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    .line 16
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 17
    .line 18
    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
