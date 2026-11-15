.class public Lp4/j;
.super Lp4/g;
.source "source.java"


# instance fields
.field private final i:Landroid/graphics/PointF;

.field private final j:[F

.field private final k:[F

.field private final l:Landroid/graphics/PathMeasure;

.field private m:Lp4/i;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lp4/g;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/PointF;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lp4/j;->i:Landroid/graphics/PointF;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    new-array v0, p1, [F

    .line 13
    .line 14
    iput-object v0, p0, Lp4/j;->j:[F

    .line 15
    .line 16
    new-array p1, p1, [F

    .line 17
    .line 18
    iput-object p1, p0, Lp4/j;->k:[F

    .line 19
    .line 20
    new-instance p1, Landroid/graphics/PathMeasure;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lp4/j;->l:Landroid/graphics/PathMeasure;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ly4/a;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lp4/j;->q(Ly4/a;F)Landroid/graphics/PointF;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public q(Ly4/a;F)Landroid/graphics/PointF;
    .locals 10

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lp4/i;

    .line 3
    .line 4
    invoke-virtual {v0}, Lp4/i;->k()Landroid/graphics/Path;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object p1, p1, Ly4/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Landroid/graphics/PointF;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    iget-object v2, p0, Lp4/a;->e:Ly4/c;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget v3, v0, Ly4/a;->g:F

    .line 20
    .line 21
    iget-object p1, v0, Ly4/a;->h:Ljava/lang/Float;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget-object p1, v0, Ly4/a;->b:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v5, p1

    .line 30
    check-cast v5, Landroid/graphics/PointF;

    .line 31
    .line 32
    iget-object p1, v0, Ly4/a;->c:Ljava/lang/Object;

    .line 33
    .line 34
    move-object v6, p1

    .line 35
    check-cast v6, Landroid/graphics/PointF;

    .line 36
    .line 37
    invoke-virtual {p0}, Lp4/a;->e()F

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    invoke-virtual {p0}, Lp4/a;->f()F

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    move v8, p2

    .line 46
    invoke-virtual/range {v2 .. v9}, Ly4/c;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/graphics/PointF;

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_1
    iget-object p1, p0, Lp4/j;->m:Lp4/i;

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    if-eq p1, v0, :cond_2

    .line 59
    .line 60
    iget-object p1, p0, Lp4/j;->l:Landroid/graphics/PathMeasure;

    .line 61
    .line 62
    invoke-virtual {p1, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lp4/j;->m:Lp4/i;

    .line 66
    .line 67
    :cond_2
    iget-object p1, p0, Lp4/j;->l:Landroid/graphics/PathMeasure;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    mul-float/2addr p2, p1

    .line 74
    iget-object v0, p0, Lp4/j;->l:Landroid/graphics/PathMeasure;

    .line 75
    .line 76
    iget-object v1, p0, Lp4/j;->j:[F

    .line 77
    .line 78
    iget-object v3, p0, Lp4/j;->k:[F

    .line 79
    .line 80
    invoke-virtual {v0, p2, v1, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lp4/j;->i:Landroid/graphics/PointF;

    .line 84
    .line 85
    iget-object v1, p0, Lp4/j;->j:[F

    .line 86
    .line 87
    aget v3, v1, v2

    .line 88
    .line 89
    const/4 v4, 0x1

    .line 90
    aget v1, v1, v4

    .line 91
    .line 92
    invoke-virtual {v0, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 93
    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    cmpg-float v0, p2, v0

    .line 97
    .line 98
    if-gez v0, :cond_3

    .line 99
    .line 100
    iget-object p1, p0, Lp4/j;->i:Landroid/graphics/PointF;

    .line 101
    .line 102
    iget-object v0, p0, Lp4/j;->k:[F

    .line 103
    .line 104
    aget v1, v0, v2

    .line 105
    .line 106
    mul-float/2addr v1, p2

    .line 107
    aget v0, v0, v4

    .line 108
    .line 109
    mul-float/2addr v0, p2

    .line 110
    invoke-virtual {p1, v1, v0}, Landroid/graphics/PointF;->offset(FF)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    cmpl-float v0, p2, p1

    .line 115
    .line 116
    if-lez v0, :cond_4

    .line 117
    .line 118
    iget-object v0, p0, Lp4/j;->i:Landroid/graphics/PointF;

    .line 119
    .line 120
    iget-object v1, p0, Lp4/j;->k:[F

    .line 121
    .line 122
    aget v2, v1, v2

    .line 123
    .line 124
    sub-float/2addr p2, p1

    .line 125
    mul-float/2addr v2, p2

    .line 126
    aget p1, v1, v4

    .line 127
    .line 128
    mul-float/2addr p1, p2

    .line 129
    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->offset(FF)V

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_0
    iget-object p1, p0, Lp4/j;->i:Landroid/graphics/PointF;

    .line 133
    .line 134
    return-object p1
.end method
