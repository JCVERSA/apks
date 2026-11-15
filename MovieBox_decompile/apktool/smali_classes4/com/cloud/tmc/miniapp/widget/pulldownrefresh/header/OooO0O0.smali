.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;
.super Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO<",
        "Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;",
        ">;",
        "Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;"
    }
.end annotation


# instance fields
.field public OooOOo:Ljava/util/Date;

.field public OooOOo0:Ljava/lang/String;

.field public OooOOoo:Landroid/widget/TextView;

.field public OooOo:Ljava/lang/String;

.field public OooOo0:Z

.field public OooOo00:Ljava/text/DateFormat;

.field public OooOo0O:Z

.field public OooOo0o:Ljava/lang/String;

.field public OooOoO:Ljava/lang/String;

.field public OooOoO0:Ljava/lang/String;

.field public OooOoOO:Ljava/lang/String;

.field public OooOoo:Ljava/lang/String;

.field public OooOoo0:Ljava/lang/String;

.field public OooOooO:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    .line 5
    .line 6
    const-string v1, "LAST_UPDATE_TIME"

    .line 7
    .line 8
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOo0:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0:Z

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    .line 14
    .line 15
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOooO:I

    .line 16
    .line 17
    sget v1, Lcom/cloud/tmc/miniapp/R$layout;->layout_classics_header:I

    .line 18
    .line 19
    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    sget v1, Lcom/cloud/tmc/miniapp/R$id;->srl_classics_arrow:I

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/widget/ImageView;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    .line 31
    .line 32
    sget v2, Lcom/cloud/tmc/miniapp/R$id;->srl_classics_update:I

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOoo:Landroid/widget/TextView;

    .line 41
    .line 42
    sget v3, Lcom/cloud/tmc/miniapp/R$id;->srl_classics_progress:I

    .line 43
    .line 44
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Landroid/widget/ImageView;

    .line 49
    .line 50
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    .line 51
    .line 52
    sget v4, Lcom/cloud/tmc/miniapp/R$id;->srl_classics_title:I

    .line 53
    .line 54
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    .line 61
    .line 62
    sget-object v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader:[I

    .line 63
    .line 64
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 73
    .line 74
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 79
    .line 80
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 81
    .line 82
    const/4 v8, -0x2

    .line 83
    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84
    .line 85
    .line 86
    sget v8, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextTimeMarginTop:I

    .line 87
    .line 88
    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 89
    .line 90
    invoke-virtual {v4, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 95
    .line 96
    sget v7, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableMarginRight:I

    .line 97
    .line 98
    iget v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 99
    .line 100
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 105
    .line 106
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 107
    .line 108
    sget v7, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableArrowSize:I

    .line 109
    .line 110
    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 111
    .line 112
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 117
    .line 118
    sget v7, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableArrowSize:I

    .line 119
    .line 120
    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 121
    .line 122
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 127
    .line 128
    sget v7, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableProgressSize:I

    .line 129
    .line 130
    iget v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 131
    .line 132
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 137
    .line 138
    sget v7, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableProgressSize:I

    .line 139
    .line 140
    iget v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 141
    .line 142
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 147
    .line 148
    sget v7, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableSize:I

    .line 149
    .line 150
    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 151
    .line 152
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 157
    .line 158
    sget v7, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableSize:I

    .line 159
    .line 160
    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 161
    .line 162
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 167
    .line 168
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableSize:I

    .line 169
    .line 170
    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 171
    .line 172
    invoke-virtual {v4, v5, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    iput v5, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 177
    .line 178
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableSize:I

    .line 179
    .line 180
    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 181
    .line 182
    invoke-virtual {v4, v5, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    iput v5, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 187
    .line 188
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlFinishDuration:I

    .line 189
    .line 190
    iget v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO0:I

    .line 191
    .line 192
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    iput v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO0:I

    .line 197
    .line 198
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlEnableLastTime:I

    .line 199
    .line 200
    iget-boolean v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0:Z

    .line 201
    .line 202
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    iput-boolean v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0:Z

    .line 207
    .line 208
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlEnableArrowView:I

    .line 209
    .line 210
    iget-boolean v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    .line 211
    .line 212
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    iput-boolean v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    .line 217
    .line 218
    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0oo:[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 219
    .line 220
    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlClassicsSpinnerStyle:I

    .line 221
    .line 222
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 223
    .line 224
    iget v7, v7, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO00o:I

    .line 225
    .line 226
    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    aget-object v5, v5, v6

    .line 231
    .line 232
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    .line 233
    .line 234
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableArrow:I

    .line 235
    .line 236
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    const v6, -0x99999a

    .line 241
    .line 242
    .line 243
    if-eqz v5, :cond_0

    .line 244
    .line 245
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    .line 246
    .line 247
    sget v7, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableArrow:I

    .line 248
    .line 249
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    .line 255
    .line 256
    goto :goto_0

    .line 257
    :cond_0
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    .line 258
    .line 259
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    if-nez v5, :cond_1

    .line 264
    .line 265
    new-instance v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO00o;

    .line 266
    .line 267
    invoke-direct {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO00o;-><init>()V

    .line 268
    .line 269
    .line 270
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    .line 271
    .line 272
    invoke-virtual {v5, v6}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;->OooO00o(I)V

    .line 273
    .line 274
    .line 275
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    .line 276
    .line 277
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    .line 278
    .line 279
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    .line 281
    .line 282
    :cond_1
    :goto_0
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableProgress:I

    .line 283
    .line 284
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    if-eqz v5, :cond_2

    .line 289
    .line 290
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    .line 291
    .line 292
    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableProgress:I

    .line 293
    .line 294
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    .line 300
    .line 301
    goto :goto_1

    .line 302
    :cond_2
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    .line 303
    .line 304
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    if-nez v5, :cond_3

    .line 309
    .line 310
    new-instance v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO;

    .line 311
    .line 312
    invoke-direct {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO;-><init>()V

    .line 313
    .line 314
    .line 315
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    .line 316
    .line 317
    invoke-virtual {v5, v6}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;->OooO00o(I)V

    .line 318
    .line 319
    .line 320
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    .line 321
    .line 322
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    .line 323
    .line 324
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    .line 326
    .line 327
    :cond_3
    :goto_1
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextSizeTitle:I

    .line 328
    .line 329
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    if-eqz v5, :cond_4

    .line 334
    .line 335
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    .line 336
    .line 337
    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextSizeTitle:I

    .line 338
    .line 339
    const/high16 v7, 0x41800000    # 16.0f

    .line 340
    .line 341
    invoke-static {v7}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    .line 342
    .line 343
    .line 344
    move-result v7

    .line 345
    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 346
    .line 347
    .line 348
    move-result v6

    .line 349
    int-to-float v6, v6

    .line 350
    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 351
    .line 352
    .line 353
    :cond_4
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextSizeTime:I

    .line 354
    .line 355
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    if-eqz v5, :cond_5

    .line 360
    .line 361
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOoo:Landroid/widget/TextView;

    .line 362
    .line 363
    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextSizeTime:I

    .line 364
    .line 365
    const/high16 v7, 0x41400000    # 12.0f

    .line 366
    .line 367
    invoke-static {v7}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    int-to-float v6, v6

    .line 376
    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 377
    .line 378
    .line 379
    :cond_5
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlPrimaryColor:I

    .line 380
    .line 381
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 382
    .line 383
    .line 384
    move-result v5

    .line 385
    if-eqz v5, :cond_6

    .line 386
    .line 387
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlPrimaryColor:I

    .line 388
    .line 389
    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 390
    .line 391
    .line 392
    move-result v5

    .line 393
    invoke-virtual {p0, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;

    .line 394
    .line 395
    .line 396
    :cond_6
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlAccentColor:I

    .line 397
    .line 398
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    if-eqz v5, :cond_7

    .line 403
    .line 404
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlAccentColor:I

    .line 405
    .line 406
    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 407
    .line 408
    .line 409
    move-result v5

    .line 410
    invoke-virtual {p0, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooO0OO(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;

    .line 411
    .line 412
    .line 413
    :cond_7
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextPulling:I

    .line 414
    .line 415
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    if-eqz v5, :cond_8

    .line 420
    .line 421
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextPulling:I

    .line 422
    .line 423
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0o:Ljava/lang/String;

    .line 428
    .line 429
    goto :goto_2

    .line 430
    :cond_8
    sget v5, Lcom/cloud/tmc/miniapp/R$string;->srl_header_pulling:I

    .line 431
    .line 432
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0o:Ljava/lang/String;

    .line 437
    .line 438
    :goto_2
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextLoading:I

    .line 439
    .line 440
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 441
    .line 442
    .line 443
    move-result v5

    .line 444
    if-eqz v5, :cond_9

    .line 445
    .line 446
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextLoading:I

    .line 447
    .line 448
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v5

    .line 452
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoO0:Ljava/lang/String;

    .line 453
    .line 454
    goto :goto_3

    .line 455
    :cond_9
    sget v5, Lcom/cloud/tmc/miniapp/R$string;->srl_header_loading:I

    .line 456
    .line 457
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v5

    .line 461
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoO0:Ljava/lang/String;

    .line 462
    .line 463
    :goto_3
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextRelease:I

    .line 464
    .line 465
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 466
    .line 467
    .line 468
    move-result v5

    .line 469
    if-eqz v5, :cond_a

    .line 470
    .line 471
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextRelease:I

    .line 472
    .line 473
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v5

    .line 477
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoO:Ljava/lang/String;

    .line 478
    .line 479
    goto :goto_4

    .line 480
    :cond_a
    sget v5, Lcom/cloud/tmc/miniapp/R$string;->srl_header_release:I

    .line 481
    .line 482
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoO:Ljava/lang/String;

    .line 487
    .line 488
    :goto_4
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextFinish:I

    .line 489
    .line 490
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 491
    .line 492
    .line 493
    move-result v5

    .line 494
    if-eqz v5, :cond_b

    .line 495
    .line 496
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextFinish:I

    .line 497
    .line 498
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v5

    .line 502
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoOO:Ljava/lang/String;

    .line 503
    .line 504
    goto :goto_5

    .line 505
    :cond_b
    sget v5, Lcom/cloud/tmc/miniapp/R$string;->srl_header_finish:I

    .line 506
    .line 507
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoOO:Ljava/lang/String;

    .line 512
    .line 513
    :goto_5
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextFailed:I

    .line 514
    .line 515
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 516
    .line 517
    .line 518
    move-result v5

    .line 519
    if-eqz v5, :cond_c

    .line 520
    .line 521
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextFailed:I

    .line 522
    .line 523
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    goto :goto_6

    .line 527
    :cond_c
    sget v5, Lcom/cloud/tmc/miniapp/R$string;->srl_header_failed:I

    .line 528
    .line 529
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    :goto_6
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextSecondary:I

    .line 533
    .line 534
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 535
    .line 536
    .line 537
    move-result v5

    .line 538
    if-eqz v5, :cond_d

    .line 539
    .line 540
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextSecondary:I

    .line 541
    .line 542
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v5

    .line 546
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoo:Ljava/lang/String;

    .line 547
    .line 548
    goto :goto_7

    .line 549
    :cond_d
    sget v5, Lcom/cloud/tmc/miniapp/R$string;->srl_header_secondary:I

    .line 550
    .line 551
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoo:Ljava/lang/String;

    .line 556
    .line 557
    :goto_7
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextRefreshing:I

    .line 558
    .line 559
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 560
    .line 561
    .line 562
    move-result v5

    .line 563
    if-eqz v5, :cond_e

    .line 564
    .line 565
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextRefreshing:I

    .line 566
    .line 567
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v5

    .line 571
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo:Ljava/lang/String;

    .line 572
    .line 573
    goto :goto_8

    .line 574
    :cond_e
    sget v5, Lcom/cloud/tmc/miniapp/R$string;->srl_header_refreshing:I

    .line 575
    .line 576
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v5

    .line 580
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo:Ljava/lang/String;

    .line 581
    .line 582
    :goto_8
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextUpdate:I

    .line 583
    .line 584
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 585
    .line 586
    .line 587
    move-result v5

    .line 588
    if-eqz v5, :cond_f

    .line 589
    .line 590
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextUpdate:I

    .line 591
    .line 592
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v5

    .line 596
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoo0:Ljava/lang/String;

    .line 597
    .line 598
    goto :goto_9

    .line 599
    :cond_f
    sget v5, Lcom/cloud/tmc/miniapp/R$string;->srl_header_update:I

    .line 600
    .line 601
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v5

    .line 605
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoo0:Ljava/lang/String;

    .line 606
    .line 607
    :goto_9
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 608
    .line 609
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoo0:Ljava/lang/String;

    .line 610
    .line 611
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 612
    .line 613
    .line 614
    move-result-object v7

    .line 615
    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 616
    .line 617
    .line 618
    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo00:Ljava/text/DateFormat;

    .line 619
    .line 620
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 624
    .line 625
    .line 626
    move-result-object v4

    .line 627
    invoke-virtual {v4, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 628
    .line 629
    .line 630
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0:Z

    .line 631
    .line 632
    const/16 v4, 0x8

    .line 633
    .line 634
    if-eqz p2, :cond_10

    .line 635
    .line 636
    move p2, v0

    .line 637
    goto :goto_a

    .line 638
    :cond_10
    move p2, v4

    .line 639
    :goto_a
    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 640
    .line 641
    .line 642
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    .line 643
    .line 644
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    .line 645
    .line 646
    if-eqz v2, :cond_11

    .line 647
    .line 648
    goto :goto_b

    .line 649
    :cond_11
    move v0, v4

    .line 650
    :goto_b
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 651
    .line 652
    .line 653
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    .line 654
    .line 655
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 656
    .line 657
    .line 658
    move-result v0

    .line 659
    if-eqz v0, :cond_12

    .line 660
    .line 661
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo:Ljava/lang/String;

    .line 662
    .line 663
    goto :goto_c

    .line 664
    :cond_12
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0o:Ljava/lang/String;

    .line 665
    .line 666
    :goto_c
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 670
    .line 671
    .line 672
    move-result p2

    .line 673
    if-eqz p2, :cond_13

    .line 674
    .line 675
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 676
    .line 677
    .line 678
    goto :goto_d

    .line 679
    :cond_13
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 680
    .line 681
    .line 682
    :goto_d
    const/4 p2, 0x4

    .line 683
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 684
    .line 685
    .line 686
    :try_start_0
    instance-of p2, p1, Landroidx/fragment/app/FragmentActivity;

    .line 687
    .line 688
    if-eqz p2, :cond_14

    .line 689
    .line 690
    move-object p2, p1

    .line 691
    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    .line 692
    .line 693
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 694
    .line 695
    .line 696
    move-result-object p2

    .line 697
    if-eqz p2, :cond_14

    .line 698
    .line 699
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->y0()Ljava/util/List;

    .line 700
    .line 701
    .line 702
    move-result-object p2

    .line 703
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 704
    .line 705
    .line 706
    move-result p2

    .line 707
    if-lez p2, :cond_14

    .line 708
    .line 709
    new-instance p2, Ljava/util/Date;

    .line 710
    .line 711
    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 712
    .line 713
    .line 714
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooO00o(Ljava/util/Date;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    .line 716
    .line 717
    return-void

    .line 718
    :catchall_0
    move-exception p2

    .line 719
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 720
    .line 721
    .line 722
    :cond_14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 723
    .line 724
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 725
    .line 726
    .line 727
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOo0:Ljava/lang/String;

    .line 728
    .line 729
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object p2

    .line 747
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOo0:Ljava/lang/String;

    .line 748
    .line 749
    :try_start_1
    const-class p2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 750
    .line 751
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object p2

    .line 755
    check-cast p2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 756
    .line 757
    const-string v0, "miniLauncherGlobal"

    .line 758
    .line 759
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOo0:Ljava/lang/String;

    .line 760
    .line 761
    invoke-interface {p2, p1, v0, v1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 762
    .line 763
    .line 764
    move-result-wide p1

    .line 765
    const-wide/16 v0, 0x0

    .line 766
    .line 767
    cmp-long v0, p1, v0

    .line 768
    .line 769
    if-nez v0, :cond_15

    .line 770
    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 772
    .line 773
    .line 774
    move-result-wide p1

    .line 775
    goto :goto_e

    .line 776
    :catchall_1
    move-exception p1

    .line 777
    goto :goto_f

    .line 778
    :cond_15
    :goto_e
    new-instance v0, Ljava/util/Date;

    .line 779
    .line 780
    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooO00o(Ljava/util/Date;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 784
    .line 785
    .line 786
    goto :goto_10

    .line 787
    :goto_f
    const-string p2, "MiniClassicsHeader"

    .line 788
    .line 789
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 790
    .line 791
    .line 792
    :goto_10
    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I
    .locals 2
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoOO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOo:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooO00o(Ljava/util/Date;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    invoke-super {p0, p1, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I

    move-result p1

    return p1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 8
    instance-of v0, p2, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_2

    .line 9
    check-cast p2, Landroid/graphics/drawable/Animatable;

    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 12
    :cond_3
    :goto_0
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/a;

    invoke-direct {p2, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/a;-><init>(Landroid/view/View;)V

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO0:I

    add-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO0:I

    return p1
.end method

.method public OooO00o(Ljava/util/Date;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;
    .locals 7

    .line 47
    :try_start_0
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOo:Ljava/util/Date;

    .line 48
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOoo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo00:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "miniLauncherGlobal"

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOo0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 50
    const-string v0, "MiniClassicsHeader"

    const-string v1, "setLastUpdateTime: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0
.end method

.method public bridge synthetic OooO00o(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooO0OO(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;

    move-result-object p1

    return-object p1
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V
    .locals 3
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

    .line 20
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    .line 21
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOoo:Landroid/widget/TextView;

    .line 22
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0$OooO00o;->OooO00o:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1

    .line 23
    :pswitch_0
    iget-boolean p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    if-eqz p3, :cond_0

    .line 24
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :cond_0
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0:Z

    if-eqz p1, :cond_1

    const/4 v2, 0x4

    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoO0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 27
    :pswitch_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoo:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    if-eqz p2, :cond_3

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :pswitch_2
    const-wide/16 p2, 0x64

    .line 30
    :try_start_0
    invoke-static {p2, p3}, Lcom/cloud/tmc/miniutils/util/VibrateUtils;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 31
    const-string p3, "MiniRefreshHeader"

    const-string v0, "ReleaseToRefresh vibrate failed!"

    invoke-static {p3, v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :goto_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoO:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    if-eqz p2, :cond_3

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 35
    :pswitch_3
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    if-eqz p2, :cond_3

    .line 37
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 38
    :pswitch_4
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0o:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    if-eqz p2, :cond_3

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 42
    :pswitch_5
    iget-boolean p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0:Z

    if-eqz p3, :cond_2

    move v2, v0

    :cond_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0o:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    if-eqz p2, :cond_3

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public OooO00o(ZFIII)V
    .locals 0

    .line 15
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOooO:I

    if-lt p3, p1, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    .line 19
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public OooO0OO(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOoo:Landroid/widget/TextView;

    .line 2
    .line 3
    const v1, 0xffffff

    .line 4
    .line 5
    .line 6
    and-int/2addr v1, p1

    .line 7
    const/high16 v2, -0x34000000    # -3.3554432E7f

    .line 8
    .line 9
    or-int/2addr v1, v2

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO00o(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;

    .line 18
    .line 19
    return-object p1
.end method
