.class public final Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper$a;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper;->b:Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper;Lln/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper;->d(Lln/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final c(Lln/c;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p2}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p2, v0

    .line 14
    :goto_0
    invoke-virtual {p1}, Lln/c;->e()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move p1, v0

    .line 30
    :goto_1
    if-lez p1, :cond_2

    .line 31
    .line 32
    if-lez p2, :cond_2

    .line 33
    .line 34
    if-le p1, p2, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    :cond_2
    return v0
.end method

.method private final d(Lln/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p2, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper$getMp4DefaultPlayBean$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper$getMp4DefaultPlayBean$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper$getMp4DefaultPlayBean$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper$getMp4DefaultPlayBean$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper$getMp4DefaultPlayBean$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper$getMp4DefaultPlayBean$1;-><init>(Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper$getMp4DefaultPlayBean$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper$getMp4DefaultPlayBean$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper$getMp4DefaultPlayBean$1;->L$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper$getMp4DefaultPlayBean$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Ljava/util/List;

    .line 46
    .line 47
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_7

    .line 51
    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lln/a;->j()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    return-object v4

    .line 74
    :cond_3
    iget-object v2, p0, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper;->a:Ljava/lang/String;

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_5

    .line 81
    .line 82
    sget-object v2, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const-string v5, "key_stream_resolution"

    .line 89
    .line 90
    const-string v6, ""

    .line 91
    .line 92
    invoke-virtual {v2, v5, v6}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    if-nez v2, :cond_4

    .line 97
    .line 98
    move-object v2, v6

    .line 99
    :cond_4
    iput-object v2, p0, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper;->a:Ljava/lang/String;

    .line 100
    .line 101
    :cond_5
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 102
    .line 103
    iget-object v6, p0, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper;->a:Ljava/lang/String;

    .line 104
    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v8, "getMp4DefaultPlayBean, savedResolution\uff1a "

    .line 111
    .line 112
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    const/4 v9, 0x4

    .line 123
    const/4 v10, 0x0

    .line 124
    const-string v6, "LongVodPlayerView"

    .line 125
    .line 126
    const/4 v8, 0x0

    .line 127
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 131
    .line 132
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 133
    .line 134
    .line 135
    move-object v6, p2

    .line 136
    check-cast v6, Ljava/lang/Iterable;

    .line 137
    .line 138
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    :cond_6
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-eqz v8, :cond_7

    .line 147
    .line 148
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    check-cast v8, Lln/c;

    .line 153
    .line 154
    invoke-virtual {v8}, Lln/c;->j()Z

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    if-nez v9, :cond_6

    .line 159
    .line 160
    iput-object v8, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_7
    iget-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 164
    .line 165
    if-eqz v7, :cond_8

    .line 166
    .line 167
    return-object v7

    .line 168
    :cond_8
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-nez v7, :cond_b

    .line 173
    .line 174
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    if-eqz v6, :cond_a

    .line 183
    .line 184
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    move-object v7, v6

    .line 189
    check-cast v7, Lln/c;

    .line 190
    .line 191
    invoke-virtual {v7}, Lln/c;->e()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    const-string v8, "480"

    .line 196
    .line 197
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    if-eqz v7, :cond_9

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_a
    move-object v6, v4

    .line 205
    :goto_2
    check-cast v6, Lln/c;

    .line 206
    .line 207
    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_b
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    :cond_c
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    if-eqz v8, :cond_d

    .line 219
    .line 220
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    check-cast v8, Lln/c;

    .line 225
    .line 226
    invoke-virtual {v8}, Lln/c;->e()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    if-eqz v9, :cond_c

    .line 235
    .line 236
    iput-object v8, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_d
    iget-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 240
    .line 241
    if-nez v7, :cond_10

    .line 242
    .line 243
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    if-eqz v7, :cond_f

    .line 252
    .line 253
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    move-object v8, v7

    .line 258
    check-cast v8, Lln/c;

    .line 259
    .line 260
    invoke-direct {p0, v8, v2}, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper;->c(Lln/c;Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    if-eqz v8, :cond_e

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_f
    move-object v7, v4

    .line 268
    :goto_4
    check-cast v7, Lln/c;

    .line 269
    .line 270
    iput-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 271
    .line 272
    :cond_10
    :goto_5
    iget-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 273
    .line 274
    if-nez v2, :cond_11

    .line 275
    .line 276
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    iput-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 281
    .line 282
    :cond_11
    iget-object v2, p0, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper;->a:Ljava/lang/String;

    .line 283
    .line 284
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-nez v2, :cond_12

    .line 289
    .line 290
    iget-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v2, Lln/c;

    .line 293
    .line 294
    if-eqz v2, :cond_12

    .line 295
    .line 296
    invoke-virtual {v2}, Lln/c;->e()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {p0, v2}, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper;->g(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    :cond_12
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 304
    .line 305
    iget-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v2, Lln/c;

    .line 308
    .line 309
    if-eqz v2, :cond_13

    .line 310
    .line 311
    invoke-virtual {v2}, Lln/c;->e()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    goto :goto_6

    .line 316
    :cond_13
    move-object v2, v4

    .line 317
    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    const-string v8, "getMp4DefaultPlayBean, bean.resolutions\uff1a "

    .line 323
    .line 324
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v8

    .line 334
    const/4 v10, 0x4

    .line 335
    const/4 v11, 0x0

    .line 336
    const-string v7, "LongVodPlayerView"

    .line 337
    .line 338
    const/4 v9, 0x0

    .line 339
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    sget-object v2, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->a:Lcom/transsion/player/longvideo/member/ResolutionMemberManager;

    .line 343
    .line 344
    iput-object p2, v0, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper$getMp4DefaultPlayBean$1;->L$0:Ljava/lang/Object;

    .line 345
    .line 346
    iput-object v5, v0, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper$getMp4DefaultPlayBean$1;->L$1:Ljava/lang/Object;

    .line 347
    .line 348
    iput v3, v0, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper$getMp4DefaultPlayBean$1;->label:I

    .line 349
    .line 350
    invoke-virtual {v2, p1, v0}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->f(Lln/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    if-ne p1, v1, :cond_14

    .line 355
    .line 356
    return-object v1

    .line 357
    :cond_14
    move-object v0, p2

    .line 358
    move-object p2, p1

    .line 359
    move-object p1, v5

    .line 360
    :goto_7
    check-cast p2, Ljava/lang/Boolean;

    .line 361
    .line 362
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 363
    .line 364
    .line 365
    move-result p2

    .line 366
    if-nez p2, :cond_16

    .line 367
    .line 368
    sget-object p2, Lcom/transsion/player/longvideo/member/r;->a:Lcom/transsion/player/longvideo/member/r;

    .line 369
    .line 370
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 371
    .line 372
    check-cast v1, Lln/c;

    .line 373
    .line 374
    invoke-virtual {v1}, Lln/c;->e()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-virtual {p2, v1}, Lcom/transsion/player/longvideo/member/r;->q(Ljava/lang/String;)Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-eqz v1, :cond_16

    .line 383
    .line 384
    sget-object v1, Lij/o;->a:Lij/o;

    .line 385
    .line 386
    invoke-virtual {v1}, Lij/o;->i()Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-nez v1, :cond_16

    .line 391
    .line 392
    sget-object v1, Lij/g;->a:Lij/g;

    .line 393
    .line 394
    invoke-virtual {v1}, Lij/g;->b()Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-nez v1, :cond_16

    .line 399
    .line 400
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 401
    .line 402
    iget-object v2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 403
    .line 404
    check-cast v2, Lln/c;

    .line 405
    .line 406
    invoke-virtual {v2}, Lln/c;->e()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .line 414
    .line 415
    const-string v5, "getMp4DefaultPlayBean() --> \u5f53\u524d\u6ca1\u6709\u89e3\u9501\uff0c\u9700\u8981\u964d\u7ea7\u5230720P\u4ee5\u4e0b\uff0c\u5f53\u524dbean.resolutions = "

    .line 416
    .line 417
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    const/4 v9, 0x4

    .line 428
    const/4 v10, 0x0

    .line 429
    const-string v6, "vipResolution"

    .line 430
    .line 431
    const/4 v8, 0x0

    .line 432
    move-object v5, v1

    .line 433
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    iget-object v2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 437
    .line 438
    move-object v3, v2

    .line 439
    check-cast v3, Lln/c;

    .line 440
    .line 441
    check-cast v2, Lln/c;

    .line 442
    .line 443
    invoke-virtual {v2}, Lln/c;->e()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    invoke-virtual {v3, v2}, Lln/c;->m(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    const/4 v2, 0x0

    .line 451
    const/4 v3, 0x2

    .line 452
    invoke-static {p2, v0, v2, v3, v4}, Lcom/transsion/player/longvideo/member/r;->g(Lcom/transsion/player/longvideo/member/r;Ljava/util/List;IILjava/lang/Object;)Lln/c;

    .line 453
    .line 454
    .line 455
    move-result-object p2

    .line 456
    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 457
    .line 458
    if-eqz p2, :cond_15

    .line 459
    .line 460
    invoke-virtual {p2}, Lln/c;->e()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    :cond_15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .line 468
    .line 469
    const-string v0, "getMp4DefaultPlayBean() --> \u964d\u7ea7\u540e\u7684bean.resolutions = "

    .line 470
    .line 471
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v7

    .line 481
    const/4 v9, 0x4

    .line 482
    const/4 v10, 0x0

    .line 483
    const-string v6, "vipResolution"

    .line 484
    .line 485
    const/4 v8, 0x0

    .line 486
    move-object v5, v1

    .line 487
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    :cond_16
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 491
    .line 492
    return-object p1
.end method


# virtual methods
.method public final b(Lln/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lln/a;->j()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p1}, Lln/a;->j()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lln/c;

    .line 22
    .line 23
    sget-object v1, Lcom/transsion/player/longvideo/member/k;->a:Lcom/transsion/player/longvideo/member/k;

    .line 24
    .line 25
    invoke-virtual {p1}, Lln/a;->w()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v4, "LongVodResolutionHelper --> getDefaultPlayStream() --> \u662fMP4\u683c\u5f0f = "

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Lcom/transsion/player/longvideo/member/k;->a(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lln/a;->w()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper;->d(Lln/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    :cond_1
    return-object v0
.end method

.method public final e(Lln/a;Lln/b;)Lln/c;
    .locals 6

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "config"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lln/a;->j()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lln/c;

    .line 33
    .line 34
    invoke-virtual {p2}, Lln/b;->d()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0}, Lln/c;->e()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x2

    .line 44
    invoke-static {v2, v3, v4, v5, v1}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_1
    return-object v1
.end method

.method public final f(Lln/c;Ljava/util/List;)Ljava/util/List;
    .locals 9

    .line 1
    const-string v0, "playStream"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mp4Streams"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    check-cast p2, Ljava/lang/Iterable;

    .line 17
    .line 18
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lln/c;

    .line 33
    .line 34
    new-instance v8, Lln/b;

    .line 35
    .line 36
    invoke-virtual {v1}, Lln/c;->e()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1}, Lln/c;->e()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual {v1}, Lln/c;->e()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, "P"

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const/4 v6, 0x4

    .line 70
    const/4 v7, 0x0

    .line 71
    const/4 v5, 0x0

    .line 72
    move-object v2, v8

    .line 73
    invoke-direct/range {v2 .. v7}, Lln/b;-><init>(ZLjava/lang/String;Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "resolution"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "save, resolution\uff1a "

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    const-string v2, "LongVodPlayerView"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper;->a:Ljava/lang/String;

    .line 34
    .line 35
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "key_stream_resolution"

    .line 42
    .line 43
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    return-void
.end method
