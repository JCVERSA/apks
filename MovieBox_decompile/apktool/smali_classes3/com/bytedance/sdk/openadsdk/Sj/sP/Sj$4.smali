.class Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$4;
.super Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->TEQ()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field Sj:I

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

.field sP:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$4;->TKC:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$4;->Sj:I

    .line 8
    .line 9
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$4;->sP:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$4;->Sj:I

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$4;->sP:I

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    move-object p2, p1

    .line 19
    check-cast p2, Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    check-cast p1, Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget p3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$4;->Sj:I

    .line 32
    .line 33
    if-lt p2, p3, :cond_0

    .line 34
    .line 35
    iget p4, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$4;->sP:I

    .line 36
    .line 37
    if-lt p1, p4, :cond_0

    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    int-to-float p1, p1

    .line 43
    iget p4, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$4;->sP:I

    .line 44
    .line 45
    int-to-float p4, p4

    .line 46
    div-float/2addr p1, p4

    .line 47
    int-to-float p4, p2

    .line 48
    int-to-float p3, p3

    .line 49
    div-float/2addr p4, p3

    .line 50
    invoke-static {p1, p4}, Ljava/lang/Math;->min(FF)F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iget p3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$4;->Sj:I

    .line 55
    .line 56
    sub-int/2addr p2, p3

    .line 57
    div-int/lit8 p2, p2, 0x2

    .line 58
    .line 59
    const/high16 p3, 0x3f800000    # 1.0f

    .line 60
    .line 61
    cmpl-float p3, p1, p3

    .line 62
    .line 63
    if-eqz p3, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 69
    .line 70
    .line 71
    int-to-float p1, p2

    .line 72
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void

    .line 76
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$4;->Sj:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const p1, 0x3fffffff    # 1.9999999f

    .line 6
    .line 7
    .line 8
    const/high16 v0, -0x80000000

    .line 9
    .line 10
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->onMeasure(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$4;->Sj:I

    .line 22
    .line 23
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->containerHeight:I

    .line 24
    .line 25
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$4;->sP:I

    .line 26
    .line 27
    :cond_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$4;->Sj:I

    .line 28
    .line 29
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj$4;->sP:I

    .line 30
    .line 31
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
