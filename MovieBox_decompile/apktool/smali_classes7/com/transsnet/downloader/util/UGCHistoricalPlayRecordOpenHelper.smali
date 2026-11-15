.class public final Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;->a:Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a(Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;->f(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final f(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 32

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    move-object/from16 v5, p6

    .line 12
    .line 13
    move-object/from16 v6, p7

    .line 14
    .line 15
    move-object/from16 v7, p8

    .line 16
    .line 17
    move-object/from16 v8, p9

    .line 18
    .line 19
    move-object/from16 v9, p10

    .line 20
    .line 21
    instance-of v10, v9, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;

    .line 22
    .line 23
    if-eqz v10, :cond_0

    .line 24
    .line 25
    move-object v10, v9

    .line 26
    check-cast v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;

    .line 27
    .line 28
    iget v11, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->label:I

    .line 29
    .line 30
    const/high16 v12, -0x80000000

    .line 31
    .line 32
    and-int v13, v11, v12

    .line 33
    .line 34
    if-eqz v13, :cond_0

    .line 35
    .line 36
    sub-int/2addr v11, v12

    .line 37
    iput v11, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->label:I

    .line 38
    .line 39
    move-object/from16 v11, p0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;

    .line 43
    .line 44
    move-object/from16 v11, p0

    .line 45
    .line 46
    invoke-direct {v10, v11, v9}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;-><init>(Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper;Lkotlin/coroutines/Continuation;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    iget-object v9, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->result:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v12

    .line 55
    iget v13, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->label:I

    .line 56
    .line 57
    const/4 v14, 0x1

    .line 58
    if-eqz v13, :cond_4

    .line 59
    .line 60
    if-eq v13, v14, :cond_3

    .line 61
    .line 62
    const/4 v0, 0x2

    .line 63
    if-eq v13, v0, :cond_2

    .line 64
    .line 65
    const/4 v0, 0x3

    .line 66
    if-ne v13, v0, :cond_1

    .line 67
    .line 68
    invoke-static {v9}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_a

    .line 72
    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_2
    iget-object v0, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$8:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Ljava/lang/String;

    .line 84
    .line 85
    iget-object v1, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$7:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v1, Ljava/lang/String;

    .line 88
    .line 89
    iget-object v2, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$6:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v2, Ljava/lang/String;

    .line 92
    .line 93
    iget-object v3, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$5:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v3, Ljava/lang/String;

    .line 96
    .line 97
    iget-object v4, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$4:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v4, Ljava/lang/String;

    .line 100
    .line 101
    iget-object v5, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$3:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v5, Ljava/lang/String;

    .line 104
    .line 105
    iget-object v6, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$2:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v6, Ljava/lang/String;

    .line 108
    .line 109
    iget-object v7, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$1:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v7, Ljava/lang/Integer;

    .line 112
    .line 113
    iget-object v8, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$0:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v8, Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v9}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_1

    .line 121
    .line 122
    :cond_3
    iget-object v0, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$8:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v0, Ljava/lang/String;

    .line 125
    .line 126
    iget-object v1, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$7:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v1, Ljava/lang/String;

    .line 129
    .line 130
    iget-object v2, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$6:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v2, Ljava/lang/String;

    .line 133
    .line 134
    iget-object v3, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$5:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v3, Ljava/lang/String;

    .line 137
    .line 138
    iget-object v4, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$4:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v4, Ljava/lang/String;

    .line 141
    .line 142
    iget-object v5, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$3:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v5, Ljava/lang/String;

    .line 145
    .line 146
    iget-object v6, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$2:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v6, Ljava/lang/String;

    .line 149
    .line 150
    iget-object v7, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$1:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v7, Ljava/lang/Integer;

    .line 153
    .line 154
    iget-object v8, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$0:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v8, Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v9}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_4

    .line 162
    .line 163
    :cond_4
    invoke-static {v9}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    if-eqz v0, :cond_8

    .line 167
    .line 168
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    if-nez v9, :cond_5

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_5
    if-eqz v2, :cond_7

    .line 176
    .line 177
    sget-object v9, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 178
    .line 179
    invoke-virtual {v9}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    iput-object v0, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$0:Ljava/lang/Object;

    .line 184
    .line 185
    iput-object v1, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$1:Ljava/lang/Object;

    .line 186
    .line 187
    iput-object v2, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$2:Ljava/lang/Object;

    .line 188
    .line 189
    iput-object v3, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$3:Ljava/lang/Object;

    .line 190
    .line 191
    iput-object v4, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$4:Ljava/lang/Object;

    .line 192
    .line 193
    iput-object v5, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$5:Ljava/lang/Object;

    .line 194
    .line 195
    iput-object v6, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$6:Ljava/lang/Object;

    .line 196
    .line 197
    iput-object v7, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$7:Ljava/lang/Object;

    .line 198
    .line 199
    iput-object v8, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$8:Ljava/lang/Object;

    .line 200
    .line 201
    const/4 v13, 0x2

    .line 202
    iput v13, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->label:I

    .line 203
    .line 204
    invoke-virtual {v9, v2, v10}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->p(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    if-ne v9, v12, :cond_6

    .line 209
    .line 210
    return-object v12

    .line 211
    :cond_6
    move-object/from16 v28, v8

    .line 212
    .line 213
    move-object v8, v0

    .line 214
    move-object/from16 v0, v28

    .line 215
    .line 216
    move-object/from16 v29, v7

    .line 217
    .line 218
    move-object v7, v1

    .line 219
    move-object/from16 v1, v29

    .line 220
    .line 221
    move-object/from16 v30, v6

    .line 222
    .line 223
    move-object v6, v2

    .line 224
    move-object/from16 v2, v30

    .line 225
    .line 226
    move-object/from16 v31, v5

    .line 227
    .line 228
    move-object v5, v3

    .line 229
    move-object/from16 v3, v31

    .line 230
    .line 231
    :goto_1
    check-cast v9, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 232
    .line 233
    :goto_2
    move-object/from16 v19, v9

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_7
    const/16 v19, 0x0

    .line 237
    .line 238
    move-object/from16 v28, v8

    .line 239
    .line 240
    move-object v8, v0

    .line 241
    move-object/from16 v0, v28

    .line 242
    .line 243
    move-object/from16 v29, v7

    .line 244
    .line 245
    move-object v7, v1

    .line 246
    move-object/from16 v1, v29

    .line 247
    .line 248
    move-object/from16 v30, v6

    .line 249
    .line 250
    move-object v6, v2

    .line 251
    move-object/from16 v2, v30

    .line 252
    .line 253
    move-object/from16 v31, v5

    .line 254
    .line 255
    move-object v5, v3

    .line 256
    move-object/from16 v3, v31

    .line 257
    .line 258
    goto :goto_5

    .line 259
    :cond_8
    :goto_3
    if-eqz v2, :cond_7

    .line 260
    .line 261
    sget-object v9, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 262
    .line 263
    invoke-virtual {v9}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    iput-object v0, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$0:Ljava/lang/Object;

    .line 268
    .line 269
    iput-object v1, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$1:Ljava/lang/Object;

    .line 270
    .line 271
    iput-object v2, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$2:Ljava/lang/Object;

    .line 272
    .line 273
    iput-object v3, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$3:Ljava/lang/Object;

    .line 274
    .line 275
    iput-object v4, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$4:Ljava/lang/Object;

    .line 276
    .line 277
    iput-object v5, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$5:Ljava/lang/Object;

    .line 278
    .line 279
    iput-object v6, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$6:Ljava/lang/Object;

    .line 280
    .line 281
    iput-object v7, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$7:Ljava/lang/Object;

    .line 282
    .line 283
    iput-object v8, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$8:Ljava/lang/Object;

    .line 284
    .line 285
    iput v14, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->label:I

    .line 286
    .line 287
    invoke-virtual {v9, v2, v10}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->R(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v9

    .line 291
    if-ne v9, v12, :cond_9

    .line 292
    .line 293
    return-object v12

    .line 294
    :cond_9
    move-object/from16 v28, v8

    .line 295
    .line 296
    move-object v8, v0

    .line 297
    move-object/from16 v0, v28

    .line 298
    .line 299
    move-object/from16 v29, v7

    .line 300
    .line 301
    move-object v7, v1

    .line 302
    move-object/from16 v1, v29

    .line 303
    .line 304
    move-object/from16 v30, v6

    .line 305
    .line 306
    move-object v6, v2

    .line 307
    move-object/from16 v2, v30

    .line 308
    .line 309
    move-object/from16 v31, v5

    .line 310
    .line 311
    move-object v5, v3

    .line 312
    move-object/from16 v3, v31

    .line 313
    .line 314
    :goto_4
    check-cast v9, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 315
    .line 316
    goto :goto_2

    .line 317
    :goto_5
    if-eqz v8, :cond_d

    .line 318
    .line 319
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 320
    .line 321
    .line 322
    move-result v13

    .line 323
    if-nez v13, :cond_a

    .line 324
    .line 325
    goto :goto_7

    .line 326
    :cond_a
    sget-object v13, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 327
    .line 328
    invoke-virtual {v13}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 329
    .line 330
    .line 331
    move-result v13

    .line 332
    if-nez v7, :cond_b

    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_b
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 336
    .line 337
    .line 338
    move-result v9

    .line 339
    if-ne v9, v13, :cond_c

    .line 340
    .line 341
    move v9, v14

    .line 342
    goto :goto_8

    .line 343
    :cond_c
    :goto_6
    const/4 v9, 0x0

    .line 344
    goto :goto_8

    .line 345
    :cond_d
    :goto_7
    sget-object v9, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->SHORT_TV:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 346
    .line 347
    invoke-virtual {v9}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v9

    .line 351
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v9

    .line 355
    :goto_8
    if-eqz v19, :cond_e

    .line 356
    .line 357
    invoke-virtual/range {v19 .. v19}, Lcom/transsion/baselib/db/download/DownloadBean;->isCompleted()Z

    .line 358
    .line 359
    .line 360
    move-result v13

    .line 361
    if-ne v13, v14, :cond_e

    .line 362
    .line 363
    goto :goto_9

    .line 364
    :cond_e
    const/4 v14, 0x0

    .line 365
    :goto_9
    sget-object v13, Lwf/a;->a:Lwf/a$a;

    .line 366
    .line 367
    new-instance v15, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    const-string v11, "\n                "

    .line 373
    .line 374
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    const-string v0, " gotoUGCVideoDetail isDownloaded:"

    .line 381
    .line 382
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string v0, ",isShortTV"

    .line 389
    .line 390
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string v0, "\n                subjectId:"

    .line 397
    .line 398
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    const-string v0, ",subjectType:"

    .line 405
    .line 406
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v0, ",queryVideoId:"

    .line 413
    .line 414
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    const-string v0, ",\n                ugcVideoId:"

    .line 421
    .line 422
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    const-string v0, ",collectionId:"

    .line 429
    .line 430
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    const-string v0, ",ugcVideoType:"

    .line 437
    .line 438
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    const-string v0, ",\n                ops:"

    .line 445
    .line 446
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    const-string v0, ", videoStyle:"

    .line 453
    .line 454
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const-string v0, "\n            "

    .line 461
    .line 462
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    invoke-static {v0}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    const/4 v7, 0x4

    .line 474
    const/4 v11, 0x0

    .line 475
    const-string v15, "UGCVideoOpen"

    .line 476
    .line 477
    const/16 v16, 0x0

    .line 478
    .line 479
    move-object/from16 p1, v13

    .line 480
    .line 481
    move-object/from16 p2, v15

    .line 482
    .line 483
    move-object/from16 p3, v0

    .line 484
    .line 485
    move/from16 p4, v16

    .line 486
    .line 487
    move/from16 p5, v7

    .line 488
    .line 489
    move-object/from16 p6, v11

    .line 490
    .line 491
    invoke-static/range {p1 .. p6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    new-instance v7, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;

    .line 499
    .line 500
    const/16 v27, 0x0

    .line 501
    .line 502
    move-object/from16 v16, v7

    .line 503
    .line 504
    move-object/from16 v17, v1

    .line 505
    .line 506
    move/from16 v18, v14

    .line 507
    .line 508
    move-object/from16 v20, v5

    .line 509
    .line 510
    move-object/from16 v21, v6

    .line 511
    .line 512
    move-object/from16 v22, v8

    .line 513
    .line 514
    move-object/from16 v23, v4

    .line 515
    .line 516
    move-object/from16 v24, v2

    .line 517
    .line 518
    move-object/from16 v25, v3

    .line 519
    .line 520
    move/from16 v26, v9

    .line 521
    .line 522
    invoke-direct/range {v16 .. v27}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$2;-><init>(Ljava/lang/String;ZLcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    .line 523
    .line 524
    .line 525
    const/4 v1, 0x0

    .line 526
    iput-object v1, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$0:Ljava/lang/Object;

    .line 527
    .line 528
    iput-object v1, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$1:Ljava/lang/Object;

    .line 529
    .line 530
    iput-object v1, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$2:Ljava/lang/Object;

    .line 531
    .line 532
    iput-object v1, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$3:Ljava/lang/Object;

    .line 533
    .line 534
    iput-object v1, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$4:Ljava/lang/Object;

    .line 535
    .line 536
    iput-object v1, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$5:Ljava/lang/Object;

    .line 537
    .line 538
    iput-object v1, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$6:Ljava/lang/Object;

    .line 539
    .line 540
    iput-object v1, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$7:Ljava/lang/Object;

    .line 541
    .line 542
    iput-object v1, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->L$8:Ljava/lang/Object;

    .line 543
    .line 544
    const/4 v1, 0x3

    .line 545
    iput v1, v10, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$handleNavigation$1;->label:I

    .line 546
    .line 547
    invoke-static {v0, v7, v10}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v9

    .line 551
    if-ne v9, v12, :cond_f

    .line 552
    .line 553
    return-object v12

    .line 554
    :cond_f
    :goto_a
    return-object v9
.end method

.method private final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 2

    .line 1
    const-string v0, "/ugc_video/local_detail"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "id"

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "resource_id"

    .line 14
    .line 15
    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    invoke-virtual {p1, v0, p4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p4, "collection_id"

    .line 24
    .line 25
    invoke-virtual {p1, p4, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p2, "ops"

    .line 30
    .line 31
    invoke-virtual {p1, p2, p3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lij/k;->p(Lcom/therouter/router/Navigator;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "/ugc_video/detail"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "id"

    .line 8
    .line 9
    invoke-virtual {v0, v1, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const-string v0, "subject_id"

    .line 14
    .line 15
    invoke-virtual {p2, v0, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "collection_id"

    .line 20
    .line 21
    invoke-virtual {p1, p2, p3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p2, "ugcCategory"

    .line 26
    .line 27
    invoke-virtual {p1, p2, p5}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string p2, "videoStyle"

    .line 32
    .line 33
    invoke-virtual {p1, p2, p6}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "ops"

    .line 38
    .line 39
    invoke-virtual {p1, p2, p4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lij/k;->p(Lcom/therouter/router/Navigator;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final d(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, p2, p3, v2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4;-><init>(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, p2, v2}, Lcom/transsnet/downloader/util/UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2;-><init>(Ljava/lang/Object;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method
