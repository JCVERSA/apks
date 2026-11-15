.class final Lcom/google/android/libraries/places/internal/zzbsj;
.super Lcom/google/android/libraries/places/internal/zzbsk;
.source "source.java"


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzbtf;

.field private static final zzc:Lcom/google/android/libraries/places/internal/zzbtf;

.field private static final zzd:Lcom/google/android/libraries/places/internal/zzbtf;

.field private static final zze:Lcom/google/android/libraries/places/internal/zzbtf;

.field private static final zzf:Lcom/google/android/libraries/places/internal/zzbtf;

.field private static final zzg:Lcom/google/android/libraries/places/internal/zzbtf;

.field private static final zzh:Ljava/lang/reflect/Method;

.field private static final zzi:Ljava/lang/reflect/Method;

.field private static final zzj:Ljava/lang/reflect/Method;

.field private static final zzk:Ljava/lang/reflect/Method;

.field private static final zzl:Ljava/lang/reflect/Method;

.field private static final zzm:Ljava/lang/reflect/Method;

.field private static final zzn:Ljava/lang/reflect/Constructor;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    const-class v0, Ljavax/net/ssl/SSLParameters;

    .line 2
    .line 3
    const-class v1, Ljavax/net/ssl/SSLSocket;

    .line 4
    .line 5
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbtf;

    .line 6
    .line 7
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    new-array v5, v4, [Ljava/lang/Class;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    aput-object v3, v5, v6

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const-string v8, "setUseSessionTickets"

    .line 17
    .line 18
    invoke-direct {v2, v7, v8, v5}, Lcom/google/android/libraries/places/internal/zzbtf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    sput-object v2, Lcom/google/android/libraries/places/internal/zzbsj;->zzb:Lcom/google/android/libraries/places/internal/zzbtf;

    .line 22
    .line 23
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbtf;

    .line 24
    .line 25
    const-class v5, Ljava/lang/String;

    .line 26
    .line 27
    new-array v9, v4, [Ljava/lang/Class;

    .line 28
    .line 29
    aput-object v5, v9, v6

    .line 30
    .line 31
    const-string v10, "setHostname"

    .line 32
    .line 33
    invoke-direct {v2, v7, v10, v9}, Lcom/google/android/libraries/places/internal/zzbtf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    sput-object v2, Lcom/google/android/libraries/places/internal/zzbsj;->zzc:Lcom/google/android/libraries/places/internal/zzbtf;

    .line 37
    .line 38
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbtf;

    .line 39
    .line 40
    new-array v9, v6, [Ljava/lang/Class;

    .line 41
    .line 42
    const-class v10, [B

    .line 43
    .line 44
    const-string v11, "getAlpnSelectedProtocol"

    .line 45
    .line 46
    invoke-direct {v2, v10, v11, v9}, Lcom/google/android/libraries/places/internal/zzbtf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 47
    .line 48
    .line 49
    sput-object v2, Lcom/google/android/libraries/places/internal/zzbsj;->zzd:Lcom/google/android/libraries/places/internal/zzbtf;

    .line 50
    .line 51
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbtf;

    .line 52
    .line 53
    new-array v9, v4, [Ljava/lang/Class;

    .line 54
    .line 55
    aput-object v10, v9, v6

    .line 56
    .line 57
    const-string v11, "setAlpnProtocols"

    .line 58
    .line 59
    invoke-direct {v2, v7, v11, v9}, Lcom/google/android/libraries/places/internal/zzbtf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 60
    .line 61
    .line 62
    sput-object v2, Lcom/google/android/libraries/places/internal/zzbsj;->zze:Lcom/google/android/libraries/places/internal/zzbtf;

    .line 63
    .line 64
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbtf;

    .line 65
    .line 66
    const-string v9, "getNpnSelectedProtocol"

    .line 67
    .line 68
    new-array v11, v6, [Ljava/lang/Class;

    .line 69
    .line 70
    invoke-direct {v2, v10, v9, v11}, Lcom/google/android/libraries/places/internal/zzbtf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 71
    .line 72
    .line 73
    sput-object v2, Lcom/google/android/libraries/places/internal/zzbsj;->zzf:Lcom/google/android/libraries/places/internal/zzbtf;

    .line 74
    .line 75
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbtf;

    .line 76
    .line 77
    new-array v9, v4, [Ljava/lang/Class;

    .line 78
    .line 79
    aput-object v10, v9, v6

    .line 80
    .line 81
    const-string v10, "setNpnProtocols"

    .line 82
    .line 83
    invoke-direct {v2, v7, v10, v9}, Lcom/google/android/libraries/places/internal/zzbtf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 84
    .line 85
    .line 86
    sput-object v2, Lcom/google/android/libraries/places/internal/zzbsj;->zzg:Lcom/google/android/libraries/places/internal/zzbtf;

    .line 87
    .line 88
    :try_start_0
    const-string v2, "setApplicationProtocols"

    .line 89
    .line 90
    new-array v9, v4, [Ljava/lang/Class;

    .line 91
    .line 92
    const-class v10, [Ljava/lang/String;

    .line 93
    .line 94
    aput-object v10, v9, v6

    .line 95
    .line 96
    invoke-virtual {v0, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 97
    .line 98
    .line 99
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_8

    .line 100
    :try_start_1
    const-string v9, "getApplicationProtocols"

    .line 101
    .line 102
    invoke-virtual {v0, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 103
    .line 104
    .line 105
    move-result-object v9
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6

    .line 106
    :try_start_2
    const-string v10, "getApplicationProtocol"

    .line 107
    .line 108
    invoke-virtual {v1, v10, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 109
    .line 110
    .line 111
    move-result-object v10
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4

    .line 112
    :try_start_3
    const-string v11, "android.net.ssl.SSLSockets"

    .line 113
    .line 114
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    const-string v12, "isSupportedSocket"

    .line 119
    .line 120
    new-array v13, v4, [Ljava/lang/Class;

    .line 121
    .line 122
    aput-object v1, v13, v6

    .line 123
    .line 124
    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 125
    .line 126
    .line 127
    move-result-object v12
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    .line 128
    const/4 v13, 0x2

    .line 129
    :try_start_4
    new-array v13, v13, [Ljava/lang/Class;

    .line 130
    .line 131
    aput-object v1, v13, v6

    .line 132
    .line 133
    aput-object v3, v13, v4

    .line 134
    .line 135
    invoke-virtual {v11, v8, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 136
    .line 137
    .line 138
    move-result-object v1
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_0

    .line 139
    goto/16 :goto_f

    .line 140
    .line 141
    :catch_0
    move-exception v1

    .line 142
    goto :goto_0

    .line 143
    :catch_1
    move-exception v1

    .line 144
    goto :goto_1

    .line 145
    :goto_0
    move-object v13, v1

    .line 146
    move-object v1, v9

    .line 147
    move-object v3, v10

    .line 148
    move-object v14, v12

    .line 149
    goto/16 :goto_b

    .line 150
    .line 151
    :goto_1
    move-object v13, v1

    .line 152
    move-object v1, v9

    .line 153
    move-object v3, v10

    .line 154
    move-object v14, v12

    .line 155
    goto/16 :goto_e

    .line 156
    .line 157
    :catch_2
    move-exception v1

    .line 158
    goto :goto_2

    .line 159
    :catch_3
    move-exception v1

    .line 160
    goto :goto_3

    .line 161
    :goto_2
    move-object v13, v1

    .line 162
    move-object v14, v7

    .line 163
    move-object v1, v9

    .line 164
    move-object v3, v10

    .line 165
    goto :goto_b

    .line 166
    :goto_3
    move-object v13, v1

    .line 167
    move-object v14, v7

    .line 168
    move-object v1, v9

    .line 169
    move-object v3, v10

    .line 170
    goto/16 :goto_e

    .line 171
    .line 172
    :catch_4
    move-exception v1

    .line 173
    goto :goto_4

    .line 174
    :catch_5
    move-exception v1

    .line 175
    goto :goto_5

    .line 176
    :goto_4
    move-object v13, v1

    .line 177
    move-object v3, v7

    .line 178
    move-object v14, v3

    .line 179
    move-object v1, v9

    .line 180
    goto :goto_b

    .line 181
    :goto_5
    move-object v13, v1

    .line 182
    move-object v3, v7

    .line 183
    move-object v14, v3

    .line 184
    move-object v1, v9

    .line 185
    goto :goto_e

    .line 186
    :catch_6
    move-exception v1

    .line 187
    goto :goto_6

    .line 188
    :catch_7
    move-exception v1

    .line 189
    goto :goto_8

    .line 190
    :goto_6
    move-object v13, v1

    .line 191
    move-object v1, v7

    .line 192
    move-object v3, v1

    .line 193
    :goto_7
    move-object v14, v3

    .line 194
    goto :goto_b

    .line 195
    :goto_8
    move-object v13, v1

    .line 196
    move-object v1, v7

    .line 197
    move-object v3, v1

    .line 198
    :goto_9
    move-object v14, v3

    .line 199
    goto :goto_e

    .line 200
    :catch_8
    move-exception v1

    .line 201
    goto :goto_a

    .line 202
    :catch_9
    move-exception v1

    .line 203
    goto :goto_d

    .line 204
    :goto_a
    move-object v13, v1

    .line 205
    move-object v1, v7

    .line 206
    move-object v2, v1

    .line 207
    move-object v3, v2

    .line 208
    goto :goto_7

    .line 209
    :goto_b
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsk;->zze()Ljava/util/logging/Logger;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    sget-object v9, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 214
    .line 215
    const-string v11, "<clinit>"

    .line 216
    .line 217
    const-string v12, "Failed to find Android 10.0+ APIs"

    .line 218
    .line 219
    const-string v10, "io.grpc.okhttp.OkHttpProtocolNegotiator$AndroidNegotiator"

    .line 220
    .line 221
    invoke-virtual/range {v8 .. v13}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    .line 223
    .line 224
    :goto_c
    move-object v9, v1

    .line 225
    move-object v10, v3

    .line 226
    move-object v1, v7

    .line 227
    move-object v12, v14

    .line 228
    goto :goto_f

    .line 229
    :goto_d
    move-object v13, v1

    .line 230
    move-object v1, v7

    .line 231
    move-object v2, v1

    .line 232
    move-object v3, v2

    .line 233
    goto :goto_9

    .line 234
    :goto_e
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsk;->zze()Ljava/util/logging/Logger;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    sget-object v9, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 239
    .line 240
    const-string v11, "<clinit>"

    .line 241
    .line 242
    const-string v12, "Failed to find Android 10.0+ APIs"

    .line 243
    .line 244
    const-string v10, "io.grpc.okhttp.OkHttpProtocolNegotiator$AndroidNegotiator"

    .line 245
    .line 246
    invoke-virtual/range {v8 .. v13}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    .line 248
    .line 249
    goto :goto_c

    .line 250
    :goto_f
    sput-object v2, Lcom/google/android/libraries/places/internal/zzbsj;->zzj:Ljava/lang/reflect/Method;

    .line 251
    .line 252
    sput-object v9, Lcom/google/android/libraries/places/internal/zzbsj;->zzk:Ljava/lang/reflect/Method;

    .line 253
    .line 254
    sput-object v10, Lcom/google/android/libraries/places/internal/zzbsj;->zzl:Ljava/lang/reflect/Method;

    .line 255
    .line 256
    sput-object v12, Lcom/google/android/libraries/places/internal/zzbsj;->zzh:Ljava/lang/reflect/Method;

    .line 257
    .line 258
    sput-object v1, Lcom/google/android/libraries/places/internal/zzbsj;->zzi:Ljava/lang/reflect/Method;

    .line 259
    .line 260
    :try_start_5
    const-string v1, "setServerNames"

    .line 261
    .line 262
    new-array v2, v4, [Ljava/lang/Class;

    .line 263
    .line 264
    const-class v3, Ljava/util/List;

    .line 265
    .line 266
    aput-object v3, v2, v6

    .line 267
    .line 268
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 269
    .line 270
    .line 271
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_c

    .line 272
    :try_start_6
    const-string v1, "javax.net.ssl.SNIHostName"

    .line 273
    .line 274
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    new-array v2, v4, [Ljava/lang/Class;

    .line 279
    .line 280
    aput-object v5, v2, v6

    .line 281
    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 283
    .line 284
    .line 285
    move-result-object v7
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_a

    .line 286
    goto :goto_16

    .line 287
    :catch_a
    move-exception v1

    .line 288
    goto :goto_10

    .line 289
    :catch_b
    move-exception v1

    .line 290
    goto :goto_11

    .line 291
    :goto_10
    move-object v6, v1

    .line 292
    goto :goto_13

    .line 293
    :goto_11
    move-object v6, v1

    .line 294
    goto :goto_15

    .line 295
    :catch_c
    move-exception v0

    .line 296
    move-object v1, v0

    .line 297
    goto :goto_12

    .line 298
    :catch_d
    move-exception v0

    .line 299
    move-object v1, v0

    .line 300
    goto :goto_14

    .line 301
    :goto_12
    move-object v6, v1

    .line 302
    move-object v0, v7

    .line 303
    :goto_13
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsk;->zze()Ljava/util/logging/Logger;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 308
    .line 309
    const-string v4, "<clinit>"

    .line 310
    .line 311
    const-string v5, "Failed to find Android 7.0+ APIs"

    .line 312
    .line 313
    const-string v3, "io.grpc.okhttp.OkHttpProtocolNegotiator$AndroidNegotiator"

    .line 314
    .line 315
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    .line 317
    .line 318
    goto :goto_16

    .line 319
    :goto_14
    move-object v6, v1

    .line 320
    move-object v0, v7

    .line 321
    :goto_15
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsk;->zze()Ljava/util/logging/Logger;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 326
    .line 327
    const-string v4, "<clinit>"

    .line 328
    .line 329
    const-string v5, "Failed to find Android 7.0+ APIs"

    .line 330
    .line 331
    const-string v3, "io.grpc.okhttp.OkHttpProtocolNegotiator$AndroidNegotiator"

    .line 332
    .line 333
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 334
    .line 335
    .line 336
    :goto_16
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbsj;->zzm:Ljava/lang/reflect/Method;

    .line 337
    .line 338
    sput-object v7, Lcom/google/android/libraries/places/internal/zzbsj;->zzn:Ljava/lang/reflect/Constructor;

    .line 339
    .line 340
    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbtl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbsk;-><init>(Lcom/google/android/libraries/places/internal/zzbtl;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zza(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbsj;->zzl:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    goto :goto_0

    .line 15
    :catch_1
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :goto_0
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    instance-of v2, v2, Ljava/lang/UnsupportedOperationException;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsk;->zze()Ljava/util/logging/Logger;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 30
    .line 31
    const-string v3, "getSelectedProtocol"

    .line 32
    .line 33
    const-string v4, "Socket unsupported for getApplicationProtocol, will try old methods"

    .line 34
    .line 35
    const-string v5, "io.grpc.okhttp.OkHttpProtocolNegotiator$AndroidNegotiator"

    .line 36
    .line 37
    invoke-virtual {v0, v2, v5, v3, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 48
    .line 49
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsk;->zza:Lcom/google/android/libraries/places/internal/zzbtl;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbtl;->zzc()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v2, 0x1

    .line 60
    const/4 v3, 0x0

    .line 61
    if-ne v0, v2, :cond_2

    .line 62
    .line 63
    :try_start_1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbsj;->zzd:Lcom/google/android/libraries/places/internal/zzbtf;

    .line 64
    .line 65
    new-array v2, v3, [Ljava/lang/Object;

    .line 66
    .line 67
    invoke-virtual {v0, p1, v2}, Lcom/google/android/libraries/places/internal/zzbtf;->zzb(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, [B

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    new-instance v2, Ljava/lang/String;

    .line 76
    .line 77
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbto;->zzb:Ljava/nio/charset/Charset;

    .line 78
    .line 79
    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 80
    .line 81
    .line 82
    return-object v2

    .line 83
    :catch_2
    move-exception v0

    .line 84
    move-object v9, v0

    .line 85
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsk;->zze()Ljava/util/logging/Logger;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 90
    .line 91
    const-string v7, "getSelectedProtocol"

    .line 92
    .line 93
    const-string v8, "Failed calling getAlpnSelectedProtocol()"

    .line 94
    .line 95
    const-string v6, "io.grpc.okhttp.OkHttpProtocolNegotiator$AndroidNegotiator"

    .line 96
    .line 97
    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsk;->zza:Lcom/google/android/libraries/places/internal/zzbtl;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbtl;->zzc()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    const/4 v2, 0x3

    .line 107
    if-eq v0, v2, :cond_3

    .line 108
    .line 109
    :try_start_2
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbsj;->zzf:Lcom/google/android/libraries/places/internal/zzbtf;

    .line 110
    .line 111
    new-array v2, v3, [Ljava/lang/Object;

    .line 112
    .line 113
    invoke-virtual {v0, p1, v2}, Lcom/google/android/libraries/places/internal/zzbtf;->zzb(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, [B

    .line 118
    .line 119
    if-eqz p1, :cond_3

    .line 120
    .line 121
    new-instance v0, Ljava/lang/String;

    .line 122
    .line 123
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbto;->zzb:Ljava/nio/charset/Charset;

    .line 124
    .line 125
    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 126
    .line 127
    .line 128
    return-object v0

    .line 129
    :catch_3
    move-exception p1

    .line 130
    move-object v7, p1

    .line 131
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsk;->zze()Ljava/util/logging/Logger;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 136
    .line 137
    const-string v5, "getSelectedProtocol"

    .line 138
    .line 139
    const-string v6, "Failed calling getNpnSelectedProtocol()"

    .line 140
    .line 141
    const-string v4, "io.grpc.okhttp.OkHttpProtocolNegotiator$AndroidNegotiator"

    .line 142
    .line 143
    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    :cond_3
    return-object v1
.end method

.method public final zzb(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbsk;->zza(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbsk;->zzb(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    return-object v0
.end method

.method protected final zzc(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/google/android/libraries/places/internal/zzbtm;

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbtm;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-array v3, v1, [Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, [Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/4 v4, 0x0

    .line 45
    if-eqz p2, :cond_5

    .line 46
    .line 47
    :try_start_0
    const-string v5, "_"

    .line 48
    .line 49
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_1
    :try_start_1
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbjd;->zzf(Ljava/lang/String;)Ljava/net/URI;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v5}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const/16 v6, 0x40

    .line 66
    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    const/4 v6, -0x1

    .line 72
    if-ne v5, v6, :cond_2

    .line 73
    .line 74
    move v5, v0

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move v5, v1

    .line 77
    :goto_1
    const-string v6, "Userinfo must not be present on authority: \'%s\'"

    .line 78
    .line 79
    invoke-static {v5, v6, p2}, Lcom/google/android/libraries/places/internal/zzmt;->zzj(ZLjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .line 81
    .line 82
    :try_start_2
    sget-object v5, Lcom/google/android/libraries/places/internal/zzbsj;->zzh:Ljava/lang/reflect/Method;

    .line 83
    .line 84
    if-eqz v5, :cond_3

    .line 85
    .line 86
    new-array v6, v0, [Ljava/lang/Object;

    .line 87
    .line 88
    aput-object p1, v6, v1

    .line 89
    .line 90
    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    check-cast v5, Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_3

    .line 101
    .line 102
    sget-object v5, Lcom/google/android/libraries/places/internal/zzbsj;->zzi:Ljava/lang/reflect/Method;

    .line 103
    .line 104
    const/4 v6, 0x2

    .line 105
    new-array v6, v6, [Ljava/lang/Object;

    .line 106
    .line 107
    aput-object p1, v6, v1

    .line 108
    .line 109
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 110
    .line 111
    aput-object v7, v6, v0

    .line 112
    .line 113
    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :catch_0
    move-exception p1

    .line 118
    goto/16 :goto_6

    .line 119
    .line 120
    :catch_1
    move-exception p1

    .line 121
    goto/16 :goto_7

    .line 122
    .line 123
    :catch_2
    move-exception p1

    .line 124
    goto/16 :goto_8

    .line 125
    .line 126
    :cond_3
    sget-object v5, Lcom/google/android/libraries/places/internal/zzbsj;->zzb:Lcom/google/android/libraries/places/internal/zzbtf;

    .line 127
    .line 128
    new-array v6, v0, [Ljava/lang/Object;

    .line 129
    .line 130
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 131
    .line 132
    aput-object v7, v6, v1

    .line 133
    .line 134
    invoke-virtual {v5, p1, v6}, Lcom/google/android/libraries/places/internal/zzbtf;->zza(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    :goto_2
    sget-object v5, Lcom/google/android/libraries/places/internal/zzbsj;->zzm:Ljava/lang/reflect/Method;

    .line 138
    .line 139
    if-eqz v5, :cond_4

    .line 140
    .line 141
    sget-object v6, Lcom/google/android/libraries/places/internal/zzbsj;->zzn:Ljava/lang/reflect/Constructor;

    .line 142
    .line 143
    if-eqz v6, :cond_4

    .line 144
    .line 145
    new-array v7, v0, [Ljava/lang/Object;

    .line 146
    .line 147
    aput-object p2, v7, v1

    .line 148
    .line 149
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    new-array v6, v0, [Ljava/lang/Object;

    .line 158
    .line 159
    aput-object p2, v6, v1

    .line 160
    .line 161
    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_4
    sget-object v5, Lcom/google/android/libraries/places/internal/zzbsj;->zzc:Lcom/google/android/libraries/places/internal/zzbtf;

    .line 166
    .line 167
    new-array v6, v0, [Ljava/lang/Object;

    .line 168
    .line 169
    aput-object p2, v6, v1

    .line 170
    .line 171
    invoke-virtual {v5, p1, v6}, Lcom/google/android/libraries/places/internal/zzbtf;->zza(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    :catch_3
    :cond_5
    :goto_3
    sget-object p2, Lcom/google/android/libraries/places/internal/zzbsj;->zzl:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 175
    .line 176
    if-eqz p2, :cond_6

    .line 177
    .line 178
    :try_start_3
    invoke-virtual {p2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    sget-object p2, Lcom/google/android/libraries/places/internal/zzbsj;->zzj:Ljava/lang/reflect/Method;

    .line 182
    .line 183
    new-array v5, v0, [Ljava/lang/Object;

    .line 184
    .line 185
    aput-object v2, v5, v1

    .line 186
    .line 187
    invoke-virtual {p2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_0

    .line 188
    .line 189
    .line 190
    move p2, v0

    .line 191
    goto :goto_4

    .line 192
    :catch_4
    move-exception p2

    .line 193
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    instance-of v5, v5, Ljava/lang/UnsupportedOperationException;

    .line 198
    .line 199
    if-eqz v5, :cond_7

    .line 200
    .line 201
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsk;->zze()Ljava/util/logging/Logger;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 206
    .line 207
    const-string v6, "io.grpc.okhttp.OkHttpProtocolNegotiator$AndroidNegotiator"

    .line 208
    .line 209
    const-string v7, "configureTlsExtensions"

    .line 210
    .line 211
    const-string v8, "setApplicationProtocol unsupported, will try old methods"

    .line 212
    .line 213
    invoke-virtual {p2, v5, v6, v7, v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_6
    move p2, v1

    .line 217
    goto :goto_4

    .line 218
    :cond_7
    throw p2

    .line 219
    :goto_4
    invoke-virtual {p1, v3}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 220
    .line 221
    .line 222
    if-eqz p2, :cond_9

    .line 223
    .line 224
    sget-object p2, Lcom/google/android/libraries/places/internal/zzbsj;->zzk:Ljava/lang/reflect/Method;

    .line 225
    .line 226
    if-eqz p2, :cond_9

    .line 227
    .line 228
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {p2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    check-cast p2, [Ljava/lang/String;

    .line 237
    .line 238
    invoke-static {v2, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result p2
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_0

    .line 242
    if-nez p2, :cond_8

    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_8
    return-void

    .line 246
    :cond_9
    :goto_5
    invoke-static {p3}, Lcom/google/android/libraries/places/internal/zzbtl;->zzg(Ljava/util/List;)[B

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    new-array p3, v0, [Ljava/lang/Object;

    .line 251
    .line 252
    aput-object p2, p3, v1

    .line 253
    .line 254
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbsk;->zza:Lcom/google/android/libraries/places/internal/zzbtl;

    .line 255
    .line 256
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbtl;->zzc()I

    .line 257
    .line 258
    .line 259
    move-result p2

    .line 260
    if-ne p2, v0, :cond_a

    .line 261
    .line 262
    sget-object p2, Lcom/google/android/libraries/places/internal/zzbsj;->zze:Lcom/google/android/libraries/places/internal/zzbtf;

    .line 263
    .line 264
    invoke-virtual {p2, p1, p3}, Lcom/google/android/libraries/places/internal/zzbtf;->zzb(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    :cond_a
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbsk;->zza:Lcom/google/android/libraries/places/internal/zzbtl;

    .line 268
    .line 269
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbtl;->zzc()I

    .line 270
    .line 271
    .line 272
    move-result p2

    .line 273
    const/4 v0, 0x3

    .line 274
    if-eq p2, v0, :cond_b

    .line 275
    .line 276
    sget-object p2, Lcom/google/android/libraries/places/internal/zzbsj;->zzg:Lcom/google/android/libraries/places/internal/zzbtf;

    .line 277
    .line 278
    invoke-virtual {p2, p1, p3}, Lcom/google/android/libraries/places/internal/zzbtf;->zzb(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    .line 283
    .line 284
    const-string p2, "We can not do TLS handshake on this Android version, please install the Google Play Services Dynamic Security Provider to use TLS"

    .line 285
    .line 286
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw p1

    .line 290
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 291
    .line 292
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 293
    .line 294
    .line 295
    throw p2

    .line 296
    :goto_7
    new-instance p2, Ljava/lang/RuntimeException;

    .line 297
    .line 298
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 299
    .line 300
    .line 301
    throw p2

    .line 302
    :goto_8
    new-instance p2, Ljava/lang/RuntimeException;

    .line 303
    .line 304
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 305
    .line 306
    .line 307
    throw p2
.end method
