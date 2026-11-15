.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;
.super Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;
    }
.end annotation


# instance fields
.field public OooO:Z

.field public OooO0Oo:I

.field public OooO0o:Z

.field public OooO0o0:I

.field public OooO0oO:Z

.field public OooO0oo:Z

.field public OooOO0:Landroid/graphics/Path;

.field public OooOO0O:Landroid/graphics/Paint;

.field public OooOO0o:I

.field public OooOOO:I

.field public OooOOO0:I

.field public OooOOOO:I

.field public OooOOOo:F

.field public OooOOo:F

.field public OooOOo0:F

.field public OooOOoo:F

.field public OooOo:Landroid/animation/Animator;

.field public OooOo0:F

.field public OooOo00:I

.field public OooOo0O:F

.field public OooOo0o:F

.field public OooOoO0:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO:Z

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOO:I

    .line 10
    .line 11
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOOO:I

    .line 12
    .line 13
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo00:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo0:F

    .line 17
    .line 18
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo0O:F

    .line 19
    .line 20
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo0o:F

    .line 21
    .line 22
    new-instance v2, Landroid/graphics/RectF;

    .line 23
    .line 24
    invoke-direct {v2, v0, v0, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOoO0:Landroid/graphics/RectF;

    .line 28
    .line 29
    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 30
    .line 31
    iput-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 32
    .line 33
    new-instance v2, Landroid/graphics/Path;

    .line 34
    .line 35
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0:Landroid/graphics/Path;

    .line 39
    .line 40
    new-instance v2, Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    .line 50
    .line 51
    const/high16 v2, 0x40e00000    # 7.0f

    .line 52
    .line 53
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    int-to-float v3, v3

    .line 58
    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOo:F

    .line 59
    .line 60
    const/high16 v3, 0x41a00000    # 20.0f

    .line 61
    .line 62
    invoke-static {v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    int-to-float v3, v3

    .line 67
    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo0:F

    .line 68
    .line 69
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    int-to-float v2, v2

    .line 74
    iput v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo0O:F

    .line 75
    .line 76
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 77
    .line 78
    const/high16 v3, 0x40400000    # 3.0f

    .line 79
    .line 80
    invoke-static {v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    int-to-float v3, v3

    .line 85
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    .line 87
    .line 88
    const/high16 v2, 0x42c80000    # 100.0f

    .line 89
    .line 90
    invoke-static {v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_0

    .line 102
    .line 103
    const/16 v0, 0x3e8

    .line 104
    .line 105
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0o:I

    .line 106
    .line 107
    const/high16 v0, 0x3f800000    # 1.0f

    .line 108
    .line 109
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo0o:F

    .line 110
    .line 111
    const/16 v0, 0x10e

    .line 112
    .line 113
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo00:I

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo0o:F

    .line 117
    .line 118
    :goto_0
    sget-object v0, Lcom/cloud/tmc/miniapp/R$styleable;->MiniBezierRadarHeader:[I

    .line 119
    .line 120
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    sget p2, Lcom/cloud/tmc/miniapp/R$styleable;->MiniBezierRadarHeader_srlEnableHorizontalDrag:I

    .line 125
    .line 126
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO:Z

    .line 127
    .line 128
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO:Z

    .line 133
    .line 134
    sget p2, Lcom/cloud/tmc/miniapp/R$styleable;->MiniBezierRadarHeader_srlAccentColor:I

    .line 135
    .line 136
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO00o(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;

    .line 141
    .line 142
    .line 143
    sget p2, Lcom/cloud/tmc/miniapp/R$styleable;->MiniBezierRadarHeader_srlPrimaryColor:I

    .line 144
    .line 145
    const v0, -0xddddde

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;

    .line 153
    .line 154
    .line 155
    sget p2, Lcom/cloud/tmc/miniapp/R$styleable;->MiniBezierRadarHeader_srlAccentColor:I

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0oO:Z

    .line 162
    .line 163
    sget p2, Lcom/cloud/tmc/miniapp/R$styleable;->MiniBezierRadarHeader_srlPrimaryColor:I

    .line 164
    .line 165
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0o:Z

    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    .line 173
    .line 174
    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I
    .locals 2
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 33
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo:Landroid/animation/Animator;

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 36
    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOOO:I

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p2, p1

    int-to-double p1, p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v0

    .line 37
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 38
    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo0:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p1, v0, p2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 40
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;B)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 41
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    const/16 p1, 0x190

    return p1
.end method

.method public OooO00o(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;
    .locals 0

    .line 49
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0Oo:I

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0oO:Z

    return-object p0
.end method

.method public OooO00o(FII)V
    .locals 0

    .line 47
    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOO:I

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;II)V
    .locals 11
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    sub-int/2addr p2, p1

    .line 8
    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0o:I

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0oo:Z

    .line 10
    new-instance p3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;

    invoke-direct {p3, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;-><init>(I)V

    const/4 v0, 0x2

    .line 11
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 12
    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    new-instance v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;

    invoke-direct {v2, p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;B)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14
    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 15
    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 16
    new-instance p3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;

    invoke-direct {p3, p0, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;B)V

    invoke-virtual {v2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/16 p3, 0x168

    .line 17
    filled-new-array {p2, p3}, [I

    move-result-object p3

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    const-wide/16 v3, 0x2d0

    .line 18
    invoke-virtual {p3, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    .line 19
    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 20
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 21
    new-instance v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;B)V

    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    .line 23
    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v1, v4, p2

    aput-object v2, v4, p1

    aput-object p3, v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 24
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 25
    iget v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOO0:I

    int-to-float p2, v5

    const p3, 0x3f4ccccd    # 0.8f

    mul-float/2addr p3, p2

    float-to-int p3, p3

    neg-int v7, p3

    const p3, 0x3ecccccd    # 0.4f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    neg-int v9, p2

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    filled-new-array/range {v5 .. v10}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 26
    new-instance p3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;

    invoke-direct {p3, p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;B)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 27
    new-instance p3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;

    invoke-direct {p3, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x320

    .line 28
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 29
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 30
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo:Landroid/animation/Animator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    sget-object p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o$OooO00o;->OooO00o:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 43
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOOo:F

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo0o:F

    .line 45
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOoo:F

    :goto_0
    return-void
.end method

.method public OooO00o(ZFIII)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOOO:I

    if-nez p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0oo:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0oo:Z

    .line 4
    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0o:I

    sub-int/2addr p3, p4

    const/4 p1, 0x0

    .line 5
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const p3, 0x3ff33333    # 1.9f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOO0:I

    .line 6
    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOo0:F

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public OooO00o()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO:Z

    return v0
.end method

.method public OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0o0:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0o:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    :goto_0
    move v8, v2

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOOO:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :goto_1
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0:Landroid/graphics/Path;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0:Landroid/graphics/Path;

    .line 30
    .line 31
    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0o:I

    .line 32
    .line 33
    int-to-float v3, v3

    .line 34
    const/4 v9, 0x0

    .line 35
    invoke-virtual {v2, v9, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 36
    .line 37
    .line 38
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0:Landroid/graphics/Path;

    .line 39
    .line 40
    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOO:I

    .line 41
    .line 42
    const/high16 v10, 0x40000000    # 2.0f

    .line 43
    .line 44
    if-ltz v3, :cond_1

    .line 45
    .line 46
    int-to-float v3, v3

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    int-to-float v3, v1

    .line 49
    div-float/2addr v3, v10

    .line 50
    :goto_2
    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0o:I

    .line 51
    .line 52
    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOO0:I

    .line 53
    .line 54
    add-int/2addr v5, v4

    .line 55
    int-to-float v5, v5

    .line 56
    int-to-float v11, v1

    .line 57
    int-to-float v1, v4

    .line 58
    invoke-virtual {v2, v3, v5, v11, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0:Landroid/graphics/Path;

    .line 62
    .line 63
    invoke-virtual {v1, v11, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 67
    .line 68
    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0o0:I

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0:Landroid/graphics/Path;

    .line 74
    .line 75
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 76
    .line 77
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 78
    .line 79
    .line 80
    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOOo:F

    .line 81
    .line 82
    cmpl-float v1, v1, v9

    .line 83
    .line 84
    if-lez v1, :cond_5

    .line 85
    .line 86
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 87
    .line 88
    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0Oo:I

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    .line 92
    .line 93
    int-to-float v1, v8

    .line 94
    sget v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO0O0:F

    .line 95
    .line 96
    div-float v2, v1, v2

    .line 97
    .line 98
    const/high16 v3, 0x3f800000    # 1.0f

    .line 99
    .line 100
    mul-float v4, v11, v3

    .line 101
    .line 102
    const/high16 v5, 0x40e00000    # 7.0f

    .line 103
    .line 104
    div-float/2addr v4, v5

    .line 105
    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOo0:F

    .line 106
    .line 107
    mul-float v6, v4, v5

    .line 108
    .line 109
    cmpl-float v12, v5, v3

    .line 110
    .line 111
    if-lez v12, :cond_2

    .line 112
    .line 113
    sub-float v13, v5, v3

    .line 114
    .line 115
    mul-float/2addr v13, v4

    .line 116
    div-float/2addr v13, v5

    .line 117
    goto :goto_3

    .line 118
    :cond_2
    move v13, v9

    .line 119
    :goto_3
    sub-float/2addr v6, v13

    .line 120
    if-lez v12, :cond_3

    .line 121
    .line 122
    sub-float v4, v5, v3

    .line 123
    .line 124
    mul-float/2addr v4, v1

    .line 125
    div-float/2addr v4, v10

    .line 126
    div-float/2addr v4, v5

    .line 127
    goto :goto_4

    .line 128
    :cond_3
    move v4, v9

    .line 129
    :goto_4
    sub-float/2addr v1, v4

    .line 130
    const/4 v4, 0x0

    .line 131
    :goto_5
    const/4 v5, 0x7

    .line 132
    if-ge v4, v5, :cond_4

    .line 133
    .line 134
    add-int/lit8 v5, v4, 0x1

    .line 135
    .line 136
    add-int/lit8 v4, v4, -0x3

    .line 137
    .line 138
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 139
    .line 140
    .line 141
    move-result v12

    .line 142
    int-to-double v12, v12

    .line 143
    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    .line 144
    .line 145
    div-double/2addr v12, v14

    .line 146
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 147
    .line 148
    mul-double/2addr v12, v14

    .line 149
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 150
    .line 151
    sub-double v12, v14, v12

    .line 152
    .line 153
    const-wide v16, 0x406fe00000000000L    # 255.0

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    mul-double v12, v12, v16

    .line 159
    .line 160
    double-to-float v12, v12

    .line 161
    iget-object v13, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 162
    .line 163
    iget v9, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOOo:F

    .line 164
    .line 165
    mul-float/2addr v9, v12

    .line 166
    move/from16 v17, v11

    .line 167
    .line 168
    float-to-double v10, v9

    .line 169
    move/from16 v18, v4

    .line 170
    .line 171
    float-to-double v3, v2

    .line 172
    const-wide/high16 v19, 0x4089000000000000L    # 800.0

    .line 173
    .line 174
    div-double v3, v3, v19

    .line 175
    .line 176
    add-double/2addr v3, v14

    .line 177
    move-object/from16 v19, v13

    .line 178
    .line 179
    const-wide/high16 v12, 0x402e000000000000L    # 15.0

    .line 180
    .line 181
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 182
    .line 183
    .line 184
    move-result-wide v3

    .line 185
    div-double v3, v14, v3

    .line 186
    .line 187
    sub-double/2addr v14, v3

    .line 188
    mul-double/2addr v14, v10

    .line 189
    double-to-int v3, v14

    .line 190
    move-object/from16 v4, v19

    .line 191
    .line 192
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 193
    .line 194
    .line 195
    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOo:F

    .line 196
    .line 197
    const/high16 v4, 0x41200000    # 10.0f

    .line 198
    .line 199
    div-float v4, v2, v4

    .line 200
    .line 201
    const/high16 v9, 0x3f800000    # 1.0f

    .line 202
    .line 203
    add-float/2addr v4, v9

    .line 204
    div-float v4, v9, v4

    .line 205
    .line 206
    sub-float v4, v9, v4

    .line 207
    .line 208
    mul-float/2addr v4, v3

    .line 209
    const/high16 v3, 0x40000000    # 2.0f

    .line 210
    .line 211
    div-float v11, v17, v3

    .line 212
    .line 213
    div-float v10, v4, v3

    .line 214
    .line 215
    sub-float/2addr v11, v10

    .line 216
    move/from16 v10, v18

    .line 217
    .line 218
    int-to-float v10, v10

    .line 219
    mul-float/2addr v10, v6

    .line 220
    add-float/2addr v10, v11

    .line 221
    div-float v11, v1, v3

    .line 222
    .line 223
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 224
    .line 225
    invoke-virtual {v7, v10, v11, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 226
    .line 227
    .line 228
    move v4, v5

    .line 229
    move v3, v9

    .line 230
    move/from16 v11, v17

    .line 231
    .line 232
    const/4 v9, 0x0

    .line 233
    const/high16 v10, 0x40000000    # 2.0f

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_4
    move/from16 v17, v11

    .line 237
    .line 238
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 239
    .line 240
    const/16 v2, 0xff

    .line 241
    .line 242
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 243
    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_5
    move/from16 v17, v11

    .line 247
    .line 248
    :goto_6
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo:Landroid/animation/Animator;

    .line 249
    .line 250
    if-nez v1, :cond_6

    .line 251
    .line 252
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_7

    .line 257
    .line 258
    :cond_6
    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo0:F

    .line 259
    .line 260
    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo0o:F

    .line 261
    .line 262
    mul-float/2addr v1, v2

    .line 263
    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo0O:F

    .line 264
    .line 265
    mul-float/2addr v3, v2

    .line 266
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 267
    .line 268
    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0Oo:I

    .line 269
    .line 270
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    .line 272
    .line 273
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 274
    .line 275
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 276
    .line 277
    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 278
    .line 279
    .line 280
    const/high16 v2, 0x40000000    # 2.0f

    .line 281
    .line 282
    div-float v11, v17, v2

    .line 283
    .line 284
    int-to-float v4, v8

    .line 285
    div-float v10, v4, v2

    .line 286
    .line 287
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 288
    .line 289
    invoke-virtual {v7, v11, v10, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 290
    .line 291
    .line 292
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 293
    .line 294
    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 295
    .line 296
    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 297
    .line 298
    .line 299
    add-float v14, v1, v3

    .line 300
    .line 301
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 302
    .line 303
    invoke-virtual {v7, v11, v10, v14, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 304
    .line 305
    .line 306
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 307
    .line 308
    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0o0:I

    .line 309
    .line 310
    const v4, 0xffffff

    .line 311
    .line 312
    .line 313
    and-int/2addr v3, v4

    .line 314
    const/high16 v4, 0x55000000

    .line 315
    .line 316
    or-int/2addr v3, v4

    .line 317
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    .line 319
    .line 320
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 321
    .line 322
    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 323
    .line 324
    .line 325
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOoO0:Landroid/graphics/RectF;

    .line 326
    .line 327
    sub-float v3, v11, v1

    .line 328
    .line 329
    sub-float v4, v10, v1

    .line 330
    .line 331
    add-float v5, v11, v1

    .line 332
    .line 333
    add-float/2addr v1, v10

    .line 334
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 335
    .line 336
    .line 337
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOoO0:Landroid/graphics/RectF;

    .line 338
    .line 339
    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo00:I

    .line 340
    .line 341
    int-to-float v4, v1

    .line 342
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 343
    .line 344
    const/high16 v3, 0x43870000    # 270.0f

    .line 345
    .line 346
    const/4 v5, 0x1

    .line 347
    move-object/from16 v1, p1

    .line 348
    .line 349
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 350
    .line 351
    .line 352
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 353
    .line 354
    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 355
    .line 356
    .line 357
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOoO0:Landroid/graphics/RectF;

    .line 358
    .line 359
    sub-float v2, v11, v14

    .line 360
    .line 361
    sub-float v3, v10, v14

    .line 362
    .line 363
    add-float/2addr v11, v14

    .line 364
    add-float/2addr v10, v14

    .line 365
    invoke-virtual {v1, v2, v3, v11, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 366
    .line 367
    .line 368
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOoO0:Landroid/graphics/RectF;

    .line 369
    .line 370
    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo00:I

    .line 371
    .line 372
    int-to-float v4, v1

    .line 373
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 374
    .line 375
    const/high16 v3, 0x43870000    # 270.0f

    .line 376
    .line 377
    const/4 v5, 0x0

    .line 378
    move-object/from16 v1, p1

    .line 379
    .line 380
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 381
    .line 382
    .line 383
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 384
    .line 385
    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 386
    .line 387
    .line 388
    :cond_7
    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOoo:F

    .line 389
    .line 390
    const/4 v2, 0x0

    .line 391
    cmpl-float v1, v1, v2

    .line 392
    .line 393
    if-lez v1, :cond_8

    .line 394
    .line 395
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 396
    .line 397
    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0Oo:I

    .line 398
    .line 399
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 400
    .line 401
    .line 402
    const/high16 v1, 0x40000000    # 2.0f

    .line 403
    .line 404
    div-float v11, v17, v1

    .line 405
    .line 406
    int-to-float v2, v8

    .line 407
    div-float/2addr v2, v1

    .line 408
    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOOoo:F

    .line 409
    .line 410
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOO0O:Landroid/graphics/Paint;

    .line 411
    .line 412
    invoke-virtual {v7, v11, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 413
    .line 414
    .line 415
    :cond_8
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 416
    .line 417
    .line 418
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo:Landroid/animation/Animator;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo:Landroid/animation/Animator;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooOo:Landroid/animation/Animator;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0o:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    aget v0, p1, v1

    .line 10
    .line 11
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0o0:I

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0o:Z

    .line 14
    .line 15
    :cond_0
    array-length v0, p1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-le v0, v2, :cond_1

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0oO:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    aget p1, p1, v2

    .line 24
    .line 25
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0Oo:I

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO00o;->OooO0oO:Z

    .line 28
    .line 29
    :cond_1
    return-void
.end method
