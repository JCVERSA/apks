.class public final Lcom/cloud/tmc/miniapp/widget/CapsuleView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "source.java"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final OooO:Lkotlin/Lazy;

.field public final OooO00o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final OooO0O0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final OooO0OO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0Oo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0o:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0o0:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0oO:Lkotlin/Lazy;

.field public final OooO0oo:Lkotlin/Lazy;

.field public final OooOO0:Lkotlin/Lazy;

.field public OooOO0O:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget v2, Lcom/cloud/tmc/miniapp/R$id;->iv_left:I

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget v3, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_title_more_white_mode:I

    .line 21
    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    sget v3, Lcom/cloud/tmc/miniapp/R$id;->iv_right:I

    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    sget v4, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_title_close_white_mode:I

    .line 37
    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/4 v4, 0x2

    .line 47
    new-array v5, v4, [Lkotlin/Pair;

    .line 48
    .line 49
    aput-object v2, v5, v0

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    aput-object v3, v5, v2

    .line 53
    .line 54
    invoke-static {v5}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    sget v6, Lcom/cloud/tmc/miniapp/R$id;->iv_left:I

    .line 67
    .line 68
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    sget v7, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_title_more_black_mode:I

    .line 73
    .line 74
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    sget v7, Lcom/cloud/tmc/miniapp/R$id;->iv_right:I

    .line 83
    .line 84
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    sget v8, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_title_close_black_mode:I

    .line 89
    .line 90
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    new-array v8, v4, [Lkotlin/Pair;

    .line 99
    .line 100
    aput-object v6, v8, v0

    .line 101
    .line 102
    aput-object v7, v8, v2

    .line 103
    .line 104
    invoke-static {v8}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    new-array v7, v4, [Lkotlin/Pair;

    .line 113
    .line 114
    aput-object v3, v7, v0

    .line 115
    .line 116
    aput-object v6, v7, v2

    .line 117
    .line 118
    invoke-static {v7}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO00o:Ljava/util/HashMap;

    .line 123
    .line 124
    sget v6, Lcom/cloud/tmc/miniapp/R$id;->iv_left:I

    .line 125
    .line 126
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    sget v7, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_title_back_white_mode:I

    .line 131
    .line 132
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    sget v7, Lcom/cloud/tmc/miniapp/R$id;->iv_right:I

    .line 141
    .line 142
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    sget v8, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_title_home_white_mode:I

    .line 147
    .line 148
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    new-array v8, v4, [Lkotlin/Pair;

    .line 157
    .line 158
    aput-object v6, v8, v0

    .line 159
    .line 160
    aput-object v7, v8, v2

    .line 161
    .line 162
    invoke-static {v8}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-static {v1, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    sget v7, Lcom/cloud/tmc/miniapp/R$id;->iv_left:I

    .line 171
    .line 172
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    sget v8, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_immersive_title_bar_back_black_mode:I

    .line 177
    .line 178
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    sget v8, Lcom/cloud/tmc/miniapp/R$id;->iv_right:I

    .line 187
    .line 188
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    sget v9, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_immersive_title_bar_home_black_mode:I

    .line 193
    .line 194
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    invoke-static {v8, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    new-array v9, v4, [Lkotlin/Pair;

    .line 203
    .line 204
    aput-object v7, v9, v0

    .line 205
    .line 206
    aput-object v8, v9, v2

    .line 207
    .line 208
    invoke-static {v9}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    invoke-static {v5, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    new-array v8, v4, [Lkotlin/Pair;

    .line 217
    .line 218
    aput-object v6, v8, v0

    .line 219
    .line 220
    aput-object v7, v8, v2

    .line 221
    .line 222
    invoke-static {v8}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    iput-object v6, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0O0:Ljava/util/HashMap;

    .line 227
    .line 228
    sget v7, Lcom/cloud/tmc/miniapp/R$color;->mini_color_capsule_line_white_mode_bg:I

    .line 229
    .line 230
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-static {v1, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    sget v8, Lcom/cloud/tmc/miniapp/R$color;->mini_color_border_capsule:I

    .line 239
    .line 240
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v8

    .line 244
    invoke-static {v5, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    new-array v9, v4, [Lkotlin/Pair;

    .line 249
    .line 250
    aput-object v7, v9, v0

    .line 251
    .line 252
    aput-object v8, v9, v2

    .line 253
    .line 254
    invoke-static {v9}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    iput-object v7, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0OO:Ljava/util/HashMap;

    .line 259
    .line 260
    sget v7, Lcom/cloud/tmc/miniapp/R$drawable;->shape_bg_capsule_white_mode:I

    .line 261
    .line 262
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    invoke-static {v1, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    sget v7, Lcom/cloud/tmc/miniapp/R$drawable;->shape_bg_capsule_black_mode:I

    .line 271
    .line 272
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    invoke-static {v5, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    new-array v7, v4, [Lkotlin/Pair;

    .line 281
    .line 282
    aput-object v1, v7, v0

    .line 283
    .line 284
    aput-object v5, v7, v2

    .line 285
    .line 286
    invoke-static {v7}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0Oo:Ljava/util/HashMap;

    .line 291
    .line 292
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO0OO;

    .line 293
    .line 294
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    .line 295
    .line 296
    .line 297
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0oO:Lkotlin/Lazy;

    .line 302
    .line 303
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO;

    .line 304
    .line 305
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO;-><init>(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    .line 306
    .line 307
    .line 308
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0oo:Lkotlin/Lazy;

    .line 313
    .line 314
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO0o;

    .line 315
    .line 316
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    .line 317
    .line 318
    .line 319
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO:Lkotlin/Lazy;

    .line 324
    .line 325
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooOO0;

    .line 326
    .line 327
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    .line 328
    .line 329
    .line 330
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooOO0:Lkotlin/Lazy;

    .line 335
    .line 336
    sget-object v1, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_CapsuleView:[I

    .line 337
    .line 338
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 339
    .line 340
    .line 341
    move-result-object p2

    .line 342
    const-string v1, "context.obtainStyledAttr\u2026yleable.Mini_CapsuleView)"

    .line 343
    .line 344
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    sget v1, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_CapsuleView_capsule_style:I

    .line 348
    .line 349
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-eq v0, v2, :cond_1

    .line 354
    .line 355
    if-eq v0, v4, :cond_0

    .line 356
    .line 357
    goto :goto_0

    .line 358
    :cond_0
    move-object v3, v6

    .line 359
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooOO0O:Ljava/util/HashMap;

    .line 360
    .line 361
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 362
    .line 363
    .line 364
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 365
    .line 366
    .line 367
    move-result-object p2

    .line 368
    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->layout_mini_capsule:I

    .line 369
    .line 370
    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 371
    .line 372
    .line 373
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 374
    .line 375
    .line 376
    move-result p2

    .line 377
    if-nez p2, :cond_4

    .line 378
    .line 379
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvLeft()Landroidx/appcompat/widget/AppCompatImageView;

    .line 380
    .line 381
    .line 382
    move-result-object p2

    .line 383
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    const/4 v1, 0x0

    .line 388
    const/high16 v3, 0x43340000    # 180.0f

    .line 389
    .line 390
    if-eqz v0, :cond_2

    .line 391
    .line 392
    move v0, v3

    .line 393
    goto :goto_1

    .line 394
    :cond_2
    move v0, v1

    .line 395
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setRotationY(F)V

    .line 396
    .line 397
    .line 398
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvRight()Landroidx/appcompat/widget/AppCompatImageView;

    .line 399
    .line 400
    .line 401
    move-result-object p2

    .line 402
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    if-eqz v0, :cond_3

    .line 407
    .line 408
    move v1, v3

    .line 409
    :cond_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setRotationY(F)V

    .line 410
    .line 411
    .line 412
    :cond_4
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvLeft()Landroidx/appcompat/widget/AppCompatImageView;

    .line 413
    .line 414
    .line 415
    move-result-object p2

    .line 416
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/a;

    .line 417
    .line 418
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/a;-><init>(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    .line 423
    .line 424
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvRight()Landroidx/appcompat/widget/AppCompatImageView;

    .line 425
    .line 426
    .line 427
    move-result-object p2

    .line 428
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/b;

    .line 429
    .line 430
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/b;-><init>(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    .line 435
    .line 436
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    .line 437
    .line 438
    .line 439
    move-result p2

    .line 440
    xor-int/2addr p2, v2

    .line 441
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 442
    .line 443
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 448
    .line 449
    sget v7, Lcom/cloud/tmc/miniapp/R$drawable;->shape_fg_capsule_left_click:I

    .line 450
    .line 451
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvLeft()Landroidx/appcompat/widget/AppCompatImageView;

    .line 452
    .line 453
    .line 454
    move-result-object v9

    .line 455
    new-instance v10, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO00o;

    .line 456
    .line 457
    invoke-direct {v10, p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    .line 458
    .line 459
    .line 460
    const/4 v8, 0x0

    .line 461
    move-object v5, v0

    .line 462
    move-object v6, p1

    .line 463
    invoke-interface/range {v5 .. v10}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImg(Landroid/content/Context;IILandroid/widget/ImageView;Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadCallback;)V

    .line 464
    .line 465
    .line 466
    sget v7, Lcom/cloud/tmc/miniapp/R$drawable;->shape_fg_capsule_right_click:I

    .line 467
    .line 468
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvRight()Landroidx/appcompat/widget/AppCompatImageView;

    .line 469
    .line 470
    .line 471
    move-result-object v9

    .line 472
    new-instance v10, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO0O0;

    .line 473
    .line 474
    invoke-direct {v10, p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    .line 475
    .line 476
    .line 477
    const/4 v8, 0x0

    .line 478
    move-object v5, v0

    .line 479
    move-object v6, p1

    .line 480
    invoke-interface/range {v5 .. v10}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImg(Landroid/content/Context;IILandroid/widget/ImageView;Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    .line 482
    .line 483
    goto :goto_2

    .line 484
    :catchall_0
    move-exception p1

    .line 485
    const-string v0, ""

    .line 486
    .line 487
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 488
    .line 489
    .line 490
    :goto_2
    const/4 p1, 0x0

    .line 491
    invoke-static {p0, p2, p1, v4}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO00o(Lcom/cloud/tmc/miniapp/widget/CapsuleView;ILjava/util/HashMap;I)V

    .line 492
    .line 493
    .line 494
    return-void
.end method

.method public static final synthetic OooO00o(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvLeft()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o(Lcom/cloud/tmc/miniapp/widget/CapsuleView;ILjava/util/HashMap;I)V
    .locals 5

    const-string p2, ""

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 4
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooOO0O:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v0, "style"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getTitleBarNodeMode()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getTitleBarNodeMode()Ljava/lang/Integer;

    move-result-object p1

    .line 8
    :goto_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getCapsuleLayout()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0Oo:Ljava/util/HashMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 9
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    .line 10
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 11
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p3, :cond_3

    .line 12
    :try_start_1
    sget v1, Lcom/cloud/tmc/miniapp/R$id;->iv_left:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_4

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_3
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvLeft()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v4

    invoke-interface {v0, v3, v1, v1, v4}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImg(Landroid/content/Context;IILandroid/widget/ImageView;)V

    goto :goto_5

    .line 14
    :cond_5
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvLeft()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 15
    :goto_4
    :try_start_2
    invoke-static {p2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_5
    if-eqz p3, :cond_6

    .line 16
    :try_start_3
    sget v1, Lcom/cloud/tmc/miniapp/R$id;->iv_right:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-nez p3, :cond_7

    goto :goto_6

    :catchall_1
    move-exception p3

    goto :goto_7

    :cond_6
    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_7
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    if-eqz p3, :cond_8

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 18
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvRight()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v2

    .line 19
    invoke-interface {v0, v1, p3, p3, v2}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImg(Landroid/content/Context;IILandroid/widget/ImageView;)V

    goto :goto_8

    .line 20
    :cond_8
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvRight()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    .line 21
    :goto_7
    :try_start_4
    invoke-static {p2, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception p3

    .line 22
    invoke-static {p2, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    :goto_8
    :try_start_5
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getCenterLineView()Landroid/view/View;

    move-result-object p3

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 25
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0OO:Ljava/util/HashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_9

    :catchall_3
    move-exception p0

    goto :goto_a

    :cond_9
    sget p0, Lcom/cloud/tmc/miniapp/R$color;->mini_color_border_capsule:I

    .line 26
    :goto_9
    invoke-static {v0, p0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p0

    .line 27
    invoke-virtual {p3, p0}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_b

    .line 28
    :goto_a
    invoke-static {p2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/widget/CapsuleView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0o0:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static final synthetic OooO0O0(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvRight()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/widget/CapsuleView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0o:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private final getCapsuleLayout()Landroidx/appcompat/widget/LinearLayoutCompat;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0oO:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-capsuleLayout>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 13
    .line 14
    return-object v0
.end method

.method private final getCenterLineView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-centerLineView>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/view/View;

    .line 13
    .line 14
    return-object v0
.end method

.method private final getIvLeft()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0oo:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-ivLeft>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 13
    .line 14
    return-object v0
.end method

.method private final getIvRight()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooOO0:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-ivRight>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final getBackAndHome()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0O0:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCapsuleStyle()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooOO0O:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMoreAndClose()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO00o:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCapsuleStyle(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooOO0O:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public final setOnLeftClickListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "cb"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0o0:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    return-void
.end method

.method public final setOnRightClickListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "cb"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0o:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    return-void
.end method
