.class public Lcom/warkiz/widget/CircleBubbleView;
.super Landroid/view/View;
.source "source.java"


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:Landroid/content/Context;

.field private e:Landroid/graphics/Path;

.field private f:Landroid/graphics/Paint;

.field private g:F

.field private h:F

.field private i:F

.field private j:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;FIILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/warkiz/widget/CircleBubbleView;->d:Landroid/content/Context;

    .line 7
    .line 8
    iput p2, p0, Lcom/warkiz/widget/CircleBubbleView;->c:F

    .line 9
    .line 10
    iput p3, p0, Lcom/warkiz/widget/CircleBubbleView;->a:I

    .line 11
    .line 12
    iput p4, p0, Lcom/warkiz/widget/CircleBubbleView;->b:I

    .line 13
    .line 14
    invoke-direct {p0, p5}, Lcom/warkiz/widget/CircleBubbleView;->a(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->f:Landroid/graphics/Paint;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->f:Landroid/graphics/Paint;

    .line 13
    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->f:Landroid/graphics/Paint;

    .line 20
    .line 21
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->f:Landroid/graphics/Paint;

    .line 27
    .line 28
    iget v1, p0, Lcom/warkiz/widget/CircleBubbleView;->c:F

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/warkiz/widget/CircleBubbleView;->f:Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iget-object v1, p0, Lcom/warkiz/widget/CircleBubbleView;->d:Landroid/content/Context;

    .line 53
    .line 54
    const/high16 v2, 0x40800000    # 4.0f

    .line 55
    .line 56
    invoke-static {v1, v2}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr p1, v1

    .line 61
    int-to-float p1, p1

    .line 62
    iput p1, p0, Lcom/warkiz/widget/CircleBubbleView;->g:F

    .line 63
    .line 64
    iget-object p1, p0, Lcom/warkiz/widget/CircleBubbleView;->d:Landroid/content/Context;

    .line 65
    .line 66
    const/high16 v1, 0x42100000    # 36.0f

    .line 67
    .line 68
    invoke-static {p1, v1}, Lcom/warkiz/widget/g;->a(Landroid/content/Context;F)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iget v1, p0, Lcom/warkiz/widget/CircleBubbleView;->g:F

    .line 73
    .line 74
    int-to-float p1, p1

    .line 75
    cmpg-float v1, v1, p1

    .line 76
    .line 77
    if-gez v1, :cond_0

    .line 78
    .line 79
    iput p1, p0, Lcom/warkiz/widget/CircleBubbleView;->g:F

    .line 80
    .line 81
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    int-to-float p1, p1

    .line 86
    iput p1, p0, Lcom/warkiz/widget/CircleBubbleView;->i:F

    .line 87
    .line 88
    iget p1, p0, Lcom/warkiz/widget/CircleBubbleView;->g:F

    .line 89
    .line 90
    const v0, 0x3f99999a    # 1.2f

    .line 91
    .line 92
    .line 93
    mul-float/2addr p1, v0

    .line 94
    iput p1, p0, Lcom/warkiz/widget/CircleBubbleView;->h:F

    .line 95
    .line 96
    invoke-direct {p0}, Lcom/warkiz/widget/CircleBubbleView;->b()V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method private b()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->e:Landroid/graphics/Path;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/RectF;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iget v2, p0, Lcom/warkiz/widget/CircleBubbleView;->g:F

    .line 12
    .line 13
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/warkiz/widget/CircleBubbleView;->e:Landroid/graphics/Path;

    .line 17
    .line 18
    const/high16 v2, 0x43070000    # 135.0f

    .line 19
    .line 20
    const/high16 v3, 0x43870000    # 270.0f

    .line 21
    .line 22
    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->e:Landroid/graphics/Path;

    .line 26
    .line 27
    iget v1, p0, Lcom/warkiz/widget/CircleBubbleView;->g:F

    .line 28
    .line 29
    const/high16 v2, 0x40000000    # 2.0f

    .line 30
    .line 31
    div-float/2addr v1, v2

    .line 32
    iget v2, p0, Lcom/warkiz/widget/CircleBubbleView;->h:F

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->e:Landroid/graphics/Path;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->f:Landroid/graphics/Paint;

    .line 2
    .line 3
    iget v1, p0, Lcom/warkiz/widget/CircleBubbleView;->b:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->e:Landroid/graphics/Path;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/warkiz/widget/CircleBubbleView;->f:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->f:Landroid/graphics/Paint;

    .line 16
    .line 17
    iget v1, p0, Lcom/warkiz/widget/CircleBubbleView;->a:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/warkiz/widget/CircleBubbleView;->j:Ljava/lang/String;

    .line 23
    .line 24
    iget v1, p0, Lcom/warkiz/widget/CircleBubbleView;->g:F

    .line 25
    .line 26
    const/high16 v2, 0x40000000    # 2.0f

    .line 27
    .line 28
    div-float/2addr v1, v2

    .line 29
    iget v3, p0, Lcom/warkiz/widget/CircleBubbleView;->h:F

    .line 30
    .line 31
    div-float/2addr v3, v2

    .line 32
    iget v2, p0, Lcom/warkiz/widget/CircleBubbleView;->i:F

    .line 33
    .line 34
    const/high16 v4, 0x40800000    # 4.0f

    .line 35
    .line 36
    div-float/2addr v2, v4

    .line 37
    add-float/2addr v3, v2

    .line 38
    iget-object v2, p0, Lcom/warkiz/widget/CircleBubbleView;->f:Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/warkiz/widget/CircleBubbleView;->g:F

    .line 2
    .line 3
    float-to-int p1, p1

    .line 4
    iget p2, p0, Lcom/warkiz/widget/CircleBubbleView;->h:F

    .line 5
    .line 6
    float-to-int p2, p2

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method setProgress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/warkiz/widget/CircleBubbleView;->j:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
