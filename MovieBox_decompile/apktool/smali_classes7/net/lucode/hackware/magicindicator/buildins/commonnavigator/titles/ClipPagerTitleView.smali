.class public Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;
.super Landroid/view/View;
.source "source.java"

# interfaces
.implements Lxy/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Z

.field private e:F

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->g:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->a(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    .line 2
    .line 3
    invoke-static {p1, v0, v1}, Lwy/b;->a(Landroid/content/Context;D)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Landroid/graphics/Paint;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->f:Landroid/graphics/Paint;

    .line 14
    .line 15
    int-to-float v0, v0

    .line 16
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 17
    .line 18
    .line 19
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 20
    .line 21
    invoke-static {p1, v0, v1}, Lwy/b;->a(Landroid/content/Context;D)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private b(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/high16 v1, -0x80000000

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->g:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/2addr p1, v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/2addr p1, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->g:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    add-int/2addr v0, v1

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/2addr v0, v1

    .line 49
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    :goto_0
    return p1
.end method

.method private c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->f:Landroid/graphics/Paint;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    move v3, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    :goto_0
    iget-object v4, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->g:Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private d(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/high16 v1, -0x80000000

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->g:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/2addr p1, v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/2addr p1, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->g:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    add-int/2addr v0, v1

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/2addr v0, v1

    .line 49
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    :goto_0
    return p1
.end method


# virtual methods
.method public getClipColor()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public getContentBottom()I
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->f:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 8
    .line 9
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 10
    .line 11
    sub-float/2addr v1, v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    div-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    int-to-float v0, v0

    .line 19
    const/high16 v2, 0x40000000    # 2.0f

    .line 20
    .line 21
    div-float/2addr v1, v2

    .line 22
    add-float/2addr v0, v1

    .line 23
    float-to-int v0, v0

    .line 24
    return v0
.end method

.method public getContentLeft()I
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->g:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    div-int/lit8 v2, v2, 0x2

    .line 16
    .line 17
    add-int/2addr v1, v2

    .line 18
    div-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    sub-int/2addr v1, v0

    .line 21
    return v1
.end method

.method public getContentRight()I
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->g:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    div-int/lit8 v2, v2, 0x2

    .line 16
    .line 17
    add-int/2addr v1, v2

    .line 18
    div-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    add-int/2addr v1, v0

    .line 21
    return v1
.end method

.method public getContentTop()I
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->f:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 8
    .line 9
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 10
    .line 11
    sub-float/2addr v1, v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    div-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    int-to-float v0, v0

    .line 19
    const/high16 v2, 0x40000000    # 2.0f

    .line 20
    .line 21
    div-float/2addr v1, v2

    .line 22
    sub-float/2addr v0, v1

    .line 23
    float-to-int v0, v0

    .line 24
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->f:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onDeselected(II)V
    .locals 0

    .line 1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->g:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    div-int/lit8 v0, v0, 0x2

    .line 13
    .line 14
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->f:Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    int-to-float v2, v2

    .line 25
    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 26
    .line 27
    sub-float/2addr v2, v3

    .line 28
    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 29
    .line 30
    sub-float/2addr v2, v1

    .line 31
    const/high16 v1, 0x40000000    # 2.0f

    .line 32
    .line 33
    div-float/2addr v2, v1

    .line 34
    float-to-int v1, v2

    .line 35
    iget-object v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->f:Landroid/graphics/Paint;

    .line 36
    .line 37
    iget v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->b:I

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->a:Ljava/lang/String;

    .line 43
    .line 44
    int-to-float v0, v0

    .line 45
    int-to-float v1, v1

    .line 46
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->f:Landroid/graphics/Paint;

    .line 47
    .line 48
    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 52
    .line 53
    .line 54
    iget-boolean v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->d:Z

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    int-to-float v2, v2

    .line 64
    iget v4, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->e:F

    .line 65
    .line 66
    mul-float/2addr v2, v4

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    int-to-float v4, v4

    .line 72
    invoke-virtual {p1, v3, v3, v2, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    int-to-float v2, v2

    .line 81
    const/high16 v4, 0x3f800000    # 1.0f

    .line 82
    .line 83
    iget v5, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->e:F

    .line 84
    .line 85
    sub-float/2addr v4, v5

    .line 86
    mul-float/2addr v2, v4

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    int-to-float v4, v4

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    int-to-float v5, v5

    .line 97
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 98
    .line 99
    .line 100
    :goto_0
    iget-object v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->f:Landroid/graphics/Paint;

    .line 101
    .line 102
    iget v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->c:I

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    .line 106
    .line 107
    iget-object v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->a:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->f:Landroid/graphics/Paint;

    .line 110
    .line 111
    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public onEnter(IIFZ)V
    .locals 0

    .line 1
    iput-boolean p4, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->d:Z

    .line 2
    .line 3
    iput p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->e:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onLeave(IIFZ)V
    .locals 0

    .line 1
    xor-int/lit8 p1, p4, 0x1

    .line 2
    .line 3
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->d:Z

    .line 4
    .line 5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    sub-float/2addr p1, p3

    .line 8
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->e:F

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->c()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->d(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-direct {p0, p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->b(I)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onSelected(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public setClipColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->c:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/ClipPagerTitleView;->f:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
