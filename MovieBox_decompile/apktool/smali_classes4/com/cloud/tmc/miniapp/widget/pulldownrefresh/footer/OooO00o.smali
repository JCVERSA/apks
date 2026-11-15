.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;
.super Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;


# instance fields
.field public OooO:F

.field public OooO0Oo:Z

.field public OooO0o:Landroid/graphics/Paint;

.field public OooO0o0:Z

.field public OooO0oO:I

.field public OooO0oo:I

.field public OooOO0:J

.field public OooOO0O:Z

.field public OooOO0o:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    .line 5
    .line 6
    const v1, -0x111112

    .line 7
    .line 8
    .line 9
    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0oO:I

    .line 10
    .line 11
    const v1, -0x18a6ba

    .line 12
    .line 13
    .line 14
    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0oo:I

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    iput-wide v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0:J

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0O:Z

    .line 21
    .line 22
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0o:Landroid/animation/TimeInterpolator;

    .line 28
    .line 29
    const/high16 v1, 0x42700000    # 60.0f

    .line 30
    .line 31
    invoke-static {v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 36
    .line 37
    .line 38
    sget-object v1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniBallPulseFooter:[I

    .line 39
    .line 40
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance p2, Landroid/graphics/Paint;

    .line 45
    .line 46
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o:Landroid/graphics/Paint;

    .line 50
    .line 51
    const/4 v1, -0x1

    .line 52
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o:Landroid/graphics/Paint;

    .line 56
    .line 57
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 58
    .line 59
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o:Landroid/graphics/Paint;

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    .line 67
    .line 68
    sget-object p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 69
    .line 70
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 71
    .line 72
    sget-object p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0oo:[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 73
    .line 74
    sget v1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniBallPulseFooter_srlClassicsSpinnerStyle:I

    .line 75
    .line 76
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    aget-object p2, p2, v1

    .line 81
    .line 82
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 83
    .line 84
    sget p2, Lcom/cloud/tmc/miniapp/R$styleable;->MiniBallPulseFooter_srlNormalColor:I

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_0

    .line 91
    .line 92
    sget p2, Lcom/cloud/tmc/miniapp/R$styleable;->MiniBallPulseFooter_srlNormalColor:I

    .line 93
    .line 94
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;

    .line 99
    .line 100
    .line 101
    :cond_0
    sget p2, Lcom/cloud/tmc/miniapp/R$styleable;->MiniBallPulseFooter_srlAnimatingColor:I

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_1

    .line 108
    .line 109
    sget p2, Lcom/cloud/tmc/miniapp/R$styleable;->MiniBallPulseFooter_srlAnimatingColor:I

    .line 110
    .line 111
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO00o(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;

    .line 116
    .line 117
    .line 118
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    .line 120
    .line 121
    const/high16 p1, 0x40800000    # 4.0f

    .line 122
    .line 123
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    int-to-float p1, p1

    .line 128
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO:F

    .line 129
    .line 130
    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I
    .locals 2
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0O:Z

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0:J

    .line 3
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o:Landroid/graphics/Paint;

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0oO:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    return p1
.end method

.method public OooO00o(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;
    .locals 1

    .line 4
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0oo:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o0:Z

    .line 6
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0O:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-object p0
.end method

.method public OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;
    .locals 1

    .line 6
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0oO:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0Oo:Z

    .line 8
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0O:Z

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-object p0
.end method

.method public OooO0O0(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;II)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0O:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0O:Z

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0:J

    .line 5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o:Landroid/graphics/Paint;

    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0oo:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    int-to-float v4, v4

    .line 18
    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO:F

    .line 19
    .line 20
    const/high16 v6, 0x40000000    # 2.0f

    .line 21
    .line 22
    mul-float v7, v5, v6

    .line 23
    .line 24
    sub-float/2addr v4, v7

    .line 25
    const/high16 v7, 0x40c00000    # 6.0f

    .line 26
    .line 27
    div-float/2addr v4, v7

    .line 28
    int-to-float v2, v2

    .line 29
    div-float/2addr v2, v6

    .line 30
    mul-float v7, v4, v6

    .line 31
    .line 32
    add-float/2addr v5, v7

    .line 33
    sub-float/2addr v2, v5

    .line 34
    int-to-float v3, v3

    .line 35
    div-float/2addr v3, v6

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v8

    .line 40
    const/4 v5, 0x0

    .line 41
    :goto_0
    const/4 v10, 0x3

    .line 42
    if-ge v5, v10, :cond_2

    .line 43
    .line 44
    iget-wide v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0:J

    .line 45
    .line 46
    sub-long v10, v8, v10

    .line 47
    .line 48
    add-int/lit8 v12, v5, 0x1

    .line 49
    .line 50
    mul-int/lit8 v13, v12, 0x78

    .line 51
    .line 52
    int-to-long v13, v13

    .line 53
    sub-long/2addr v10, v13

    .line 54
    const-wide/16 v13, 0x0

    .line 55
    .line 56
    cmp-long v13, v10, v13

    .line 57
    .line 58
    if-lez v13, :cond_0

    .line 59
    .line 60
    const-wide/16 v15, 0x2ee

    .line 61
    .line 62
    rem-long/2addr v10, v15

    .line 63
    long-to-float v10, v10

    .line 64
    const v11, 0x443b8000    # 750.0f

    .line 65
    .line 66
    .line 67
    div-float/2addr v10, v11

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    const/4 v10, 0x0

    .line 70
    :goto_1
    iget-object v11, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0o:Landroid/animation/TimeInterpolator;

    .line 71
    .line 72
    invoke-interface {v11, v10}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 77
    .line 78
    .line 79
    int-to-float v5, v5

    .line 80
    mul-float v11, v7, v5

    .line 81
    .line 82
    add-float/2addr v11, v2

    .line 83
    iget v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO:F

    .line 84
    .line 85
    mul-float/2addr v13, v5

    .line 86
    add-float/2addr v13, v11

    .line 87
    invoke-virtual {v1, v13, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 88
    .line 89
    .line 90
    float-to-double v14, v10

    .line 91
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 92
    .line 93
    cmpg-double v11, v14, v16

    .line 94
    .line 95
    const v13, 0x3f333333    # 0.7f

    .line 96
    .line 97
    .line 98
    if-gez v11, :cond_1

    .line 99
    .line 100
    mul-float/2addr v10, v6

    .line 101
    mul-float/2addr v10, v13

    .line 102
    const/high16 v11, 0x3f800000    # 1.0f

    .line 103
    .line 104
    sub-float/2addr v11, v10

    .line 105
    invoke-virtual {v1, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_1
    mul-float/2addr v10, v6

    .line 110
    mul-float/2addr v10, v13

    .line 111
    const v11, 0x3ecccccd    # 0.4f

    .line 112
    .line 113
    .line 114
    sub-float/2addr v10, v11

    .line 115
    invoke-virtual {v1, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 116
    .line 117
    .line 118
    :goto_2
    iget-object v10, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o:Landroid/graphics/Paint;

    .line 119
    .line 120
    const/4 v5, 0x0

    .line 121
    invoke-virtual {v1, v5, v5, v4, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 125
    .line 126
    .line 127
    move v5, v12

    .line 128
    goto :goto_0

    .line 129
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 130
    .line 131
    .line 132
    iget-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0O:Z

    .line 133
    .line 134
    if-eqz v1, :cond_3

    .line 135
    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 137
    .line 138
    .line 139
    :cond_3
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    if-le v0, v2, :cond_1

    .line 9
    .line 10
    aget v0, p1, v1

    .line 11
    .line 12
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0oo:I

    .line 13
    .line 14
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o0:Z

    .line 15
    .line 16
    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooOO0O:Z

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o:Landroid/graphics/Paint;

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0o0:Z

    .line 26
    .line 27
    :cond_1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0Oo:Z

    .line 28
    .line 29
    if-nez v0, :cond_4

    .line 30
    .line 31
    array-length v0, p1

    .line 32
    if-le v0, v2, :cond_2

    .line 33
    .line 34
    aget p1, p1, v2

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    array-length v0, p1

    .line 41
    if-lez v0, :cond_3

    .line 42
    .line 43
    aget p1, p1, v1

    .line 44
    .line 45
    const v0, -0x66000001

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p1}, Lz0/b;->k(II)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO00o;->OooO0Oo:Z

    .line 56
    .line 57
    :cond_4
    return-void
.end method
