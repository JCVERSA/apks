.class public Lcom/mgmi/ViewGroup/convenientbanner/a;
.super Landroid/widget/Scroller;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z


# virtual methods
.method public a()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/a;->a:I

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/a;->a:I

    return-void
.end method

.method public startScroll(IIII)V
    .locals 7

    .line 2
    iget-boolean v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/a;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/a;->a:I

    goto :goto_0

    :goto_1
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-super/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6

    .line 1
    iget-boolean p5, p0, Lcom/mgmi/ViewGroup/convenientbanner/a;->b:Z

    if-eqz p5, :cond_0

    const/4 p5, 0x0

    :goto_0
    move v5, p5

    goto :goto_1

    :cond_0
    iget p5, p0, Lcom/mgmi/ViewGroup/convenientbanner/a;->a:I

    goto :goto_0

    :goto_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
