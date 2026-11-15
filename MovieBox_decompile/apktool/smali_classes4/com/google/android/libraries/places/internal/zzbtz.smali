.class final Lcom/google/android/libraries/places/internal/zzbtz;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbtr;


# instance fields
.field final zza:Lcom/google/android/libraries/places/internal/zzbtu;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbwd;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbtx;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbwd;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 5
    .line 6
    new-instance p2, Lcom/google/android/libraries/places/internal/zzbtx;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Lcom/google/android/libraries/places/internal/zzbtx;-><init>(Lcom/google/android/libraries/places/internal/zzbwd;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbtz;->zzc:Lcom/google/android/libraries/places/internal/zzbtx;

    .line 12
    .line 13
    new-instance p1, Lcom/google/android/libraries/places/internal/zzbtu;

    .line 14
    .line 15
    const/16 p3, 0x1000

    .line 16
    .line 17
    invoke-direct {p1, p3, p3, p2}, Lcom/google/android/libraries/places/internal/zzbtu;-><init>(IILcom/google/android/libraries/places/internal/zzbws;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtz;->zza:Lcom/google/android/libraries/places/internal/zzbtu;

    .line 21
    .line 22
    return-void
.end method

.method private final zzb(ISBI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtz;->zzc:Lcom/google/android/libraries/places/internal/zzbtx;

    .line 2
    .line 3
    iput p1, v0, Lcom/google/android/libraries/places/internal/zzbtx;->zzd:I

    .line 4
    .line 5
    iput p1, v0, Lcom/google/android/libraries/places/internal/zzbtx;->zza:I

    .line 6
    .line 7
    iput-short p2, v0, Lcom/google/android/libraries/places/internal/zzbtx;->zze:S

    .line 8
    .line 9
    iput-byte p3, v0, Lcom/google/android/libraries/places/internal/zzbtx;->zzb:B

    .line 10
    .line 11
    iput p4, v0, Lcom/google/android/libraries/places/internal/zzbtx;->zzc:I

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtz;->zza:Lcom/google/android/libraries/places/internal/zzbtu;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbtu;->zze()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtz;->zza:Lcom/google/android/libraries/places/internal/zzbtu;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbtu;->zzb()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method private final zzc(Lcom/google/android/libraries/places/internal/zzbtq;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbwd;->zzc()B

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/nio/channels/Channel;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzbtq;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v8, 0x1

    .line 9
    :try_start_0
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 10
    .line 11
    const-wide/16 v5, 0x9

    .line 12
    .line 13
    invoke-interface {v4, v5, v6}, Lcom/google/android/libraries/places/internal/zzbwd;->zzD(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 17
    .line 18
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbub;->zzb(Lcom/google/android/libraries/places/internal/zzbwd;)I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    const/16 v4, 0x4000

    .line 23
    .line 24
    if-gt v6, v4, :cond_22

    .line 25
    .line 26
    iget-object v5, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 27
    .line 28
    invoke-interface {v5}, Lcom/google/android/libraries/places/internal/zzbwd;->zzc()B

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    and-int/lit16 v5, v5, 0xff

    .line 33
    .line 34
    iget-object v7, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 35
    .line 36
    invoke-interface {v7}, Lcom/google/android/libraries/places/internal/zzbwd;->zzc()B

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    and-int/lit16 v7, v7, 0xff

    .line 41
    .line 42
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 43
    .line 44
    invoke-interface {v9}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    int-to-byte v5, v5

    .line 49
    int-to-byte v7, v7

    .line 50
    const v10, 0x7fffffff

    .line 51
    .line 52
    .line 53
    and-int/2addr v9, v10

    .line 54
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbub;->zzg()Ljava/util/logging/Logger;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 59
    .line 60
    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    if-eqz v11, :cond_0

    .line 65
    .line 66
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbub;->zzg()Ljava/util/logging/Logger;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    invoke-static {v8, v9, v6, v5, v7}, Lcom/google/android/libraries/places/internal/zzbty;->zza(ZIIBB)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v13

    .line 74
    const-string v14, "io.grpc.okhttp.internal.framed.Http2$Reader"

    .line 75
    .line 76
    const-string v15, "nextFrame"

    .line 77
    .line 78
    invoke-virtual {v11, v12, v14, v15, v13}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    const/4 v11, 0x4

    .line 82
    packed-switch v5, :pswitch_data_0

    .line 83
    .line 84
    .line 85
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 86
    .line 87
    int-to-long v2, v6

    .line 88
    invoke-interface {v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzbwd;->zzF(J)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_8

    .line 92
    .line 93
    :pswitch_0
    if-ne v6, v11, :cond_2

    .line 94
    .line 95
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 96
    .line 97
    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    int-to-long v4, v2

    .line 102
    const-wide/32 v6, 0x7fffffff

    .line 103
    .line 104
    .line 105
    and-long/2addr v4, v6

    .line 106
    const-wide/16 v6, 0x0

    .line 107
    .line 108
    cmp-long v2, v4, v6

    .line 109
    .line 110
    if-eqz v2, :cond_1

    .line 111
    .line 112
    invoke-interface {v1, v9, v4, v5}, Lcom/google/android/libraries/places/internal/zzbtq;->zzg(IJ)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_8

    .line 116
    .line 117
    :cond_1
    new-array v1, v3, [Ljava/lang/Object;

    .line 118
    .line 119
    const-string v2, "windowSizeIncrement was 0"

    .line 120
    .line 121
    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    throw v1

    .line 126
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    new-array v2, v8, [Ljava/lang/Object;

    .line 131
    .line 132
    aput-object v1, v2, v3

    .line 133
    .line 134
    const-string v1, "TYPE_WINDOW_UPDATE length !=4: %s"

    .line 135
    .line 136
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    throw v1

    .line 141
    :pswitch_1
    if-lt v6, v2, :cond_6

    .line 142
    .line 143
    if-nez v9, :cond_5

    .line 144
    .line 145
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 146
    .line 147
    add-int/lit8 v6, v6, -0x8

    .line 148
    .line 149
    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbtp;->zza(I)Lcom/google/android/libraries/places/internal/zzbtp;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    if-eqz v5, :cond_4

    .line 162
    .line 163
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbwf;->zzb:Lcom/google/android/libraries/places/internal/zzbwf;

    .line 164
    .line 165
    if-lez v6, :cond_3

    .line 166
    .line 167
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 168
    .line 169
    int-to-long v6, v6

    .line 170
    invoke-interface {v2, v6, v7}, Lcom/google/android/libraries/places/internal/zzbwd;->zzy(J)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    :cond_3
    invoke-interface {v1, v4, v5, v2}, Lcom/google/android/libraries/places/internal/zzbtq;->zzb(ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbwf;)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_8

    .line 178
    .line 179
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    new-array v2, v8, [Ljava/lang/Object;

    .line 184
    .line 185
    aput-object v1, v2, v3

    .line 186
    .line 187
    const-string v1, "TYPE_GOAWAY unexpected error code: %d"

    .line 188
    .line 189
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    throw v1

    .line 194
    :cond_5
    new-array v1, v3, [Ljava/lang/Object;

    .line 195
    .line 196
    const-string v2, "TYPE_GOAWAY streamId != 0"

    .line 197
    .line 198
    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    throw v1

    .line 203
    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    new-array v2, v8, [Ljava/lang/Object;

    .line 208
    .line 209
    aput-object v1, v2, v3

    .line 210
    .line 211
    const-string v1, "TYPE_GOAWAY length < 8: %s"

    .line 212
    .line 213
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    throw v1

    .line 218
    :pswitch_2
    if-ne v6, v2, :cond_9

    .line 219
    .line 220
    if-nez v9, :cond_8

    .line 221
    .line 222
    and-int/lit8 v2, v7, 0x1

    .line 223
    .line 224
    if-eq v8, v2, :cond_7

    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_7
    move v3, v8

    .line 228
    :goto_0
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 229
    .line 230
    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/libraries/places/internal/zzbtq;->zzc(ZII)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_8

    .line 242
    .line 243
    :cond_8
    new-array v1, v3, [Ljava/lang/Object;

    .line 244
    .line 245
    const-string v2, "TYPE_PING streamId != 0"

    .line 246
    .line 247
    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    throw v1

    .line 252
    :cond_9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    new-array v2, v8, [Ljava/lang/Object;

    .line 257
    .line 258
    aput-object v1, v2, v3

    .line 259
    .line 260
    const-string v1, "TYPE_PING length != 8: %s"

    .line 261
    .line 262
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    throw v1

    .line 267
    :pswitch_3
    if-eqz v9, :cond_b

    .line 268
    .line 269
    and-int/2addr v2, v7

    .line 270
    if-eqz v2, :cond_a

    .line 271
    .line 272
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 273
    .line 274
    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zzc()B

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    and-int/lit16 v3, v2, 0xff

    .line 279
    .line 280
    :cond_a
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 281
    .line 282
    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    and-int/2addr v2, v10

    .line 287
    add-int/lit8 v6, v6, -0x4

    .line 288
    .line 289
    int-to-short v3, v3

    .line 290
    invoke-static {v6, v7, v3}, Lcom/google/android/libraries/places/internal/zzbub;->zza(IBS)I

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    invoke-direct {v0, v4, v3, v7, v9}, Lcom/google/android/libraries/places/internal/zzbtz;->zzb(ISBI)Ljava/util/List;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    invoke-interface {v1, v9, v2, v3}, Lcom/google/android/libraries/places/internal/zzbtq;->zzd(IILjava/util/List;)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_8

    .line 302
    .line 303
    :cond_b
    new-array v1, v3, [Ljava/lang/Object;

    .line 304
    .line 305
    const-string v2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    .line 306
    .line 307
    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    throw v1

    .line 312
    :pswitch_4
    if-nez v9, :cond_14

    .line 313
    .line 314
    and-int/lit8 v2, v7, 0x1

    .line 315
    .line 316
    if-eqz v2, :cond_d

    .line 317
    .line 318
    if-nez v6, :cond_c

    .line 319
    .line 320
    goto/16 :goto_8

    .line 321
    .line 322
    :cond_c
    new-array v1, v3, [Ljava/lang/Object;

    .line 323
    .line 324
    const-string v2, "FRAME_SIZE_ERROR ack frame should be empty!"

    .line 325
    .line 326
    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    throw v1

    .line 331
    :cond_d
    rem-int/lit8 v2, v6, 0x6

    .line 332
    .line 333
    if-nez v2, :cond_13

    .line 334
    .line 335
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbue;

    .line 336
    .line 337
    invoke-direct {v2}, Lcom/google/android/libraries/places/internal/zzbue;-><init>()V

    .line 338
    .line 339
    .line 340
    move v5, v3

    .line 341
    :goto_1
    if-ge v5, v6, :cond_12

    .line 342
    .line 343
    iget-object v7, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 344
    .line 345
    move-object v9, v7

    .line 346
    check-cast v9, Lcom/google/android/libraries/places/internal/zzbwl;

    .line 347
    .line 348
    const-wide/16 v12, 0x2

    .line 349
    .line 350
    invoke-virtual {v9, v12, v13}, Lcom/google/android/libraries/places/internal/zzbwl;->zzD(J)V

    .line 351
    .line 352
    .line 353
    iget-object v9, v9, Lcom/google/android/libraries/places/internal/zzbwl;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 354
    .line 355
    invoke-virtual {v9}, Lcom/google/android/libraries/places/internal/zzbwb;->zzC()S

    .line 356
    .line 357
    .line 358
    move-result v9

    .line 359
    invoke-interface {v7}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    .line 360
    .line 361
    .line 362
    move-result v7

    .line 363
    packed-switch v9, :pswitch_data_1

    .line 364
    .line 365
    .line 366
    goto :goto_3

    .line 367
    :pswitch_5
    if-lt v7, v4, :cond_e

    .line 368
    .line 369
    const v10, 0xffffff

    .line 370
    .line 371
    .line 372
    if-gt v7, v10, :cond_e

    .line 373
    .line 374
    goto :goto_2

    .line 375
    :cond_e
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    new-array v2, v8, [Ljava/lang/Object;

    .line 380
    .line 381
    aput-object v1, v2, v3

    .line 382
    .line 383
    const-string v1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    .line 384
    .line 385
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    throw v1

    .line 390
    :pswitch_6
    if-ltz v7, :cond_f

    .line 391
    .line 392
    const/4 v9, 0x7

    .line 393
    goto :goto_2

    .line 394
    :cond_f
    new-array v1, v3, [Ljava/lang/Object;

    .line 395
    .line 396
    const-string v2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    .line 397
    .line 398
    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    throw v1

    .line 403
    :pswitch_7
    move v9, v11

    .line 404
    goto :goto_2

    .line 405
    :pswitch_8
    if-eqz v7, :cond_11

    .line 406
    .line 407
    if-ne v7, v8, :cond_10

    .line 408
    .line 409
    goto :goto_2

    .line 410
    :cond_10
    new-array v1, v3, [Ljava/lang/Object;

    .line 411
    .line 412
    const-string v2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    .line 413
    .line 414
    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    throw v1

    .line 419
    :cond_11
    :goto_2
    :pswitch_9
    invoke-virtual {v2, v9, v3, v7}, Lcom/google/android/libraries/places/internal/zzbue;->zze(III)Lcom/google/android/libraries/places/internal/zzbue;

    .line 420
    .line 421
    .line 422
    :goto_3
    add-int/lit8 v5, v5, 0x6

    .line 423
    .line 424
    goto :goto_1

    .line 425
    :cond_12
    invoke-interface {v1, v3, v2}, Lcom/google/android/libraries/places/internal/zzbtq;->zzf(ZLcom/google/android/libraries/places/internal/zzbue;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbue;->zzb()I

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    if-ltz v1, :cond_20

    .line 433
    .line 434
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zza:Lcom/google/android/libraries/places/internal/zzbtu;

    .line 435
    .line 436
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbue;->zzb()I

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbtu;->zzd(I)V

    .line 441
    .line 442
    .line 443
    goto/16 :goto_8

    .line 444
    .line 445
    :cond_13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    new-array v2, v8, [Ljava/lang/Object;

    .line 450
    .line 451
    aput-object v1, v2, v3

    .line 452
    .line 453
    const-string v1, "TYPE_SETTINGS length %% 6 != 0: %s"

    .line 454
    .line 455
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    throw v1

    .line 460
    :cond_14
    new-array v1, v3, [Ljava/lang/Object;

    .line 461
    .line 462
    const-string v2, "TYPE_SETTINGS streamId != 0"

    .line 463
    .line 464
    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    throw v1

    .line 469
    :pswitch_a
    if-ne v6, v11, :cond_17

    .line 470
    .line 471
    if-eqz v9, :cond_16

    .line 472
    .line 473
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 474
    .line 475
    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zze()I

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbtp;->zza(I)Lcom/google/android/libraries/places/internal/zzbtp;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    if-eqz v4, :cond_15

    .line 484
    .line 485
    invoke-interface {v1, v9, v4}, Lcom/google/android/libraries/places/internal/zzbtq;->zze(ILcom/google/android/libraries/places/internal/zzbtp;)V

    .line 486
    .line 487
    .line 488
    goto/16 :goto_8

    .line 489
    .line 490
    :cond_15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    new-array v2, v8, [Ljava/lang/Object;

    .line 495
    .line 496
    aput-object v1, v2, v3

    .line 497
    .line 498
    const-string v1, "TYPE_RST_STREAM unexpected error code: %d"

    .line 499
    .line 500
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    throw v1

    .line 505
    :cond_16
    new-array v1, v3, [Ljava/lang/Object;

    .line 506
    .line 507
    const-string v2, "TYPE_RST_STREAM streamId == 0"

    .line 508
    .line 509
    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    throw v1

    .line 514
    :cond_17
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    new-array v2, v8, [Ljava/lang/Object;

    .line 519
    .line 520
    aput-object v1, v2, v3

    .line 521
    .line 522
    const-string v1, "TYPE_RST_STREAM length: %d != 4"

    .line 523
    .line 524
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    throw v1

    .line 529
    :pswitch_b
    const/4 v2, 0x5

    .line 530
    if-ne v6, v2, :cond_19

    .line 531
    .line 532
    if-eqz v9, :cond_18

    .line 533
    .line 534
    invoke-direct {v0, v1, v9}, Lcom/google/android/libraries/places/internal/zzbtz;->zzc(Lcom/google/android/libraries/places/internal/zzbtq;I)V

    .line 535
    .line 536
    .line 537
    goto/16 :goto_8

    .line 538
    .line 539
    :cond_18
    new-array v1, v3, [Ljava/lang/Object;

    .line 540
    .line 541
    const-string v2, "TYPE_PRIORITY streamId == 0"

    .line 542
    .line 543
    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    throw v1

    .line 548
    :cond_19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    new-array v2, v8, [Ljava/lang/Object;

    .line 553
    .line 554
    aput-object v1, v2, v3

    .line 555
    .line 556
    const-string v1, "TYPE_PRIORITY length: %d != 5"

    .line 557
    .line 558
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    throw v1

    .line 563
    :pswitch_c
    if-eqz v9, :cond_1d

    .line 564
    .line 565
    and-int/2addr v2, v7

    .line 566
    and-int/lit8 v4, v7, 0x20

    .line 567
    .line 568
    and-int/lit8 v5, v7, 0x1

    .line 569
    .line 570
    if-eqz v2, :cond_1a

    .line 571
    .line 572
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 573
    .line 574
    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zzc()B

    .line 575
    .line 576
    .line 577
    move-result v2

    .line 578
    and-int/lit16 v2, v2, 0xff

    .line 579
    .line 580
    goto :goto_4

    .line 581
    :cond_1a
    move v2, v3

    .line 582
    :goto_4
    if-eqz v4, :cond_1b

    .line 583
    .line 584
    invoke-direct {v0, v1, v9}, Lcom/google/android/libraries/places/internal/zzbtz;->zzc(Lcom/google/android/libraries/places/internal/zzbtq;I)V

    .line 585
    .line 586
    .line 587
    add-int/lit8 v6, v6, -0x5

    .line 588
    .line 589
    :cond_1b
    int-to-short v2, v2

    .line 590
    if-eq v8, v5, :cond_1c

    .line 591
    .line 592
    goto :goto_5

    .line 593
    :cond_1c
    move v3, v8

    .line 594
    :goto_5
    invoke-static {v6, v7, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zza(IBS)I

    .line 595
    .line 596
    .line 597
    move-result v4

    .line 598
    invoke-direct {v0, v4, v2, v7, v9}, Lcom/google/android/libraries/places/internal/zzbtz;->zzb(ISBI)Ljava/util/List;

    .line 599
    .line 600
    .line 601
    move-result-object v6

    .line 602
    const/4 v7, 0x4

    .line 603
    const/4 v2, 0x0

    .line 604
    const/4 v5, -0x1

    .line 605
    move-object/from16 v1, p1

    .line 606
    .line 607
    move v4, v9

    .line 608
    invoke-interface/range {v1 .. v7}, Lcom/google/android/libraries/places/internal/zzbtq;->zzh(ZZIILjava/util/List;I)V

    .line 609
    .line 610
    .line 611
    goto :goto_8

    .line 612
    :cond_1d
    new-array v1, v3, [Ljava/lang/Object;

    .line 613
    .line 614
    const-string v2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    .line 615
    .line 616
    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    throw v1

    .line 621
    :pswitch_d
    and-int/lit8 v4, v7, 0x1

    .line 622
    .line 623
    and-int/lit8 v5, v7, 0x20

    .line 624
    .line 625
    if-nez v5, :cond_21

    .line 626
    .line 627
    and-int/2addr v2, v7

    .line 628
    if-eqz v2, :cond_1e

    .line 629
    .line 630
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 631
    .line 632
    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zzc()B

    .line 633
    .line 634
    .line 635
    move-result v2

    .line 636
    and-int/lit16 v2, v2, 0xff

    .line 637
    .line 638
    move v10, v2

    .line 639
    goto :goto_6

    .line 640
    :cond_1e
    move v10, v3

    .line 641
    :goto_6
    if-eq v8, v4, :cond_1f

    .line 642
    .line 643
    move v2, v3

    .line 644
    goto :goto_7

    .line 645
    :cond_1f
    move v2, v8

    .line 646
    :goto_7
    int-to-short v3, v10

    .line 647
    invoke-static {v6, v7, v3}, Lcom/google/android/libraries/places/internal/zzbub;->zza(IBS)I

    .line 648
    .line 649
    .line 650
    move-result v5

    .line 651
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 652
    .line 653
    move-object/from16 v1, p1

    .line 654
    .line 655
    move v3, v9

    .line 656
    invoke-interface/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbtq;->zza(ZILcom/google/android/libraries/places/internal/zzbwd;II)V

    .line 657
    .line 658
    .line 659
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbtz;->zzb:Lcom/google/android/libraries/places/internal/zzbwd;

    .line 660
    .line 661
    int-to-long v2, v10

    .line 662
    invoke-interface {v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzbwd;->zzF(J)V

    .line 663
    .line 664
    .line 665
    :cond_20
    :goto_8
    return v8

    .line 666
    :cond_21
    new-array v1, v3, [Ljava/lang/Object;

    .line 667
    .line 668
    const-string v2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    .line 669
    .line 670
    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    throw v1

    .line 675
    :cond_22
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    new-array v2, v8, [Ljava/lang/Object;

    .line 680
    .line 681
    aput-object v1, v2, v3

    .line 682
    .line 683
    const-string v1, "FRAME_SIZE_ERROR: %s"

    .line 684
    .line 685
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzbub;->zze(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    .line 686
    .line 687
    .line 688
    move-result-object v1

    .line 689
    throw v1

    .line 690
    :catch_0
    return v3

    .line 691
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method
