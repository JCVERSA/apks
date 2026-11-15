.class public Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;
.super Landroid/widget/FrameLayout;
.source "source.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Lcom/transsion/baseui/widget/shimmer/b;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->a:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Lcom/transsion/baseui/widget/shimmer/b;

    invoke-direct {v0}, Lcom/transsion/baseui/widget/shimmer/b;-><init>()V

    iput-object v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->b:Lcom/transsion/baseui/widget/shimmer/b;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->c:Z

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->a:Landroid/graphics/Paint;

    .line 8
    new-instance v0, Lcom/transsion/baseui/widget/shimmer/b;

    invoke-direct {v0}, Lcom/transsion/baseui/widget/shimmer/b;-><init>()V

    iput-object v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->b:Lcom/transsion/baseui/widget/shimmer/b;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->c:Z

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->a:Landroid/graphics/Paint;

    .line 13
    new-instance p3, Lcom/transsion/baseui/widget/shimmer/b;

    invoke-direct {p3}, Lcom/transsion/baseui/widget/shimmer/b;-><init>()V

    iput-object p3, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->b:Lcom/transsion/baseui/widget/shimmer/b;

    const/4 p3, 0x1

    .line 14
    iput-boolean p3, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->c:Z

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->a:Landroid/graphics/Paint;

    .line 18
    new-instance p3, Lcom/transsion/baseui/widget/shimmer/b;

    invoke-direct {p3}, Lcom/transsion/baseui/widget/shimmer/b;-><init>()V

    iput-object p3, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->b:Lcom/transsion/baseui/widget/shimmer/b;

    const/4 p3, 0x1

    .line 19
    iput-boolean p3, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->c:Z

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->b:Lcom/transsion/baseui/widget/shimmer/b;

    .line 11
    .line 12
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 13
    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    new-instance p1, Lcom/transsion/baseui/widget/shimmer/a$a;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/transsion/baseui/widget/shimmer/a$a;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/transsion/baseui/widget/shimmer/a$b;->a()Lcom/transsion/baseui/widget/shimmer/a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->setShimmer(Lcom/transsion/baseui/widget/shimmer/a;)Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    sget-object v1, Lcom/transsion/baseui/R$styleable;->ShimmerFrameLayout:[I

    .line 31
    .line 32
    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :try_start_0
    sget p2, Lcom/transsion/baseui/R$styleable;->ShimmerFrameLayout_shimmer_colored:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    sget p2, Lcom/transsion/baseui/R$styleable;->ShimmerFrameLayout_shimmer_colored:I

    .line 45
    .line 46
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    new-instance p2, Lcom/transsion/baseui/widget/shimmer/a$c;

    .line 53
    .line 54
    invoke-direct {p2}, Lcom/transsion/baseui/widget/shimmer/a$c;-><init>()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p2

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    new-instance p2, Lcom/transsion/baseui/widget/shimmer/a$a;

    .line 61
    .line 62
    invoke-direct {p2}, Lcom/transsion/baseui/widget/shimmer/a$a;-><init>()V

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {p2, p1}, Lcom/transsion/baseui/widget/shimmer/a$b;->c(Landroid/content/res/TypedArray;)Lcom/transsion/baseui/widget/shimmer/a$b;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p2}, Lcom/transsion/baseui/widget/shimmer/a$b;->a()Lcom/transsion/baseui/widget/shimmer/a;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p0, p2}, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->setShimmer(Lcom/transsion/baseui/widget/shimmer/a;)Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    .line 82
    .line 83
    throw p2
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->c:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->b:Lcom/transsion/baseui/widget/shimmer/b;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/transsion/baseui/widget/shimmer/b;->draw(Landroid/graphics/Canvas;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public hideShimmer()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->stopShimmer()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->c:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public isShimmerStarted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->b:Lcom/transsion/baseui/widget/shimmer/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baseui/widget/shimmer/b;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isShimmerVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->c:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->b:Lcom/transsion/baseui/widget/shimmer/b;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/baseui/widget/shimmer/b;->b()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->stopShimmer()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iget-object p3, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->b:Lcom/transsion/baseui/widget/shimmer/b;

    .line 13
    .line 14
    const/4 p4, 0x0

    .line 15
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->c:Z

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->b:Lcom/transsion/baseui/widget/shimmer/b;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/transsion/baseui/widget/shimmer/b;->b()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->stopShimmer()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public setShimmer(Lcom/transsion/baseui/widget/shimmer/a;)Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;
    .locals 1
    .param p1    # Lcom/transsion/baseui/widget/shimmer/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->b:Lcom/transsion/baseui/widget/shimmer/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/baseui/widget/shimmer/b;->d(Lcom/transsion/baseui/widget/shimmer/a;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-boolean p1, p1, Lcom/transsion/baseui/widget/shimmer/a;->o:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    iget-object v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->a:Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.method public setShimmerListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->b:Lcom/transsion/baseui/widget/shimmer/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/baseui/widget/shimmer/b;->e(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public showShimmer(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->c:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->startShimmer()V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public startShimmer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->b:Lcom/transsion/baseui/widget/shimmer/b;

    invoke-virtual {v0}, Lcom/transsion/baseui/widget/shimmer/b;->f()V

    return-void
.end method

.method public startShimmer(ILandroid/animation/AnimatorListenerAdapter;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->b:Lcom/transsion/baseui/widget/shimmer/b;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/baseui/widget/shimmer/b;->g(ILandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public stopShimmer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->b:Lcom/transsion/baseui/widget/shimmer/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baseui/widget/shimmer/b;->h()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/baseui/widget/shimmer/ShimmerFrameLayout;->b:Lcom/transsion/baseui/widget/shimmer/b;

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    :goto_1
    return p1
.end method
