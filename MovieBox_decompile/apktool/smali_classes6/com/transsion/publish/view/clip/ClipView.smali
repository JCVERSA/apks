.class public Lcom/transsion/publish/view/clip/ClipView;
.super Landroid/view/View;
.source "source.java"


# static fields
.field public static final BORDERDISTANCE:I = 0x0

.field public static final CIRCLE_ZOOM:I = 0x3

.field public static final CIRCULAR:I = 0x0

.field public static final RECTANGULAR:I = 0x1

.field public static TYPE_START:I = 0x0

.field public static mHorizontalPadding:I = 0x10


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field public innerCircle:I

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/publish/view/clip/ClipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    iput-object p1, p0, Lcom/transsion/publish/view/clip/ClipView;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/publish/view/clip/ClipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    iput-object p1, p0, Lcom/transsion/publish/view/clip/ClipView;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x3

    iput p2, p0, Lcom/transsion/publish/view/clip/ClipView;->innerCircle:I

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/transsion/publish/view/clip/ClipView;->i:Z

    .line 8
    iput-boolean p2, p0, Lcom/transsion/publish/view/clip/ClipView;->j:Z

    .line 9
    iput-boolean p2, p0, Lcom/transsion/publish/view/clip/ClipView;->k:Z

    .line 10
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 11
    iput-object p1, p0, Lcom/transsion/publish/view/clip/ClipView;->b:Landroid/content/Context;

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float/2addr p1, p0

    .line 12
    const/high16 p0, 0x3f000000    # 0.5f

    .line 13
    .line 14
    add-float/2addr p1, p0

    .line 15
    float-to-int p0, p1

    .line 16
    return p0
.end method


