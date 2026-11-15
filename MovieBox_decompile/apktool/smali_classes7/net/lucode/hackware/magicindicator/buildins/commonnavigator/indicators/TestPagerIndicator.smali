.class public Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;
.super Landroid/view/View;
.source "source.java"

# interfaces
.implements Lxy/c;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/RectF;

.field private e:Landroid/graphics/RectF;

.field private f:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/RectF;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->d:Landroid/graphics/RectF;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->e:Landroid/graphics/RectF;

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->a(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->a:Landroid/graphics/Paint;

    .line 8
    .line 9
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    .line 13
    .line 14
    const/high16 p1, -0x10000

    .line 15
    .line 16
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->b:I

    .line 17
    .line 18
    const p1, -0xff0100

    .line 19
    .line 20
    .line 21
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->c:I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public getInnerRectColor()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public getOutRectColor()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->b:I

    .line 2
    .line 3
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->a:Landroid/graphics/Paint;

    .line 2
    .line 3
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->b:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->d:Landroid/graphics/RectF;

    .line 9
    .line 10
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->a:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->a:Landroid/graphics/Paint;

    .line 16
    .line 17
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->c:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->e:Landroid/graphics/RectF;

    .line 23
    .line 24
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->a:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .line 1
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->f:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p3, :cond_1

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
    goto :goto_0

    .line 12
    :cond_0
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->f:Ljava/util/List;

    .line 13
    .line 14
    invoke-static {p3, p1}, Luy/a;->f(Ljava/util/List;I)Lyy/a;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->f:Ljava/util/List;

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    invoke-static {v0, p1}, Luy/a;->f(Ljava/util/List;I)Lyy/a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->d:Landroid/graphics/RectF;

    .line 27
    .line 28
    iget v1, p3, Lyy/a;->a:I

    .line 29
    .line 30
    int-to-float v2, v1

    .line 31
    iget v3, p1, Lyy/a;->a:I

    .line 32
    .line 33
    sub-int/2addr v3, v1

    .line 34
    int-to-float v1, v3

    .line 35
    mul-float/2addr v1, p2

    .line 36
    add-float/2addr v2, v1

    .line 37
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 38
    .line 39
    iget v1, p3, Lyy/a;->b:I

    .line 40
    .line 41
    int-to-float v2, v1

    .line 42
    iget v3, p1, Lyy/a;->b:I

    .line 43
    .line 44
    sub-int/2addr v3, v1

    .line 45
    int-to-float v1, v3

    .line 46
    mul-float/2addr v1, p2

    .line 47
    add-float/2addr v2, v1

    .line 48
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 49
    .line 50
    iget v1, p3, Lyy/a;->c:I

    .line 51
    .line 52
    int-to-float v2, v1

    .line 53
    iget v3, p1, Lyy/a;->c:I

    .line 54
    .line 55
    sub-int/2addr v3, v1

    .line 56
    int-to-float v1, v3

    .line 57
    mul-float/2addr v1, p2

    .line 58
    add-float/2addr v2, v1

    .line 59
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 60
    .line 61
    iget v1, p3, Lyy/a;->d:I

    .line 62
    .line 63
    int-to-float v2, v1

    .line 64
    iget v3, p1, Lyy/a;->d:I

    .line 65
    .line 66
    sub-int/2addr v3, v1

    .line 67
    int-to-float v1, v3

    .line 68
    mul-float/2addr v1, p2

    .line 69
    add-float/2addr v2, v1

    .line 70
    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 71
    .line 72
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->e:Landroid/graphics/RectF;

    .line 73
    .line 74
    iget v1, p3, Lyy/a;->e:I

    .line 75
    .line 76
    int-to-float v2, v1

    .line 77
    iget v3, p1, Lyy/a;->e:I

    .line 78
    .line 79
    sub-int/2addr v3, v1

    .line 80
    int-to-float v1, v3

    .line 81
    mul-float/2addr v1, p2

    .line 82
    add-float/2addr v2, v1

    .line 83
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 84
    .line 85
    iget v1, p3, Lyy/a;->f:I

    .line 86
    .line 87
    int-to-float v2, v1

    .line 88
    iget v3, p1, Lyy/a;->f:I

    .line 89
    .line 90
    sub-int/2addr v3, v1

    .line 91
    int-to-float v1, v3

    .line 92
    mul-float/2addr v1, p2

    .line 93
    add-float/2addr v2, v1

    .line 94
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 95
    .line 96
    iget v1, p3, Lyy/a;->g:I

    .line 97
    .line 98
    int-to-float v2, v1

    .line 99
    iget v3, p1, Lyy/a;->g:I

    .line 100
    .line 101
    sub-int/2addr v3, v1

    .line 102
    int-to-float v1, v3

    .line 103
    mul-float/2addr v1, p2

    .line 104
    add-float/2addr v2, v1

    .line 105
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 106
    .line 107
    iget p3, p3, Lyy/a;->h:I

    .line 108
    .line 109
    int-to-float v1, p3

    .line 110
    iget p1, p1, Lyy/a;->h:I

    .line 111
    .line 112
    sub-int/2addr p1, p3

    .line 113
    int-to-float p1, p1

    .line 114
    mul-float/2addr p1, p2

    .line 115
    add-float/2addr v1, p1

    .line 116
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 119
    .line 120
    .line 121
    :cond_1
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
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->f:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setInnerRectColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public setOutRectColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/TestPagerIndicator;->b:I

    .line 2
    .line 3
    return-void
.end method
