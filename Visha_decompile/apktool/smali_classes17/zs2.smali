.class public abstract Lzs2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/graphics/Canvas;Landroid/text/Layout;IIIILcom/yandex/div2/DivTextRangeBorder;Lcom/yandex/div2/DivTextRangeBackground;)V
.end method

.method public final b(Landroid/text/Layout;I)I
    .locals 1

    const-string v0, "layout"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lzs2;->c(Landroid/text/Layout;I)I

    move-result p0

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/text/Layout;->getBottomPadding()I

    move-result p1

    sub-int/2addr p0, p1

    :cond_0
    return p0
.end method

.method public final c(Landroid/text/Layout;I)I
    .locals 6

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v1

    invoke-virtual {p1}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v4, :cond_1

    cmpg-float v4, v3, v5

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1, p2}, Lzs2;->d(Landroid/text/Layout;I)I

    move-result p0

    int-to-float p0, p0

    sub-float p1, p0, v1

    div-float/2addr p1, v3

    sub-float v1, p0, p1

    :cond_3
    int-to-float p0, v0

    sub-float/2addr p0, v1

    float-to-int v0, p0

    :goto_1
    return v0
.end method

.method public final d(Landroid/text/Layout;I)I
    .locals 0

    add-int/lit8 p0, p2, 0x1

    invoke-virtual {p1, p0}, Landroid/text/Layout;->getLineTop(I)I

    move-result p0

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public final e(Landroid/text/Layout;I)I
    .locals 0

    const-string p0, "layout"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result p0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/text/Layout;->getTopPadding()I

    move-result p1

    sub-int/2addr p0, p1

    :cond_0
    return p0
.end method
