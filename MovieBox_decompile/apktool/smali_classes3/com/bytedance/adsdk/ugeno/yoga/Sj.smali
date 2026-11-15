.class public Lcom/bytedance/adsdk/ugeno/yoga/Sj;
.super Landroid/view/ViewGroup;
.source "source.java"


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    instance-of p2, p1, Lcom/bytedance/adsdk/ugeno/yoga/Sj;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    throw v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/bytedance/adsdk/ugeno/yoga/Fmk;->Sj()Lcom/bytedance/adsdk/ugeno/yoga/aa;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    new-instance v1, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;

    .line 12
    .line 13
    invoke-direct {v1, p3}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p2, p1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;Lcom/bytedance/adsdk/ugeno/yoga/aa;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/bytedance/adsdk/ugeno/yoga/Dq$sP;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$sP;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/uA;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;

    .line 2
    .line 3
    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getYogaNode()Lcom/bytedance/adsdk/ugeno/yoga/aa;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string p2, "Attempting to layout a VirtualYogaLayout"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
