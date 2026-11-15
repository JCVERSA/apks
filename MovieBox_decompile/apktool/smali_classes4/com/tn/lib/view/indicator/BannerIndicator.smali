.class public Lcom/tn/lib/view/indicator/BannerIndicator;
.super Lcom/tn/lib/view/indicator/BaseIndicator;
.source "source.java"


# instance fields
.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/tn/lib/view/indicator/BannerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/tn/lib/view/indicator/BannerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/tn/lib/view/indicator/BaseIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 4
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/tn/lib/view/indicator/BannerIndicator;->d:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/tn/lib/view/indicator/a;->d()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-gt v0, v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    move v12, v2

    .line 17
    :goto_0
    if-ge v12, v0, :cond_5

    .line 18
    .line 19
    iget-object v4, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/tn/lib/view/indicator/a;->a()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-ne v4, v12, :cond_1

    .line 26
    .line 27
    move v4, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v4, v2

    .line 30
    :goto_1
    iget-object v5, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->b:Landroid/graphics/Paint;

    .line 31
    .line 32
    iget-object v6, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 33
    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    invoke-virtual {v6}, Lcom/tn/lib/view/indicator/a;->j()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {v6}, Lcom/tn/lib/view/indicator/a;->g()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    :goto_2
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v5, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 49
    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    invoke-virtual {v5}, Lcom/tn/lib/view/indicator/a;->k()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    :goto_3
    move v13, v5

    .line 57
    goto :goto_4

    .line 58
    :cond_3
    invoke-virtual {v5}, Lcom/tn/lib/view/indicator/a;->h()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    goto :goto_3

    .line 63
    :goto_4
    if-eqz v4, :cond_4

    .line 64
    .line 65
    int-to-float v4, v13

    .line 66
    add-float v7, v3, v4

    .line 67
    .line 68
    iget-object v4, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 69
    .line 70
    invoke-virtual {v4}, Lcom/tn/lib/view/indicator/a;->h()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    int-to-float v8, v4

    .line 75
    iget v10, p0, Lcom/tn/lib/view/indicator/BannerIndicator;->d:F

    .line 76
    .line 77
    iget-object v11, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->b:Landroid/graphics/Paint;

    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    move-object v4, p1

    .line 81
    move v5, v3

    .line 82
    move v9, v10

    .line 83
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 84
    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_4
    iget-object v4, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 88
    .line 89
    invoke-virtual {v4}, Lcom/tn/lib/view/indicator/a;->h()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    div-int/lit8 v4, v4, 0x2

    .line 94
    .line 95
    int-to-float v4, v4

    .line 96
    add-float v5, v3, v4

    .line 97
    .line 98
    iget-object v6, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->b:Landroid/graphics/Paint;

    .line 99
    .line 100
    invoke-virtual {p1, v5, v4, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 101
    .line 102
    .line 103
    :goto_5
    iget-object v4, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 104
    .line 105
    invoke-virtual {v4}, Lcom/tn/lib/view/indicator/a;->e()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    add-int/2addr v13, v4

    .line 110
    int-to-float v4, v13

    .line 111
    add-float/2addr v3, v4

    .line 112
    add-int/lit8 v12, v12, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/tn/lib/view/indicator/a;->d()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 p2, 0x1

    .line 11
    if-gt p1, p2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sub-int/2addr p1, p2

    .line 15
    iget-object p2, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/tn/lib/view/indicator/a;->e()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    mul-int/2addr p2, p1

    .line 22
    iget-object v0, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/tn/lib/view/indicator/a;->k()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-int/2addr p2, v0

    .line 29
    iget-object v0, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/tn/lib/view/indicator/a;->h()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    mul-int/2addr v0, p1

    .line 36
    add-int/2addr p2, v0

    .line 37
    iget-object p1, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/tn/lib/view/indicator/a;->h()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
