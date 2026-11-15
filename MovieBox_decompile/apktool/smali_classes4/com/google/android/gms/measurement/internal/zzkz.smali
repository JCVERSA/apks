.class final Lcom/google/android/gms/measurement/internal/zzkz;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzkz;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 10
    .line 11
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 15
    .line 16
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zza()Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 27
    .line 28
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzct:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 33
    .line 34
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    move v6, v3

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    goto/16 :goto_7

    .line 44
    .line 45
    :cond_0
    move v6, v4

    .line 46
    :goto_0
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    const-string v8, "_cis"

    .line 51
    .line 52
    const-string v9, "Activity created with data \'referrer\' without required params"

    .line 53
    .line 54
    const-string v10, "utm_medium"

    .line 55
    .line 56
    const-string v11, "utm_source"

    .line 57
    .line 58
    const-string v12, "utm_campaign"

    .line 59
    .line 60
    const-string v14, "gclid"

    .line 61
    .line 62
    if-eqz v7, :cond_1

    .line 63
    .line 64
    :goto_1
    const/4 v5, 0x0

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    :try_start_1
    invoke-virtual {v2, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-nez v7, :cond_3

    .line 71
    .line 72
    if-eqz v6, :cond_2

    .line 73
    .line 74
    const-string v7, "gbraid"

    .line 75
    .line 76
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-nez v7, :cond_3

    .line 81
    .line 82
    :cond_2
    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-nez v7, :cond_3

    .line 87
    .line 88
    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-nez v7, :cond_3

    .line 93
    .line 94
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-nez v7, :cond_3

    .line 99
    .line 100
    const-string v7, "utm_id"

    .line 101
    .line 102
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-nez v7, :cond_3

    .line 107
    .line 108
    const-string v7, "dclid"

    .line 109
    .line 110
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-nez v7, :cond_3

    .line 115
    .line 116
    const-string v7, "srsltid"

    .line 117
    .line 118
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-nez v7, :cond_3

    .line 123
    .line 124
    const-string v7, "sfmc_id"

    .line 125
    .line 126
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-nez v7, :cond_3

    .line 131
    .line 132
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v5, v9}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v15, "https://google.com/search?"

    .line 147
    .line 148
    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/net/Uri;Z)Landroid/os/Bundle;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    if-eqz v5, :cond_4

    .line 167
    .line 168
    const-string v6, "referrer"

    .line 169
    .line 170
    invoke-virtual {v5, v8, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    .line 172
    .line 173
    :cond_4
    :goto_2
    const-string v6, "_cmp"

    .line 174
    .line 175
    if-eqz p1, :cond_7

    .line 176
    .line 177
    :try_start_2
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 178
    .line 179
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zza()Z

    .line 184
    .line 185
    .line 186
    move-result v15

    .line 187
    if-eqz v15, :cond_5

    .line 188
    .line 189
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 190
    .line 191
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 192
    .line 193
    .line 194
    move-result-object v15

    .line 195
    sget-object v13, Lcom/google/android/gms/measurement/internal/zzbh;->zzct:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 196
    .line 197
    invoke-virtual {v15, v13}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    if-eqz v13, :cond_5

    .line 202
    .line 203
    move-object/from16 v13, p2

    .line 204
    .line 205
    move v15, v3

    .line 206
    goto :goto_3

    .line 207
    :cond_5
    move-object/from16 v13, p2

    .line 208
    .line 209
    move v15, v4

    .line 210
    :goto_3
    invoke-virtual {v7, v13, v15}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/net/Uri;Z)Landroid/os/Bundle;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    if-eqz v7, :cond_7

    .line 215
    .line 216
    const-string v13, "intent"

    .line 217
    .line 218
    invoke-virtual {v7, v8, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v7, v14}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v8

    .line 225
    if-nez v8, :cond_6

    .line 226
    .line 227
    if-eqz v5, :cond_6

    .line 228
    .line 229
    invoke-virtual {v5, v14}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    if-eqz v8, :cond_6

    .line 234
    .line 235
    const-string v8, "_cer"

    .line 236
    .line 237
    const-string v13, "gclid=%s"

    .line 238
    .line 239
    invoke-virtual {v5, v14}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v15

    .line 243
    move-object/from16 v16, v9

    .line 244
    .line 245
    new-array v9, v3, [Ljava/lang/Object;

    .line 246
    .line 247
    aput-object v15, v9, v4

    .line 248
    .line 249
    invoke-static {v13, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    invoke-virtual {v7, v8, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_6
    move-object/from16 v16, v9

    .line 258
    .line 259
    :goto_4
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 260
    .line 261
    invoke-virtual {v4, v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzjq;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 262
    .line 263
    .line 264
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 265
    .line 266
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzjq;->zza:Lcom/google/android/gms/measurement/internal/zzu;

    .line 267
    .line 268
    invoke-virtual {v4, v0, v7}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 269
    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_7
    move-object/from16 v16, v9

    .line 273
    .line 274
    :goto_5
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    if-eqz v4, :cond_8

    .line 279
    .line 280
    return-void

    .line 281
    :cond_8
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 282
    .line 283
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    const-string v7, "Activity created with referrer"

    .line 292
    .line 293
    invoke-virtual {v4, v7, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 297
    .line 298
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzbq:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 303
    .line 304
    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 305
    .line 306
    .line 307
    move-result v4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 308
    const-string v7, "_ldl"

    .line 309
    .line 310
    const-string v8, "auto"

    .line 311
    .line 312
    if-eqz v4, :cond_a

    .line 313
    .line 314
    if-eqz v5, :cond_9

    .line 315
    .line 316
    :try_start_3
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 317
    .line 318
    invoke-virtual {v2, v0, v6, v5}, Lcom/google/android/gms/measurement/internal/zzjq;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 319
    .line 320
    .line 321
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 322
    .line 323
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zza:Lcom/google/android/gms/measurement/internal/zzu;

    .line 324
    .line 325
    invoke-virtual {v2, v0, v5}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 326
    .line 327
    .line 328
    goto :goto_6

    .line 329
    :cond_9
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 330
    .line 331
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    const-string v4, "Referrer does not contain valid parameters"

    .line 340
    .line 341
    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    :goto_6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 345
    .line 346
    const/4 v2, 0x0

    .line 347
    invoke-virtual {v0, v8, v7, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 348
    .line 349
    .line 350
    return-void

    .line 351
    :cond_a
    invoke-virtual {v2, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    if-eqz v0, :cond_d

    .line 356
    .line 357
    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-nez v0, :cond_b

    .line 362
    .line 363
    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-nez v0, :cond_b

    .line 368
    .line 369
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-nez v0, :cond_b

    .line 374
    .line 375
    const-string v0, "utm_term"

    .line 376
    .line 377
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-nez v0, :cond_b

    .line 382
    .line 383
    const-string v0, "utm_content"

    .line 384
    .line 385
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-eqz v0, :cond_d

    .line 390
    .line 391
    :cond_b
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    if-nez v0, :cond_c

    .line 396
    .line 397
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 398
    .line 399
    invoke-virtual {v0, v8, v7, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 400
    .line 401
    .line 402
    :cond_c
    return-void

    .line 403
    :cond_d
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 404
    .line 405
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    move-object/from16 v2, v16

    .line 414
    .line 415
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 416
    .line 417
    .line 418
    return-void

    .line 419
    :goto_7
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 420
    .line 421
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    const-string v2, "Throwable caught in handleReferrerForOnActivityCreated"

    .line 430
    .line 431
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "onActivityCreated"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    :goto_0
    move-object v5, v1

    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto/16 :goto_8

    .line 48
    .line 49
    :catch_0
    move-exception v0

    .line 50
    goto/16 :goto_7

    .line 51
    .line 52
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    const-string v2, "com.android.vending.referral_url"

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_2

    .line 69
    .line 70
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/4 v1, 0x0

    .line 76
    goto :goto_0

    .line 77
    :goto_1
    if-eqz v5, :cond_6

    .line 78
    .line 79
    invoke-virtual {v5}, Landroid/net/Uri;->isHierarchical()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_3

    .line 84
    .line 85
    goto :goto_6

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/content/Intent;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    const-string v0, "gs"

    .line 98
    .line 99
    :goto_2
    move-object v6, v0

    .line 100
    goto :goto_3

    .line 101
    :cond_4
    const-string v0, "auto"

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :goto_3
    const-string v0, "referrer"

    .line 105
    .line 106
    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    if-nez p2, :cond_5

    .line 111
    .line 112
    const/4 v0, 0x1

    .line 113
    :goto_4
    move v4, v0

    .line 114
    goto :goto_5

    .line 115
    :cond_5
    const/4 v0, 0x0

    .line 116
    goto :goto_4

    .line 117
    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzlc;

    .line 124
    .line 125
    move-object v2, v1

    .line 126
    move-object v3, p0

    .line 127
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzlc;-><init>(Lcom/google/android/gms/measurement/internal/zzkz;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :goto_7
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    const-string v2, "Throwable caught in onActivityCreated"

    .line 164
    .line 165
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :goto_8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zze;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 185
    .line 186
    .line 187
    throw v0
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzlj;->zzb(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zze;->zzp()Lcom/google/android/gms/measurement/internal/zznb;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Lcom/google/android/gms/measurement/internal/zznd;

    .line 29
    .line 30
    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zznd;-><init>(Lcom/google/android/gms/measurement/internal/zznb;J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzp()Lcom/google/android/gms/measurement/internal/zznb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzne;

    .line 20
    .line 21
    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzne;-><init>(Lcom/google/android/gms/measurement/internal/zznb;J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzlj;->zzc(Landroid/app/Activity;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlj;->zzb(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method
