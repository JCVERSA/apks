.class public Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;
.super Landroid/view/View;
.source "source.java"

# interfaces
.implements Lxy/c;


# instance fields
.field private a:Ljava/util/List;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Path;

.field private k:Ljava/util/List;

.field private l:Landroid/view/animation/Interpolator;

.field private m:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->j:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->l:Landroid/view/animation/Interpolator;

    .line 17
    .line 18
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->m:Landroid/view/animation/Interpolator;

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->b(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->j:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->f:F

    .line 12
    .line 13
    sub-float/2addr v0, v1

    .line 14
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->g:F

    .line 15
    .line 16
    sub-float/2addr v0, v1

    .line 17
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->j:Landroid/graphics/Path;

    .line 18
    .line 19
    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->e:F

    .line 20
    .line 21
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->j:Landroid/graphics/Path;

    .line 25
    .line 26
    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->e:F

    .line 27
    .line 28
    iget v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->d:F

    .line 29
    .line 30
    sub-float v3, v0, v3

    .line 31
    .line 32
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->j:Landroid/graphics/Path;

    .line 36
    .line 37
    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->e:F

    .line 38
    .line 39
    iget v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->c:F

    .line 40
    .line 41
    sub-float v4, v3, v2

    .line 42
    .line 43
    const/high16 v5, 0x40000000    # 2.0f

    .line 44
    .line 45
    div-float/2addr v4, v5

    .line 46
    add-float/2addr v2, v4

    .line 47
    iget v4, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->b:F

    .line 48
    .line 49
    sub-float v4, v0, v4

    .line 50
    .line 51
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->j:Landroid/graphics/Path;

    .line 55
    .line 56
    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->c:F

    .line 57
    .line 58
    iget v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->b:F

    .line 59
    .line 60
    add-float/2addr v3, v0

    .line 61
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->j:Landroid/graphics/Path;

    .line 65
    .line 66
    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->e:F

    .line 67
    .line 68
    iget v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->c:F

    .line 69
    .line 70
    sub-float/2addr v3, v2

    .line 71
    div-float/2addr v3, v5

    .line 72
    add-float/2addr v3, v2

    .line 73
    iget v4, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->d:F

    .line 74
    .line 75
    add-float/2addr v4, v0

    .line 76
    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->j:Landroid/graphics/Path;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->j:Landroid/graphics/Path;

    .line 85
    .line 86
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->i:Landroid/graphics/Paint;

    .line 87
    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->i:Landroid/graphics/Paint;

    .line 8
    .line 9
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    .line 13
    .line 14
    const-wide/high16 v0, 0x400c000000000000L    # 3.5

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Lwy/b;->a(Landroid/content/Context;D)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    iput v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->g:F

    .line 22
    .line 23
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 24
    .line 25
    invoke-static {p1, v0, v1}, Lwy/b;->a(Landroid/content/Context;D)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    int-to-float v0, v0

    .line 30
    iput v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->h:F

    .line 31
    .line 32
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 33
    .line 34
    invoke-static {p1, v0, v1}, Lwy/b;->a(Landroid/content/Context;D)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    int-to-float p1, p1

    .line 39
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->f:F

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public getMaxCircleRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->g:F

    .line 2
    .line 3
    return v0
.end method

.method public getMinCircleRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->h:F

    .line 2
    .line 3
    return v0
.end method

.method public getYOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->f:F

    .line 2
    .line 3
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->c:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->f:F

    .line 9
    .line 10
    sub-float/2addr v1, v2

    .line 11
    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->g:F

    .line 12
    .line 13
    sub-float/2addr v1, v2

    .line 14
    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->b:F

    .line 15
    .line 16
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->i:Landroid/graphics/Paint;

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->e:F

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    int-to-float v1, v1

    .line 28
    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->f:F

    .line 29
    .line 30
    sub-float/2addr v1, v2

    .line 31
    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->g:F

    .line 32
    .line 33
    sub-float/2addr v1, v2

    .line 34
    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->d:F

    .line 35
    .line 36
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->i:Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->a(Landroid/graphics/Canvas;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    .line 1
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->a:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p3, :cond_2

    .line 4
    .line 5
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->k:Ljava/util/List;

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-lez p3, :cond_1

    .line 22
    .line 23
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->k:Ljava/util/List;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->k:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    rem-int/2addr v0, v1

    .line 36
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    check-cast p3, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->k:Ljava/util/List;

    .line 47
    .line 48
    add-int/lit8 v1, p1, 0x1

    .line 49
    .line 50
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iget-object v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->k:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    rem-int/2addr v1, v2

    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-static {p2, p3, v0}, Lwy/a;->a(FII)I

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->i:Landroid/graphics/Paint;

    .line 76
    .line 77
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    .line 79
    .line 80
    :cond_1
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->a:Ljava/util/List;

    .line 81
    .line 82
    invoke-static {p3, p1}, Luy/a;->f(Ljava/util/List;I)Lyy/a;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->a:Ljava/util/List;

    .line 87
    .line 88
    add-int/lit8 p1, p1, 0x1

    .line 89
    .line 90
    invoke-static {v0, p1}, Luy/a;->f(Ljava/util/List;I)Lyy/a;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget v0, p3, Lyy/a;->a:I

    .line 95
    .line 96
    iget p3, p3, Lyy/a;->c:I

    .line 97
    .line 98
    sub-int/2addr p3, v0

    .line 99
    div-int/lit8 p3, p3, 0x2

    .line 100
    .line 101
    add-int/2addr v0, p3

    .line 102
    int-to-float p3, v0

    .line 103
    iget v0, p1, Lyy/a;->a:I

    .line 104
    .line 105
    iget p1, p1, Lyy/a;->c:I

    .line 106
    .line 107
    sub-int/2addr p1, v0

    .line 108
    div-int/lit8 p1, p1, 0x2

    .line 109
    .line 110
    add-int/2addr v0, p1

    .line 111
    int-to-float p1, v0

    .line 112
    sub-float/2addr p1, p3

    .line 113
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->l:Landroid/view/animation/Interpolator;

    .line 114
    .line 115
    invoke-interface {v0, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    mul-float/2addr v0, p1

    .line 120
    add-float/2addr v0, p3

    .line 121
    iput v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->c:F

    .line 122
    .line 123
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->m:Landroid/view/animation/Interpolator;

    .line 124
    .line 125
    invoke-interface {v0, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    mul-float/2addr p1, v0

    .line 130
    add-float/2addr p3, p1

    .line 131
    iput p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->e:F

    .line 132
    .line 133
    iget p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->g:F

    .line 134
    .line 135
    iget p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->h:F

    .line 136
    .line 137
    sub-float/2addr p3, p1

    .line 138
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->m:Landroid/view/animation/Interpolator;

    .line 139
    .line 140
    invoke-interface {v0, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    mul-float/2addr p3, v0

    .line 145
    add-float/2addr p1, p3

    .line 146
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->b:F

    .line 147
    .line 148
    iget p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->h:F

    .line 149
    .line 150
    iget p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->g:F

    .line 151
    .line 152
    sub-float/2addr p3, p1

    .line 153
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->l:Landroid/view/animation/Interpolator;

    .line 154
    .line 155
    invoke-interface {v0, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    mul-float/2addr p3, p2

    .line 160
    add-float/2addr p1, p3

    .line 161
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->d:F

    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 164
    .line 165
    .line 166
    :cond_2
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPositionDataProvide(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lyy/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->a:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public varargs setColors([Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->k:Ljava/util/List;

    .line 6
    .line 7
    return-void
.end method

.method public setEndInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->m:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 6
    .line 7
    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->m:Landroid/view/animation/Interpolator;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setMaxCircleRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->g:F

    .line 2
    .line 3
    return-void
.end method

.method public setMinCircleRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->h:F

    .line 2
    .line 3
    return-void
.end method

.method public setStartInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->l:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    .line 6
    .line 7
    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->l:Landroid/view/animation/Interpolator;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setYOffset(F)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/BezierPagerIndicator;->f:F

    .line 2
    .line 3
    return-void
.end method
