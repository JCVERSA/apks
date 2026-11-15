.class public Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;
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
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sU:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->dx:Z

    .line 8
    .line 9
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF$1;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->zR:Ljava/lang/Runnable;

    .line 15
    .line 16
    return-void
.end method

.method private Sj()V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 2
    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sU:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sU:I

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 4
    iput-boolean v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->dx:Z

    :cond_0
    add-int/2addr v3, v1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sU:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v1

    .line 6
    :goto_1
    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->Fmk:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->Sj()Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "translationY"

    if-nez v5, :cond_3

    if-eqz v3, :cond_3

    .line 7
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->dx:Z

    .line 8
    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sU:I

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9
    iget v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->Dq:I

    iget v8, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sU:I

    .line 10
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v5, v8

    div-int/2addr v5, v0

    int-to-float v5, v5

    new-array v8, v0, [F

    aput v6, v8, v4

    aput v5, v8, v1

    .line 11
    invoke-static {v2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->Sj:Landroid/animation/ObjectAnimator;

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    .line 12
    iget v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sU:I

    add-int/2addr v5, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    rem-int/2addr v5, v8

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_2

    .line 13
    :cond_4
    iget v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sU:I

    add-int/2addr v5, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    rem-int/2addr v5, v8

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 14
    :goto_2
    iget v8, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->Dq:I

    iget v9, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sU:I

    .line 15
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    neg-int v8, v8

    div-int/2addr v8, v0

    int-to-float v8, v8

    new-array v9, v0, [F

    aput v6, v9, v4

    aput v8, v9, v1

    .line 16
    invoke-static {v2, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iput-object v8, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->Sj:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_5

    .line 17
    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sU:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sU:I

    :cond_5
    move-object v3, v5

    .line 18
    :goto_3
    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->Sj:Landroid/animation/ObjectAnimator;

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 19
    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->Sj:Landroid/animation/ObjectAnimator;

    new-instance v8, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF$2;

    invoke-direct {v8, p0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF$2;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;Landroid/view/View;)V

    invoke-virtual {v5, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 20
    iget-boolean v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->dx:Z

    if-eqz v2, :cond_6

    .line 21
    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->Dq:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v2, v5

    neg-int v2, v2

    div-int/2addr v2, v0

    int-to-float v2, v2

    new-array v0, v0, [F

    aput v2, v0, v4

    aput v6, v0, v1

    invoke-static {v3, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sP:Landroid/animation/ObjectAnimator;

    goto :goto_4

    .line 22
    :cond_6
    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->Dq:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v2, v5

    div-int/2addr v2, v0

    int-to-float v2, v2

    new-array v0, v0, [F

    aput v2, v0, v4

    aput v6, v0, v1

    invoke-static {v3, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sP:Landroid/animation/ObjectAnimator;

    .line 23
    :goto_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sP:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sP:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF$3;

    invoke-direct {v2, p0, v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF$3;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->Sj:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sP:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->Sj:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sP:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 29
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->dx:Z

    if-eqz v0, :cond_7

    .line 30
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sU:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sU:I

    goto :goto_5

    .line 31
    :cond_7
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sU:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sU:I

    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sU:I

    .line 33
    :goto_5
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->zR:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->Sj()V

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
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->zR:Ljava/lang/Runnable;

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
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->zR:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->Sj:Landroid/animation/ObjectAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->Sj:Landroid/animation/ObjectAnimator;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sP:Landroid/animation/ObjectAnimator;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/fF;->sP:Landroid/animation/ObjectAnimator;

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
