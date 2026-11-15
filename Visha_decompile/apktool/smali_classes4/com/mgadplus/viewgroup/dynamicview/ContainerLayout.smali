.class public Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$c;,
        Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$b;,
        Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$a;,
        Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$d;,
        Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$e;
    }
.end annotation


# instance fields
.field public b:Z

.field public c:F

.field public d:F

.field public e:J

.field public f:J

.field public g:I

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$b;

.field public m:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$e;

.field public n:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$a;

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/ref/WeakReference;

.field public q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x1

    .line 2
    iput-wide v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->e:J

    const-wide/16 v0, 0x14

    .line 3
    iput-wide v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->f:J

    .line 4
    new-instance p1, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$1;

    invoke-direct {p1, p0}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$1;-><init>(Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->o:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->q:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x1

    .line 7
    iput-wide p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->e:J

    const-wide/16 p1, 0x14

    .line 8
    iput-wide p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->f:J

    .line 9
    new-instance p1, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$1;

    invoke-direct {p1, p0}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$1;-><init>(Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->o:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->q:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x1

    .line 12
    iput-wide p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->e:J

    const-wide/16 p1, 0x14

    .line 13
    iput-wide p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->f:J

    .line 14
    new-instance p1, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$1;

    invoke-direct {p1, p0}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$1;-><init>(Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->o:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->q:Z

    return-void
.end method


# virtual methods
.method public final a(FFFF)V
    .locals 8

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->l:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v7, v1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v7}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$b;->onClick(Landroid/view/View;FFFFFF)V

    :cond_0
    return-void
.end method

.method public getParentViewWrf()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->p:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isInLayout()Z
    .locals 0

    invoke-super {p0}, Landroid/view/View;->isInLayout()Z

    move-result p0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->n:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$a;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->n:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$a;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->q:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->g:I

    if-nez v3, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x2

    if-eqz p1, :cond_4

    const/4 v4, 0x3

    if-eq p1, v1, :cond_2

    if-eq p1, v4, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->g:I

    if-ne v3, p1, :cond_5

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->g:I

    if-ne v3, p1, :cond_3

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    if-ne v4, p1, :cond_5

    iget p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->c:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->d:F

    sub-float/2addr v2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-wide v3, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->f:J

    long-to-float p0, v3

    cmpl-float p0, p1, p0

    if-gtz p0, :cond_5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    goto :goto_0

    :cond_4
    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->c:F

    iput v2, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->d:F

    iget p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->g:I

    if-ne v3, p1, :cond_5

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->b:Z

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->o:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->e:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {p0, p1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_0
    return v1

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->i:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->k:F

    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->i:F

    iget v2, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->h:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->k:F

    iget v3, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->j:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_a

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->i:F

    iget v4, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->k:F

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->a(FFFF)V

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->i:F

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->h:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->k:F

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->j:F

    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->l:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$b;

    if-eqz v0, :cond_b

    return v1

    :cond_b
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->m:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$e;

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$e;->onVisibility(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->m:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$e;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$e;->onVisibility(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAttachedToWindowListener(Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->n:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$a;

    return-void
.end method

.method public setCallback(Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$c;)V
    .locals 0

    return-void
.end method

.method public setClickType(I)V
    .locals 0

    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->g:I

    return-void
.end method

.method public setInteractTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->q:Z

    return-void
.end method

.method public setOnConfigurationChangedListener(Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$d;)V
    .locals 0

    return-void
.end method

.method public setParentViewWrf(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->p:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setTapclickListener(Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->l:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$b;

    return-void
.end method

.method public setVibilityListener(Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$e;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->m:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$e;

    return-void
.end method
