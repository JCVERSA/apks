.class public Lcom/mbridge/msdk/reward/adapter/e;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Lcom/mbridge/msdk/videocommon/setting/c;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/mbridge/msdk/videocommon/setting/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/e;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mbridge/msdk/reward/adapter/e;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/mbridge/msdk/reward/adapter/e;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mbridge/msdk/reward/adapter/e;->d:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mbridge/msdk/reward/adapter/e;->e:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/mbridge/msdk/foundation/same/net/wrapper/e;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p9

    .line 3
    .line 4
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->c()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    const/4 v4, 0x2

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v4, 0x3

    .line 52
    :goto_0
    iget-object v5, v0, Lcom/mbridge/msdk/reward/adapter/e;->d:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 53
    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    invoke-virtual {v5}, Lcom/mbridge/msdk/videocommon/setting/c;->e()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    iget-object v6, v0, Lcom/mbridge/msdk/reward/adapter/e;->d:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 61
    .line 62
    invoke-virtual {v6}, Lcom/mbridge/msdk/videocommon/setting/c;->b()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const/4 v5, 0x0

    .line 68
    move v6, v5

    .line 69
    :goto_1
    iget-object v7, v0, Lcom/mbridge/msdk/reward/adapter/e;->b:Ljava/lang/String;

    .line 70
    .line 71
    const-string v8, "reward"

    .line 72
    .line 73
    invoke-static {v7, v8}, Lcom/mbridge/msdk/foundation/same/buffer/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    iget-boolean v8, v0, Lcom/mbridge/msdk/reward/adapter/e;->c:Z

    .line 78
    .line 79
    if-eqz v8, :cond_2

    .line 80
    .line 81
    const/16 v8, 0x11f

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    const/16 v8, 0x5e

    .line 85
    .line 86
    :goto_2
    new-instance v9, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 87
    .line 88
    invoke-direct {v9}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v10, "app_id"

    .line 92
    .line 93
    invoke-static {v9, v10, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v2, v0, Lcom/mbridge/msdk/reward/adapter/e;->b:Ljava/lang/String;

    .line 97
    .line 98
    const-string v10, "unit_id"

    .line 99
    .line 100
    invoke-static {v9, v10, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v2, v0, Lcom/mbridge/msdk/reward/adapter/e;->a:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_3

    .line 110
    .line 111
    sget-object v2, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v10, v0, Lcom/mbridge/msdk/reward/adapter/e;->a:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v9, v2, v10}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    const-string v10, ""

    .line 123
    .line 124
    if-eqz v2, :cond_6

    .line 125
    .line 126
    if-nez p6, :cond_4

    .line 127
    .line 128
    move-object v2, v10

    .line 129
    goto :goto_3

    .line 130
    :cond_4
    move-object/from16 v2, p6

    .line 131
    .line 132
    :goto_3
    const-string v11, "ttc_ids"

    .line 133
    .line 134
    invoke-static {v9, v11, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    if-nez p5, :cond_5

    .line 138
    .line 139
    move-object v2, v10

    .line 140
    goto :goto_4

    .line 141
    :cond_5
    move-object/from16 v2, p5

    .line 142
    .line 143
    :goto_4
    const-string v11, "install_ids"

    .line 144
    .line 145
    invoke-static {v9, v11, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_6
    const-string v2, "sign"

    .line 149
    .line 150
    invoke-static {v9, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    const-string v3, "req_type"

    .line 158
    .line 159
    invoke-static {v9, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    const-string v3, "ad_num"

    .line 167
    .line 168
    invoke-static {v9, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-boolean v2, v0, Lcom/mbridge/msdk/reward/adapter/e;->c:Z

    .line 172
    .line 173
    const/4 v3, 0x1

    .line 174
    if-eqz v2, :cond_7

    .line 175
    .line 176
    move v6, v3

    .line 177
    :cond_7
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    const-string v4, "tnum"

    .line 182
    .line 183
    invoke-static {v9, v4, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v2, "only_impression"

    .line 187
    .line 188
    const-string v4, "1"

    .line 189
    .line 190
    invoke-static {v9, v2, v4}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const-string v2, "ping_mode"

    .line 194
    .line 195
    invoke-static {v9, v2, v4}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    sget-object v2, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->g:Ljava/lang/String;

    .line 199
    .line 200
    invoke-static {v9, v2, v7}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    sget-object v2, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->h:Ljava/lang/String;

    .line 204
    .line 205
    if-nez p2, :cond_8

    .line 206
    .line 207
    move-object v5, v10

    .line 208
    goto :goto_5

    .line 209
    :cond_8
    move-object v5, p2

    .line 210
    :goto_5
    invoke-static {v9, v2, v5}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    const-string v3, "ad_source_id"

    .line 218
    .line 219
    invoke-static {v9, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    sget-object v2, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->i:Ljava/lang/String;

    .line 223
    .line 224
    if-nez p4, :cond_9

    .line 225
    .line 226
    move-object v3, v10

    .line 227
    goto :goto_6

    .line 228
    :cond_9
    move-object/from16 v3, p4

    .line 229
    .line 230
    :goto_6
    invoke-static {v9, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    const-string v3, "ad_type"

    .line 238
    .line 239
    invoke-static {v9, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    const-string v3, "offset"

    .line 247
    .line 248
    invoke-static {v9, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-nez v2, :cond_a

    .line 256
    .line 257
    const-string v2, "token"

    .line 258
    .line 259
    move-object/from16 v3, p7

    .line 260
    .line 261
    invoke-static {v9, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :cond_a
    iget-boolean v2, v0, Lcom/mbridge/msdk/reward/adapter/e;->c:Z

    .line 265
    .line 266
    const-string v3, "0"

    .line 267
    .line 268
    if-eqz v2, :cond_d

    .line 269
    .line 270
    sget v2, Lcom/mbridge/msdk/foundation/same/a;->I:I

    .line 271
    .line 272
    const-string v5, "ivrwd"

    .line 273
    .line 274
    if-eq v1, v2, :cond_c

    .line 275
    .line 276
    sget v2, Lcom/mbridge/msdk/foundation/same/a;->H:I

    .line 277
    .line 278
    if-ne v1, v2, :cond_b

    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_b
    invoke-static {v9, v5, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    goto :goto_8

    .line 285
    :cond_c
    :goto_7
    invoke-static {v9, v5, v4}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    :cond_d
    :goto_8
    iget-object v1, v0, Lcom/mbridge/msdk/reward/adapter/e;->d:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 289
    .line 290
    if-eqz v1, :cond_e

    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/c;->a()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-nez v1, :cond_e

    .line 301
    .line 302
    iget-object v1, v0, Lcom/mbridge/msdk/reward/adapter/e;->d:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 303
    .line 304
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/c;->a()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    const-string v2, "u_stid"

    .line 309
    .line 310
    invoke-static {v9, v2, v1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    :cond_e
    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/b;->c()Lcom/mbridge/msdk/videocommon/setting/a;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    if-eqz v1, :cond_f

    .line 322
    .line 323
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/a;->a()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    if-nez v2, :cond_f

    .line 332
    .line 333
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/a;->a()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    const-string v2, "r_stid"

    .line 338
    .line 339
    invoke-static {v9, v2, v1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    :cond_f
    if-eqz p8, :cond_10

    .line 343
    .line 344
    goto :goto_9

    .line 345
    :cond_10
    move-object v4, v3

    .line 346
    :goto_9
    const-string v1, "rw_plus"

    .line 347
    .line 348
    invoke-static {v9, v1, v4}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    iget-object v1, v0, Lcom/mbridge/msdk/reward/adapter/e;->b:Ljava/lang/String;

    .line 352
    .line 353
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    if-nez v2, :cond_11

    .line 362
    .line 363
    const-string v2, "j"

    .line 364
    .line 365
    invoke-static {v9, v2, v1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    :cond_11
    iget-object v1, v0, Lcom/mbridge/msdk/reward/adapter/e;->e:Ljava/lang/String;

    .line 369
    .line 370
    if-nez v1, :cond_12

    .line 371
    .line 372
    goto :goto_a

    .line 373
    :cond_12
    move-object v10, v1

    .line 374
    :goto_a
    const-string v1, "local_rid"

    .line 375
    .line 376
    invoke-static {v9, v1, v10}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    return-object v9
.end method
