.class public Lcom/mgadplus/viewgroup/ADRationalLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:Z

.field public f:Z


# virtual methods
.method public getRatio()F
    .locals 0

    iget p0, p0, Lcom/mgadplus/viewgroup/ADRationalLayout;->d:F

    return p0
.end method

.method public onMeasure(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/ADRationalLayout;->e:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-boolean p1, p0, Lcom/mgadplus/viewgroup/ADRationalLayout;->f:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p2, p1

    iget v0, p0, Lcom/mgadplus/viewgroup/ADRationalLayout;->d:F

    div-float/2addr p2, v0

    float-to-int p2, p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p1, p2

    iget v0, p0, Lcom/mgadplus/viewgroup/ADRationalLayout;->d:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p2, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    :goto_1
    return-void
.end method

.method public setRatio(F)V
    .locals 0

    iput p1, p0, Lcom/mgadplus/viewgroup/ADRationalLayout;->d:F

    return-void
.end method

.method public setRatioHeight(F)V
    .locals 0

    iput p1, p0, Lcom/mgadplus/viewgroup/ADRationalLayout;->c:F

    return-void
.end method

.method public setRatioWidth(F)V
    .locals 0

    iput p1, p0, Lcom/mgadplus/viewgroup/ADRationalLayout;->b:F

    return-void
.end method
