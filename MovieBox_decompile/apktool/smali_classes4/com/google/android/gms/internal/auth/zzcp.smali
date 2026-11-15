.class public final Lcom/google/android/gms/internal/auth/zzcp;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile zza:Lcom/google/android/gms/internal/auth/zzdh;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
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

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/zzdh;
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-class v2, Lcom/google/android/gms/internal/auth/zzcp;

    .line 4
    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    sget-object v3, Lcom/google/android/gms/internal/auth/zzcp;->zza:Lcom/google/android/gms/internal/auth/zzdh;

    .line 7
    .line 8
    if-nez v3, :cond_b

    .line 9
    .line 10
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 13
    .line 14
    const-string v5, "eng"

    .line 15
    .line 16
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-nez v5, :cond_0

    .line 21
    .line 22
    const-string v5, "userdebug"

    .line 23
    .line 24
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto/16 :goto_c

    .line 33
    .line 34
    :cond_0
    :goto_0
    const-string v3, "dev-keys"

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    const-string v3, "test-keys"

    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzdh;->zzc()Lcom/google/android/gms/internal/auth/zzdh;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    :goto_1
    move-object v3, p0

    .line 56
    goto/16 :goto_9

    .line 57
    .line 58
    :cond_2
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzcc;->zzb()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    invoke-static {p0}, Landroidx/work/impl/e0;->a(Landroid/content/Context;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_3

    .line 69
    .line 70
    invoke-static {p0}, Landroidx/profileinstaller/b;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    :cond_3
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 75
    .line 76
    .line 77
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    .line 80
    .line 81
    :try_start_2
    new-instance v4, Ljava/io/File;

    .line 82
    .line 83
    const-string v5, "phenotype_hermetic"

    .line 84
    .line 85
    invoke-virtual {p0, v5, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const-string v6, "overrides.txt"

    .line 90
    .line 91
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    .line 93
    .line 94
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_4

    .line 99
    .line 100
    invoke-static {v4}, Lcom/google/android/gms/internal/auth/zzdh;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzdh;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    goto :goto_3

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    goto/16 :goto_a

    .line 107
    .line 108
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzdh;->zzc()Lcom/google/android/gms/internal/auth/zzdh;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    goto :goto_3

    .line 113
    :catch_0
    move-exception v4

    .line 114
    const-string v5, "HermeticFileOverrides"

    .line 115
    .line 116
    const-string v6, "no data dir"

    .line 117
    .line 118
    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzdh;->zzc()Lcom/google/android/gms/internal/auth/zzdh;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    :goto_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/auth/zzdh;->zzb()Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_a

    .line 130
    .line 131
    invoke-virtual {v4}, Lcom/google/android/gms/internal/auth/zzdh;->zza()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    .line 137
    :try_start_4
    new-instance v5, Ljava/io/BufferedReader;

    .line 138
    .line 139
    new-instance v6, Ljava/io/InputStreamReader;

    .line 140
    .line 141
    new-instance v7, Ljava/io/FileInputStream;

    .line 142
    .line 143
    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 144
    .line 145
    .line 146
    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 147
    .line 148
    .line 149
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 150
    .line 151
    .line 152
    :try_start_5
    new-instance v6, Landroidx/collection/x0;

    .line 153
    .line 154
    invoke-direct {v6}, Landroidx/collection/x0;-><init>()V

    .line 155
    .line 156
    .line 157
    new-instance v7, Ljava/util/HashMap;

    .line 158
    .line 159
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 160
    .line 161
    .line 162
    :goto_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    if-eqz v8, :cond_9

    .line 167
    .line 168
    const-string v9, " "

    .line 169
    .line 170
    const/4 v10, 0x3

    .line 171
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    array-length v11, v9

    .line 176
    if-eq v11, v10, :cond_5

    .line 177
    .line 178
    new-instance v9, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v10, "Invalid: "

    .line 184
    .line 185
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v8, "HermeticFileOverrides"

    .line 192
    .line 193
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :catchall_2
    move-exception p0

    .line 202
    goto/16 :goto_5

    .line 203
    .line 204
    :cond_5
    aget-object v8, v9, v1

    .line 205
    .line 206
    new-instance v10, Ljava/lang/String;

    .line 207
    .line 208
    invoke-direct {v10, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    aget-object v8, v9, v0

    .line 212
    .line 213
    new-instance v11, Ljava/lang/String;

    .line 214
    .line 215
    invoke-direct {v11, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-static {v11}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    const/4 v11, 0x2

    .line 223
    aget-object v12, v9, v11

    .line 224
    .line 225
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v12

    .line 229
    check-cast v12, Ljava/lang/String;

    .line 230
    .line 231
    if-nez v12, :cond_7

    .line 232
    .line 233
    aget-object v9, v9, v11

    .line 234
    .line 235
    new-instance v11, Ljava/lang/String;

    .line 236
    .line 237
    invoke-direct {v11, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-static {v11}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v12

    .line 244
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    const/16 v13, 0x400

    .line 249
    .line 250
    if-lt v9, v13, :cond_6

    .line 251
    .line 252
    if-ne v12, v11, :cond_7

    .line 253
    .line 254
    :cond_6
    invoke-interface {v7, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    :cond_7
    invoke-virtual {v6, v10}, Landroidx/collection/x0;->containsKey(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v9

    .line 261
    if-nez v9, :cond_8

    .line 262
    .line 263
    new-instance v9, Landroidx/collection/x0;

    .line 264
    .line 265
    invoke-direct {v9}, Landroidx/collection/x0;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6, v10, v9}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    :cond_8
    invoke-virtual {v6, v10}, Landroidx/collection/x0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v9

    .line 275
    check-cast v9, Landroidx/collection/x0;

    .line 276
    .line 277
    invoke-virtual {v9, v8, v12}, Landroidx/collection/x0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    new-instance v7, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    const-string v8, "Parsed "

    .line 295
    .line 296
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v4, " for Android package "

    .line 303
    .line 304
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string p0, "HermeticFileOverrides"

    .line 311
    .line 312
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    invoke-static {p0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    new-instance p0, Lcom/google/android/gms/internal/auth/zzci;

    .line 320
    .line 321
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/auth/zzci;-><init>(Landroidx/collection/x0;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 322
    .line 323
    .line 324
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 325
    .line 326
    .line 327
    :try_start_7
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzdh;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzdh;

    .line 328
    .line 329
    .line 330
    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 331
    goto :goto_8

    .line 332
    :catch_1
    move-exception p0

    .line 333
    goto :goto_7

    .line 334
    :goto_5
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 335
    .line 336
    .line 337
    goto :goto_6

    .line 338
    :catchall_3
    move-exception v4

    .line 339
    :try_start_9
    new-array v5, v0, [Ljava/lang/Class;

    .line 340
    .line 341
    const-class v6, Ljava/lang/Throwable;

    .line 342
    .line 343
    aput-object v6, v5, v1

    .line 344
    .line 345
    const-class v6, Ljava/lang/Throwable;

    .line 346
    .line 347
    const-string v7, "addSuppressed"

    .line 348
    .line 349
    invoke-virtual {v6, v7, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    new-array v0, v0, [Ljava/lang/Object;

    .line 354
    .line 355
    aput-object v4, v0, v1

    .line 356
    .line 357
    invoke-virtual {v5, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 358
    .line 359
    .line 360
    :catch_2
    :goto_6
    :try_start_a
    throw p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 361
    :goto_7
    :try_start_b
    new-instance v0, Ljava/lang/RuntimeException;

    .line 362
    .line 363
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 364
    .line 365
    .line 366
    throw v0

    .line 367
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzdh;->zzc()Lcom/google/android/gms/internal/auth/zzdh;

    .line 368
    .line 369
    .line 370
    move-result-object p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 371
    :goto_8
    :try_start_c
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 372
    .line 373
    .line 374
    goto/16 :goto_1

    .line 375
    .line 376
    :goto_9
    sput-object v3, Lcom/google/android/gms/internal/auth/zzcp;->zza:Lcom/google/android/gms/internal/auth/zzdh;

    .line 377
    .line 378
    goto :goto_b

    .line 379
    :goto_a
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 380
    .line 381
    .line 382
    throw p0

    .line 383
    :cond_b
    :goto_b
    monitor-exit v2

    .line 384
    return-object v3

    .line 385
    :goto_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 386
    throw p0
.end method
