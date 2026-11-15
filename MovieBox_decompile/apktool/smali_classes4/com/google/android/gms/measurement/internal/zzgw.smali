.class final Lcom/google/android/gms/measurement/internal/zzgw;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Ljava/net/URL;

.field private final zzb:[B

.field private final zzc:Lcom/google/android/gms/measurement/internal/zzgu;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzgr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzgr;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/measurement/internal/zzgu;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzf:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zza:Ljava/net/URL;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzb:[B

    .line 18
    .line 19
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzc:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzd:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zze:Ljava/util/Map;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    const-string v0, "Error closing HTTP compressed POST connection output stream. appId"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzf:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzr()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zza:Ljava/net/URL;

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcy;->zza()Lcom/google/android/gms/internal/measurement/zzcy;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const-string v5, "client-measurement"

    .line 17
    .line 18
    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/measurement/zzcy;->zza(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URLConnection;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    instance-of v4, v3, Ljava/net/HttpURLConnection;

    .line 23
    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 29
    .line 30
    .line 31
    const v4, 0xea60

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 35
    .line 36
    .line 37
    const v4, 0xee48

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 44
    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setDoInput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 48
    .line 49
    .line 50
    :try_start_1
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zze:Ljava/util/Map;

    .line 51
    .line 52
    if-eqz v5, :cond_0

    .line 53
    .line 54
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_0

    .line 67
    .line 68
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Ljava/util/Map$Entry;

    .line 73
    .line 74
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Ljava/lang/String;

    .line 79
    .line 80
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    check-cast v6, Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v3, v7, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception v4

    .line 91
    move-object v10, v1

    .line 92
    :goto_1
    move v7, v2

    .line 93
    move-object v2, v4

    .line 94
    goto/16 :goto_5

    .line 95
    .line 96
    :catch_0
    move-exception v4

    .line 97
    move-object v10, v1

    .line 98
    :goto_2
    move v7, v2

    .line 99
    :goto_3
    move-object v8, v4

    .line 100
    goto/16 :goto_7

    .line 101
    .line 102
    :cond_0
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzb:[B

    .line 103
    .line 104
    if-eqz v5, :cond_1

    .line 105
    .line 106
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzf:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 107
    .line 108
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzb:[B

    .line 113
    .line 114
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb([B)[B

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzf:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 119
    .line 120
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    const-string v7, "Uploading data. size"

    .line 129
    .line 130
    array-length v8, v5

    .line 131
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 139
    .line 140
    .line 141
    const-string v4, "Content-Encoding"

    .line 142
    .line 143
    const-string v6, "gzip"

    .line 144
    .line 145
    invoke-virtual {v3, v4, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    array-length v4, v5

    .line 149
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 156
    .line 157
    .line 158
    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :try_start_2
    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :catchall_1
    move-exception v5

    .line 167
    move-object v10, v1

    .line 168
    move v7, v2

    .line 169
    move-object v1, v4

    .line 170
    move-object v2, v5

    .line 171
    goto/16 :goto_5

    .line 172
    .line 173
    :catch_1
    move-exception v5

    .line 174
    move-object v10, v1

    .line 175
    move v7, v2

    .line 176
    move-object v1, v4

    .line 177
    move-object v8, v5

    .line 178
    goto/16 :goto_7

    .line 179
    .line 180
    :cond_1
    :goto_4
    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 181
    .line 182
    .line 183
    move-result v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    :try_start_4
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 185
    .line 186
    .line 187
    move-result-object v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 188
    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzf:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 189
    .line 190
    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(Lcom/google/android/gms/measurement/internal/zzgr;Ljava/net/HttpURLConnection;)[B

    .line 191
    .line 192
    .line 193
    move-result-object v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 194
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzf:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgt;

    .line 204
    .line 205
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzd:Ljava/lang/String;

    .line 206
    .line 207
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzc:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 208
    .line 209
    const/4 v9, 0x0

    .line 210
    const/4 v12, 0x0

    .line 211
    move-object v5, v1

    .line 212
    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/zzgt;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgu;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgv;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :catchall_2
    move-exception v4

    .line 220
    move-object v2, v4

    .line 221
    move v7, v8

    .line 222
    move-object v10, v11

    .line 223
    goto :goto_5

    .line 224
    :catch_2
    move-exception v4

    .line 225
    move v7, v8

    .line 226
    move-object v10, v11

    .line 227
    goto/16 :goto_3

    .line 228
    .line 229
    :catchall_3
    move-exception v4

    .line 230
    move-object v10, v1

    .line 231
    move-object v2, v4

    .line 232
    move v7, v8

    .line 233
    goto :goto_5

    .line 234
    :catch_3
    move-exception v4

    .line 235
    move-object v10, v1

    .line 236
    move v7, v8

    .line 237
    goto/16 :goto_3

    .line 238
    .line 239
    :catchall_4
    move-exception v4

    .line 240
    move-object v3, v1

    .line 241
    move-object v10, v3

    .line 242
    goto/16 :goto_1

    .line 243
    .line 244
    :catch_4
    move-exception v4

    .line 245
    move-object v3, v1

    .line 246
    move-object v10, v3

    .line 247
    goto/16 :goto_2

    .line 248
    .line 249
    :cond_2
    :try_start_6
    new-instance v3, Ljava/io/IOException;

    .line 250
    .line 251
    const-string v4, "Failed to obtain HTTP connection"

    .line 252
    .line 253
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 257
    :goto_5
    if-eqz v1, :cond_3

    .line 258
    .line 259
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 260
    .line 261
    .line 262
    goto :goto_6

    .line 263
    :catch_5
    move-exception v1

    .line 264
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzf:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 265
    .line 266
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzd:Ljava/lang/String;

    .line 275
    .line 276
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    invoke-virtual {v4, v0, v5, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    :cond_3
    :goto_6
    if-eqz v3, :cond_4

    .line 284
    .line 285
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 286
    .line 287
    .line 288
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzf:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 289
    .line 290
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgt;

    .line 295
    .line 296
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzd:Ljava/lang/String;

    .line 297
    .line 298
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzc:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 299
    .line 300
    const/4 v9, 0x0

    .line 301
    const/4 v11, 0x0

    .line 302
    const/4 v8, 0x0

    .line 303
    move-object v4, v1

    .line 304
    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/measurement/internal/zzgt;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgu;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgv;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    .line 308
    .line 309
    .line 310
    throw v2

    .line 311
    :goto_7
    if-eqz v1, :cond_5

    .line 312
    .line 313
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 314
    .line 315
    .line 316
    goto :goto_8

    .line 317
    :catch_6
    move-exception v1

    .line 318
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzf:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 319
    .line 320
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzd:Ljava/lang/String;

    .line 329
    .line 330
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    invoke-virtual {v2, v0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    :cond_5
    :goto_8
    if-eqz v3, :cond_6

    .line 338
    .line 339
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 340
    .line 341
    .line 342
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzf:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 343
    .line 344
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgt;

    .line 349
    .line 350
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzd:Ljava/lang/String;

    .line 351
    .line 352
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzc:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 353
    .line 354
    const/4 v9, 0x0

    .line 355
    const/4 v11, 0x0

    .line 356
    move-object v4, v1

    .line 357
    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/measurement/internal/zzgt;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgu;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgv;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    .line 361
    .line 362
    .line 363
    return-void
.end method
