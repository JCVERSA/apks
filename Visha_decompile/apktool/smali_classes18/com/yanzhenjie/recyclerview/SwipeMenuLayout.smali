.class public Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lai1;


# static fields
.field public static final DEFAULT_SCROLLER_DURATION:I = 0xc8


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:F

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Landroid/view/View;

.field public m:Lcom/yanzhenjie/recyclerview/b;

.field public n:Lcom/yanzhenjie/recyclerview/c;

.field public o:Lcom/yanzhenjie/recyclerview/a;

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Landroid/widget/OverScroller;

.field public t:Landroid/view/VelocityTracker;

.field public u:I

.field public v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->b:I

    .line 5
    iput p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->c:I

    .line 6
    iput p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->d:I

    const/high16 p3, 0x3f000000    # 0.5f

    .line 7
    iput p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->e:F

    const/16 p3, 0xc8

    .line 8
    iput p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->f:I

    const/4 p3, 0x1

    .line 9
    iput-boolean p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->r:Z

    .line 10
    invoke-virtual {p0, p3}, Landroid/view/View;->setClickable(Z)V

    .line 11
    sget-object p3, Lcom/yanzhenjie/recyclerview/x/R$styleable;->SwipeMenuLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 12
    sget p2, Lcom/yanzhenjie/recyclerview/x/R$styleable;->SwipeMenuLayout_leftViewId:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->b:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->b:I

    .line 13
    sget p2, Lcom/yanzhenjie/recyclerview/x/R$styleable;->SwipeMenuLayout_contentViewId:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->c:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->c:I

    .line 14
    sget p2, Lcom/yanzhenjie/recyclerview/x/R$styleable;->SwipeMenuLayout_rightViewId:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->d:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->d:I

    .line 15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->g:I

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->u:I

    .line 19
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->v:I

    .line 20
    new-instance p1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->s:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 2

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr p0, v0

    double-to-float p0, p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public final b(Landroid/view/MotionEvent;I)I
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->o:Lcom/yanzhenjie/recyclerview/a;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/a;->g()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->a(F)F

    move-result v2

    mul-float/2addr v2, v1

    add-float/2addr v1, v2

    if-lez p2, :cond_0

    int-to-float p1, p2

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    add-float/2addr p1, v3

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    :goto_0
    iget p0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->f:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final c(II)V
    .locals 3

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->o:Lcom/yanzhenjie/recyclerview/a;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->o:Lcom/yanzhenjie/recyclerview/a;

    invoke-virtual {v1}, Lcom/yanzhenjie/recyclerview/a;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->e:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->g:I

    if-gt p1, v0, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->g:I

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isMenuOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothOpenMenu()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isMenuOpenNotEqual()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothOpenMenu()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu()V

    :cond_5
    :goto_1
    return-void
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->s:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->o:Lcom/yanzhenjie/recyclerview/a;

    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/yanzhenjie/recyclerview/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->s:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->scrollTo(II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->s:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->scrollTo(II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(I)V
    .locals 3

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->o:Lcom/yanzhenjie/recyclerview/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->s:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/yanzhenjie/recyclerview/a;->b(Landroid/widget/OverScroller;II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public getOpenPercent()F
    .locals 0

    iget p0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->e:F

    return p0
.end method

.method public hasLeftMenu()Z
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/a;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasRightMenu()Z
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/a;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCompleteOpen()Z
    .locals 1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isLeftCompleteOpen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isRightMenuOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isLeftCompleteOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/yanzhenjie/recyclerview/a;->i(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLeftMenuOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/yanzhenjie/recyclerview/b;->j(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLeftMenuOpenNotEqual()Z
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/yanzhenjie/recyclerview/b;->k(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMenuOpen()Z
    .locals 1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isLeftMenuOpen()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isRightMenuOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isMenuOpenNotEqual()Z
    .locals 1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isLeftMenuOpenNotEqual()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isRightMenuOpenNotEqual()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isRightCompleteOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/yanzhenjie/recyclerview/a;->i(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRightMenuOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/yanzhenjie/recyclerview/c;->j(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRightMenuOpenNotEqual()Z
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/yanzhenjie/recyclerview/c;->k(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSwipeEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->r:Z

    return p0
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->b:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/b;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yanzhenjie/recyclerview/b;

    invoke-direct {v1, v0}, Lcom/yanzhenjie/recyclerview/b;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/b;

    :cond_0
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->d:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/c;

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yanzhenjie/recyclerview/c;

    invoke-direct {v1, v0}, Lcom/yanzhenjie/recyclerview/c;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/c;

    :cond_1
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->c:I

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->l:Landroid/view/View;

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->l:Landroid/view/View;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v1, "You may not have set the ContentView."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->l:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isSwipeEnable()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    const/4 p1, 0x3

    if-eq v1, p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->s:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->s:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->j:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->k:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget p0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->g:I

    if-le v1, p0, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p0, p1, :cond_4

    move v2, v3

    :cond_4
    return v2

    :cond_5
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->o:Lcom/yanzhenjie/recyclerview/a;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/yanzhenjie/recyclerview/a;->h(IF)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v3

    goto :goto_0

    :cond_6
    move p1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu()V

    return v3

    :cond_7
    return v2

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->h:I

    iput v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->j:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->k:I

    return v2
.end method

.method public onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->l:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p1

    iget-object p2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->l:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result p2

    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->l:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    iget p3, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p5, p3

    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->l:Landroid/view/View;

    add-int/2addr p1, p4

    add-int/2addr p2, p5

    invoke-virtual {p3, p4, p5, p1, p2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/a;->f()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    iget p4, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p5, p4

    neg-int p2, p2

    const/4 p4, 0x0

    add-int/2addr p3, p5

    invoke-virtual {p1, p2, p5, p4, p3}, Landroid/view/View;->layout(IIII)V

    :cond_1
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/c;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/a;->f()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    iget p4, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p5, p4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p0

    add-int/2addr p2, p0

    add-int/2addr p3, p5

    invoke-virtual {p1, p0, p5, p2, p3}, Landroid/view/View;->layout(IIII)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isSwipeEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->t:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->t:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->t:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    if-eq v0, v1, :cond_2

    goto/16 :goto_3

    :cond_2
    iput-boolean v3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->q:Z

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->s:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->s:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    goto/16 :goto_3

    :cond_3
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->j:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->k:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->c(II)V

    goto/16 :goto_3

    :cond_4
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->h:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->i:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iget-boolean v4, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->q:Z

    if-nez v4, :cond_5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->g:I

    if-le v4, v5, :cond_5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v4, v1, :cond_5

    iput-boolean v2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->q:Z

    :cond_5
    iget-boolean v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->q:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->o:Lcom/yanzhenjie/recyclerview/a;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->p:Z

    if-eqz v1, :cond_a

    :cond_6
    if-gez v0, :cond_8

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/b;

    if-eqz v1, :cond_7

    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->o:Lcom/yanzhenjie/recyclerview/a;

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/c;

    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->o:Lcom/yanzhenjie/recyclerview/a;

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/c;

    if-eqz v1, :cond_9

    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->o:Lcom/yanzhenjie/recyclerview/a;

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/b;

    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->o:Lcom/yanzhenjie/recyclerview/a;

    :cond_a
    :goto_0
    invoke-virtual {p0, v0, v3}, Landroid/view/View;->scrollBy(II)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->h:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->i:I

    iput-boolean v3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->p:Z

    goto/16 :goto_3

    :cond_b
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->j:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    iget v4, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->k:I

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput-boolean v3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->q:Z

    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->t:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->v:I

    int-to-float v5, v5

    const/16 v6, 0x3e8

    invoke-virtual {v3, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->t:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->u:I

    if-le v5, v6, :cond_f

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->o:Lcom/yanzhenjie/recyclerview/a;

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1, v5}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->o:Lcom/yanzhenjie/recyclerview/a;

    instance-of v4, v4, Lcom/yanzhenjie/recyclerview/c;

    if-eqz v4, :cond_d

    if-gez v3, :cond_c

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->d(I)V

    goto :goto_1

    :cond_c
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu(I)V

    goto :goto_1

    :cond_d
    if-lez v3, :cond_e

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->d(I)V

    goto :goto_1

    :cond_e
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu(I)V

    :goto_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_2

    :cond_f
    invoke-virtual {p0, v0, v4}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->c(II)V

    :cond_10
    :goto_2
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->t:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->t:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->t:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->j:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->g:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_11

    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->k:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->g:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_11

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isLeftMenuOpen()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isRightMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->h:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->i:I

    :cond_13
    :goto_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public scrollTo(II)V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->o:Lcom/yanzhenjie/recyclerview/a;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/a;->d(II)Lcom/yanzhenjie/recyclerview/a$a;

    move-result-object p1

    iget-boolean p2, p1, Lcom/yanzhenjie/recyclerview/a$a;->c:Z

    iput-boolean p2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->p:Z

    iget p2, p1, Lcom/yanzhenjie/recyclerview/a$a;->a:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-eq p2, v0, :cond_1

    iget p2, p1, Lcom/yanzhenjie/recyclerview/a$a;->a:I

    iget p1, p1, Lcom/yanzhenjie/recyclerview/a$a;->b:I

    invoke-super {p0, p2, p1}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOpenPercent(F)V
    .locals 0

    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->e:F

    return-void
.end method

.method public setScrollerDuration(I)V
    .locals 0

    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->f:I

    return-void
.end method

.method public setSwipeEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->r:Z

    return-void
.end method

.method public smoothCloseLeftMenu()V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/b;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->o:Lcom/yanzhenjie/recyclerview/a;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu()V

    :cond_0
    return-void
.end method

.method public smoothCloseMenu()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->f:I

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu(I)V

    return-void
.end method

.method public smoothCloseMenu(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->o:Lcom/yanzhenjie/recyclerview/a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->s:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/yanzhenjie/recyclerview/a;->a(Landroid/widget/OverScroller;II)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public smoothCloseRightMenu()V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/c;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->o:Lcom/yanzhenjie/recyclerview/a;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu()V

    :cond_0
    return-void
.end method

.method public smoothOpenLeftMenu()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->f:I

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothOpenLeftMenu(I)V

    return-void
.end method

.method public smoothOpenLeftMenu(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/b;

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->o:Lcom/yanzhenjie/recyclerview/a;

    .line 4
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->d(I)V

    :cond_0
    return-void
.end method

.method public smoothOpenMenu()V
    .locals 1

    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->f:I

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->d(I)V

    return-void
.end method

.method public smoothOpenRightMenu()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->f:I

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothOpenRightMenu(I)V

    return-void
.end method

.method public smoothOpenRightMenu(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/c;

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->o:Lcom/yanzhenjie/recyclerview/a;

    .line 4
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->d(I)V

    :cond_0
    return-void
.end method
