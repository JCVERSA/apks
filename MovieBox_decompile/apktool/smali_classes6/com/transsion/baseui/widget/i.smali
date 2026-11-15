.class public Lcom/transsion/baseui/widget/i;
.super Landroid/view/ViewOutlineProvider;
.source "source.java"


# instance fields
.field private a:F

.field private b:I


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/transsion/baseui/widget/i;->b:I

    .line 6
    .line 7
    iput p1, p0, Lcom/transsion/baseui/widget/i;->a:F

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget v1, p0, Lcom/transsion/baseui/widget/i;->b:I

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    const/high16 v3, 0x40000000    # 2.0f

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    new-instance v1, Landroid/graphics/Rect;

    .line 26
    .line 27
    int-to-float v0, v0

    .line 28
    iget v2, p0, Lcom/transsion/baseui/widget/i;->a:F

    .line 29
    .line 30
    mul-float/2addr v2, v3

    .line 31
    add-float/2addr v0, v2

    .line 32
    float-to-double v2, v0

    .line 33
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    double-to-int v0, v2

    .line 38
    invoke-direct {v1, v4, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v2, 0x2

    .line 43
    const/high16 v5, -0x40000000    # -2.0f

    .line 44
    .line 45
    if-ne v1, v2, :cond_1

    .line 46
    .line 47
    new-instance v1, Landroid/graphics/Rect;

    .line 48
    .line 49
    iget v2, p0, Lcom/transsion/baseui/widget/i;->a:F

    .line 50
    .line 51
    mul-float/2addr v2, v5

    .line 52
    float-to-double v2, v2

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    double-to-int v2, v2

    .line 58
    invoke-direct {v1, v2, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v2, 0x3

    .line 63
    if-ne v1, v2, :cond_2

    .line 64
    .line 65
    new-instance v1, Landroid/graphics/Rect;

    .line 66
    .line 67
    int-to-float p1, p1

    .line 68
    iget v2, p0, Lcom/transsion/baseui/widget/i;->a:F

    .line 69
    .line 70
    mul-float/2addr v2, v3

    .line 71
    add-float/2addr p1, v2

    .line 72
    float-to-double v2, p1

    .line 73
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    double-to-int p1, v2

    .line 78
    invoke-direct {v1, v4, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const/4 v2, 0x4

    .line 83
    if-ne v1, v2, :cond_3

    .line 84
    .line 85
    new-instance v1, Landroid/graphics/Rect;

    .line 86
    .line 87
    iget v2, p0, Lcom/transsion/baseui/widget/i;->a:F

    .line 88
    .line 89
    mul-float/2addr v2, v5

    .line 90
    float-to-double v2, v2

    .line 91
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    double-to-int v2, v2

    .line 96
    invoke-direct {v1, v4, v2, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    .line 101
    .line 102
    invoke-direct {v1, v4, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 103
    .line 104
    .line 105
    :goto_0
    iget p1, p0, Lcom/transsion/baseui/widget/i;->a:F

    .line 106
    .line 107
    invoke-virtual {p2, v1, p1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 108
    .line 109
    .line 110
    return-void
.end method
