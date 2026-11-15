.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;
.implements Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO00o;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

.field public OooO00o:Landroid/view/View;

.field public OooO0O0:Landroid/view/View;

.field public OooO0OO:Landroid/view/View;

.field public OooO0Oo:Landroid/view/View;

.field public OooO0o:I

.field public OooO0o0:Landroid/view/View;

.field public OooO0oO:Z

.field public OooO0oo:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0o:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0oO:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0oo:Z

    .line 11
    .line 12
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0OO:Landroid/view/View;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0O0:Landroid/view/View;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public OooO00o(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0OO:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-gez p1, :cond_0

    const/4 v1, 0x1

    .line 83
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0OO:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    :cond_1
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0o:I

    return-object p0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public OooO00o(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;
    .locals 5

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v2, v0, -0x1

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6
    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v2, v3, v4, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(Landroid/view/View;Landroid/view/View;FFLandroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    instance-of p1, v2, Landroidx/viewpager/widget/ViewPager;

    if-nez p1, :cond_0

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    :cond_0
    iget p1, v1, Landroid/graphics/PointF;->x:F

    iget v0, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, p1, v0}, Landroid/graphics/PointF;->offset(FF)V

    .line 9
    invoke-virtual {p0, v2, p2, p3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 10
    iget p1, v1, Landroid/graphics/PointF;->x:F

    neg-float p1, p1

    iget p3, v1, Landroid/graphics/PointF;->y:F

    neg-float p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/graphics/PointF;->offset(FF)V

    :cond_1
    return-object v2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-object p3
.end method

.method public OooO00o(III)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 11
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0O0:Landroid/view/View;

    invoke-virtual {v4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    if-lez p1, :cond_0

    int-to-float v4, p1

    .line 12
    invoke-virtual {p2, v4}, Landroid/view/View;->setTranslationY(F)V

    move p2, v0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    cmpl-float v4, v4, v1

    if-lez v4, :cond_1

    .line 14
    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    move p2, v2

    :goto_0
    if-eq p3, v3, :cond_3

    .line 15
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0O0:Landroid/view/View;

    invoke-virtual {v3, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3

    if-gez p1, :cond_2

    int-to-float p2, p1

    .line 16
    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 18
    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    move v0, p2

    :goto_1
    if-nez v0, :cond_4

    .line 19
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0O0:Landroid/view/View;

    int-to-float p3, p1

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 20
    :cond_4
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0O0:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 21
    :goto_2
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0Oo:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 22
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 23
    :cond_5
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0o0:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 24
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;Landroid/view/View;Landroid/view/View;)V
    .locals 12

    .line 26
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 28
    instance-of v6, v3, Landroidx/core/view/NestedScrollingParent;

    if-eqz v6, :cond_7

    instance-of v6, v3, Landroidx/core/view/NestedScrollingChild;

    if-nez v6, :cond_7

    :cond_0
    if-nez v3, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    .line 29
    :goto_1
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 30
    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v8, v2

    .line 31
    :cond_2
    :goto_2
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-lez v9, :cond_5

    if-nez v8, :cond_5

    .line 32
    invoke-virtual {v7}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    if-eqz v9, :cond_2

    if-nez v6, :cond_3

    if-eq v9, v0, :cond_4

    .line 33
    :cond_3
    invoke-static {v9}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v8, v9

    goto :goto_2

    .line 34
    :cond_4
    instance-of v10, v9, Landroid/view/ViewGroup;

    if-eqz v10, :cond_2

    .line 35
    check-cast v9, Landroid/view/ViewGroup;

    move v10, v4

    .line 36
    :goto_3
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 37
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    if-nez v8, :cond_6

    goto :goto_4

    :cond_6
    move-object v0, v8

    :goto_4
    if-ne v0, v3, :cond_c

    :cond_7
    if-eqz v3, :cond_8

    .line 38
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0OO:Landroid/view/View;

    :cond_8
    if-nez p2, :cond_9

    if-eqz p3, :cond_b

    .line 39
    :cond_9
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0Oo:Landroid/view/View;

    .line 40
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0o0:Landroid/view/View;

    .line 41
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    check-cast p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 43
    iget-object v1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 44
    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 45
    iget-object v2, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 46
    invoke-interface {v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 47
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    .line 48
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 50
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    .line 51
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 52
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    if-eqz p2, :cond_a

    .line 54
    const-string p1, "fixed-top"

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 56
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 57
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 58
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 59
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO0OO(Landroid/view/View;)I

    move-result v3

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 60
    new-instance v3, Landroid/widget/Space;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-virtual {v0, p2, v5, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    if-eqz p3, :cond_b

    .line 62
    const-string p1, "fixed-bottom"

    invoke-virtual {p3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 64
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 65
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 66
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 67
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-static {p3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO0OO(Landroid/view/View;)I

    move-result v3

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    new-instance v3, Landroid/widget/Space;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v3, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x50

    .line 70
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 71
    invoke-virtual {v0, p3, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    return-void

    :cond_c
    if-nez v1, :cond_e

    .line 72
    :try_start_0
    instance-of v3, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v3, :cond_e

    .line 73
    move-object v3, p1

    check-cast v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 74
    iget-object v3, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 75
    invoke-virtual {v3, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->setNestedScrollingEnabled(Z)V

    .line 76
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 77
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v5

    :goto_5
    if-ltz v4, :cond_e

    .line 78
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 79
    instance-of v6, v5, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v6, :cond_d

    .line 80
    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO00o;

    invoke-direct {v6, p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO00o;)V

    invoke-virtual {v5, v6}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v3

    goto :goto_7

    :cond_d
    :goto_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 81
    :goto_7
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    move-object v3, v0

    goto/16 :goto_0
.end method

.method public OooO00o()Z
    .locals 2

    .line 25
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0oo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO00o(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooO0O0()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0oO:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO0O0(Landroid/view/View;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    :try_start_0
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0o:I

    .line 12
    .line 13
    sub-int v0, p1, v0

    .line 14
    .line 15
    int-to-float v0, v0

    .line 16
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0OO:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    mul-float/2addr v0, v1

    .line 23
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0OO:Landroid/view/View;

    .line 24
    .line 25
    instance-of v2, v1, Landroid/widget/AbsListView;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    check-cast v1, Landroid/widget/AbsListView;

    .line 30
    .line 31
    float-to-int v0, v0

    .line 32
    sget v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO0O0:F

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    float-to-int v0, v0

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->scrollBy(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :goto_1
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO0o:I

    .line 50
    .line 51
    return-void
.end method
