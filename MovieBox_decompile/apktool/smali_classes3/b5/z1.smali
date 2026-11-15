.class public Lb5/z1;
.super Lb5/e;
.source "source.java"

# interfaces
.implements Lb5/b2;


# static fields
.field public static a:Lb5/z1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb5/z1;

    .line 2
    .line 3
    invoke-direct {v0}, Lb5/z1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb5/z1;->a:Lb5/z1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb5/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static i(La5/a;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object p4, p0, La5/a;->f:La5/b;

    .line 2
    .line 3
    invoke-interface {p4}, La5/b;->t0()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xc

    .line 8
    .line 9
    const/16 v2, 0x10

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    invoke-interface {p4}, La5/b;->t0()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p2, "syntax error, expect {, actual "

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-interface {p4}, La5/b;->x()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :cond_1
    :goto_0
    invoke-virtual {p0}, La5/a;->l()La5/h;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, p2}, La5/h;->p(Ljava/lang/reflect/Type;)Lb5/b2;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0}, La5/a;->l()La5/h;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, p3}, La5/h;->p(Ljava/lang/reflect/Type;)Lb5/b2;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v0}, Lb5/b2;->b()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-interface {p4, v3}, La5/b;->f0(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, La5/a;->m()La5/g;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {p4}, La5/b;->t0()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    const/16 v5, 0xd

    .line 79
    .line 80
    if-ne v4, v5, :cond_3

    .line 81
    .line 82
    invoke-interface {p4, v2}, La5/b;->f0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v3}, La5/a;->A0(La5/g;)V

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    goto/16 :goto_5

    .line 91
    .line 92
    :cond_3
    :try_start_1
    invoke-interface {p4}, La5/b;->t0()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    const/4 v6, 0x0

    .line 97
    const/4 v7, 0x4

    .line 98
    if-ne v4, v7, :cond_9

    .line 99
    .line 100
    invoke-interface {p4}, La5/b;->y()Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_9

    .line 105
    .line 106
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 107
    .line 108
    invoke-interface {p4, v4}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-nez v4, :cond_9

    .line 113
    .line 114
    invoke-interface {p4, v7}, La5/b;->r(I)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p4}, La5/b;->t0()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-ne p1, v7, :cond_8

    .line 122
    .line 123
    invoke-interface {p4}, La5/b;->o0()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const-string p2, ".."

    .line 128
    .line 129
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    if-eqz p2, :cond_4

    .line 134
    .line 135
    iget-object p1, v3, La5/g;->b:La5/g;

    .line 136
    .line 137
    iget-object v6, p1, La5/g;->a:Ljava/lang/Object;

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_4
    const-string p2, "$"

    .line 141
    .line 142
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    if-eqz p2, :cond_6

    .line 147
    .line 148
    move-object p1, v3

    .line 149
    :goto_2
    iget-object p2, p1, La5/g;->b:La5/g;

    .line 150
    .line 151
    if-eqz p2, :cond_5

    .line 152
    .line 153
    move-object p1, p2

    .line 154
    goto :goto_2

    .line 155
    :cond_5
    iget-object v6, p1, La5/g;->a:Ljava/lang/Object;

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_6
    new-instance p2, La5/a$a;

    .line 159
    .line 160
    invoke-direct {p2, v3, p1}, La5/a$a;-><init>(La5/g;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, p2}, La5/a;->h(La5/a$a;)V

    .line 164
    .line 165
    .line 166
    const/4 p1, 0x1

    .line 167
    invoke-virtual {p0, p1}, La5/a;->D0(I)V

    .line 168
    .line 169
    .line 170
    :goto_3
    invoke-interface {p4, v5}, La5/b;->f0(I)V

    .line 171
    .line 172
    .line 173
    invoke-interface {p4}, La5/b;->t0()I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-ne p1, v5, :cond_7

    .line 178
    .line 179
    invoke-interface {p4, v2}, La5/b;->f0(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v3}, La5/a;->A0(La5/g;)V

    .line 183
    .line 184
    .line 185
    return-object v6

    .line 186
    :cond_7
    :try_start_2
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 187
    .line 188
    const-string p2, "illegal ref"

    .line 189
    .line 190
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p1

    .line 194
    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 195
    .line 196
    new-instance p2, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    const-string p3, "illegal ref, "

    .line 202
    .line 203
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-interface {p4}, La5/b;->t0()I

    .line 207
    .line 208
    .line 209
    move-result p3

    .line 210
    invoke-static {p3}, La5/f;->a(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p3

    .line 214
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw p1

    .line 225
    :cond_9
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    if-nez v4, :cond_b

    .line 230
    .line 231
    invoke-interface {p4}, La5/b;->t0()I

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-ne v4, v7, :cond_b

    .line 236
    .line 237
    sget-object v4, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 238
    .line 239
    invoke-interface {p4}, La5/b;->o0()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    if-eqz v4, :cond_b

    .line 248
    .line 249
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 250
    .line 251
    invoke-interface {p4, v4}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    if-nez v4, :cond_b

    .line 256
    .line 257
    invoke-interface {p4, v7}, La5/b;->r(I)V

    .line 258
    .line 259
    .line 260
    invoke-interface {p4, v2}, La5/b;->f0(I)V

    .line 261
    .line 262
    .line 263
    invoke-interface {p4}, La5/b;->t0()I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-ne v4, v5, :cond_a

    .line 268
    .line 269
    invoke-interface {p4}, La5/b;->d0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0, v3}, La5/a;->A0(La5/g;)V

    .line 273
    .line 274
    .line 275
    return-object p1

    .line 276
    :cond_a
    :try_start_3
    invoke-interface {v0}, Lb5/b2;->b()I

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    invoke-interface {p4, v4}, La5/b;->f0(I)V

    .line 281
    .line 282
    .line 283
    :cond_b
    invoke-interface {p4}, La5/b;->t0()I

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    if-ne v4, v7, :cond_c

    .line 288
    .line 289
    instance-of v4, v0, Lb5/o;

    .line 290
    .line 291
    if-eqz v4, :cond_c

    .line 292
    .line 293
    invoke-interface {p4}, La5/b;->o0()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    invoke-interface {p4}, La5/b;->d0()V

    .line 298
    .line 299
    .line 300
    new-instance v5, La5/a;

    .line 301
    .line 302
    invoke-virtual {p0}, La5/a;->l()La5/h;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    invoke-virtual {p0}, La5/a;->r()La5/b;

    .line 307
    .line 308
    .line 309
    move-result-object v8

    .line 310
    invoke-interface {v8}, La5/b;->s()I

    .line 311
    .line 312
    .line 313
    move-result v8

    .line 314
    invoke-direct {v5, v4, v7, v8}, La5/a;-><init>(Ljava/lang/String;La5/h;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0}, La5/a;->n()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    invoke-virtual {v5, v4}, La5/a;->B0(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-interface {v0, v5, p2, v6}, Lb5/b2;->d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    goto :goto_4

    .line 329
    :cond_c
    invoke-interface {v0, p0, p2, v6}, Lb5/b2;->d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    :goto_4
    invoke-interface {p4}, La5/b;->t0()I

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    const/16 v6, 0x11

    .line 338
    .line 339
    if-ne v5, v6, :cond_d

    .line 340
    .line 341
    invoke-interface {v1}, Lb5/b2;->b()I

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    invoke-interface {p4, v5}, La5/b;->f0(I)V

    .line 346
    .line 347
    .line 348
    invoke-interface {v1, p0, p3, v4}, Lb5/b2;->d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    invoke-virtual {p0, p1, v4}, La5/a;->k(Ljava/util/Map;Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    invoke-interface {p4}, La5/b;->t0()I

    .line 359
    .line 360
    .line 361
    move-result v4

    .line 362
    if-ne v4, v2, :cond_2

    .line 363
    .line 364
    invoke-interface {v0}, Lb5/b2;->b()I

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    invoke-interface {p4, v4}, La5/b;->f0(I)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_1

    .line 372
    .line 373
    :cond_d
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 374
    .line 375
    new-instance p2, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .line 379
    .line 380
    const-string p3, "syntax error, expect :, actual "

    .line 381
    .line 382
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-interface {p4}, La5/b;->t0()I

    .line 386
    .line 387
    .line 388
    move-result p3

    .line 389
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p2

    .line 396
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 400
    :goto_5
    invoke-virtual {p0, v3}, La5/a;->A0(La5/g;)V

    .line 401
    .line 402
    .line 403
    throw p1
.end method

.method public static j(La5/a;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/util/Map;
    .locals 11

    .line 1
    iget-object v0, p0, La5/a;->f:La5/b;

    .line 2
    invoke-interface {v0}, La5/b;->t0()I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v1, v2, :cond_4

    const/4 p1, 0x4

    if-ne v1, p1, :cond_1

    .line 3
    invoke-interface {v0}, La5/b;->o0()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_0

    const-string p4, "null"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    return-object v4

    .line 5
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "syntax error, expect {, actual "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, La5/b;->x()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    instance-of p4, p3, Ljava/lang/String;

    if-eqz p4, :cond_2

    .line 7
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", fieldName "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9
    :cond_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 10
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, La5/b;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eq v1, p1, :cond_3

    .line 11
    new-instance p1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 12
    invoke-virtual {p0, p1, p3}, La5/a;->e0(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_3

    .line 14
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 15
    instance-of p1, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_3

    .line 16
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    return-object p0

    .line 17
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_4
    invoke-virtual {p0}, La5/a;->m()La5/g;

    move-result-object v1

    .line 19
    :goto_0
    :try_start_0
    invoke-interface {v0}, La5/b;->x0()V

    .line 20
    invoke-interface {v0}, La5/b;->d()C

    move-result v2

    .line 21
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v5}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_1
    const/16 v5, 0x2c

    if-ne v2, v5, :cond_5

    .line 22
    invoke-interface {v0}, La5/b;->next()C

    .line 23
    invoke-interface {v0}, La5/b;->x0()V

    .line 24
    invoke-interface {v0}, La5/b;->d()C

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 25
    :cond_5
    const-string v5, "expect \':\' at "

    const/16 v6, 0x3a

    const/16 v7, 0x22

    const/16 v8, 0x10

    if-ne v2, v7, :cond_7

    .line 26
    :try_start_1
    invoke-virtual {p0}, La5/a;->u()La5/i;

    move-result-object v2

    invoke-interface {v0, v2, v7}, La5/b;->w(La5/i;C)Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-interface {v0}, La5/b;->x0()V

    .line 28
    invoke-interface {v0}, La5/b;->d()C

    move-result v9

    if-ne v9, v6, :cond_6

    goto/16 :goto_2

    .line 29
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, La5/b;->h()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/16 v9, 0x7d

    if-ne v2, v9, :cond_8

    .line 30
    invoke-interface {v0}, La5/b;->next()C

    .line 31
    invoke-interface {v0}, La5/b;->y0()V

    .line 32
    invoke-interface {v0, v8}, La5/b;->f0(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    invoke-virtual {p0, v1}, La5/a;->A0(La5/g;)V

    return-object p1

    .line 34
    :cond_8
    const-string v9, "syntax error"

    const/16 v10, 0x27

    if-ne v2, v10, :cond_b

    .line 35
    :try_start_2
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v2}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 36
    invoke-virtual {p0}, La5/a;->u()La5/i;

    move-result-object v2

    invoke-interface {v0, v2, v10}, La5/b;->w(La5/i;C)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-interface {v0}, La5/b;->x0()V

    .line 38
    invoke-interface {v0}, La5/b;->d()C

    move-result v9

    if-ne v9, v6, :cond_9

    goto :goto_2

    .line 39
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, La5/b;->h()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_a
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_b
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v2}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 42
    invoke-virtual {p0}, La5/a;->u()La5/i;

    move-result-object v2

    invoke-interface {v0, v2}, La5/b;->T(La5/i;)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-interface {v0}, La5/b;->x0()V

    .line 44
    invoke-interface {v0}, La5/b;->d()C

    move-result v9

    if-ne v9, v6, :cond_17

    .line 45
    :goto_2
    invoke-interface {v0}, La5/b;->next()C

    .line 46
    invoke-interface {v0}, La5/b;->x0()V

    .line 47
    invoke-interface {v0}, La5/b;->d()C

    .line 48
    invoke-interface {v0}, La5/b;->y0()V

    .line 49
    sget-object v5, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    const/16 v6, 0xd

    if-ne v2, v5, :cond_11

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 50
    invoke-interface {v0, v5}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 51
    invoke-static {p4, v5}, Lcom/alibaba/fastjson/parser/Feature;->isEnabled(ILcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 52
    invoke-virtual {p0}, La5/a;->u()La5/i;

    move-result-object v2

    invoke-interface {v0, v2, v7}, La5/b;->w(La5/i;C)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {p0}, La5/a;->l()La5/h;

    move-result-object v5

    .line 54
    const-string v7, "java.util.HashMap"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-class v9, Ljava/util/HashMap;

    if-eqz v7, :cond_c

    goto :goto_3

    .line 55
    :cond_c
    :try_start_3
    const-string v7, "java.util.LinkedHashMap"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 56
    const-class v9, Ljava/util/LinkedHashMap;

    goto :goto_3

    .line 57
    :cond_d
    invoke-virtual {v5}, La5/h;->x()Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_e

    goto :goto_3

    .line 58
    :cond_e
    :try_start_4
    invoke-interface {v0}, La5/b;->s()I

    move-result v7

    invoke-virtual {v5, v2, v4, v7}, La5/h;->j(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v9
    :try_end_4
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 59
    :catch_0
    :goto_3
    :try_start_5
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 60
    invoke-interface {v0, v8}, La5/b;->f0(I)V

    .line 61
    invoke-interface {v0}, La5/b;->t0()I

    move-result v2

    if-ne v2, v6, :cond_15

    .line 62
    invoke-interface {v0, v8}, La5/b;->f0(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 63
    invoke-virtual {p0, v1}, La5/a;->A0(La5/g;)V

    return-object p1

    .line 64
    :cond_f
    :try_start_6
    invoke-virtual {v5, v9}, La5/h;->p(Ljava/lang/reflect/Type;)Lb5/b2;

    move-result-object p1

    .line 65
    invoke-interface {v0, v8}, La5/b;->f0(I)V

    const/4 p2, 0x2

    .line 66
    invoke-virtual {p0, p2}, La5/a;->D0(I)V

    if-eqz v1, :cond_10

    .line 67
    instance-of p2, p3, Ljava/lang/Integer;

    if-nez p2, :cond_10

    .line 68
    invoke-virtual {p0}, La5/a;->t0()V

    .line 69
    :cond_10
    invoke-interface {p1, p0, v9, p3}, Lb5/b2;->d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 70
    invoke-virtual {p0, v1}, La5/a;->A0(La5/g;)V

    return-object p1

    .line 71
    :cond_11
    :try_start_7
    invoke-interface {v0}, La5/b;->d0()V

    if-eqz v3, :cond_12

    .line 72
    invoke-virtual {p0, v1}, La5/a;->A0(La5/g;)V

    .line 73
    :cond_12
    invoke-interface {v0}, La5/b;->t0()I

    move-result v5

    const/16 v7, 0x8

    if-ne v5, v7, :cond_13

    .line 74
    invoke-interface {v0}, La5/b;->d0()V

    move-object v5, v4

    goto :goto_4

    .line 75
    :cond_13
    invoke-virtual {p0, p2, v2}, La5/a;->o0(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 76
    :goto_4
    invoke-interface {p1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p0, p1, v2}, La5/a;->k(Ljava/util/Map;Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0, v1, v5, v2}, La5/a;->x0(La5/g;Ljava/lang/Object;Ljava/lang/Object;)La5/g;

    .line 79
    invoke-virtual {p0, v1}, La5/a;->A0(La5/g;)V

    .line 80
    invoke-interface {v0}, La5/b;->t0()I

    move-result v2

    const/16 v5, 0x14

    if-eq v2, v5, :cond_16

    const/16 v5, 0xf

    if-ne v2, v5, :cond_14

    goto :goto_5

    :cond_14
    if-ne v2, v6, :cond_15

    .line 81
    invoke-interface {v0}, La5/b;->d0()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 82
    invoke-virtual {p0, v1}, La5/a;->A0(La5/g;)V

    return-object p1

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_16
    :goto_5
    invoke-virtual {p0, v1}, La5/a;->A0(La5/g;)V

    return-object p1

    .line 83
    :cond_17
    :try_start_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, La5/b;->h()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", actual "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_18
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 85
    :goto_6
    invoke-virtual {p0, v1}, La5/a;->A0(La5/g;)V

    .line 86
    throw p1
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    return v0
.end method

.method public e(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 7

    .line 1
    const-class p4, Lcom/alibaba/fastjson/JSONObject;

    .line 2
    .line 3
    if-ne p2, p4, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, La5/a;->p()Lb5/m;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, La5/a;->h0()Lcom/alibaba/fastjson/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    iget-object p4, p1, La5/a;->f:La5/b;

    .line 14
    .line 15
    invoke-interface {p4}, La5/b;->t0()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    const/16 p1, 0x10

    .line 24
    .line 25
    invoke-interface {p4, p1}, La5/b;->f0(I)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    return-object p1

    .line 30
    :cond_1
    instance-of v0, p2, Ljava/lang/Class;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    move-object v0, p2

    .line 35
    check-cast v0, Ljava/lang/Class;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "java.util.Collections$UnmodifiableMap"

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-interface {p4}, La5/b;->s()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    .line 57
    .line 58
    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 59
    .line 60
    and-int/2addr v1, v2

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-interface {p4}, La5/b;->s()I

    .line 64
    .line 65
    .line 66
    move-result p4

    .line 67
    invoke-virtual {p0, p2, p4}, Lb5/z1;->g(Ljava/lang/reflect/Type;I)Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object p4

    .line 71
    :goto_1
    move-object v5, p4

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-virtual {p0, p2}, Lb5/z1;->f(Ljava/lang/reflect/Type;)Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object p4

    .line 77
    goto :goto_1

    .line 78
    :goto_2
    invoke-virtual {p1}, La5/a;->m()La5/g;

    .line 79
    .line 80
    .line 81
    move-result-object p4

    .line 82
    :try_start_0
    invoke-virtual {p1, p4, v5, p3}, La5/a;->x0(La5/g;Ljava/lang/Object;Ljava/lang/Object;)La5/g;

    .line 83
    .line 84
    .line 85
    move-object v1, p0

    .line 86
    move-object v2, p1

    .line 87
    move-object v3, p2

    .line 88
    move-object v4, p3

    .line 89
    move v6, p5

    .line 90
    invoke-virtual/range {v1 .. v6}, Lb5/z1;->h(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    check-cast p2, Ljava/util/Map;

    .line 97
    .line 98
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 99
    .line 100
    .line 101
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    goto :goto_3

    .line 103
    :catchall_0
    move-exception p2

    .line 104
    goto :goto_4

    .line 105
    :cond_4
    :goto_3
    invoke-virtual {p1, p4}, La5/a;->A0(La5/g;)V

    .line 106
    .line 107
    .line 108
    return-object p2

    .line 109
    :goto_4
    invoke-virtual {p1, p4}, La5/a;->A0(La5/g;)V

    .line 110
    .line 111
    .line 112
    throw p2
.end method

.method public f(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 1

    .line 1
    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lb5/z1;->g(Ljava/lang/reflect/Type;I)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public g(Ljava/lang/reflect/Type;I)Ljava/util/Map;
    .locals 3

    .line 1
    const-class v0, Ljava/util/Properties;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/util/Properties;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    .line 8
    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    const-class v0, Ljava/util/Hashtable;

    .line 12
    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    new-instance p1, Ljava/util/Hashtable;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    const-class v0, Ljava/util/IdentityHashMap;

    .line 22
    .line 23
    if-ne p1, v0, :cond_2

    .line 24
    .line 25
    new-instance p1, Ljava/util/IdentityHashMap;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    const-class v0, Ljava/util/SortedMap;

    .line 32
    .line 33
    if-eq p1, v0, :cond_e

    .line 34
    .line 35
    const-class v0, Ljava/util/TreeMap;

    .line 36
    .line 37
    if-ne p1, v0, :cond_3

    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :cond_3
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    .line 42
    .line 43
    if-eq p1, v0, :cond_d

    .line 44
    .line 45
    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    .line 47
    if-ne p1, v0, :cond_4

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_4
    const-class v0, Ljava/util/Map;

    .line 52
    .line 53
    if-ne p1, v0, :cond_6

    .line 54
    .line 55
    sget-object p1, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    .line 56
    .line 57
    iget p1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 58
    .line 59
    and-int/2addr p1, p2

    .line 60
    if-eqz p1, :cond_5

    .line 61
    .line 62
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 63
    .line 64
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    new-instance p1, Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-object p1

    .line 74
    :cond_6
    const-class v0, Ljava/util/HashMap;

    .line 75
    .line 76
    if-ne p1, v0, :cond_7

    .line 77
    .line 78
    new-instance p1, Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 81
    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_7
    const-class v0, Ljava/util/LinkedHashMap;

    .line 85
    .line 86
    if-ne p1, v0, :cond_8

    .line 87
    .line 88
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 91
    .line 92
    .line 93
    return-object p1

    .line 94
    :cond_8
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    .line 95
    .line 96
    if-eqz v0, :cond_a

    .line 97
    .line 98
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 99
    .line 100
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const-class v1, Ljava/util/EnumMap;

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_9

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    new-instance p2, Ljava/util/EnumMap;

    .line 117
    .line 118
    const/4 v0, 0x0

    .line 119
    aget-object p1, p1, v0

    .line 120
    .line 121
    check-cast p1, Ljava/lang/Class;

    .line 122
    .line 123
    invoke-direct {p2, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 124
    .line 125
    .line 126
    return-object p2

    .line 127
    :cond_9
    invoke-virtual {p0, v0, p2}, Lb5/z1;->g(Ljava/lang/reflect/Type;I)Ljava/util/Map;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    return-object p1

    .line 132
    :cond_a
    move-object p2, p1

    .line 133
    check-cast p2, Ljava/lang/Class;

    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    const-string v1, "unsupport type "

    .line 140
    .line 141
    if-nez v0, :cond_c

    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const-string v2, "java.util.Collections$UnmodifiableMap"

    .line 148
    .line 149
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_b

    .line 154
    .line 155
    new-instance p1, Ljava/util/HashMap;

    .line 156
    .line 157
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 158
    .line 159
    .line 160
    return-object p1

    .line 161
    :cond_b
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    check-cast p2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    return-object p2

    .line 168
    :catch_0
    move-exception p2

    .line 169
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 170
    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    .line 188
    .line 189
    throw v0

    .line 190
    :cond_c
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 191
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p2

    .line 211
    :cond_d
    :goto_1
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 212
    .line 213
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 214
    .line 215
    .line 216
    return-object p1

    .line 217
    :cond_e
    :goto_2
    new-instance p1, Ljava/util/TreeMap;

    .line 218
    .line 219
    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 220
    .line 221
    .line 222
    return-object p1
.end method

.method protected h(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;I)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    aget-object v0, v0, v1

    .line 13
    .line 14
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "org.springframework.util.LinkedMultiValueMap"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const-class p2, Ljava/util/List;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const/4 v1, 0x1

    .line 38
    aget-object p2, p2, v1

    .line 39
    .line 40
    :goto_0
    const-class v1, Ljava/lang/String;

    .line 41
    .line 42
    if-ne v1, v0, :cond_1

    .line 43
    .line 44
    invoke-static {p1, p4, p2, p3, p5}, Lb5/z1;->j(La5/a;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_1
    invoke-static {p1, p4, v0, p2, p3}, Lb5/z1;->i(La5/a;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_2
    invoke-virtual {p1, p4, p3}, La5/a;->r0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method
