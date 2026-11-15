.class public Lcom/mgadplus/viewgroup/dynamicview/TopSmoothScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# virtual methods
.method public calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x43160000    # 150.0f

    div-float/2addr p1, p0

    return p1
.end method

.method public getHorizontalSnapPreference()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getVerticalSnapPreference()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    return-void
.end method
