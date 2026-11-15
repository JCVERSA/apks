.class public Lcom/bytedance/sdk/openadsdk/core/HiB/vS;
.super Landroid/widget/FrameLayout;
.source "source.java"


# instance fields
.field private Dq:Z

.field private EjP:Landroid/graphics/drawable/Drawable;

.field private HiB:Landroid/graphics/drawable/Drawable;

.field private Jcg:Landroid/animation/ValueAnimator;

.field private Sj:I

.field private TKC:Landroid/graphics/drawable/Drawable;

.field private sP:I

.field private vS:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Sj:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x64

    .line 4
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Sj:I

    return-void
.end method

.method private Sj()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x2710

    .line 3
    .line 4
    filled-new-array {v0, v1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Jcg:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    const-wide/16 v2, 0x7d0

    .line 15
    .line 16
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Jcg:Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Jcg:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .line 28
    .line 29
    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Jcg:Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Jcg:Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/HiB/vS$1;

    .line 44
    .line 45
    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/HiB/vS$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/HiB/vS;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Jcg:Landroid/animation/ValueAnimator;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->setMax(I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->vS:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->HiB:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Sj()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->vS:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Jcg:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Jcg:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Jcg:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_1

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Dq:Z

    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Dq:Z

    .line 12
    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Jcg:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->resume()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Sj()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Jcg:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Dq:Z

    .line 30
    .line 31
    if-nez p2, :cond_2

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Dq:Z

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->pause()V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->HiB:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->vS:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Jcg:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Sj()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/uA;->Sj(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Sj:I

    .line 2
    .line 3
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->sP:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->TKC:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    int-to-float p1, p1

    .line 8
    const v1, 0x461c4000    # 10000.0f

    .line 9
    .line 10
    .line 11
    mul-float/2addr p1, v1

    .line 12
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->Sj:I

    .line 13
    .line 14
    int-to-float v1, v1

    .line 15
    div-float/2addr p1, v1

    .line 16
    float-to-int p1, p1

    .line 17
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->EjP:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->EjP:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-ge v0, p1, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->EjP:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    instance-of v2, v1, Landroid/graphics/drawable/ScaleDrawable;

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    instance-of v2, v1, Landroid/graphics/drawable/ClipDrawable;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    :cond_0
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->TKC:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->EjP:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    instance-of v0, p1, Landroid/graphics/drawable/RotateDrawable;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/HiB/vS;->TKC:Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    :cond_3
    return-void
.end method
