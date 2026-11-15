.class public final Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler;
.super Lcom/transsion/ad/monopoly/intercept/a;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/monopoly/intercept/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

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
    instance-of v4, v3, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;

    .line 15
    .line 16
    iget v5, v4, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->label:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->label:I

    .line 26
    .line 27
    move-object/from16 v5, p0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v4, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;

    .line 31
    .line 32
    move-object/from16 v5, p0

    .line 33
    .line 34
    invoke-direct {v4, v5, v3}, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;-><init>(Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler;Lkotlin/coroutines/Continuation;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v3, v4, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->result:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget v7, v4, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->label:I

    .line 44
    .line 45
    const/4 v8, 0x3

    .line 46
    const/4 v10, 0x2

    .line 47
    const/4 v11, 0x1

    .line 48
    if-eqz v7, :cond_4

    .line 49
    .line 50
    if-eq v7, v11, :cond_3

    .line 51
    .line 52
    if-eq v7, v10, :cond_2

    .line 53
    .line 54
    if-ne v7, v8, :cond_1

    .line 55
    .line 56
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_6

    .line 60
    .line 61
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_2
    iget-object v0, v4, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->L$2:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Ljava/util/Map;

    .line 72
    .line 73
    iget-object v1, v4, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->L$1:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 76
    .line 77
    iget-object v2, v4, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Ljava/lang/String;

    .line 80
    .line 81
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    move-object/from16 v17, v2

    .line 85
    .line 86
    move-object v2, v0

    .line 87
    move-object/from16 v0, v17

    .line 88
    .line 89
    goto/16 :goto_3

    .line 90
    .line 91
    :catch_0
    move-object/from16 v17, v2

    .line 92
    .line 93
    move-object v2, v0

    .line 94
    move-object/from16 v0, v17

    .line 95
    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :cond_3
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_8

    .line 102
    .line 103
    :cond_4
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    sget-object v3, Lci/p;->a:Lci/p;

    .line 107
    .line 108
    invoke-virtual {v3}, Lci/p;->d()J

    .line 109
    .line 110
    .line 111
    move-result-wide v12

    .line 112
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 113
    .line 114
    const-string v7, "HH:mm:ss"

    .line 115
    .line 116
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 117
    .line 118
    .line 119
    move-result-object v14

    .line 120
    invoke-direct {v3, v7, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 121
    .line 122
    .line 123
    if-eqz v1, :cond_5

    .line 124
    .line 125
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDispatchTimeStart()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    goto :goto_1

    .line 130
    :cond_5
    const/4 v7, 0x0

    .line 131
    :goto_1
    if-eqz v1, :cond_6

    .line 132
    .line 133
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDispatchTimeEnd()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    goto :goto_2

    .line 138
    :cond_6
    const/4 v14, 0x0

    .line 139
    :goto_2
    if-eqz v7, :cond_12

    .line 140
    .line 141
    invoke-static {v7}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v15

    .line 145
    if-eqz v15, :cond_7

    .line 146
    .line 147
    goto/16 :goto_7

    .line 148
    .line 149
    :cond_7
    if-eqz v14, :cond_12

    .line 150
    .line 151
    invoke-static {v14}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v15

    .line 155
    if-eqz v15, :cond_8

    .line 156
    .line 157
    goto/16 :goto_7

    .line 158
    .line 159
    :cond_8
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 160
    .line 161
    .line 162
    move-result-object v15

    .line 163
    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 164
    .line 165
    .line 166
    move-result-object v16

    .line 167
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    invoke-virtual {v3, v7}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    if-nez v7, :cond_9

    .line 176
    .line 177
    move-object/from16 v7, v16

    .line 178
    .line 179
    :cond_9
    invoke-virtual {v8, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v15, v11}, Ljava/util/Calendar;->get(I)I

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    invoke-virtual {v8, v11, v7}, Ljava/util/Calendar;->set(II)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v15, v10}, Ljava/util/Calendar;->get(I)I

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    invoke-virtual {v8, v10, v7}, Ljava/util/Calendar;->set(II)V

    .line 194
    .line 195
    .line 196
    const/4 v7, 0x5

    .line 197
    invoke-virtual {v15, v7}, Ljava/util/Calendar;->get(I)I

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    invoke-virtual {v8, v7, v9}, Ljava/util/Calendar;->set(II)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 205
    .line 206
    .line 207
    move-result-wide v8

    .line 208
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    invoke-virtual {v3, v14}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    if-nez v3, :cond_a

    .line 217
    .line 218
    move-object/from16 v3, v16

    .line 219
    .line 220
    :cond_a
    invoke-virtual {v7, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v15, v11}, Ljava/util/Calendar;->get(I)I

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    invoke-virtual {v7, v11, v3}, Ljava/util/Calendar;->set(II)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v15, v10}, Ljava/util/Calendar;->get(I)I

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    invoke-virtual {v7, v10, v3}, Ljava/util/Calendar;->set(II)V

    .line 235
    .line 236
    .line 237
    const/4 v3, 0x5

    .line 238
    invoke-virtual {v15, v3}, Ljava/util/Calendar;->get(I)I

    .line 239
    .line 240
    .line 241
    move-result v11

    .line 242
    invoke-virtual {v7, v3, v11}, Ljava/util/Calendar;->set(II)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 246
    .line 247
    .line 248
    move-result-wide v14

    .line 249
    cmp-long v3, v8, v12

    .line 250
    .line 251
    if-gtz v3, :cond_d

    .line 252
    .line 253
    cmp-long v3, v12, v14

    .line 254
    .line 255
    if-gtz v3, :cond_d

    .line 256
    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    if-eqz v3, :cond_c

    .line 262
    .line 263
    iput-object v0, v4, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->L$0:Ljava/lang/Object;

    .line 264
    .line 265
    iput-object v1, v4, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->L$1:Ljava/lang/Object;

    .line 266
    .line 267
    iput-object v2, v4, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->L$2:Ljava/lang/Object;

    .line 268
    .line 269
    iput v10, v4, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->label:I

    .line 270
    .line 271
    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    if-ne v3, v6, :cond_b

    .line 276
    .line 277
    return-object v6

    .line 278
    :cond_b
    :goto_3
    check-cast v3, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 279
    .line 280
    if-nez v3, :cond_e

    .line 281
    .line 282
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    goto :goto_4

    .line 287
    :cond_d
    new-instance v3, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 288
    .line 289
    const-string v7, "\u5f53\u524d\u4e0d\u5728\u5c55\u793a\u65f6\u95f4\u5185--\u65f6\u95f4\u6bb5"

    .line 290
    .line 291
    const/4 v8, 0x0

    .line 292
    invoke-direct {v3, v8, v7}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;-><init>(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    .line 294
    .line 295
    :cond_e
    :goto_4
    return-object v3

    .line 296
    :catch_1
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    if-eqz v3, :cond_10

    .line 301
    .line 302
    const/4 v7, 0x0

    .line 303
    iput-object v7, v4, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->L$0:Ljava/lang/Object;

    .line 304
    .line 305
    iput-object v7, v4, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->L$1:Ljava/lang/Object;

    .line 306
    .line 307
    iput-object v7, v4, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->L$2:Ljava/lang/Object;

    .line 308
    .line 309
    const/4 v7, 0x3

    .line 310
    iput v7, v4, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->label:I

    .line 311
    .line 312
    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    if-ne v3, v6, :cond_f

    .line 317
    .line 318
    return-object v6

    .line 319
    :cond_f
    :goto_6
    check-cast v3, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 320
    .line 321
    if-nez v3, :cond_11

    .line 322
    .line 323
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    :cond_11
    return-object v3

    .line 328
    :cond_12
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    if-eqz v3, :cond_14

    .line 333
    .line 334
    iput v11, v4, Lcom/transsion/ad/monopoly/intercept/ValidDispatchTimeHandler$doHandle$1;->label:I

    .line 335
    .line 336
    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    if-ne v3, v6, :cond_13

    .line 341
    .line 342
    return-object v6

    .line 343
    :cond_13
    :goto_8
    check-cast v3, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 344
    .line 345
    if-nez v3, :cond_15

    .line 346
    .line 347
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    :cond_15
    return-object v3
.end method