# virtual methods
.method public cropHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public cropWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public getInnerCircle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->innerCircle:I

    .line 2
    .line 3
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result v6

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v7

    .line 12
    iget v1, p0, Lcom/transsion/publish/view/clip/ClipView;->c:I

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x1

    .line 16
    if-lez v1, :cond_4

    .line 17
    .line 18
    iget v2, p0, Lcom/transsion/publish/view/clip/ClipView;->d:I

    .line 19
    .line 20
    if-lez v2, :cond_4

    .line 21
    .line 22
    if-lez v6, :cond_4

    .line 23
    .line 24
    if-lez v7, :cond_4

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/transsion/publish/view/clip/ClipView;->i:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/transsion/publish/view/clip/ClipView;->k:Z

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->b:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v0, v1, v2, v6, v7}, Lqo/b;->a(Landroid/content/Context;IIII)[I

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->b:Landroid/content/Context;

    .line 42
    .line 43
    const/high16 v5, 0x3f800000    # 1.0f

    .line 44
    .line 45
    move v3, v6

    .line 46
    move v4, v7

    .line 47
    invoke-static/range {v0 .. v5}, Lqo/b;->b(Landroid/content/Context;IIIIF)[I

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_0
    aget v1, v0, v8

    .line 52
    .line 53
    iput v1, p0, Lcom/transsion/publish/view/clip/ClipView;->c:I

    .line 54
    .line 55
    aget v0, v0, v9

    .line 56
    .line 57
    iput v0, p0, Lcom/transsion/publish/view/clip/ClipView;->d:I

    .line 58
    .line 59
    :cond_1
    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->c:I

    .line 60
    .line 61
    sub-int v0, v6, v0

    .line 62
    .line 63
    div-int/lit8 v8, v0, 0x2

    .line 64
    .line 65
    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->d:I

    .line 66
    .line 67
    sub-int v0, v7, v0

    .line 68
    .line 69
    div-int/lit8 v10, v0, 0x2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    sget v2, Lcom/transsion/publish/R$color;->cl31_50_p:I

    .line 78
    .line 79
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    .line 85
    .line 86
    int-to-float v6, v6

    .line 87
    int-to-float v11, v10

    .line 88
    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    const/4 v2, 0x0

    .line 92
    move-object v0, p1

    .line 93
    move v3, v6

    .line 94
    move v4, v11

    .line 95
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 96
    .line 97
    .line 98
    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->d:I

    .line 99
    .line 100
    add-int/2addr v0, v10

    .line 101
    int-to-float v2, v0

    .line 102
    int-to-float v4, v7

    .line 103
    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 104
    .line 105
    move-object v0, p1

    .line 106
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 107
    .line 108
    .line 109
    int-to-float v3, v8

    .line 110
    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->d:I

    .line 111
    .line 112
    add-int/2addr v0, v10

    .line 113
    int-to-float v4, v0

    .line 114
    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 115
    .line 116
    move-object v0, p1

    .line 117
    move v2, v11

    .line 118
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 119
    .line 120
    .line 121
    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->c:I

    .line 122
    .line 123
    add-int/2addr v0, v8

    .line 124
    int-to-float v1, v0

    .line 125
    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->d:I

    .line 126
    .line 127
    add-int/2addr v0, v10

    .line 128
    int-to-float v4, v0

    .line 129
    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 130
    .line 131
    move-object v0, p1

    .line 132
    move v3, v6

    .line 133
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    sget v2, Lcom/tn/lib/widget/R$color;->white:I

    .line 143
    .line 144
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 152
    .line 153
    int-to-float v1, v9

    .line 154
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 155
    .line 156
    .line 157
    iput v8, p0, Lcom/transsion/publish/view/clip/ClipView;->e:I

    .line 158
    .line 159
    iput v10, p0, Lcom/transsion/publish/view/clip/ClipView;->f:I

    .line 160
    .line 161
    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->c:I

    .line 162
    .line 163
    add-int/2addr v0, v8

    .line 164
    iput v0, p0, Lcom/transsion/publish/view/clip/ClipView;->g:I

    .line 165
    .line 166
    iget-boolean v1, p0, Lcom/transsion/publish/view/clip/ClipView;->k:Z

    .line 167
    .line 168
    if-eqz v1, :cond_2

    .line 169
    .line 170
    iget v1, p0, Lcom/transsion/publish/view/clip/ClipView;->d:I

    .line 171
    .line 172
    add-int/2addr v1, v10

    .line 173
    iput v1, p0, Lcom/transsion/publish/view/clip/ClipView;->h:I

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_2
    iget v1, p0, Lcom/transsion/publish/view/clip/ClipView;->d:I

    .line 177
    .line 178
    if-nez v10, :cond_3

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_3
    move v9, v10

    .line 182
    :goto_1
    sub-int/2addr v1, v9

    .line 183
    iput v1, p0, Lcom/transsion/publish/view/clip/ClipView;->h:I

    .line 184
    .line 185
    :goto_2
    iget-boolean v1, p0, Lcom/transsion/publish/view/clip/ClipView;->j:Z

    .line 186
    .line 187
    if-eqz v1, :cond_6

    .line 188
    .line 189
    int-to-float v1, v8

    .line 190
    int-to-float v2, v10

    .line 191
    int-to-float v3, v0

    .line 192
    int-to-float v4, v10

    .line 193
    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 194
    .line 195
    move-object v0, p1

    .line 196
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 197
    .line 198
    .line 199
    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->e:I

    .line 200
    .line 201
    int-to-float v1, v0

    .line 202
    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->h:I

    .line 203
    .line 204
    int-to-float v2, v0

    .line 205
    iget v3, p0, Lcom/transsion/publish/view/clip/ClipView;->g:I

    .line 206
    .line 207
    int-to-float v3, v3

    .line 208
    int-to-float v4, v0

    .line 209
    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 210
    .line 211
    move-object v0, p1

    .line 212
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 213
    .line 214
    .line 215
    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->e:I

    .line 216
    .line 217
    int-to-float v1, v0

    .line 218
    iget v2, p0, Lcom/transsion/publish/view/clip/ClipView;->f:I

    .line 219
    .line 220
    int-to-float v2, v2

    .line 221
    int-to-float v3, v0

    .line 222
    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->h:I

    .line 223
    .line 224
    int-to-float v4, v0

    .line 225
    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 226
    .line 227
    move-object v0, p1

    .line 228
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 229
    .line 230
    .line 231
    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->g:I

    .line 232
    .line 233
    int-to-float v1, v0

    .line 234
    iget v2, p0, Lcom/transsion/publish/view/clip/ClipView;->f:I

    .line 235
    .line 236
    int-to-float v2, v2

    .line 237
    int-to-float v3, v0

    .line 238
    iget v0, p0, Lcom/transsion/publish/view/clip/ClipView;->h:I

    .line 239
    .line 240
    int-to-float v4, v0

    .line 241
    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 242
    .line 243
    move-object v0, p1

    .line 244
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_3

    .line 248
    .line 249
    :cond_4
    sget v0, Lcom/transsion/publish/view/clip/ClipView;->TYPE_START:I

    .line 250
    .line 251
    if-nez v0, :cond_5

    .line 252
    .line 253
    div-int/lit8 v0, v6, 0x3

    .line 254
    .line 255
    iput v0, p0, Lcom/transsion/publish/view/clip/ClipView;->innerCircle:I

    .line 256
    .line 257
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 258
    .line 259
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    .line 261
    .line 262
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 263
    .line 264
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 265
    .line 266
    .line 267
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 268
    .line 269
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 273
    .line 274
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 277
    .line 278
    .line 279
    div-int/lit8 v6, v6, 0x2

    .line 280
    .line 281
    int-to-float v0, v6

    .line 282
    div-int/lit8 v1, v7, 0x2

    .line 283
    .line 284
    int-to-float v2, v1

    .line 285
    sget v3, Lcom/transsion/publish/view/clip/ClipView;->mHorizontalPadding:I

    .line 286
    .line 287
    sub-int v3, v6, v3

    .line 288
    .line 289
    int-to-float v3, v3

    .line 290
    iget-object v4, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 291
    .line 292
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 293
    .line 294
    .line 295
    iget-object v3, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 296
    .line 297
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    sget v5, Lcom/transsion/publish/R$color;->cl31_50_p:I

    .line 302
    .line 303
    invoke-static {v4, v5}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    .line 309
    .line 310
    iget-object v3, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 311
    .line 312
    int-to-float v4, v7

    .line 313
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 314
    .line 315
    .line 316
    sget v3, Lcom/transsion/publish/view/clip/ClipView;->mHorizontalPadding:I

    .line 317
    .line 318
    sub-int/2addr v6, v3

    .line 319
    add-int/2addr v6, v1

    .line 320
    int-to-float v1, v6

    .line 321
    iget-object v3, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 322
    .line 323
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_3

    .line 327
    .line 328
    :cond_5
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 329
    .line 330
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    sget v2, Lcom/transsion/publish/R$color;->cl31_50_p:I

    .line 335
    .line 336
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 341
    .line 342
    .line 343
    int-to-float v8, v6

    .line 344
    sub-int v0, v7, v6

    .line 345
    .line 346
    div-int/lit8 v0, v0, 0x2

    .line 347
    .line 348
    int-to-float v9, v0

    .line 349
    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 350
    .line 351
    const/4 v1, 0x0

    .line 352
    const/4 v2, 0x0

    .line 353
    move-object v0, p1

    .line 354
    move v3, v8

    .line 355
    move v4, v9

    .line 356
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 357
    .line 358
    .line 359
    add-int v0, v7, v6

    .line 360
    .line 361
    div-int/lit8 v0, v0, 0x2

    .line 362
    .line 363
    int-to-float v10, v0

    .line 364
    int-to-float v4, v7

    .line 365
    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 366
    .line 367
    move-object v0, p1

    .line 368
    move v2, v10

    .line 369
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 370
    .line 371
    .line 372
    const/4 v3, 0x0

    .line 373
    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 374
    .line 375
    move v2, v9

    .line 376
    move v4, v10

    .line 377
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 378
    .line 379
    .line 380
    int-to-float v1, v6

    .line 381
    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 382
    .line 383
    move v3, v8

    .line 384
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 385
    .line 386
    .line 387
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 388
    .line 389
    const/4 v1, -0x1

    .line 390
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    .line 392
    .line 393
    iget-object v0, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 394
    .line 395
    const/high16 v1, 0x40000000    # 2.0f

    .line 396
    .line 397
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 398
    .line 399
    .line 400
    int-to-float v6, v6

    .line 401
    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 402
    .line 403
    const/4 v1, 0x0

    .line 404
    move-object v0, p1

    .line 405
    move v3, v6

    .line 406
    move v4, v9

    .line 407
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 408
    .line 409
    .line 410
    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 411
    .line 412
    move v2, v10

    .line 413
    move v4, v10

    .line 414
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 415
    .line 416
    .line 417
    const/4 v3, 0x0

    .line 418
    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 419
    .line 420
    move v2, v9

    .line 421
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 422
    .line 423
    .line 424
    iget-object v5, p0, Lcom/transsion/publish/view/clip/ClipView;->a:Landroid/graphics/Paint;

    .line 425
    .line 426
    move v1, v6

    .line 427
    move v3, v6

    .line 428
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 429
    .line 430
    .line 431
    :cond_6
    :goto_3
    return-void
.end method

.method public rect()Landroid/graphics/Rect;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/publish/view/clip/ClipView;->e:I

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/publish/view/clip/ClipView;->f:I

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/publish/view/clip/ClipView;->g:I

    .line 8
    .line 9
    iget v4, p0, Lcom/transsion/publish/view/clip/ClipView;->h:I

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public setFullScreen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/publish/view/clip/ClipView;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNeedDivider(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/publish/view/clip/ClipView;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSizeNeedChange(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/publish/view/clip/ClipView;->i:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 1
    sput p1, Lcom/transsion/publish/view/clip/ClipView;->TYPE_START:I

    .line 2
    .line 3
    return-void
.end method

.method public setStartWH(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/publish/view/clip/ClipView;->c:I

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/publish/view/clip/ClipView;->d:I

    .line 4
    .line 5
    return-void
.end method
