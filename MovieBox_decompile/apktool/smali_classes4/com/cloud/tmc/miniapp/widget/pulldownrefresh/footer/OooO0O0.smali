.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;
.super Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO<",
        "Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;",
        ">;",
        "Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;"
    }
.end annotation


# instance fields
.field public OooOOo:Ljava/lang/String;

.field public OooOOo0:Ljava/lang/String;

.field public OooOOoo:Ljava/lang/String;

.field public OooOo:Z

.field public OooOo0:Ljava/lang/String;

.field public OooOo00:Ljava/lang/String;

.field public OooOo0O:Ljava/lang/String;

.field public OooOo0o:Ljava/lang/String;

.field public OooOoO0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    .line 10
    .line 11
    sget v1, Lcom/cloud/tmc/miniapp/R$layout;->layout_classics_footer:I

    .line 12
    .line 13
    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    sget v1, Lcom/cloud/tmc/miniapp/R$id;->srl_classics_arrow:I

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/ImageView;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    .line 25
    .line 26
    sget v2, Lcom/cloud/tmc/miniapp/R$id;->srl_classics_progress:I

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/widget/ImageView;

    .line 33
    .line 34
    iput-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    .line 35
    .line 36
    sget v3, Lcom/cloud/tmc/miniapp/R$id;->srl_classics_title:I

    .line 37
    .line 38
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    .line 45
    .line 46
    sget-object v3, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter:[I

    .line 47
    .line 48
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    .line 64
    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableMarginRight:I

    .line 65
    .line 66
    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 67
    .line 68
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 73
    .line 74
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 75
    .line 76
    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableArrowSize:I

    .line 77
    .line 78
    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 79
    .line 80
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 85
    .line 86
    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableArrowSize:I

    .line 87
    .line 88
    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 89
    .line 90
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 95
    .line 96
    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableProgressSize:I

    .line 97
    .line 98
    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 99
    .line 100
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 105
    .line 106
    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableProgressSize:I

    .line 107
    .line 108
    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 109
    .line 110
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 115
    .line 116
    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableSize:I

    .line 117
    .line 118
    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 119
    .line 120
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 125
    .line 126
    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableSize:I

    .line 127
    .line 128
    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 129
    .line 130
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 135
    .line 136
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableSize:I

    .line 137
    .line 138
    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 139
    .line 140
    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 145
    .line 146
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableSize:I

    .line 147
    .line 148
    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 149
    .line 150
    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 155
    .line 156
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlFinishDuration:I

    .line 157
    .line 158
    iget v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO0:I

    .line 159
    .line 160
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    iput v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO0:I

    .line 165
    .line 166
    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0oo:[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 167
    .line 168
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlClassicsSpinnerStyle:I

    .line 169
    .line 170
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 171
    .line 172
    iget v6, v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO00o:I

    .line 173
    .line 174
    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    aget-object v4, v4, v5

    .line 179
    .line 180
    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 181
    .line 182
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlEnableArrowView:I

    .line 183
    .line 184
    iget-boolean v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    .line 185
    .line 186
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    iput-boolean v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    .line 191
    .line 192
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableArrow:I

    .line 193
    .line 194
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    const v5, -0x99999a

    .line 199
    .line 200
    .line 201
    if-eqz v4, :cond_0

    .line 202
    .line 203
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    .line 204
    .line 205
    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableArrow:I

    .line 206
    .line 207
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_0
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    .line 216
    .line 217
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    if-nez v4, :cond_1

    .line 222
    .line 223
    new-instance v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO00o;

    .line 224
    .line 225
    invoke-direct {v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO00o;-><init>()V

    .line 226
    .line 227
    .line 228
    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    .line 229
    .line 230
    invoke-virtual {v4, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;->OooO00o(I)V

    .line 231
    .line 232
    .line 233
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    .line 234
    .line 235
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    .line 236
    .line 237
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    .line 239
    .line 240
    :cond_1
    :goto_0
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableProgress:I

    .line 241
    .line 242
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    if-eqz v4, :cond_2

    .line 247
    .line 248
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    .line 249
    .line 250
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableProgress:I

    .line 251
    .line 252
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_2
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    .line 261
    .line 262
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    if-nez v4, :cond_3

    .line 267
    .line 268
    new-instance v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO;

    .line 269
    .line 270
    invoke-direct {v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO;-><init>()V

    .line 271
    .line 272
    .line 273
    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    .line 274
    .line 275
    invoke-virtual {v4, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;->OooO00o(I)V

    .line 276
    .line 277
    .line 278
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    .line 279
    .line 280
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    .line 281
    .line 282
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    .line 284
    .line 285
    :cond_3
    :goto_1
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextSizeTitle:I

    .line 286
    .line 287
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    if-eqz v4, :cond_4

    .line 292
    .line 293
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    .line 294
    .line 295
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextSizeTitle:I

    .line 296
    .line 297
    const/high16 v6, 0x41800000    # 16.0f

    .line 298
    .line 299
    invoke-static {v6}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    int-to-float v5, v5

    .line 308
    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 309
    .line 310
    .line 311
    :cond_4
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlPrimaryColor:I

    .line 312
    .line 313
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    if-eqz v4, :cond_5

    .line 318
    .line 319
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlPrimaryColor:I

    .line 320
    .line 321
    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;

    .line 326
    .line 327
    .line 328
    :cond_5
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlAccentColor:I

    .line 329
    .line 330
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-eqz v4, :cond_6

    .line 335
    .line 336
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlAccentColor:I

    .line 337
    .line 338
    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 339
    .line 340
    .line 341
    move-result v4

    .line 342
    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO00o(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;

    .line 343
    .line 344
    .line 345
    :cond_6
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextPulling:I

    .line 346
    .line 347
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    if-eqz v4, :cond_7

    .line 352
    .line 353
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextPulling:I

    .line 354
    .line 355
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOo0:Ljava/lang/String;

    .line 360
    .line 361
    goto :goto_2

    .line 362
    :cond_7
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->srl_footer_pulling:I

    .line 363
    .line 364
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOo0:Ljava/lang/String;

    .line 369
    .line 370
    :goto_2
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextRelease:I

    .line 371
    .line 372
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 373
    .line 374
    .line 375
    move-result v4

    .line 376
    if-eqz v4, :cond_8

    .line 377
    .line 378
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextRelease:I

    .line 379
    .line 380
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOo:Ljava/lang/String;

    .line 385
    .line 386
    goto :goto_3

    .line 387
    :cond_8
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->srl_footer_release:I

    .line 388
    .line 389
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOo:Ljava/lang/String;

    .line 394
    .line 395
    :goto_3
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextLoading:I

    .line 396
    .line 397
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    if-eqz v4, :cond_9

    .line 402
    .line 403
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextLoading:I

    .line 404
    .line 405
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOoo:Ljava/lang/String;

    .line 410
    .line 411
    goto :goto_4

    .line 412
    :cond_9
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->srl_footer_loading:I

    .line 413
    .line 414
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOoo:Ljava/lang/String;

    .line 419
    .line 420
    :goto_4
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextRefreshing:I

    .line 421
    .line 422
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 423
    .line 424
    .line 425
    move-result v4

    .line 426
    if-eqz v4, :cond_a

    .line 427
    .line 428
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextRefreshing:I

    .line 429
    .line 430
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo00:Ljava/lang/String;

    .line 435
    .line 436
    goto :goto_5

    .line 437
    :cond_a
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->srl_footer_refreshing:I

    .line 438
    .line 439
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo00:Ljava/lang/String;

    .line 444
    .line 445
    :goto_5
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextFinish:I

    .line 446
    .line 447
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 448
    .line 449
    .line 450
    move-result v4

    .line 451
    if-eqz v4, :cond_b

    .line 452
    .line 453
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextFinish:I

    .line 454
    .line 455
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo0:Ljava/lang/String;

    .line 460
    .line 461
    goto :goto_6

    .line 462
    :cond_b
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->srl_footer_finish:I

    .line 463
    .line 464
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo0:Ljava/lang/String;

    .line 469
    .line 470
    :goto_6
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextFailed:I

    .line 471
    .line 472
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 473
    .line 474
    .line 475
    move-result v4

    .line 476
    if-eqz v4, :cond_c

    .line 477
    .line 478
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextFailed:I

    .line 479
    .line 480
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo0O:Ljava/lang/String;

    .line 485
    .line 486
    goto :goto_7

    .line 487
    :cond_c
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->srl_footer_failed:I

    .line 488
    .line 489
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v4

    .line 493
    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo0O:Ljava/lang/String;

    .line 494
    .line 495
    :goto_7
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextNothing:I

    .line 496
    .line 497
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 498
    .line 499
    .line 500
    move-result v4

    .line 501
    if-eqz v4, :cond_d

    .line 502
    .line 503
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextNothing:I

    .line 504
    .line 505
    invoke-virtual {v3, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo0o:Ljava/lang/String;

    .line 510
    .line 511
    goto :goto_8

    .line 512
    :cond_d
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->srl_footer_nothing:I

    .line 513
    .line 514
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo0o:Ljava/lang/String;

    .line 519
    .line 520
    :goto_8
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 528
    .line 529
    .line 530
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    .line 531
    .line 532
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    .line 533
    .line 534
    const/16 v3, 0x8

    .line 535
    .line 536
    if-eqz p2, :cond_e

    .line 537
    .line 538
    goto :goto_9

    .line 539
    :cond_e
    move v0, v3

    .line 540
    :goto_9
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 541
    .line 542
    .line 543
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    .line 544
    .line 545
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 546
    .line 547
    .line 548
    move-result p2

    .line 549
    if-eqz p2, :cond_f

    .line 550
    .line 551
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOoo:Ljava/lang/String;

    .line 552
    .line 553
    goto :goto_a

    .line 554
    :cond_f
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOo0:Ljava/lang/String;

    .line 555
    .line 556
    :goto_a
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 560
    .line 561
    .line 562
    move-result p1

    .line 563
    if-eqz p1, :cond_10

    .line 564
    .line 565
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 566
    .line 567
    .line 568
    goto :goto_b

    .line 569
    :cond_10
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 570
    .line 571
    .line 572
    :goto_b
    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I

    .line 2
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo0:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo0O:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO0:I

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V
    .locals 1
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

    .line 14
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    .line 15
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo:Z

    if-nez p2, :cond_1

    .line 16
    sget-object p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0$OooO00o;->OooO00o:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/high16 p3, 0x43340000    # 180.0f

    const/16 v0, 0x8

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 17
    :pswitch_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo00:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    if-eqz p2, :cond_1

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 20
    :pswitch_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOo:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    if-eqz p2, :cond_1

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 23
    :pswitch_2
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOoo:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    if-eqz p2, :cond_1

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 26
    :pswitch_3
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOo0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    if-eqz p2, :cond_1

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 29
    :pswitch_4
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOo0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    if-eqz p2, :cond_1

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public OooO00o(Z)Z
    .locals 2

    .line 5
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo:Z

    if-eq v0, p1, :cond_1

    .line 6
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo:Z

    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo0o:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOo0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public varargs setPrimaryColors([I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 2
    .line 3
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->setPrimaryColors([I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
