.class final Lcom/google/android/libraries/places/internal/zzbmg;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static final zza:Lcom/google/android/libraries/places/internal/zzayh;


# instance fields
.field final zzb:Ljava/lang/Long;

.field final zzc:Ljava/lang/Boolean;

.field final zzd:Ljava/lang/Integer;

.field final zze:Ljava/lang/Integer;

.field final zzf:Lcom/google/android/libraries/places/internal/zzbpp;

.field final zzg:Lcom/google/android/libraries/places/internal/zzbje;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "io.grpc.internal.ManagedChannelServiceConfig.MethodInfo"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzayh;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzayh;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbmg;->zza:Lcom/google/android/libraries/places/internal/zzayh;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(Ljava/util/Map;ZII)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "timeout"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbkg;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbmg;->zzb:Ljava/lang/Long;

    .line 15
    .line 16
    const-string v2, "waitForReady"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbkg;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbmg;->zzc:Ljava/lang/Boolean;

    .line 23
    .line 24
    const-string v2, "maxResponseMessageBytes"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbkg;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbmg;->zzd:Ljava/lang/Integer;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-ltz v5, :cond_0

    .line 39
    .line 40
    const/4 v5, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v5, 0x0

    .line 43
    :goto_0
    const-string v6, "maxInboundMessageSize %s exceeds bounds"

    .line 44
    .line 45
    invoke-static {v5, v6, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzj(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    const-string v2, "maxRequestMessageBytes"

    .line 49
    .line 50
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbkg;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbmg;->zze:Ljava/lang/Integer;

    .line 55
    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-ltz v5, :cond_2

    .line 63
    .line 64
    const/4 v5, 0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 v5, 0x0

    .line 67
    :goto_1
    const-string v6, "maxOutboundMessageSize %s exceeds bounds"

    .line 68
    .line 69
    invoke-static {v5, v6, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzj(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    if-eqz p2, :cond_4

    .line 73
    .line 74
    const-string v5, "retryPolicy"

    .line 75
    .line 76
    invoke-static {v1, v5}, Lcom/google/android/libraries/places/internal/zzbkg;->zzj(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    const/4 v5, 0x0

    .line 82
    :goto_2
    const/4 v6, 0x5

    .line 83
    const-string v7, "maxAttempts must be greater than 1: %s"

    .line 84
    .line 85
    const/4 v8, 0x2

    .line 86
    const-string v9, "maxAttempts cannot be empty"

    .line 87
    .line 88
    const-string v10, "maxAttempts"

    .line 89
    .line 90
    const-wide/16 v11, 0x0

    .line 91
    .line 92
    if-nez v5, :cond_5

    .line 93
    .line 94
    const/4 v5, 0x0

    .line 95
    goto/16 :goto_9

    .line 96
    .line 97
    :cond_5
    invoke-static {v5, v10}, Lcom/google/android/libraries/places/internal/zzbkg;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    invoke-static {v13, v9}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    if-lt v13, v8, :cond_6

    .line 109
    .line 110
    const/4 v14, 0x1

    .line 111
    goto :goto_3

    .line 112
    :cond_6
    const/4 v14, 0x0

    .line 113
    :goto_3
    invoke-static {v14, v7, v13}, Lcom/google/android/libraries/places/internal/zzmt;->zzh(ZLjava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    .line 117
    .line 118
    .line 119
    move-result v16

    .line 120
    const-string v13, "initialBackoff"

    .line 121
    .line 122
    invoke-static {v5, v13}, Lcom/google/android/libraries/places/internal/zzbkg;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    const-string v14, "initialBackoff cannot be empty"

    .line 127
    .line 128
    invoke-static {v13, v14}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 132
    .line 133
    .line 134
    move-result-wide v13

    .line 135
    cmp-long v15, v13, v11

    .line 136
    .line 137
    if-lez v15, :cond_7

    .line 138
    .line 139
    const/4 v15, 0x1

    .line 140
    goto :goto_4

    .line 141
    :cond_7
    const/4 v15, 0x0

    .line 142
    :goto_4
    const-string v2, "initialBackoffNanos must be greater than 0: %s"

    .line 143
    .line 144
    invoke-static {v15, v2, v13, v14}, Lcom/google/android/libraries/places/internal/zzmt;->zzi(ZLjava/lang/String;J)V

    .line 145
    .line 146
    .line 147
    const-string v2, "maxBackoff"

    .line 148
    .line 149
    invoke-static {v5, v2}, Lcom/google/android/libraries/places/internal/zzbkg;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const-string v15, "maxBackoff cannot be empty"

    .line 154
    .line 155
    invoke-static {v2, v15}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 159
    .line 160
    .line 161
    move-result-wide v3

    .line 162
    cmp-long v2, v3, v11

    .line 163
    .line 164
    if-lez v2, :cond_8

    .line 165
    .line 166
    const/4 v2, 0x1

    .line 167
    goto :goto_5

    .line 168
    :cond_8
    const/4 v2, 0x0

    .line 169
    :goto_5
    const-string v15, "maxBackoff must be greater than 0: %s"

    .line 170
    .line 171
    invoke-static {v2, v15, v3, v4}, Lcom/google/android/libraries/places/internal/zzmt;->zzi(ZLjava/lang/String;J)V

    .line 172
    .line 173
    .line 174
    const-string v2, "backoffMultiplier"

    .line 175
    .line 176
    invoke-static {v5, v2}, Lcom/google/android/libraries/places/internal/zzbkg;->zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    const-string v15, "backoffMultiplier cannot be empty"

    .line 181
    .line 182
    invoke-static {v2, v15}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 186
    .line 187
    .line 188
    move-result-wide v21

    .line 189
    const-wide/16 v17, 0x0

    .line 190
    .line 191
    cmpl-double v15, v21, v17

    .line 192
    .line 193
    if-lez v15, :cond_9

    .line 194
    .line 195
    const/4 v15, 0x1

    .line 196
    goto :goto_6

    .line 197
    :cond_9
    const/4 v15, 0x0

    .line 198
    :goto_6
    const-string v6, "backoffMultiplier must be greater than 0: %s"

    .line 199
    .line 200
    invoke-static {v15, v6, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzj(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    const-string v2, "perAttemptRecvTimeout"

    .line 204
    .line 205
    invoke-static {v5, v2}, Lcom/google/android/libraries/places/internal/zzbkg;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    if-eqz v2, :cond_a

    .line 210
    .line 211
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 212
    .line 213
    .line 214
    move-result-wide v17

    .line 215
    cmp-long v6, v17, v11

    .line 216
    .line 217
    if-ltz v6, :cond_b

    .line 218
    .line 219
    :cond_a
    const/4 v6, 0x1

    .line 220
    goto :goto_7

    .line 221
    :cond_b
    const/4 v6, 0x0

    .line 222
    :goto_7
    const-string v15, "perAttemptRecvTimeout cannot be negative: %s"

    .line 223
    .line 224
    invoke-static {v6, v15, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzj(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzbqh;->zzb(Ljava/util/Map;)Ljava/util/Set;

    .line 228
    .line 229
    .line 230
    move-result-object v24

    .line 231
    if-nez v2, :cond_c

    .line 232
    .line 233
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->isEmpty()Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-nez v5, :cond_d

    .line 238
    .line 239
    :cond_c
    const/4 v5, 0x1

    .line 240
    goto :goto_8

    .line 241
    :cond_d
    const/4 v5, 0x0

    .line 242
    :goto_8
    const-string v6, "retryableStatusCodes cannot be empty without perAttemptRecvTimeout"

    .line 243
    .line 244
    invoke-static {v5, v6}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    new-instance v5, Lcom/google/android/libraries/places/internal/zzbpp;

    .line 248
    .line 249
    move-object v15, v5

    .line 250
    move-wide/from16 v17, v13

    .line 251
    .line 252
    move-wide/from16 v19, v3

    .line 253
    .line 254
    move-object/from16 v23, v2

    .line 255
    .line 256
    invoke-direct/range {v15 .. v24}, Lcom/google/android/libraries/places/internal/zzbpp;-><init>(IJJDLjava/lang/Long;Ljava/util/Set;)V

    .line 257
    .line 258
    .line 259
    :goto_9
    iput-object v5, v0, Lcom/google/android/libraries/places/internal/zzbmg;->zzf:Lcom/google/android/libraries/places/internal/zzbpp;

    .line 260
    .line 261
    if-eqz p2, :cond_e

    .line 262
    .line 263
    const-string v2, "hedgingPolicy"

    .line 264
    .line 265
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbkg;->zzj(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    goto :goto_a

    .line 270
    :cond_e
    const/4 v1, 0x0

    .line 271
    :goto_a
    if-nez v1, :cond_f

    .line 272
    .line 273
    const/4 v2, 0x0

    .line 274
    goto :goto_d

    .line 275
    :cond_f
    invoke-static {v1, v10}, Lcom/google/android/libraries/places/internal/zzbkg;->zzc(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-static {v2, v9}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-lt v2, v8, :cond_10

    .line 287
    .line 288
    const/4 v3, 0x1

    .line 289
    goto :goto_b

    .line 290
    :cond_10
    const/4 v3, 0x0

    .line 291
    :goto_b
    invoke-static {v3, v7, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzh(ZLjava/lang/String;I)V

    .line 292
    .line 293
    .line 294
    const/4 v3, 0x5

    .line 295
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    const-string v3, "hedgingDelay"

    .line 300
    .line 301
    invoke-static {v1, v3}, Lcom/google/android/libraries/places/internal/zzbkg;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    const-string v4, "hedgingDelay cannot be empty"

    .line 306
    .line 307
    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 311
    .line 312
    .line 313
    move-result-wide v3

    .line 314
    cmp-long v5, v3, v11

    .line 315
    .line 316
    if-ltz v5, :cond_11

    .line 317
    .line 318
    const/4 v5, 0x1

    .line 319
    goto :goto_c

    .line 320
    :cond_11
    const/4 v5, 0x0

    .line 321
    :goto_c
    const-string v6, "hedgingDelay must not be negative: %s"

    .line 322
    .line 323
    invoke-static {v5, v6, v3, v4}, Lcom/google/android/libraries/places/internal/zzmt;->zzi(ZLjava/lang/String;J)V

    .line 324
    .line 325
    .line 326
    new-instance v5, Lcom/google/android/libraries/places/internal/zzbje;

    .line 327
    .line 328
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbqh;->zza(Ljava/util/Map;)Ljava/util/Set;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-direct {v5, v2, v3, v4, v1}, Lcom/google/android/libraries/places/internal/zzbje;-><init>(IJLjava/util/Set;)V

    .line 333
    .line 334
    .line 335
    move-object v2, v5

    .line 336
    :goto_d
    iput-object v2, v0, Lcom/google/android/libraries/places/internal/zzbmg;->zzg:Lcom/google/android/libraries/places/internal/zzbje;

    .line 337
    .line 338
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzbmg;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbmg;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzb:Ljava/lang/Long;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbmg;->zzb:Ljava/lang/Long;

    .line 12
    .line 13
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzc:Ljava/lang/Boolean;

    .line 20
    .line 21
    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbmg;->zzc:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzd:Ljava/lang/Integer;

    .line 30
    .line 31
    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbmg;->zzd:Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zze:Ljava/lang/Integer;

    .line 40
    .line 41
    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbmg;->zze:Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzf:Lcom/google/android/libraries/places/internal/zzbpp;

    .line 50
    .line 51
    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbmg;->zzf:Lcom/google/android/libraries/places/internal/zzbpp;

    .line 52
    .line 53
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzg:Lcom/google/android/libraries/places/internal/zzbje;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbmg;->zzg:Lcom/google/android/libraries/places/internal/zzbje;

    .line 62
    .line 63
    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    return p1

    .line 71
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzb:Ljava/lang/Long;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzc:Ljava/lang/Boolean;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzd:Ljava/lang/Integer;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zze:Ljava/lang/Integer;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzf:Lcom/google/android/libraries/places/internal/zzbpp;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzg:Lcom/google/android/libraries/places/internal/zzbje;

    .line 12
    .line 13
    const/4 v6, 0x6

    .line 14
    new-array v6, v6, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v0, v6, v7

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    aput-object v1, v6, v0

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    aput-object v2, v6, v0

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    aput-object v3, v6, v0

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    aput-object v4, v6, v0

    .line 30
    .line 31
    const/4 v0, 0x5

    .line 32
    aput-object v5, v6, v0

    .line 33
    .line 34
    invoke-static {v6}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "timeoutNanos"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzb:Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    .line 10
    .line 11
    .line 12
    const-string v1, "waitForReady"

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzc:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    .line 17
    .line 18
    .line 19
    const-string v1, "maxInboundMessageSize"

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzd:Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    .line 24
    .line 25
    .line 26
    const-string v1, "maxOutboundMessageSize"

    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zze:Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    .line 31
    .line 32
    .line 33
    const-string v1, "retryPolicy"

    .line 34
    .line 35
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzf:Lcom/google/android/libraries/places/internal/zzbpp;

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    .line 38
    .line 39
    .line 40
    const-string v1, "hedgingPolicy"

    .line 41
    .line 42
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbmg;->zzg:Lcom/google/android/libraries/places/internal/zzbje;

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method
