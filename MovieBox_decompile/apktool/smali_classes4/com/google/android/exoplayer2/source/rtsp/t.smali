.class final Lcom/google/android/exoplayer2/source/rtsp/t;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/rtsp/j;

.field public final b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/a;Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/rtsp/a;->i:Lcom/google/common/collect/ImmutableMap;

    .line 5
    .line 6
    const-string v1, "control"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/t;->b(Lcom/google/android/exoplayer2/source/rtsp/a;)Lcom/google/android/exoplayer2/source/rtsp/j;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/t;->a:Lcom/google/android/exoplayer2/source/rtsp/j;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/a;->i:Lcom/google/common/collect/ImmutableMap;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/source/rtsp/t;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/t;->b:Landroid/net/Uri;

    .line 40
    .line 41
    return-void
.end method

.method private static a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const-string v0, "*"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method static b(Lcom/google/android/exoplayer2/source/rtsp/a;)Lcom/google/android/exoplayer2/source/rtsp/j;
    .locals 11

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/p1$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/p1$b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->e:I

    .line 7
    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->G(I)Lcom/google/android/exoplayer2/p1$b;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->j:Lcom/google/android/exoplayer2/source/rtsp/a$c;

    .line 14
    .line 15
    iget v2, v1, Lcom/google/android/exoplayer2/source/rtsp/a$c;->a:I

    .line 16
    .line 17
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/rtsp/a$c;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/j;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/p1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 24
    .line 25
    .line 26
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->j:Lcom/google/android/exoplayer2/source/rtsp/a$c;

    .line 27
    .line 28
    iget v4, v4, Lcom/google/android/exoplayer2/source/rtsp/a$c;->c:I

    .line 29
    .line 30
    const-string v5, "audio"

    .line 31
    .line 32
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->a:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const/4 v6, -0x1

    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->j:Lcom/google/android/exoplayer2/source/rtsp/a$c;

    .line 42
    .line 43
    iget v5, v5, Lcom/google/android/exoplayer2/source/rtsp/a$c;->d:I

    .line 44
    .line 45
    invoke-static {v5, v3}, Lcom/google/android/exoplayer2/source/rtsp/t;->d(ILjava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/p1$b;->f0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v7, v5}, Lcom/google/android/exoplayer2/p1$b;->H(I)Lcom/google/android/exoplayer2/p1$b;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v5, v6

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/rtsp/a;->a()Lcom/google/common/collect/ImmutableMap;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    const/4 v8, 0x0

    .line 67
    const/4 v9, 0x1

    .line 68
    sparse-switch v7, :sswitch_data_0

    .line 69
    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :sswitch_0
    const-string v7, "audio/g711-mlaw"

    .line 74
    .line 75
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    const/16 v3, 0xd

    .line 82
    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :sswitch_1
    const-string v7, "audio/g711-alaw"

    .line 86
    .line 87
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_2

    .line 92
    .line 93
    const/16 v3, 0xc

    .line 94
    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :sswitch_2
    const-string v7, "video/x-vnd.on2.vp9"

    .line 98
    .line 99
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_2

    .line 104
    .line 105
    const/16 v3, 0x9

    .line 106
    .line 107
    goto/16 :goto_2

    .line 108
    .line 109
    :sswitch_3
    const-string v7, "video/x-vnd.on2.vp8"

    .line 110
    .line 111
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_2

    .line 116
    .line 117
    const/16 v3, 0x8

    .line 118
    .line 119
    goto/16 :goto_2

    .line 120
    .line 121
    :sswitch_4
    const-string v7, "audio/opus"

    .line 122
    .line 123
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_2

    .line 128
    .line 129
    const/4 v3, 0x3

    .line 130
    goto/16 :goto_2

    .line 131
    .line 132
    :sswitch_5
    const-string v7, "audio/3gpp"

    .line 133
    .line 134
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_2

    .line 139
    .line 140
    move v3, v9

    .line 141
    goto :goto_2

    .line 142
    :sswitch_6
    const-string v7, "video/avc"

    .line 143
    .line 144
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_2

    .line 149
    .line 150
    const/4 v3, 0x6

    .line 151
    goto :goto_2

    .line 152
    :sswitch_7
    const-string v7, "video/mp4v-es"

    .line 153
    .line 154
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_2

    .line 159
    .line 160
    const/4 v3, 0x4

    .line 161
    goto :goto_2

    .line 162
    :sswitch_8
    const-string v7, "audio/raw"

    .line 163
    .line 164
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_2

    .line 169
    .line 170
    const/16 v3, 0xa

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :sswitch_9
    const-string v7, "audio/ac3"

    .line 174
    .line 175
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_2

    .line 180
    .line 181
    const/16 v3, 0xb

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :sswitch_a
    const-string v7, "audio/mp4a-latm"

    .line 185
    .line 186
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_2

    .line 191
    .line 192
    move v3, v8

    .line 193
    goto :goto_2

    .line 194
    :sswitch_b
    const-string v7, "audio/amr-wb"

    .line 195
    .line 196
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-eqz v3, :cond_2

    .line 201
    .line 202
    const/4 v3, 0x2

    .line 203
    goto :goto_2

    .line 204
    :sswitch_c
    const-string v7, "video/hevc"

    .line 205
    .line 206
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-eqz v3, :cond_2

    .line 211
    .line 212
    const/4 v3, 0x7

    .line 213
    goto :goto_2

    .line 214
    :sswitch_d
    const-string v7, "video/3gpp"

    .line 215
    .line 216
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-eqz v3, :cond_2

    .line 221
    .line 222
    const/4 v3, 0x5

    .line 223
    goto :goto_2

    .line 224
    :cond_2
    :goto_1
    move v3, v6

    .line 225
    :goto_2
    const/16 v7, 0xf0

    .line 226
    .line 227
    const/16 v10, 0x140

    .line 228
    .line 229
    packed-switch v3, :pswitch_data_0

    .line 230
    .line 231
    .line 232
    goto/16 :goto_7

    .line 233
    .line 234
    :pswitch_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/j;->b(Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->Y(I)Lcom/google/android/exoplayer2/p1$b;

    .line 239
    .line 240
    .line 241
    goto/16 :goto_7

    .line 242
    .line 243
    :pswitch_1
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/p1$b;->j0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/p1$b;->Q(I)Lcom/google/android/exoplayer2/p1$b;

    .line 248
    .line 249
    .line 250
    goto/16 :goto_7

    .line 251
    .line 252
    :pswitch_2
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/p1$b;->j0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/p1$b;->Q(I)Lcom/google/android/exoplayer2/p1$b;

    .line 257
    .line 258
    .line 259
    goto/16 :goto_7

    .line 260
    .line 261
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    xor-int/2addr v1, v9

    .line 266
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 267
    .line 268
    .line 269
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/source/rtsp/t;->g(Lcom/google/android/exoplayer2/p1$b;Lcom/google/common/collect/ImmutableMap;)V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_7

    .line 273
    .line 274
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    xor-int/2addr v1, v9

    .line 279
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 280
    .line 281
    .line 282
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/source/rtsp/t;->f(Lcom/google/android/exoplayer2/p1$b;Lcom/google/common/collect/ImmutableMap;)V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_7

    .line 286
    .line 287
    :pswitch_5
    const/16 v1, 0x160

    .line 288
    .line 289
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->j0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    const/16 v3, 0x120

    .line 294
    .line 295
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/p1$b;->Q(I)Lcom/google/android/exoplayer2/p1$b;

    .line 296
    .line 297
    .line 298
    goto/16 :goto_7

    .line 299
    .line 300
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    xor-int/2addr v1, v9

    .line 305
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 306
    .line 307
    .line 308
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/source/rtsp/t;->h(Lcom/google/android/exoplayer2/p1$b;Lcom/google/common/collect/ImmutableMap;)V

    .line 309
    .line 310
    .line 311
    goto :goto_7

    .line 312
    :pswitch_7
    if-eq v5, v6, :cond_3

    .line 313
    .line 314
    move v1, v9

    .line 315
    goto :goto_3

    .line 316
    :cond_3
    move v1, v8

    .line 317
    :goto_3
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 318
    .line 319
    .line 320
    const v1, 0xbb80

    .line 321
    .line 322
    .line 323
    if-ne v4, v1, :cond_4

    .line 324
    .line 325
    move v1, v9

    .line 326
    goto :goto_4

    .line 327
    :cond_4
    move v1, v8

    .line 328
    :goto_4
    const-string v3, "Invalid OPUS clock rate."

    .line 329
    .line 330
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    goto :goto_7

    .line 334
    :pswitch_8
    if-ne v5, v9, :cond_5

    .line 335
    .line 336
    move v1, v9

    .line 337
    goto :goto_5

    .line 338
    :cond_5
    move v1, v8

    .line 339
    :goto_5
    const-string v3, "Multi channel AMR is not currently supported."

    .line 340
    .line 341
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    xor-int/2addr v1, v9

    .line 349
    const-string v3, "fmtp parameters must include octet-align."

    .line 350
    .line 351
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    const-string v1, "octet-align"

    .line 355
    .line 356
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    const-string v3, "Only octet aligned mode is currently supported."

    .line 361
    .line 362
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    const-string v1, "interleaving"

    .line 366
    .line 367
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    xor-int/2addr v1, v9

    .line 372
    const-string v3, "Interleaving mode is not currently supported."

    .line 373
    .line 374
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    goto :goto_7

    .line 378
    :pswitch_9
    if-eq v5, v6, :cond_6

    .line 379
    .line 380
    move v1, v9

    .line 381
    goto :goto_6

    .line 382
    :cond_6
    move v1, v8

    .line 383
    :goto_6
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    xor-int/2addr v1, v9

    .line 391
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 392
    .line 393
    .line 394
    invoke-static {v0, p0, v5, v4}, Lcom/google/android/exoplayer2/source/rtsp/t;->e(Lcom/google/android/exoplayer2/p1$b;Lcom/google/common/collect/ImmutableMap;II)V

    .line 395
    .line 396
    .line 397
    :goto_7
    if-lez v4, :cond_7

    .line 398
    .line 399
    move v8, v9

    .line 400
    :cond_7
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 401
    .line 402
    .line 403
    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/j;

    .line 404
    .line 405
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-direct {v1, v0, v2, v4, p0}, Lcom/google/android/exoplayer2/source/rtsp/j;-><init>(Lcom/google/android/exoplayer2/p1;IILjava/util/Map;)V

    .line 410
    .line 411
    .line 412
    return-object v1

    .line 413
    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_d
        -0x63185e82 -> :sswitch_c
        -0x5fc6f775 -> :sswitch_b
        -0x3313c2e -> :sswitch_a
        0xb269698 -> :sswitch_9
        0xb26d66f -> :sswitch_8
        0x46cdc642 -> :sswitch_7
        0x4f62373a -> :sswitch_6
        0x59976a2d -> :sswitch_5
        0x59b2d2d8 -> :sswitch_4
        0x5f50bed8 -> :sswitch_3
        0x5f50bed9 -> :sswitch_2
        0x71710385 -> :sswitch_1
        0x717677f9 -> :sswitch_0
    .end sparse-switch

    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static c(Ljava/lang/String;)[B
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    array-length v1, p0

    .line 7
    sget-object v2, Lcom/google/android/exoplayer2/util/x;->a:[B

    .line 8
    .line 9
    array-length v3, v2

    .line 10
    add-int/2addr v1, v3

    .line 11
    new-array v1, v1, [B

    .line 12
    .line 13
    array-length v3, v2

    .line 14
    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    array-length v2, v2

    .line 18
    array-length v3, p0

    .line 19
    invoke-static {p0, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method

.method private static d(ILjava/lang/String;)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    return p0

    .line 5
    :cond_0
    const-string p0, "audio/ac3"

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x6

    .line 14
    return p0

    .line 15
    :cond_1
    const/4 p0, 0x1

    .line 16
    return p0
.end method

.method private static e(Lcom/google/android/exoplayer2/p1$b;Lcom/google/common/collect/ImmutableMap;II)V
    .locals 2

    .line 1
    const-string v0, "profile-level-id"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "mp4a.40."

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/p1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 40
    .line 41
    .line 42
    invoke-static {p3, p2}, Lcom/google/android/exoplayer2/audio/a;->a(II)[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/p1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/p1$b;

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private static f(Lcom/google/android/exoplayer2/p1$b;Lcom/google/common/collect/ImmutableMap;)V
    .locals 5

    .line 1
    const-string v0, "sprop-parameter-sets"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, ","

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->S0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    array-length v1, v0

    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    if-ne v1, v2, :cond_0

    .line 33
    .line 34
    move v1, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v1, v4

    .line 37
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 38
    .line 39
    .line 40
    aget-object v1, v0, v4

    .line 41
    .line 42
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/t;->c(Ljava/lang/String;)[B

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    aget-object v0, v0, v3

    .line 47
    .line 48
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/t;->c(Ljava/lang/String;)[B

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/p1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/p1$b;

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, [B

    .line 64
    .line 65
    sget-object v1, Lcom/google/android/exoplayer2/util/x;->a:[B

    .line 66
    .line 67
    array-length v1, v1

    .line 68
    array-length v2, v0

    .line 69
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/x;->l([BII)Lcom/google/android/exoplayer2/util/x$c;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget v1, v0, Lcom/google/android/exoplayer2/util/x$c;->h:F

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/p1$b;->a0(F)Lcom/google/android/exoplayer2/p1$b;

    .line 76
    .line 77
    .line 78
    iget v1, v0, Lcom/google/android/exoplayer2/util/x$c;->g:I

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/p1$b;->Q(I)Lcom/google/android/exoplayer2/p1$b;

    .line 81
    .line 82
    .line 83
    iget v1, v0, Lcom/google/android/exoplayer2/util/x$c;->f:I

    .line 84
    .line 85
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/p1$b;->j0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 86
    .line 87
    .line 88
    const-string v1, "profile-level-id"

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Ljava/lang/String;

    .line 95
    .line 96
    if-eqz p1, :cond_1

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v1, "avc1."

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/p1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_1
    iget p1, v0, Lcom/google/android/exoplayer2/util/x$c;->a:I

    .line 120
    .line 121
    iget v1, v0, Lcom/google/android/exoplayer2/util/x$c;->b:I

    .line 122
    .line 123
    iget v0, v0, Lcom/google/android/exoplayer2/util/x$c;->c:I

    .line 124
    .line 125
    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/util/f;->a(III)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/p1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 130
    .line 131
    .line 132
    :goto_1
    return-void
.end method

.method private static g(Lcom/google/android/exoplayer2/p1$b;Lcom/google/common/collect/ImmutableMap;)V
    .locals 8

    .line 1
    const-string v0, "sprop-max-don-diff"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    move v1, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "non-zero sprop-max-don-diff "

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, " is not supported"

    .line 45
    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    const-string v0, "sprop-vps"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/lang/String;

    .line 76
    .line 77
    const-string v1, "sprop-sps"

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Ljava/lang/String;

    .line 97
    .line 98
    const-string v3, "sprop-pps"

    .line 99
    .line 100
    invoke-virtual {p1, v3}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/t;->c(Ljava/lang/String;)[B

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/t;->c(Ljava/lang/String;)[B

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/t;->c(Ljava/lang/String;)[B

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-static {v0, v1, p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/p1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/p1$b;

    .line 136
    .line 137
    .line 138
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, [B

    .line 143
    .line 144
    sget-object v0, Lcom/google/android/exoplayer2/util/x;->a:[B

    .line 145
    .line 146
    array-length v0, v0

    .line 147
    array-length v1, p1

    .line 148
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/x;->h([BII)Lcom/google/android/exoplayer2/util/x$a;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iget v0, p1, Lcom/google/android/exoplayer2/util/x$a;->j:F

    .line 153
    .line 154
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/p1$b;->a0(F)Lcom/google/android/exoplayer2/p1$b;

    .line 155
    .line 156
    .line 157
    iget v0, p1, Lcom/google/android/exoplayer2/util/x$a;->i:I

    .line 158
    .line 159
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/p1$b;->Q(I)Lcom/google/android/exoplayer2/p1$b;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget v1, p1, Lcom/google/android/exoplayer2/util/x$a;->h:I

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->j0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 166
    .line 167
    .line 168
    iget v2, p1, Lcom/google/android/exoplayer2/util/x$a;->a:I

    .line 169
    .line 170
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/util/x$a;->b:Z

    .line 171
    .line 172
    iget v4, p1, Lcom/google/android/exoplayer2/util/x$a;->c:I

    .line 173
    .line 174
    iget v5, p1, Lcom/google/android/exoplayer2/util/x$a;->d:I

    .line 175
    .line 176
    iget-object v6, p1, Lcom/google/android/exoplayer2/util/x$a;->e:[I

    .line 177
    .line 178
    iget v7, p1, Lcom/google/android/exoplayer2/util/x$a;->f:I

    .line 179
    .line 180
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/f;->c(IZII[II)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/p1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method private static h(Lcom/google/android/exoplayer2/p1$b;Lcom/google/common/collect/ImmutableMap;)V
    .locals 2

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->J(Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/p1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/p1$b;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/f;->f([B)Landroid/util/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/p1$b;->j0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/p1$b;->Q(I)Lcom/google/android/exoplayer2/p1$b;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/16 v0, 0x160

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/p1$b;->j0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/16 v1, 0x120

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->Q(I)Lcom/google/android/exoplayer2/p1$b;

    .line 59
    .line 60
    .line 61
    :goto_0
    const-string v0, "profile-level-id"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Ljava/lang/String;

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v1, "mp4v."

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    if-nez p1, :cond_1

    .line 80
    .line 81
    const-string p1, "1"

    .line 82
    .line 83
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/p1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 91
    .line 92
    .line 93
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/google/android/exoplayer2/source/rtsp/t;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/t;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/t;->a:Lcom/google/android/exoplayer2/source/rtsp/j;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/t;->a:Lcom/google/android/exoplayer2/source/rtsp/j;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/rtsp/j;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/t;->b:Landroid/net/Uri;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/t;->b:Landroid/net/Uri;

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v0, v1

    .line 41
    :goto_0
    return v0

    .line 42
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/t;->a:Lcom/google/android/exoplayer2/source/rtsp/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/j;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xd9

    .line 8
    .line 9
    add-int/2addr v1, v0

    .line 10
    mul-int/lit8 v1, v1, 0x1f

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/t;->b:Landroid/net/Uri;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/2addr v1, v0

    .line 19
    return v1
.end method
