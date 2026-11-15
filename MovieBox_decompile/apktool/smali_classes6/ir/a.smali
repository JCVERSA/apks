.class public Lir/a;
.super Landroid/text/style/ReplacementSpan;
.source "source.java"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/ref/WeakReference;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private final k:F

.field private l:Z

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIFIZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lir/a;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Lir/a;->b:I

    .line 7
    .line 8
    iput p4, p0, Lir/a;->e:I

    .line 9
    .line 10
    iput p3, p0, Lir/a;->f:I

    .line 11
    .line 12
    int-to-float p2, p6

    .line 13
    invoke-static {p1, p2}, Lir/a;->a(Landroid/content/Context;F)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    iput p2, p0, Lir/a;->g:I

    .line 18
    .line 19
    const/high16 p2, 0x3f800000    # 1.0f

    .line 20
    .line 21
    invoke-static {p1, p2}, Lir/a;->a(Landroid/content/Context;F)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    iput p3, p0, Lir/a;->i:I

    .line 26
    .line 27
    invoke-static {p1, p2}, Lir/a;->a(Landroid/content/Context;F)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    iput p2, p0, Lir/a;->j:I

    .line 32
    .line 33
    const/high16 p2, 0x40800000    # 4.0f

    .line 34
    .line 35
    invoke-static {p1, p2}, Lir/a;->a(Landroid/content/Context;F)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    iput p2, p0, Lir/a;->h:I

    .line 40
    .line 41
    iput p5, p0, Lir/a;->k:F

    .line 42
    .line 43
    iput-boolean p7, p0, Lir/a;->l:Z

    .line 44
    .line 45
    if-lez p8, :cond_0

    .line 46
    .line 47
    int-to-float p2, p8

    .line 48
    invoke-static {p1, p2}, Lir/a;->a(Landroid/content/Context;F)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 p1, 0x0

    .line 54
    :goto_0
    iput p1, p0, Lir/a;->m:I

    .line 55
    .line 56
    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private b()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lir/a;->d:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lir/a;->c()Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lir/a;->d:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    :cond_1
    return-object v0
.end method

.method private d()I
    .locals 1

    .line 1
    iget v0, p0, Lir/a;->m:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-direct {p0}, Lir/a;->b()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method


