.class public Lcom/tn/lib/view/indicator/CircleIndicator;
.super Lcom/tn/lib/view/indicator/BaseIndicator;
.source "source.java"


# instance fields
.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/tn/lib/view/indicator/CircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/tn/lib/view/indicator/CircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/tn/lib/view/indicator/BaseIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    iget-object p1, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    invoke-virtual {p1}, Lcom/tn/lib/view/indicator/a;->h()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/tn/lib/view/indicator/CircleIndicator;->d:I

    .line 5
    iget-object p1, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    invoke-virtual {p1}, Lcom/tn/lib/view/indicator/a;->k()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/tn/lib/view/indicator/CircleIndicator;->e:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

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
    move v4, v2

    .line 17
    :goto_0
    if-ge v4, v0, :cond_5

    .line 18
    .line 19
    iget-object v5, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 20
    .line 21
    invoke-virtual {v5}, Lcom/tn/lib/view/indicator/a;->a()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-ne v5, v4, :cond_1

    .line 26
    .line 27
    move v5, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v5, v2

    .line 30
    :goto_1
    iget-object v6, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->b:Landroid/graphics/Paint;

    .line 31
    .line 32
    iget-object v7, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 33
    .line 34
    if-eqz v5, :cond_2

    .line 35
    .line 36
    invoke-virtual {v7}, Lcom/tn/lib/view/indicator/a;->j()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {v7}, Lcom/tn/lib/view/indicator/a;->g()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    :goto_2
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v6, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 49
    .line 50
    if-eqz v5, :cond_3

    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/tn/lib/view/indicator/a;->k()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    invoke-virtual {v6}, Lcom/tn/lib/view/indicator/a;->h()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    :goto_3
    if-eqz v5, :cond_4

    .line 62
    .line 63
    iget v5, p0, Lcom/tn/lib/view/indicator/CircleIndicator;->e:I

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_4
    iget v5, p0, Lcom/tn/lib/view/indicator/CircleIndicator;->d:I

    .line 67
    .line 68
    :goto_4
    int-to-float v5, v5

    .line 69
    add-float v7, v3, v5

    .line 70
    .line 71
    iget v8, p0, Lcom/tn/lib/view/indicator/CircleIndicator;->f:I

    .line 72
    .line 73
    int-to-float v8, v8

    .line 74
    iget-object v9, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->b:Landroid/graphics/Paint;

    .line 75
    .line 76
    invoke-virtual {p1, v7, v8, v5, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 77
    .line 78
    .line 79
    iget-object v5, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 80
    .line 81
    invoke-virtual {v5}, Lcom/tn/lib/view/indicator/a;->e()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    add-int/2addr v6, v5

    .line 86
    int-to-float v5, v6

    .line 87
    add-float/2addr v3, v5

    .line 88
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

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
    iget-object v0, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/tn/lib/view/indicator/a;->h()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    div-int/lit8 v0, v0, 0x2

    .line 21
    .line 22
    iput v0, p0, Lcom/tn/lib/view/indicator/CircleIndicator;->d:I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/tn/lib/view/indicator/a;->k()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    div-int/lit8 v0, v0, 0x2

    .line 31
    .line 32
    iput v0, p0, Lcom/tn/lib/view/indicator/CircleIndicator;->e:I

    .line 33
    .line 34
    iget v1, p0, Lcom/tn/lib/view/indicator/CircleIndicator;->d:I

    .line 35
    .line 36
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/tn/lib/view/indicator/CircleIndicator;->f:I

    .line 41
    .line 42
    sub-int/2addr p1, p2

    .line 43
    iget-object p2, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/tn/lib/view/indicator/a;->e()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    mul-int/2addr p2, p1

    .line 50
    iget-object v0, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/tn/lib/view/indicator/a;->k()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    add-int/2addr p2, v0

    .line 57
    iget-object v0, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/tn/lib/view/indicator/a;->h()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    mul-int/2addr v0, p1

    .line 64
    add-int/2addr p2, v0

    .line 65
    iget-object p1, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/tn/lib/view/indicator/a;->h()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iget-object v0, p0, Lcom/tn/lib/view/indicator/BaseIndicator;->a:Lcom/tn/lib/view/indicator/a;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/tn/lib/view/indicator/a;->k()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
