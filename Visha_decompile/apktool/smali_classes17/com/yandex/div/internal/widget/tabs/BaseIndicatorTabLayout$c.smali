.class public Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:F

.field public g:I

.field public h:[I

.field public i:[I

.field public j:[F

.field public k:I

.field public l:I

.field public m:I

.field public n:Landroid/animation/ValueAnimator;

.field public final o:Landroid/graphics/Paint;

.field public final p:Landroid/graphics/Path;

.field public final q:Landroid/graphics/RectF;

.field public final r:I

.field public final s:I

.field public t:Z

.field public u:F

.field public v:I

.field public w:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->c:I

    .line 4
    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->d:I

    .line 5
    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->e:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->g:I

    .line 7
    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->k:I

    .line 8
    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->l:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    iput v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->u:F

    .line 10
    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->v:I

    .line 11
    sget-object p1, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;->SLIDE:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->w:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;

    .line 12
    sget p1, Lcom/yandex/div/R$id;->tab_sliding_oval_indicator:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->m:I

    .line 15
    iget-boolean v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->t:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    add-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->m:I

    .line 16
    :cond_0
    iget p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->m:I

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->m(I)V

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->o:Landroid/graphics/Paint;

    .line 18
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->q:Landroid/graphics/RectF;

    .line 20
    iput p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->r:I

    .line 21
    iput p3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->s:I

    .line 22
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->p:Landroid/graphics/Path;

    const/16 p1, 0x8

    .line 23
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->j:[F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IILcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;IIIILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->p(IIIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->o(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->k(I)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;)I
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->v:I

    return p0
.end method

.method public static synthetic e(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;F)F
    .locals 0

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->u:F

    return p1
.end method

.method public static h(FFF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-lez v1, :cond_3

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, p0, p2

    if-nez p2, :cond_1

    return p1

    :cond_1
    cmpl-float p2, p0, p1

    if-lez p2, :cond_2

    const-string p2, "BaseIndicatorTabLayout"

    const-string v0, "Corner radius is too big"

    invoke-static {p2, v0}, Lpp5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static n(I)Z
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static q(IIF)I
    .locals 0

    sub-int/2addr p1, p0

    int-to-float p1, p1

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public A(IF)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->n:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->e:I

    iput p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->f:F

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->E()V

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->F()V

    return-void
.end method

.method public B(III)V
    .locals 4

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->h:[I

    aget v1, v0, p1

    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->i:[I

    aget v3, v2, p1

    if-ne p2, v1, :cond_0

    if-eq p3, v3, :cond_1

    :cond_0
    aput p2, v0, p1

    aput p3, v2, p1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public C(IJ)V
    .locals 2

    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->e:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->e()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lta0;

    invoke-direct {p2, p0}, Lta0;-><init>(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c$b;

    invoke-direct {p2, p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c$b;-><init>(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;)V

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->v:I

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public D(IJIIII)V
    .locals 8

    if-ne p4, p6, :cond_0

    if-eq p5, p7, :cond_1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->e()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lsa0;

    move-object v2, p2

    move-object v3, p0

    move v4, p4

    move v5, p6

    move v6, p5

    move v7, p7

    invoke-direct/range {v2 .. v7}, Lsa0;-><init>(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;IIII)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c$a;

    invoke-direct {p2, p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c$a;-><init>(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;)V

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->v:I

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public E()V
    .locals 12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->m:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->m(I)V

    :cond_0
    iget v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->e:I

    invoke-virtual {p0, v1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->k(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/yandex/div/internal/widget/tabs/TabView;

    if-nez v4, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v5, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->w:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;

    sget-object v6, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;->SLIDE:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;

    if-ne v5, v6, :cond_3

    if-ne v2, v1, :cond_3

    iget v5, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->f:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    add-int/lit8 v5, v0, -0x1

    if-ge v2, v5, :cond_3

    iget-boolean v5, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->t:Z

    if-eqz v5, :cond_2

    add-int/lit8 v5, v2, 0x2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v2, 0x1

    :goto_1
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget v6, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->f:F

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->f:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v9, v8, v7

    int-to-float v10, v4

    mul-float/2addr v9, v10

    add-float/2addr v6, v9

    float-to-int v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v7, v5

    iget v5, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->f:F

    sub-float/2addr v8, v5

    int-to-float v5, v3

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    float-to-int v5, v7

    move v11, v5

    move v5, v4

    move v4, v11

    goto :goto_2

    :cond_3
    move v5, v4

    move v6, v5

    move v4, v3

    goto :goto_2

    :cond_4
    const/4 v4, -0x1

    move v3, v4

    move v5, v3

    move v6, v5

    :goto_2
    invoke-virtual {p0, v2, v5, v3}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->B(III)V

    if-ne v2, v1, :cond_5

    invoke-virtual {p0, v6, v4}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->z(II)V

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public F()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->f:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->u:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->u:F

    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->e:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->m:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->v:I

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gez p2, :cond_0

    move p2, v0

    :cond_0
    if-nez p2, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->g:I

    invoke-virtual {p0, v2, v3}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->x(Landroid/view/ViewGroup$LayoutParams;I)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {p0, p3, v1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->x(Landroid/view/ViewGroup$LayoutParams;I)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p3

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->g:I

    invoke-virtual {p0, p3, v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->x(Landroid/view/ViewGroup$LayoutParams;I)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p3

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->d:I

    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    iget v9, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->m:I

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v9, :cond_0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->h:[I

    aget v3, v1, v10

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->i:[I

    aget v4, v1, v10

    iget v6, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->d:I

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, p1

    move v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->i(Landroid/graphics/Canvas;IIFIF)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->c:I

    if-eq v1, v8, :cond_3

    iget v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->e:I

    invoke-virtual {p0, v1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->k(I)I

    move-result v1

    iget v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->v:I

    invoke-virtual {p0, v2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->k(I)I

    move-result v9

    sget-object v2, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$a;->a:[I

    iget-object v3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->w:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->h:[I

    aget v3, v2, v1

    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->i:[I

    aget v4, v2, v1

    iget v6, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->c:I

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, p1

    move v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->i(Landroid/graphics/Canvas;IIFIF)V

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->k:I

    iget v4, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->l:I

    iget v6, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->c:I

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, p1

    move v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->i(Landroid/graphics/Canvas;IIFIF)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->h:[I

    aget v3, v2, v1

    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->i:[I

    aget v4, v2, v1

    iget v6, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->c:I

    iget v7, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->u:F

    move-object v1, p0

    move-object v2, p1

    move v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->i(Landroid/graphics/Canvas;IIFIF)V

    iget v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->v:I

    if-eq v1, v8, :cond_3

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->h:[I

    aget v3, v1, v9

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->i:[I

    aget v4, v1, v9

    iget v6, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->c:I

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->u:F

    sub-float v7, v1, v2

    move-object v1, p0

    move-object v2, p1

    move v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->i(Landroid/graphics/Canvas;IIFIF)V

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public f(IJ)V
    .locals 8

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->n:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    long-to-float p2, v0

    mul-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-long p2, p2

    :cond_0
    move-wide v2, p2

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->j(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->E()V

    return-void

    :cond_1
    sget-object p3, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$a;->a:[I

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->w:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->A(IF)V

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->k:I

    iget v5, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->l:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v7

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->D(IJIIII)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, v2, v3}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->C(IJ)V

    :goto_0
    return-void
.end method

.method public g()Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final i(Landroid/graphics/Canvas;IIFIF)V
    .locals 3

    if-ltz p2, :cond_1

    if-le p3, p2, :cond_1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->q:Landroid/graphics/RectF;

    int-to-float p2, p2

    iget v1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->r:I

    int-to-float v1, v1

    int-to-float p3, p3

    iget v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->s:I

    int-to-float v2, v2

    sub-float/2addr p4, v2

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->q:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    iget-object p3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->q:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    const/16 p4, 0x8

    new-array v0, p4, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_0

    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->j:[F

    aget v2, v2, v1

    invoke-static {v2, p2, p3}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->h(FFF)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->p:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->p:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->q:Landroid/graphics/RectF;

    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p3, v0, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->p:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->o:Landroid/graphics/Paint;

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->o:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p6

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object p3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->o:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->p:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public j(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->k(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final k(I)I
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->t:Z

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    :cond_0
    return p1
.end method

.method public l()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->t:Z

    return p0
.end method

.method public final m(I)V
    .locals 2

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->m:I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->h:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->i:[I

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->m:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->h:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->i:[I

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic o(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->u:F

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->E()V

    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->n:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide p3

    long-to-float p1, p3

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->v:I

    int-to-long p3, p1

    invoke-virtual {p0, p2, p3, p4}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->f(IJ)V

    :cond_0
    return-void
.end method

.method public final synthetic p(IIIILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p5

    invoke-static {p1, p2, p5}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->q(IIF)I

    move-result p1

    invoke-static {p3, p4, p5}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->q(IIF)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->z(II)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public r(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->w:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->w:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;

    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->n:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public s(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->t:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->t:Z

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->F()V

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->E()V

    :cond_0
    return-void
.end method

.method public t(I)V
    .locals 1

    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->d:I

    if-eq v0, p1, :cond_1

    invoke-static {p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->d:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->d:I

    :goto_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public u([F)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->j:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->j:[F

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public v(I)V
    .locals 1

    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->b:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->b:I

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public w(I)V
    .locals 4

    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->g:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->g:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->g:I

    invoke-virtual {p0, v2, v3}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->x(Landroid/view/ViewGroup$LayoutParams;I)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final x(Landroid/view/ViewGroup$LayoutParams;I)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return-object p1
.end method

.method public y(I)V
    .locals 1

    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->c:I

    if-eq v0, p1, :cond_1

    invoke-static {p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->c:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->c:I

    :goto_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public z(II)V
    .locals 1

    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->k:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->l:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->k:I

    iput p2, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->l:I

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method
