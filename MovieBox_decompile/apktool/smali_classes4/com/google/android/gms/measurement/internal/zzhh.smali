.class final Lcom/google/android/gms/measurement/internal/zzhh;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzbz;

.field private final synthetic zzb:Landroid/content/ServiceConnection;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzhi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhi;Lcom/google/android/gms/internal/measurement/zzbz;Landroid/content/ServiceConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhh;->zza:Lcom/google/android/gms/internal/measurement/zzbz;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzhh;->zzb:Landroid/content/ServiceConnection;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhh;->zzc:Lcom/google/android/gms/measurement/internal/zzhi;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhh;->zzc:Lcom/google/android/gms/measurement/internal/zzhi;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzhi;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhi;->zza(Lcom/google/android/gms/measurement/internal/zzhi;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhh;->zza:Lcom/google/android/gms/internal/measurement/zzbz;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhh;->zzb:Landroid/content/ServiceConnection;

    .line 12
    .line 13
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbz;)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 24
    .line 25
    .line 26
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhy;->zzy()V

    .line 29
    .line 30
    .line 31
    if-eqz v2, :cond_a

    .line 32
    .line 33
    const-string v4, "install_begin_timestamp_seconds"

    .line 34
    .line 35
    const-wide/16 v5, 0x0

    .line 36
    .line 37
    invoke-virtual {v2, v4, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v7

    .line 41
    const-wide/16 v9, 0x3e8

    .line 42
    .line 43
    mul-long/2addr v7, v9

    .line 44
    cmp-long v4, v7, v5

    .line 45
    .line 46
    if-nez v4, :cond_0

    .line 47
    .line 48
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v2, "Service response is missing Install Referrer install timestamp"

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_0
    const-string v4, "install_referrer"

    .line 66
    .line 67
    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    if-eqz v4, :cond_9

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    if-eqz v11, :cond_1

    .line 78
    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :cond_1
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 82
    .line 83
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    const-string v12, "InstallReferrer API result"

    .line 92
    .line 93
    invoke-virtual {v11, v12, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zza()Z

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    if-eqz v11, :cond_2

    .line 101
    .line 102
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 103
    .line 104
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzhy;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzbh;->zzcu:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 109
    .line 110
    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    if-eqz v11, :cond_2

    .line 115
    .line 116
    const/4 v11, 0x1

    .line 117
    goto :goto_0

    .line 118
    :cond_2
    const/4 v11, 0x0

    .line 119
    :goto_0
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 120
    .line 121
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhy;->zzt()Lcom/google/android/gms/measurement/internal/zzos;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    new-instance v13, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v14, "?"

    .line 128
    .line 129
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v12, v4, v11}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/net/Uri;Z)Landroid/os/Bundle;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    if-nez v4, :cond_3

    .line 148
    .line 149
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const-string v2, "No campaign params defined in Install Referrer result"

    .line 160
    .line 161
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_3

    .line 165
    .line 166
    :cond_3
    const-string v12, "click_timestamp"

    .line 167
    .line 168
    if-eqz v11, :cond_5

    .line 169
    .line 170
    const-string v11, "gclid"

    .line 171
    .line 172
    invoke-virtual {v4, v11}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    if-nez v11, :cond_4

    .line 177
    .line 178
    const-string v11, "gbraid"

    .line 179
    .line 180
    invoke-virtual {v4, v11}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    if-eqz v11, :cond_7

    .line 185
    .line 186
    :cond_4
    const-string v11, "referrer_click_timestamp_server_seconds"

    .line 187
    .line 188
    invoke-virtual {v2, v11, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 189
    .line 190
    .line 191
    move-result-wide v13

    .line 192
    mul-long/2addr v13, v9

    .line 193
    cmp-long v2, v13, v5

    .line 194
    .line 195
    if-lez v2, :cond_7

    .line 196
    .line 197
    invoke-virtual {v4, v12, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_5
    const-string v11, "medium"

    .line 202
    .line 203
    invoke-virtual {v4, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v11

    .line 207
    if-eqz v11, :cond_7

    .line 208
    .line 209
    const-string v13, "(not set)"

    .line 210
    .line 211
    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v13

    .line 215
    if-nez v13, :cond_7

    .line 216
    .line 217
    const-string v13, "organic"

    .line 218
    .line 219
    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v11

    .line 223
    if-nez v11, :cond_7

    .line 224
    .line 225
    const-string v11, "referrer_click_timestamp_seconds"

    .line 226
    .line 227
    invoke-virtual {v2, v11, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 228
    .line 229
    .line 230
    move-result-wide v13

    .line 231
    mul-long/2addr v13, v9

    .line 232
    cmp-long v2, v13, v5

    .line 233
    .line 234
    if-nez v2, :cond_6

    .line 235
    .line 236
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    const-string v2, "Install Referrer is missing click timestamp for ad campaign"

    .line 247
    .line 248
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_6
    invoke-virtual {v4, v12, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 253
    .line 254
    .line 255
    :cond_7
    :goto_1
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 256
    .line 257
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzn()Lcom/google/android/gms/measurement/internal/zzha;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzha;->zzd:Lcom/google/android/gms/measurement/internal/zzhb;

    .line 262
    .line 263
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhb;->zza()J

    .line 264
    .line 265
    .line 266
    move-result-wide v5

    .line 267
    cmp-long v2, v7, v5

    .line 268
    .line 269
    if-nez v2, :cond_8

    .line 270
    .line 271
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 272
    .line 273
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    const-string v5, "Logging Install Referrer campaign from module while it may have already been logged."

    .line 282
    .line 283
    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :cond_8
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 287
    .line 288
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzac()Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_a

    .line 293
    .line 294
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 295
    .line 296
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzn()Lcom/google/android/gms/measurement/internal/zzha;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzha;->zzd:Lcom/google/android/gms/measurement/internal/zzhb;

    .line 301
    .line 302
    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    .line 303
    .line 304
    .line 305
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 306
    .line 307
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    const-string v5, "Logging Install Referrer campaign from gmscore with "

    .line 316
    .line 317
    const-string v6, "referrer API v2"

    .line 318
    .line 319
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    const-string v2, "_cis"

    .line 323
    .line 324
    invoke-virtual {v4, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 328
    .line 329
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzp()Lcom/google/android/gms/measurement/internal/zzjq;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    const-string v5, "auto"

    .line 334
    .line 335
    const-string v6, "_cmp"

    .line 336
    .line 337
    invoke-virtual {v2, v5, v6, v4, v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    goto :goto_3

    .line 341
    :cond_9
    :goto_2
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 342
    .line 343
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    const-string v2, "No referrer defined in Install Referrer response"

    .line 352
    .line 353
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    :cond_a
    :goto_3
    if-eqz v3, :cond_b

    .line 357
    .line 358
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 363
    .line 364
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zza()Landroid/content/Context;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 369
    .line 370
    .line 371
    :cond_b
    return-void
.end method
