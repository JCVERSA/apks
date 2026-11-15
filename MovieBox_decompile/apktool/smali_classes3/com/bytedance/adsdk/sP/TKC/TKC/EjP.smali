.class public Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;
.super Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;
.source "source.java"


# instance fields
.field private final Dq:Landroid/graphics/Paint;

.field protected final Jcg:Lcom/bytedance/adsdk/sP/TEQ;

.field private final TEQ:Landroid/graphics/Rect;

.field private Ym:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private aa:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final uA:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/Sj;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/sP/Sj/Sj;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->Dq:Landroid/graphics/Paint;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->uA:Landroid/graphics/Rect;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->TEQ:Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->Jcg()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/sP/uA;->vS(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/TEQ;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->Jcg:Lcom/bytedance/adsdk/sP/TEQ;

    .line 35
    .line 36
    return-void
.end method

.method private aa()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->aa:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TKC:Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->Jcg()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sP:Lcom/bytedance/adsdk/sP/uA;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/bytedance/adsdk/sP/uA;->HiB(Ljava/lang/String;)Landroid/graphics/Bitmap;

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
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->Jcg:Lcom/bytedance/adsdk/sP/TEQ;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TEQ;->Ym()Landroid/graphics/Bitmap;

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
.method public Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->Jcg:Lcom/bytedance/adsdk/sP/TEQ;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/bytedance/adsdk/sP/vS/vS;->Sj()F

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->Jcg:Lcom/bytedance/adsdk/sP/TEQ;

    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TEQ;->Sj()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    int-to-float p3, p3

    .line 19
    mul-float/2addr p3, p2

    .line 20
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->Jcg:Lcom/bytedance/adsdk/sP/TEQ;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TEQ;->sP()I

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
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj:Landroid/graphics/Matrix;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public sP(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sP(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->aa()Landroid/graphics/Bitmap;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_3

    .line 15
    .line 16
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->Jcg:Lcom/bytedance/adsdk/sP/TEQ;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {}, Lcom/bytedance/adsdk/sP/vS/vS;->Sj()F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->Dq:Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 28
    .line 29
    .line 30
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->Ym:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    .line 31
    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->Dq:Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    check-cast p3, Landroid/graphics/ColorFilter;

    .line 41
    .line 42
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->uA:Landroid/graphics/Rect;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-virtual {p2, v3, v3, p3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 63
    .line 64
    .line 65
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sP:Lcom/bytedance/adsdk/sP/uA;

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/uA;->HiB()Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_2

    .line 72
    .line 73
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->TEQ:Landroid/graphics/Rect;

    .line 74
    .line 75
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->Jcg:Lcom/bytedance/adsdk/sP/TEQ;

    .line 76
    .line 77
    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TEQ;->Sj()I

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    int-to-float p3, p3

    .line 82
    mul-float/2addr p3, v1

    .line 83
    float-to-int p3, p3

    .line 84
    iget-object v2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->Jcg:Lcom/bytedance/adsdk/sP/TEQ;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/TEQ;->sP()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    int-to-float v2, v2

    .line 91
    mul-float/2addr v2, v1

    .line 92
    float-to-int v1, v2

    .line 93
    invoke-virtual {p2, v3, v3, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->TEQ:Landroid/graphics/Rect;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    int-to-float p3, p3

    .line 104
    mul-float/2addr p3, v1

    .line 105
    float-to-int p3, p3

    .line 106
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    int-to-float v2, v2

    .line 111
    mul-float/2addr v2, v1

    .line 112
    float-to-int v1, v2

    .line 113
    invoke-virtual {p2, v3, v3, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 114
    .line 115
    .line 116
    :goto_0
    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->uA:Landroid/graphics/Rect;

    .line 117
    .line 118
    iget-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->TEQ:Landroid/graphics/Rect;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/EjP;->Dq:Landroid/graphics/Paint;

    .line 121
    .line 122
    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 126
    .line 127
    .line 128
    :cond_3
    :goto_1
    return-void
.end method
