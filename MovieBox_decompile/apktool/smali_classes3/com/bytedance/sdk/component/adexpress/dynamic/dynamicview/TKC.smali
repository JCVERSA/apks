.class public Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;
.super Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;
.source "source.java"


# instance fields
.field Sj:Landroid/animation/ObjectAnimator;

.field private dx:Z

.field sP:Landroid/animation/ObjectAnimator;

.field private sU:I

.field private zR:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->sU:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->dx:Z

    .line 8
    .line 9
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC$1;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->zR:Ljava/lang/Runnable;

    .line 15
    .line 16
    return-void
.end method

.method private Sj()V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->sU:I

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 3
    :cond_0
    iget v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->sU:I

    if-nez v4, :cond_1

    .line 4
    iput-boolean v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->dx:Z

    :cond_1
    add-int/2addr v4, v1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    const-string v7, "translationX"

    if-ge v4, v5, :cond_3

    iget v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->sU:I

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->sU:I

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7
    iget v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->Jcg:I

    iget v8, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->sU:I

    .line 8
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v5, v8

    neg-int v5, v5

    div-int/2addr v5, v0

    int-to-float v5, v5

    new-array v8, v0, [F

    aput v6, v8, v2

    aput v5, v8, v1

    .line 9
    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->Sj:Landroid/animation/ObjectAnimator;

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->dx:Z

    .line 11
    iget v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->sU:I

    sub-int/2addr v4, v1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 12
    iget v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->Jcg:I

    iget v8, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->sU:I

    .line 13
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v5, v8

    div-int/2addr v5, v0

    int-to-float v5, v5

    new-array v8, v0, [F

    aput v6, v8, v2

    aput v5, v8, v1

    .line 14
    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->Sj:Landroid/animation/ObjectAnimator;

    :goto_1
    if-nez v4, :cond_4

    return-void

    .line 15
    :cond_4
    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->Sj:Landroid/animation/ObjectAnimator;

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 16
    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->Sj:Landroid/animation/ObjectAnimator;

    new-instance v8, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC$2;

    invoke-direct {v8, p0, v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC$2;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;Landroid/view/View;)V

    invoke-virtual {v5, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 17
    iget-boolean v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->dx:Z

    if-eqz v3, :cond_5

    .line 18
    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->Jcg:I

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    neg-int v3, v3

    div-int/2addr v3, v0

    int-to-float v3, v3

    new-array v0, v0, [F

    aput v3, v0, v2

    aput v6, v0, v1

    invoke-static {v4, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->sP:Landroid/animation/ObjectAnimator;

    goto :goto_2

    .line 19
    :cond_5
    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->Jcg:I

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    div-int/2addr v3, v0

    int-to-float v3, v3

    new-array v0, v0, [F

    aput v3, v0, v2

    aput v6, v0, v1

    invoke-static {v4, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->sP:Landroid/animation/ObjectAnimator;

    .line 20
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->sP:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->sP:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC$3;

    invoke-direct {v2, p0, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC$3;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->Sj:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->sP:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->Sj:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->sP:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 26
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->dx:Z

    if-eqz v0, :cond_6

    .line 27
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->sU:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->sU:I

    goto :goto_3

    .line 28
    :cond_6
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->sU:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->sU:I

    .line 29
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->zR:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->Sj()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 20
    .line 21
    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->Dq:I

    .line 22
    .line 23
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 24
    .line 25
    sub-int/2addr v3, v4

    .line 26
    div-int/lit8 v3, v3, 0x2

    .line 27
    .line 28
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/16 v2, 0x8

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->zR:Ljava/lang/Runnable;

    .line 44
    .line 45
    const-wide/16 v1, 0x9c4

    .line 46
    .line 47
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public sP()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->zR:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->Sj:Landroid/animation/ObjectAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->Sj:Landroid/animation/ObjectAnimator;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->sP:Landroid/animation/ObjectAnimator;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/TKC;->sP:Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->sP()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
