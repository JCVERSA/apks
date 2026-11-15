.class public Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;
.super Lcom/journeyapps/barcodescanner/ViewfinderView;
.source "source.java"


# static fields
.field public static final INT_ANIMATION_DELAY:J = 0xcL


# instance fields
.field public mBitmapPaint:Landroid/graphics/Paint;

.field public mLineColor:I

.field public mLineDepth:F

.field public mLineRate:F

.field public mLinearGradient:Landroid/graphics/LinearGradient;

.field public mPositions:[F

.field public mScanFrameHeight:F

.field public mScanFrameWidth:F

.field public mScanLineColor:[I

.field public mScanLineDepth:F

.field public mScanLineDy:F

.field public mScanLinePosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/journeyapps/barcodescanner/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x3dcccccd    # 0.1f

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLineRate:F

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    invoke-direct {p0, v0}, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->b(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-float v1, v1

    .line 15
    iput v1, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLineDepth:F

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mScanLinePosition:I

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->b(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    int-to-float v0, v0

    .line 25
    iput v0, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mScanLineDepth:F

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    invoke-direct {p0, v0}, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->b(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    int-to-float v2, v2

    .line 33
    iput v2, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mScanLineDy:F

    .line 34
    .line 35
    new-array v0, v0, [F

    .line 36
    .line 37
    fill-array-data v0, :array_0

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mPositions:[F

    .line 41
    .line 42
    const/16 v0, -0x100

    .line 43
    .line 44
    filled-new-array {v1, v0, v1}, [I

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mScanLineColor:[I

    .line 49
    .line 50
    sget-object v1, Lcom/transsion/baseui/R$styleable;->ORQrCodeViewfinderView:[I

    .line 51
    .line 52
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    sget p2, Lcom/transsion/baseui/R$styleable;->ORQrCodeViewfinderView_lineColor:I

    .line 57
    .line 58
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    iput p2, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLineColor:I

    .line 63
    .line 64
    iget-object p2, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mScanLineColor:[I

    .line 65
    .line 66
    sget v1, Lcom/transsion/baseui/R$styleable;->ORQrCodeViewfinderView_cornerColor:I

    .line 67
    .line 68
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/4 v1, 0x1

    .line 73
    aput v0, p2, v1

    .line 74
    .line 75
    sget p2, Lcom/transsion/baseui/R$styleable;->ORQrCodeViewfinderView_scanFrameWidth:I

    .line 76
    .line 77
    const/16 v0, 0xa0

    .line 78
    .line 79
    invoke-direct {p0, v0}, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->b(I)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    int-to-float v2, v2

    .line 84
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    iput p2, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mScanFrameWidth:F

    .line 89
    .line 90
    sget p2, Lcom/transsion/baseui/R$styleable;->ORQrCodeViewfinderView_scanFrameHeight:I

    .line 91
    .line 92
    invoke-direct {p0, v0}, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->b(I)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    int-to-float v0, v0

    .line 97
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    iput p2, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mScanFrameHeight:F

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    .line 105
    .line 106
    new-instance p1, Landroid/graphics/Paint;

    .line 107
    .line 108
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object p1, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 112
    .line 113
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private b(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 14
    .line 15
    int-to-float p1, p1

    .line 16
    mul-float/2addr p1, v0

    .line 17
    const/high16 v0, 0x3f000000    # 0.5f

    .line 18
    .line 19
    add-float/2addr p1, v0

    .line 20
    float-to-int p1, p1

    .line 21
    return p1
.end method


# virtual methods
.method protected a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->k:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Laf/q;

    .line 7
    .line 8
    iget v2, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mScanFrameWidth:F

    .line 9
    .line 10
    float-to-int v2, v2

    .line 11
    iget v3, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mScanFrameHeight:F

    .line 12
    .line 13
    float-to-int v3, v3

    .line 14
    invoke-direct {v1, v2, v3}, Laf/q;-><init>(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->setFramingRectSize(Laf/q;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->k:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->getFramingRect()Landroid/graphics/Rect;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->k:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->getPreviewSize()Laf/q;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->l:Landroid/graphics/Rect;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->m:Laf/q;

    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->l:Landroid/graphics/Rect;

    .line 5
    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->m:Laf/q;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v3, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->b:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    iget v4, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->d:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget v4, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->c:I

    .line 32
    .line 33
    :goto_0
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    .line 35
    .line 36
    int-to-float v1, v1

    .line 37
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 38
    .line 39
    int-to-float v9, v3

    .line 40
    iget-object v10, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    move-object v5, p1

    .line 45
    move v8, v1

    .line 46
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 47
    .line 48
    .line 49
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 50
    .line 51
    int-to-float v6, v3

    .line 52
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 53
    .line 54
    int-to-float v7, v3

    .line 55
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 56
    .line 57
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    int-to-float v8, v3

    .line 60
    iget-object v9, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    move-object v4, p1

    .line 64
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 65
    .line 66
    .line 67
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 68
    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    int-to-float v6, v3

    .line 72
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 73
    .line 74
    int-to-float v7, v3

    .line 75
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 76
    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    int-to-float v9, v3

    .line 80
    iget-object v10, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 81
    .line 82
    move-object v5, p1

    .line 83
    move v8, v1

    .line 84
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 85
    .line 86
    .line 87
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 88
    .line 89
    add-int/lit8 v3, v3, 0x1

    .line 90
    .line 91
    int-to-float v7, v3

    .line 92
    int-to-float v9, v2

    .line 93
    iget-object v10, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 94
    .line 95
    const/4 v6, 0x0

    .line 96
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 100
    .line 101
    iget v2, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLineColor:I

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    .line 105
    .line 106
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 107
    .line 108
    int-to-float v3, v1

    .line 109
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 110
    .line 111
    int-to-float v4, v2

    .line 112
    int-to-float v1, v1

    .line 113
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    int-to-float v2, v2

    .line 118
    iget v5, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLineRate:F

    .line 119
    .line 120
    mul-float/2addr v2, v5

    .line 121
    add-float v5, v1, v2

    .line 122
    .line 123
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 124
    .line 125
    int-to-float v1, v1

    .line 126
    iget v2, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLineDepth:F

    .line 127
    .line 128
    add-float v6, v1, v2

    .line 129
    .line 130
    iget-object v7, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 131
    .line 132
    move-object v2, p1

    .line 133
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 134
    .line 135
    .line 136
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 137
    .line 138
    int-to-float v3, v1

    .line 139
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 140
    .line 141
    int-to-float v4, v2

    .line 142
    int-to-float v1, v1

    .line 143
    iget v5, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLineDepth:F

    .line 144
    .line 145
    add-float/2addr v5, v1

    .line 146
    int-to-float v1, v2

    .line 147
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    int-to-float v2, v2

    .line 152
    iget v6, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLineRate:F

    .line 153
    .line 154
    mul-float/2addr v2, v6

    .line 155
    add-float v6, v1, v2

    .line 156
    .line 157
    iget-object v7, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 158
    .line 159
    move-object v2, p1

    .line 160
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 161
    .line 162
    .line 163
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 164
    .line 165
    int-to-float v1, v1

    .line 166
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    int-to-float v2, v2

    .line 171
    iget v3, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLineRate:F

    .line 172
    .line 173
    mul-float/2addr v2, v3

    .line 174
    sub-float v4, v1, v2

    .line 175
    .line 176
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 177
    .line 178
    int-to-float v5, v1

    .line 179
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 180
    .line 181
    int-to-float v6, v2

    .line 182
    int-to-float v1, v1

    .line 183
    iget v2, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLineDepth:F

    .line 184
    .line 185
    add-float v7, v1, v2

    .line 186
    .line 187
    iget-object v8, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 188
    .line 189
    move-object v3, p1

    .line 190
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 191
    .line 192
    .line 193
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 194
    .line 195
    int-to-float v2, v1

    .line 196
    iget v3, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLineDepth:F

    .line 197
    .line 198
    sub-float v5, v2, v3

    .line 199
    .line 200
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 201
    .line 202
    int-to-float v6, v2

    .line 203
    int-to-float v7, v1

    .line 204
    int-to-float v1, v2

    .line 205
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    int-to-float v2, v2

    .line 210
    iget v3, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLineRate:F

    .line 211
    .line 212
    mul-float/2addr v2, v3

    .line 213
    add-float v8, v1, v2

    .line 214
    .line 215
    iget-object v9, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 216
    .line 217
    move-object v4, p1

    .line 218
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 219
    .line 220
    .line 221
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 222
    .line 223
    int-to-float v3, v1

    .line 224
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 225
    .line 226
    int-to-float v2, v2

    .line 227
    iget v4, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLineDepth:F

    .line 228
    .line 229
    sub-float v4, v2, v4

    .line 230
    .line 231
    int-to-float v1, v1

    .line 232
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    int-to-float v2, v2

    .line 237
    iget v5, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLineRate:F

    .line 238
    .line 239
    mul-float/2addr v2, v5

    .line 240
    add-float v5, v1, v2

    .line 241
    .line 242
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 243
    .line 244
    int-to-float v6, v1

    .line 245
    iget-object v7, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 246
    .line 247
    move-object v2, p1

    .line 248
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 249
    .line 250
    .line 251
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 252
    .line 253
    int-to-float v3, v1

    .line 254
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 255
    .line 256
    int-to-float v1, v1

    .line 257
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    int-to-float v2, v2

    .line 262
    iget v4, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLineRate:F

    .line 263
    .line 264
    mul-float/2addr v2, v4

    .line 265
    sub-float v4, v1, v2

    .line 266
    .line 267
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 268
    .line 269
    int-to-float v1, v1

    .line 270
    iget v2, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLineDepth:F

    .line 271
    .line 272
    add-float v5, v1, v2

    .line 273
    .line 274
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 275
    .line 276
    int-to-float v6, v1

    .line 277
    iget-object v7, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 278
    .line 279
    move-object v2, p1

    .line 280
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 281
    .line 282
    .line 283
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 284
    .line 285
    int-to-float v1, v1

    .line 286
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    int-to-float v2, v2

    .line 291
    iget v3, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLineRate:F

    .line 292
    .line 293
    mul-float/2addr v2, v3

    .line 294
    sub-float v4, v1, v2

    .line 295
    .line 296
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 297
    .line 298
    int-to-float v2, v1

    .line 299
    iget v3, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLineDepth:F

    .line 300
    .line 301
    sub-float v5, v2, v3

    .line 302
    .line 303
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 304
    .line 305
    int-to-float v6, v2

    .line 306
    int-to-float v7, v1

    .line 307
    iget-object v8, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 308
    .line 309
    move-object v3, p1

    .line 310
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 311
    .line 312
    .line 313
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 314
    .line 315
    int-to-float v1, v1

    .line 316
    iget v2, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLineDepth:F

    .line 317
    .line 318
    sub-float v4, v1, v2

    .line 319
    .line 320
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 321
    .line 322
    int-to-float v1, v1

    .line 323
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    int-to-float v2, v2

    .line 328
    iget v3, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLineRate:F

    .line 329
    .line 330
    mul-float/2addr v2, v3

    .line 331
    sub-float v5, v1, v2

    .line 332
    .line 333
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 334
    .line 335
    int-to-float v6, v1

    .line 336
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 337
    .line 338
    int-to-float v7, v1

    .line 339
    iget-object v8, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 340
    .line 341
    move-object v3, p1

    .line 342
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 343
    .line 344
    .line 345
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->b:Landroid/graphics/Bitmap;

    .line 346
    .line 347
    const/4 v2, 0x0

    .line 348
    const/16 v3, 0xa0

    .line 349
    .line 350
    if-eqz v1, :cond_2

    .line 351
    .line 352
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 353
    .line 354
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 355
    .line 356
    .line 357
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->b:Landroid/graphics/Bitmap;

    .line 358
    .line 359
    iget-object v3, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 360
    .line 361
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 362
    .line 363
    .line 364
    goto/16 :goto_3

    .line 365
    .line 366
    :cond_2
    iget v1, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mScanLinePosition:I

    .line 367
    .line 368
    int-to-float v1, v1

    .line 369
    iget v4, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mScanLineDy:F

    .line 370
    .line 371
    add-float/2addr v1, v4

    .line 372
    float-to-int v1, v1

    .line 373
    iput v1, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mScanLinePosition:I

    .line 374
    .line 375
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    if-lt v1, v4, :cond_3

    .line 380
    .line 381
    const/4 v1, 0x0

    .line 382
    iput v1, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mScanLinePosition:I

    .line 383
    .line 384
    :cond_3
    new-instance v1, Landroid/graphics/LinearGradient;

    .line 385
    .line 386
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 387
    .line 388
    int-to-float v5, v4

    .line 389
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 390
    .line 391
    iget v6, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mScanLinePosition:I

    .line 392
    .line 393
    add-int v7, v4, v6

    .line 394
    .line 395
    int-to-float v7, v7

    .line 396
    iget v8, v0, Landroid/graphics/Rect;->right:I

    .line 397
    .line 398
    int-to-float v8, v8

    .line 399
    add-int/2addr v4, v6

    .line 400
    int-to-float v9, v4

    .line 401
    iget-object v10, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mScanLineColor:[I

    .line 402
    .line 403
    iget-object v11, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mPositions:[F

    .line 404
    .line 405
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 406
    .line 407
    move-object v4, v1

    .line 408
    move v6, v7

    .line 409
    move v7, v8

    .line 410
    move v8, v9

    .line 411
    move-object v9, v10

    .line 412
    move-object v10, v11

    .line 413
    move-object v11, v12

    .line 414
    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 415
    .line 416
    .line 417
    iput-object v1, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 418
    .line 419
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 420
    .line 421
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 422
    .line 423
    .line 424
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 425
    .line 426
    int-to-float v5, v1

    .line 427
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 428
    .line 429
    iget v4, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mScanLinePosition:I

    .line 430
    .line 431
    add-int v6, v1, v4

    .line 432
    .line 433
    int-to-float v6, v6

    .line 434
    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 435
    .line 436
    int-to-float v7, v7

    .line 437
    add-int/2addr v1, v4

    .line 438
    int-to-float v1, v1

    .line 439
    iget v4, p0, Lcom/transsion/baseui/widget/ORQrCodeViewfinderView;->mScanLineDepth:F

    .line 440
    .line 441
    add-float v8, v1, v4

    .line 442
    .line 443
    iget-object v9, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 444
    .line 445
    move-object v4, p1

    .line 446
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 447
    .line 448
    .line 449
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 450
    .line 451
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 452
    .line 453
    .line 454
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    int-to-float v1, v1

    .line 459
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->m:Laf/q;

    .line 460
    .line 461
    iget v2, v2, Laf/q;->a:I

    .line 462
    .line 463
    int-to-float v2, v2

    .line 464
    div-float/2addr v1, v2

    .line 465
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    int-to-float v2, v2

    .line 470
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->m:Laf/q;

    .line 471
    .line 472
    iget v4, v4, Laf/q;->b:I

    .line 473
    .line 474
    int-to-float v4, v4

    .line 475
    div-float/2addr v2, v4

    .line 476
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->j:Ljava/util/List;

    .line 477
    .line 478
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 479
    .line 480
    .line 481
    move-result v4

    .line 482
    if-nez v4, :cond_5

    .line 483
    .line 484
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 485
    .line 486
    const/16 v5, 0x50

    .line 487
    .line 488
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 489
    .line 490
    .line 491
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 492
    .line 493
    iget v5, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->f:I

    .line 494
    .line 495
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 496
    .line 497
    .line 498
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->j:Ljava/util/List;

    .line 499
    .line 500
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 501
    .line 502
    .line 503
    move-result-object v4

    .line 504
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 505
    .line 506
    .line 507
    move-result v5

    .line 508
    if-eqz v5, :cond_4

    .line 509
    .line 510
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v5

    .line 514
    check-cast v5, Lcom/google/zxing/k;

    .line 515
    .line 516
    invoke-virtual {v5}, Lcom/google/zxing/k;->c()F

    .line 517
    .line 518
    .line 519
    move-result v6

    .line 520
    mul-float/2addr v6, v1

    .line 521
    float-to-int v6, v6

    .line 522
    int-to-float v6, v6

    .line 523
    invoke-virtual {v5}, Lcom/google/zxing/k;->d()F

    .line 524
    .line 525
    .line 526
    move-result v5

    .line 527
    mul-float/2addr v5, v2

    .line 528
    float-to-int v5, v5

    .line 529
    int-to-float v5, v5

    .line 530
    iget-object v7, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 531
    .line 532
    const/high16 v8, 0x40400000    # 3.0f

    .line 533
    .line 534
    invoke-virtual {p1, v6, v5, v8, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 535
    .line 536
    .line 537
    goto :goto_1

    .line 538
    :cond_4
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->j:Ljava/util/List;

    .line 539
    .line 540
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 541
    .line 542
    .line 543
    :cond_5
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->i:Ljava/util/List;

    .line 544
    .line 545
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 546
    .line 547
    .line 548
    move-result v4

    .line 549
    if-nez v4, :cond_7

    .line 550
    .line 551
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 552
    .line 553
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 554
    .line 555
    .line 556
    iget-object v3, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 557
    .line 558
    iget v4, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->f:I

    .line 559
    .line 560
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 561
    .line 562
    .line 563
    iget-object v3, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->i:Ljava/util/List;

    .line 564
    .line 565
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 570
    .line 571
    .line 572
    move-result v4

    .line 573
    if-eqz v4, :cond_6

    .line 574
    .line 575
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v4

    .line 579
    check-cast v4, Lcom/google/zxing/k;

    .line 580
    .line 581
    invoke-virtual {v4}, Lcom/google/zxing/k;->c()F

    .line 582
    .line 583
    .line 584
    move-result v5

    .line 585
    mul-float/2addr v5, v1

    .line 586
    float-to-int v5, v5

    .line 587
    int-to-float v5, v5

    .line 588
    invoke-virtual {v4}, Lcom/google/zxing/k;->d()F

    .line 589
    .line 590
    .line 591
    move-result v4

    .line 592
    mul-float/2addr v4, v2

    .line 593
    float-to-int v4, v4

    .line 594
    int-to-float v4, v4

    .line 595
    const/high16 v6, 0x40c00000    # 6.0f

    .line 596
    .line 597
    iget-object v7, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->a:Landroid/graphics/Paint;

    .line 598
    .line 599
    invoke-virtual {p1, v5, v4, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 600
    .line 601
    .line 602
    goto :goto_2

    .line 603
    :cond_6
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->i:Ljava/util/List;

    .line 604
    .line 605
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->j:Ljava/util/List;

    .line 606
    .line 607
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->i:Ljava/util/List;

    .line 608
    .line 609
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->j:Ljava/util/List;

    .line 610
    .line 611
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 612
    .line 613
    .line 614
    :cond_7
    :goto_3
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 615
    .line 616
    add-int/lit8 v4, p1, -0x6

    .line 617
    .line 618
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 619
    .line 620
    add-int/lit8 v5, p1, -0x6

    .line 621
    .line 622
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 623
    .line 624
    add-int/lit8 v6, p1, 0x6

    .line 625
    .line 626
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 627
    .line 628
    add-int/lit8 v7, p1, 0x6

    .line 629
    .line 630
    const-wide/16 v2, 0xc

    .line 631
    .line 632
    move-object v1, p0

    .line 633
    invoke-virtual/range {v1 .. v7}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    .line 634
    .line 635
    .line 636
    :cond_8
    :goto_4
    return-void
.end method
