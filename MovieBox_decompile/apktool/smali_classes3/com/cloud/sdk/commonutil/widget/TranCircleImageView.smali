.class public Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;
.super Landroid/widget/ImageView;
.source "source.java"


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final CENTER:I = 0x1

.field public static final FITXY:I = 0x3

.field public static final TOP:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:I

.field private t:Z

.field private u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->initData()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    iput-object p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->a:Landroid/content/Context;

    .line 5
    invoke-direct {p0, p2}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->e(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;F)V
    .locals 10

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->i:F

    .line 7
    .line 8
    invoke-direct {p0, v1, p4}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g(FF)F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget v2, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->j:F

    .line 13
    .line 14
    invoke-direct {p0, v2, p4}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g(FF)F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget v3, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->k:F

    .line 19
    .line 20
    invoke-direct {p0, v3, p4}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g(FF)F

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget v4, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->l:F

    .line 25
    .line 26
    invoke-direct {p0, v4, p4}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g(FF)F

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    iget v5, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->o:F

    .line 31
    .line 32
    invoke-direct {p0, v5, p4}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g(FF)F

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    iget v6, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->p:F

    .line 37
    .line 38
    invoke-direct {p0, v6, p4}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g(FF)F

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    iget v7, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->m:F

    .line 43
    .line 44
    invoke-direct {p0, v7, p4}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g(FF)F

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    iget v8, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->n:F

    .line 49
    .line 50
    invoke-direct {p0, v8, p4}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g(FF)F

    .line 51
    .line 52
    .line 53
    move-result p4

    .line 54
    const/16 v8, 0x8

    .line 55
    .line 56
    new-array v8, v8, [F

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    aput v1, v8, v9

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    aput v2, v8, v1

    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    aput v3, v8, v1

    .line 66
    .line 67
    const/4 v1, 0x3

    .line 68
    aput v4, v8, v1

    .line 69
    .line 70
    const/4 v1, 0x4

    .line 71
    aput v5, v8, v1

    .line 72
    .line 73
    const/4 v1, 0x5

    .line 74
    aput v6, v8, v1

    .line 75
    .line 76
    const/4 v1, 0x6

    .line 77
    aput v7, v8, v1

    .line 78
    .line 79
    const/4 v1, 0x7

    .line 80
    aput p4, v8, v1

    .line 81
    .line 82
    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 83
    .line 84
    invoke-virtual {v0, p2, v8, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method private c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, -0x1

    .line 14
    if-eq v2, v3, :cond_0

    .line 15
    .line 16
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 22
    .line 23
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Landroid/graphics/Canvas;

    .line 28
    .line 29
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    return-object v2

    .line 40
    :goto_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "TranCircleImageView"

    .line 45
    .line 46
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    return-object p1
.end method

.method private d(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    mul-int v1, v0, p3

    .line 10
    .line 11
    mul-int v2, p2, p1

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    new-array v4, v3, [I

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    aput v0, v4, v5

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    aput p1, v4, v6

    .line 21
    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    new-instance p2, Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-direct {p2, v5, v5, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 27
    .line 28
    .line 29
    return-object p2

    .line 30
    :cond_0
    if-le v1, v2, :cond_1

    .line 31
    .line 32
    div-int/2addr v2, p3

    .line 33
    aput v2, v4, v5

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    if-ge v1, v2, :cond_2

    .line 37
    .line 38
    div-int/2addr v1, p2

    .line 39
    aput v1, v4, v6

    .line 40
    .line 41
    :cond_2
    :goto_0
    aget p2, v4, v5

    .line 42
    .line 43
    if-le v0, p2, :cond_3

    .line 44
    .line 45
    move p2, v6

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    move p2, v5

    .line 48
    :goto_1
    iget p3, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->u:I

    .line 49
    .line 50
    if-eqz p3, :cond_f

    .line 51
    .line 52
    if-eq p3, v6, :cond_a

    .line 53
    .line 54
    if-eq p3, v3, :cond_5

    .line 55
    .line 56
    const/4 p2, 0x3

    .line 57
    if-eq p3, p2, :cond_4

    .line 58
    .line 59
    move p1, v5

    .line 60
    move v0, p1

    .line 61
    move v1, v0

    .line 62
    goto/16 :goto_b

    .line 63
    .line 64
    :cond_4
    move v1, v5

    .line 65
    goto/16 :goto_b

    .line 66
    .line 67
    :cond_5
    if-eqz p2, :cond_6

    .line 68
    .line 69
    aget p3, v4, v5

    .line 70
    .line 71
    sub-int p3, v0, p3

    .line 72
    .line 73
    div-int/2addr p3, v3

    .line 74
    goto :goto_2

    .line 75
    :cond_6
    move p3, v5

    .line 76
    :goto_2
    if-eqz p2, :cond_7

    .line 77
    .line 78
    move v1, v5

    .line 79
    goto :goto_3

    .line 80
    :cond_7
    aget v1, v4, v6

    .line 81
    .line 82
    sub-int v1, p1, v1

    .line 83
    .line 84
    :goto_3
    if-eqz p2, :cond_8

    .line 85
    .line 86
    aget v2, v4, v5

    .line 87
    .line 88
    add-int/2addr v0, v2

    .line 89
    div-int/2addr v0, v3

    .line 90
    goto :goto_4

    .line 91
    :cond_8
    aget v0, v4, v5

    .line 92
    .line 93
    :goto_4
    if-eqz p2, :cond_9

    .line 94
    .line 95
    aget p1, v4, v6

    .line 96
    .line 97
    :cond_9
    :goto_5
    move v5, p3

    .line 98
    goto :goto_b

    .line 99
    :cond_a
    if-eqz p2, :cond_b

    .line 100
    .line 101
    aget p3, v4, v5

    .line 102
    .line 103
    sub-int p3, v0, p3

    .line 104
    .line 105
    div-int/2addr p3, v3

    .line 106
    goto :goto_6

    .line 107
    :cond_b
    move p3, v5

    .line 108
    :goto_6
    if-eqz p2, :cond_c

    .line 109
    .line 110
    move v1, v5

    .line 111
    goto :goto_7

    .line 112
    :cond_c
    aget v1, v4, v6

    .line 113
    .line 114
    sub-int v1, p1, v1

    .line 115
    .line 116
    div-int/2addr v1, v3

    .line 117
    :goto_7
    if-eqz p2, :cond_d

    .line 118
    .line 119
    aget v2, v4, v5

    .line 120
    .line 121
    add-int/2addr v0, v2

    .line 122
    div-int/2addr v0, v3

    .line 123
    goto :goto_8

    .line 124
    :cond_d
    aget v0, v4, v5

    .line 125
    .line 126
    :goto_8
    if-eqz p2, :cond_e

    .line 127
    .line 128
    aget p1, v4, v6

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_e
    aget p2, v4, v6

    .line 132
    .line 133
    add-int/2addr p1, p2

    .line 134
    div-int/2addr p1, v3

    .line 135
    goto :goto_5

    .line 136
    :cond_f
    if-eqz p2, :cond_10

    .line 137
    .line 138
    aget p1, v4, v5

    .line 139
    .line 140
    sub-int p1, v0, p1

    .line 141
    .line 142
    div-int/2addr p1, v3

    .line 143
    goto :goto_9

    .line 144
    :cond_10
    move p1, v5

    .line 145
    :goto_9
    if-eqz p2, :cond_11

    .line 146
    .line 147
    aget p2, v4, v5

    .line 148
    .line 149
    add-int/2addr v0, p2

    .line 150
    div-int/2addr v0, v3

    .line 151
    goto :goto_a

    .line 152
    :cond_11
    aget p2, v4, v5

    .line 153
    .line 154
    move v0, p2

    .line 155
    :goto_a
    aget p2, v4, v6

    .line 156
    .line 157
    move v1, v5

    .line 158
    move v5, p1

    .line 159
    move p1, p2

    .line 160
    :goto_b
    new-instance p2, Landroid/graphics/Rect;

    .line 161
    .line 162
    invoke-direct {p2, v5, v1, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 163
    .line 164
    .line 165
    return-object p2
.end method

.method private e(Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->a:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v1, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView:[I

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_radiusYL:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->d:F

    .line 17
    .line 18
    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_topLeftRadiusYL:I

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->e:F

    .line 25
    .line 26
    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_topRightRadiusYL:I

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->f:F

    .line 33
    .line 34
    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_bottomLeftRadiusYL:I

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g:F

    .line 41
    .line 42
    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_bottomRightRadiusYL:I

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->h:F

    .line 49
    .line 50
    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_scaleTypeYL:I

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->u:I

    .line 58
    .line 59
    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_borderWidthYL:I

    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->q:F

    .line 66
    .line 67
    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_borderSpaceYL:I

    .line 68
    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->r:F

    .line 74
    .line 75
    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_borderColorYL:I

    .line 76
    .line 77
    const/4 v2, -0x1

    .line 78
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->s:I

    .line 83
    .line 84
    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_topLeftRadius_xYL:I

    .line 85
    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->i:F

    .line 91
    .line 92
    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_topLeftRadius_yYL:I

    .line 93
    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->j:F

    .line 99
    .line 100
    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_topRightRadius_xYL:I

    .line 101
    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->k:F

    .line 107
    .line 108
    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_topRightRadius_yYL:I

    .line 109
    .line 110
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->l:F

    .line 115
    .line 116
    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_bottomLeftRadius_xYL:I

    .line 117
    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->m:F

    .line 123
    .line 124
    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_bottomLeftRadius_yYL:I

    .line 125
    .line 126
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->n:F

    .line 131
    .line 132
    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_bottomRightRadius_xYL:I

    .line 133
    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->o:F

    .line 139
    .line 140
    sget v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCircleImageView_bottomRightRadius_yYL:I

    .line 141
    .line 142
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->p:F

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->initData()V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method private f()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->d:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v2, v0, v1

    .line 5
    .line 6
    if-eqz v2, :cond_4

    .line 7
    .line 8
    iget v2, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->e:F

    .line 9
    .line 10
    cmpl-float v3, v2, v1

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    move v2, v0

    .line 15
    :cond_0
    iput v2, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->e:F

    .line 16
    .line 17
    iget v2, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->f:F

    .line 18
    .line 19
    cmpl-float v3, v2, v1

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    move v2, v0

    .line 24
    :cond_1
    iput v2, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->f:F

    .line 25
    .line 26
    iget v2, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g:F

    .line 27
    .line 28
    cmpl-float v3, v2, v1

    .line 29
    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    move v2, v0

    .line 33
    :cond_2
    iput v2, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g:F

    .line 34
    .line 35
    iget v2, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->h:F

    .line 36
    .line 37
    cmpl-float v3, v2, v1

    .line 38
    .line 39
    if-nez v3, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    move v0, v2

    .line 43
    :goto_0
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->h:F

    .line 44
    .line 45
    :cond_4
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->i:F

    .line 46
    .line 47
    cmpl-float v2, v0, v1

    .line 48
    .line 49
    if-nez v2, :cond_5

    .line 50
    .line 51
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->e:F

    .line 52
    .line 53
    :cond_5
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->i:F

    .line 54
    .line 55
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->j:F

    .line 56
    .line 57
    cmpl-float v2, v0, v1

    .line 58
    .line 59
    if-nez v2, :cond_6

    .line 60
    .line 61
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->e:F

    .line 62
    .line 63
    :cond_6
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->j:F

    .line 64
    .line 65
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->k:F

    .line 66
    .line 67
    cmpl-float v2, v0, v1

    .line 68
    .line 69
    if-nez v2, :cond_7

    .line 70
    .line 71
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->f:F

    .line 72
    .line 73
    :cond_7
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->k:F

    .line 74
    .line 75
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->l:F

    .line 76
    .line 77
    cmpl-float v2, v0, v1

    .line 78
    .line 79
    if-nez v2, :cond_8

    .line 80
    .line 81
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->f:F

    .line 82
    .line 83
    :cond_8
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->l:F

    .line 84
    .line 85
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->m:F

    .line 86
    .line 87
    cmpl-float v2, v0, v1

    .line 88
    .line 89
    if-nez v2, :cond_9

    .line 90
    .line 91
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g:F

    .line 92
    .line 93
    :cond_9
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->m:F

    .line 94
    .line 95
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->n:F

    .line 96
    .line 97
    cmpl-float v2, v0, v1

    .line 98
    .line 99
    if-nez v2, :cond_a

    .line 100
    .line 101
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->g:F

    .line 102
    .line 103
    :cond_a
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->n:F

    .line 104
    .line 105
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->o:F

    .line 106
    .line 107
    cmpl-float v2, v0, v1

    .line 108
    .line 109
    if-nez v2, :cond_b

    .line 110
    .line 111
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->h:F

    .line 112
    .line 113
    :cond_b
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->o:F

    .line 114
    .line 115
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->p:F

    .line 116
    .line 117
    cmpl-float v1, v0, v1

    .line 118
    .line 119
    if-nez v1, :cond_c

    .line 120
    .line 121
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->h:F

    .line 122
    .line 123
    :cond_c
    iput v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->p:F

    .line 124
    .line 125
    return-void
.end method

.method private g(FF)F
    .locals 0

    .line 1
    sub-float/2addr p1, p2

    .line 2
    const/4 p2, 0x0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method


# virtual methods
.method public getBorderPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->c:Landroid/graphics/Paint;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->b:Landroid/graphics/Paint;

    .line 2
    .line 3
    return-object v0
.end method

.method public initData()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->f()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->q:F

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    cmpl-float v0, v0, v1

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->r:F

    .line 13
    .line 14
    cmpl-float v0, v0, v1

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->i:F

    .line 19
    .line 20
    cmpl-float v0, v0, v1

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->j:F

    .line 25
    .line 26
    cmpl-float v0, v0, v1

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->k:F

    .line 31
    .line 32
    cmpl-float v0, v0, v1

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->l:F

    .line 37
    .line 38
    cmpl-float v0, v0, v1

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->m:F

    .line 43
    .line 44
    cmpl-float v0, v0, v1

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->n:F

    .line 49
    .line 50
    cmpl-float v0, v0, v1

    .line 51
    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->o:F

    .line 55
    .line 56
    cmpl-float v0, v0, v1

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->p:F

    .line 61
    .line 62
    cmpl-float v0, v0, v1

    .line 63
    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    move v0, v2

    .line 70
    :goto_1
    iput-boolean v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->t:Z

    .line 71
    .line 72
    new-instance v0, Landroid/graphics/Paint;

    .line 73
    .line 74
    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->b:Landroid/graphics/Paint;

    .line 78
    .line 79
    new-instance v0, Landroid/graphics/Paint;

    .line 80
    .line 81
    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->c:Landroid/graphics/Paint;

    .line 85
    .line 86
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->c:Landroid/graphics/Paint;

    .line 92
    .line 93
    iget v1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->q:F

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->c:Landroid/graphics/Paint;

    .line 99
    .line 100
    iget v1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->s:I

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    .line 104
    .line 105
    iget-boolean v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->t:Z

    .line 106
    .line 107
    if-eqz v0, :cond_2

    .line 108
    .line 109
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    iget v7, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->q:F

    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    cmpl-float v7, v7, v8

    .line 33
    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    new-instance v7, Landroid/graphics/RectF;

    .line 37
    .line 38
    int-to-float v9, v3

    .line 39
    int-to-float v10, v5

    .line 40
    sub-int v11, v1, v4

    .line 41
    .line 42
    int-to-float v11, v11

    .line 43
    sub-int v12, v2, v6

    .line 44
    .line 45
    int-to-float v12, v12

    .line 46
    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 47
    .line 48
    .line 49
    iget v9, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->q:F

    .line 50
    .line 51
    const/high16 v10, 0x40000000    # 2.0f

    .line 52
    .line 53
    div-float/2addr v9, v10

    .line 54
    invoke-virtual {v7, v9, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 55
    .line 56
    .line 57
    iget-object v10, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->c:Landroid/graphics/Paint;

    .line 58
    .line 59
    invoke-direct {p0, p1, v7, v10, v9}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;F)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->b(Landroid/graphics/drawable/Drawable;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_4

    .line 70
    .line 71
    iget-boolean v7, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->t:Z

    .line 72
    .line 73
    if-eqz v7, :cond_4

    .line 74
    .line 75
    new-instance v7, Landroid/graphics/RectF;

    .line 76
    .line 77
    int-to-float v3, v3

    .line 78
    int-to-float v5, v5

    .line 79
    sub-int/2addr v1, v4

    .line 80
    int-to-float v1, v1

    .line 81
    sub-int/2addr v2, v6

    .line 82
    int-to-float v2, v2

    .line 83
    invoke-direct {v7, v3, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 84
    .line 85
    .line 86
    iget v1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->q:F

    .line 87
    .line 88
    iget v2, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->r:F

    .line 89
    .line 90
    add-float/2addr v1, v2

    .line 91
    const/high16 v2, 0x3f800000    # 1.0f

    .line 92
    .line 93
    cmpl-float v3, v1, v2

    .line 94
    .line 95
    if-lez v3, :cond_1

    .line 96
    .line 97
    sub-float v8, v1, v2

    .line 98
    .line 99
    :cond_1
    invoke-virtual {v7, v8, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 100
    .line 101
    .line 102
    const/16 v1, 0x1f

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-virtual {p1, v7, v2, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    iget-object v3, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->b:Landroid/graphics/Paint;

    .line 110
    .line 111
    invoke-direct {p0, p1, v7, v3, v8}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;F)V

    .line 112
    .line 113
    .line 114
    iget-object v3, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->b:Landroid/graphics/Paint;

    .line 115
    .line 116
    if-eqz v3, :cond_2

    .line 117
    .line 118
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    .line 119
    .line 120
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 121
    .line 122
    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 126
    .line 127
    .line 128
    :cond_2
    invoke-direct {p0, v0}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    float-to-int v3, v3

    .line 137
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    float-to-int v4, v4

    .line 142
    invoke-direct {p0, v0, v3, v4}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->d(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    iget-object v4, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->b:Landroid/graphics/Paint;

    .line 147
    .line 148
    invoke-virtual {p1, v0, v3, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->b:Landroid/graphics/Paint;

    .line 152
    .line 153
    if-eqz v0, :cond_3

    .line 154
    .line 155
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 156
    .line 157
    .line 158
    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :goto_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    const-string v1, "TranCircleImageView"

    .line 171
    .line 172
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :goto_2
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->s:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->c:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setBorderSpace(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->r:F

    .line 2
    .line 3
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->q:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->c:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setBottomLeftRadius(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setBottomLeftRadius_x(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setBottomLeftRadius_y(F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setBottomLeftRadius_x(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->m:F

    .line 2
    .line 3
    return-void
.end method

.method public setBottomLeftRadius_y(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->n:F

    .line 2
    .line 3
    return-void
.end method

.method public setBottomRightRadius(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setBottomRightRadius_x(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setBottomRightRadius_y(F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setBottomRightRadius_x(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->o:F

    .line 2
    .line 3
    return-void
.end method

.method public setBottomRightRadius_y(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->p:F

    .line 2
    .line 3
    return-void
.end method

.method public setCircle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->t:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setTopLeftRadius(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setTopRightRadius(F)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setBottomLeftRadius(F)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setBottomRightRadius(F)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setStyleType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->u:I

    .line 2
    .line 3
    return-void
.end method

.method public setTopLeftRadius(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setTopLeftRadius_x(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setTopLeftRadius_y(F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setTopLeftRadius_x(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->i:F

    .line 2
    .line 3
    return-void
.end method

.method public setTopLeftRadius_y(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->j:F

    .line 2
    .line 3
    return-void
.end method

.method public setTopRightRadius(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setTopRightRadius_x(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setTopRightRadius_y(F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setTopRightRadius_x(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->k:F

    .line 2
    .line 3
    return-void
.end method

.method public setTopRightRadius_y(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->l:F

    .line 2
    .line 3
    return-void
.end method
