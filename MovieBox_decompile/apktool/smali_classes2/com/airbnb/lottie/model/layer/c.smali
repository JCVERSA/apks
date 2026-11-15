.class public Lcom/airbnb/lottie/model/layer/c;
.super Lcom/airbnb/lottie/model/layer/a;
.source "source.java"


# instance fields
.field private final E:Landroid/graphics/Paint;

.field private final F:Landroid/graphics/Rect;

.field private final G:Landroid/graphics/Rect;

.field private final H:Lcom/airbnb/lottie/l0;

.field private I:Lp4/a;

.field private J:Lp4/a;

.field private K:Lp4/c;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ln4/a;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->E:Landroid/graphics/Paint;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->F:Landroid/graphics/Rect;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->G:Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->n()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->U(Ljava/lang/String;)Lcom/airbnb/lottie/l0;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/c;->H:Lcom/airbnb/lottie/l0;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->y()Lw4/j;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    new-instance p1, Lp4/c;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->y()Lw4/j;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p1, p0, p0, p2}, Lp4/c;-><init>(Lp4/a$b;Lcom/airbnb/lottie/model/layer/a;Lw4/j;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/c;->K:Lp4/c;

    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method private P()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->J:Lp4/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lp4/a;->h()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/graphics/Bitmap;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->n()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->p:Lcom/airbnb/lottie/LottieDrawable;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieDrawable;->L(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->H:Lcom/airbnb/lottie/l0;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/airbnb/lottie/l0;->b()Landroid/graphics/Bitmap;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ly4/c;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;->d(Ljava/lang/Object;Ly4/c;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/airbnb/lottie/p0;->K:Landroid/graphics/ColorFilter;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->I:Lp4/a;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Lp4/q;

    .line 15
    .line 16
    invoke-direct {p1, p2}, Lp4/q;-><init>(Ly4/c;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/c;->I:Lp4/a;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/p0;->N:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    if-ne p1, v0, :cond_3

    .line 25
    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->J:Lp4/a;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    new-instance p1, Lp4/q;

    .line 32
    .line 33
    invoke-direct {p1, p2}, Lp4/q;-><init>(Ly4/c;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/c;->J:Lp4/a;

    .line 37
    .line 38
    :cond_3
    :goto_0
    return-void
.end method

.method public f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/c;->H:Lcom/airbnb/lottie/l0;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lx4/l;->e()F

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/c;->H:Lcom/airbnb/lottie/l0;

    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/airbnb/lottie/l0;->f()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    int-to-float p3, p3

    .line 19
    mul-float/2addr p3, p2

    .line 20
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/c;->H:Lcom/airbnb/lottie/l0;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/airbnb/lottie/l0;->d()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-float v0, v0

    .line 27
    mul-float/2addr v0, p2

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-virtual {p1, p2, p2, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->o:Landroid/graphics/Matrix;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public t(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/c;->P()Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_4

    .line 12
    .line 13
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->H:Lcom/airbnb/lottie/l0;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-static {}, Lx4/l;->e()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/c;->E:Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/c;->I:Lp4/a;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/c;->E:Landroid/graphics/Paint;

    .line 32
    .line 33
    invoke-virtual {v2}, Lp4/a;->h()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/graphics/ColorFilter;

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/c;->F:Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const/4 v5, 0x0

    .line 59
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->p:Lcom/airbnb/lottie/LottieDrawable;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->V()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/c;->G:Landroid/graphics/Rect;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/c;->H:Lcom/airbnb/lottie/l0;

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/airbnb/lottie/l0;->f()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    int-to-float v3, v3

    .line 79
    mul-float/2addr v3, v1

    .line 80
    float-to-int v3, v3

    .line 81
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/c;->H:Lcom/airbnb/lottie/l0;

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/airbnb/lottie/l0;->d()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    int-to-float v4, v4

    .line 88
    mul-float/2addr v4, v1

    .line 89
    float-to-int v1, v4

    .line 90
    invoke-virtual {v2, v5, v5, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/c;->G:Landroid/graphics/Rect;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    int-to-float v3, v3

    .line 101
    mul-float/2addr v3, v1

    .line 102
    float-to-int v3, v3

    .line 103
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    int-to-float v4, v4

    .line 108
    mul-float/2addr v4, v1

    .line 109
    float-to-int v1, v4

    .line 110
    invoke-virtual {v2, v5, v5, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 111
    .line 112
    .line 113
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->K:Lp4/c;

    .line 114
    .line 115
    if-eqz v1, :cond_3

    .line 116
    .line 117
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/c;->E:Landroid/graphics/Paint;

    .line 118
    .line 119
    invoke-virtual {v1, v2, p2, p3}, Lp4/c;->b(Landroid/graphics/Paint;Landroid/graphics/Matrix;I)V

    .line 120
    .line 121
    .line 122
    :cond_3
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/c;->F:Landroid/graphics/Rect;

    .line 123
    .line 124
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/c;->G:Landroid/graphics/Rect;

    .line 125
    .line 126
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/c;->E:Landroid/graphics/Paint;

    .line 127
    .line 128
    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 132
    .line 133
    .line 134
    :cond_4
    :goto_1
    return-void
.end method