# virtual methods
.method public c()Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 1
    iget-object v0, p0, Lir/a;->a:Landroid/net/Uri;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lir/a;->c:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v3, p0, Lir/a;->a:Landroid/net/Uri;

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 24
    .line 25
    iget-object v5, p0, Lir/a;->c:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    :try_start_1
    iget v2, p0, Lir/a;->m:I

    .line 35
    .line 36
    if-lez v2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    :goto_0
    iget v3, p0, Lir/a;->m:I

    .line 44
    .line 45
    if-lez v3, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    :goto_1
    invoke-virtual {v4, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_6

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto :goto_2

    .line 61
    :catch_0
    move-object v2, v4

    .line 62
    goto :goto_5

    .line 63
    :goto_2
    throw v0

    .line 64
    :cond_2
    :try_start_2
    iget v0, p0, Lir/a;->b:I

    .line 65
    .line 66
    const/16 v3, -0x6f

    .line 67
    .line 68
    if-eq v0, v3, :cond_5

    .line 69
    .line 70
    iget-object v0, p0, Lir/a;->c:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget v3, p0, Lir/a;->b:I

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget v0, p0, Lir/a;->f:I

    .line 83
    .line 84
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 85
    .line 86
    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 87
    .line 88
    .line 89
    iget v0, p0, Lir/a;->m:I

    .line 90
    .line 91
    if-lez v0, :cond_3

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    :goto_3
    iget v3, p0, Lir/a;->m:I

    .line 99
    .line 100
    if-lez v3, :cond_4

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    :goto_4
    invoke-virtual {v2, v1, v1, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 108
    .line 109
    .line 110
    :catch_1
    :cond_5
    :goto_5
    move-object v4, v2

    .line 111
    :goto_6
    return-object v4
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    move-object/from16 v15, p9

    .line 6
    .line 7
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getColor()I

    .line 8
    .line 9
    .line 10
    move-result v13

    .line 11
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getTextSize()F

    .line 12
    .line 13
    .line 14
    move-result v12

    .line 15
    iget v0, v6, Lir/a;->e:I

    .line 16
    .line 17
    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, v6, Lir/a;->l:Z

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x6

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    move v7, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v7, v2

    .line 29
    :goto_0
    if-eqz v0, :cond_1

    .line 30
    .line 31
    move v8, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v8, v1

    .line 34
    :goto_1
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    move-object/from16 v0, p0

    .line 39
    .line 40
    move-object/from16 v1, p9

    .line 41
    .line 42
    move-object/from16 v2, p2

    .line 43
    .line 44
    move/from16 v3, p3

    .line 45
    .line 46
    move/from16 v4, p4

    .line 47
    .line 48
    invoke-virtual/range {v0 .. v5}, Lir/a;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    int-to-float v1, v7

    .line 53
    add-float v2, p5, v1

    .line 54
    .line 55
    int-to-float v0, v0

    .line 56
    add-float v0, p5, v0

    .line 57
    .line 58
    int-to-float v3, v8

    .line 59
    sub-float v3, v0, v3

    .line 60
    .line 61
    new-instance v4, Landroid/graphics/RectF;

    .line 62
    .line 63
    iget v5, v6, Lir/a;->i:I

    .line 64
    .line 65
    add-int v5, p6, v5

    .line 66
    .line 67
    int-to-float v5, v5

    .line 68
    iget v7, v6, Lir/a;->j:I

    .line 69
    .line 70
    sub-int v7, p8, v7

    .line 71
    .line 72
    int-to-float v7, v7

    .line 73
    invoke-direct {v4, v2, v5, v3, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 74
    .line 75
    .line 76
    iget v2, v6, Lir/a;->h:I

    .line 77
    .line 78
    int-to-float v3, v2

    .line 79
    int-to-float v2, v2

    .line 80
    invoke-virtual {v14, v4, v3, v2, v15}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 81
    .line 82
    .line 83
    iget v2, v6, Lir/a;->f:I

    .line 84
    .line 85
    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    .line 87
    .line 88
    iget v2, v6, Lir/a;->k:F

    .line 89
    .line 90
    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    .line 92
    .line 93
    iget v2, v6, Lir/a;->i:I

    .line 94
    .line 95
    iget v3, v6, Lir/a;->j:I

    .line 96
    .line 97
    add-int/2addr v2, v3

    .line 98
    div-int/lit8 v2, v2, 0x2

    .line 99
    .line 100
    sub-int v2, p7, v2

    .line 101
    .line 102
    iget v3, v6, Lir/a;->g:I

    .line 103
    .line 104
    int-to-float v3, v3

    .line 105
    add-float v11, p5, v3

    .line 106
    .line 107
    int-to-float v2, v2

    .line 108
    move-object/from16 v7, p1

    .line 109
    .line 110
    move-object/from16 v8, p2

    .line 111
    .line 112
    move/from16 v9, p3

    .line 113
    .line 114
    move/from16 v10, p4

    .line 115
    .line 116
    move v3, v12

    .line 117
    move v12, v2

    .line 118
    move v2, v13

    .line 119
    move-object/from16 v13, p9

    .line 120
    .line 121
    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 128
    .line 129
    .line 130
    invoke-direct/range {p0 .. p0}, Lir/a;->b()Landroid/graphics/drawable/Drawable;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    if-eqz v2, :cond_2

    .line 135
    .line 136
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 141
    .line 142
    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 143
    .line 144
    add-int/2addr v4, v3

    .line 145
    div-int/lit8 v4, v4, 0x2

    .line 146
    .line 147
    add-int v3, p7, v4

    .line 148
    .line 149
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 154
    .line 155
    div-int/lit8 v4, v4, 0x2

    .line 156
    .line 157
    sub-int/2addr v3, v4

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 159
    .line 160
    .line 161
    iget v4, v6, Lir/a;->g:I

    .line 162
    .line 163
    int-to-float v4, v4

    .line 164
    sub-float/2addr v0, v4

    .line 165
    invoke-direct/range {p0 .. p0}, Lir/a;->d()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    int-to-float v4, v4

    .line 170
    sub-float/2addr v0, v4

    .line 171
    add-float/2addr v0, v1

    .line 172
    int-to-float v1, v3

    .line 173
    invoke-virtual {v14, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 180
    .line 181
    .line 182
    :cond_2
    return-void
.end method

.method public e(Landroid/graphics/Paint;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 3

    .line 1
    iget v0, p0, Lir/a;->g:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    invoke-direct {p0}, Lir/a;->d()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p1, p2, v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    float-to-int p2, p2

    .line 26
    add-int/2addr v0, p2

    .line 27
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iget v1, p0, Lir/a;->k:F

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {p1, p3, v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    float-to-int p3, p3

    .line 51
    add-int/2addr v0, p3

    .line 52
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 2
    .line 3
    .line 4
    move-result p5

    .line 5
    iget v0, p0, Lir/a;->k:F

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    float-to-int p2, p2

    .line 15
    iget p3, p0, Lir/a;->g:I

    .line 16
    .line 17
    mul-int/lit8 p3, p3, 0x2

    .line 18
    .line 19
    add-int/2addr p2, p3

    .line 20
    invoke-direct {p0}, Lir/a;->d()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    add-int/2addr p2, p3

    .line 25
    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 26
    .line 27
    .line 28
    return p2
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 1
    iget v0, p0, Lir/a;->k:F

    .line 2
    .line 3
    iget v1, p1, Landroid/text/TextPaint;->density:F

    .line 4
    .line 5
    mul-float/2addr v0, v1

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2

    .line 1
    iget v0, p0, Lir/a;->k:F

    .line 2
    .line 3
    iget v1, p1, Landroid/text/TextPaint;->density:F

    .line 4
    .line 5
    mul-float/2addr v0, v1

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
