.class public Lcom/mgadplus/viewgroup/dynamicview/ContainerFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgadplus/viewgroup/dynamicview/ContainerFrameLayout$a;
    }
.end annotation


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:F


# virtual methods
.method public final a(FFFF)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerFrameLayout;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerFrameLayout;->e:F

    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerFrameLayout;->c:F

    iget v2, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerFrameLayout;->b:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerFrameLayout;->e:F

    iget v3, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerFrameLayout;->d:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v2, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerFrameLayout;->c:F

    iget v3, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerFrameLayout;->e:F

    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/mgadplus/viewgroup/dynamicview/ContainerFrameLayout;->a(FFFF)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerFrameLayout;->c:F

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerFrameLayout;->b:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerFrameLayout;->e:F

    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerFrameLayout;->d:F

    :cond_3
    :goto_0
    return v1
.end method

.method public setTapclickListener(Lcom/mgadplus/viewgroup/dynamicview/ContainerFrameLayout$a;)V
    .locals 0

    return-void
.end method
