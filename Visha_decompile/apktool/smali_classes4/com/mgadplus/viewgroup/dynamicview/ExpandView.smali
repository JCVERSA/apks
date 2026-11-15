.class public Lcom/mgadplus/viewgroup/dynamicview/ExpandView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public b:Z

.field public c:I

.field public d:I

.field public e:F

.field public f:Z


# virtual methods
.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-boolean p2, p0, Lcom/mgadplus/viewgroup/dynamicview/ExpandView;->f:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    iput p2, p0, Lcom/mgadplus/viewgroup/dynamicview/ExpandView;->d:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iput p2, p0, Lcom/mgadplus/viewgroup/dynamicview/ExpandView;->d:I

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ExpandView;->b:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ExpandView;->c:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/ExpandView;->e:F

    mul-float/2addr p2, v1

    float-to-int p2, p2

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/ExpandView;->c:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/ExpandView;->e:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setItemHeight(I)V
    .locals 0

    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ExpandView;->c:I

    return-void
.end method
