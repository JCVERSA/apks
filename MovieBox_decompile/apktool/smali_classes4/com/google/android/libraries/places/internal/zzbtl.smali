.class public Lcom/google/android/libraries/places/internal/zzbtl;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final zza:Ljava/util/logging/Logger;

.field private static final zzb:[Ljava/lang/String;

.field private static final zzc:Lcom/google/android/libraries/places/internal/zzbtl;


# instance fields
.field private final zzd:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/google/android/libraries/places/internal/zzbtl;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbtl;->zza:Ljava/util/logging/Logger;

    .line 12
    .line 13
    const-string v0, "org.apache.harmony.xnet.provider.jsse.OpenSSLProvider"

    .line 14
    .line 15
    const-string v1, "com.google.android.libraries.stitch.sslguard.SslGuardProvider"

    .line 16
    .line 17
    const-string v2, "com.google.android.gms.org.conscrypt.OpenSSLProvider"

    .line 18
    .line 19
    const-string v3, "org.conscrypt.OpenSSLProvider"

    .line 20
    .line 21
    const-string v4, "com.android.org.conscrypt.OpenSSLProvider"

    .line 22
    .line 23
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbtl;->zzb:[Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbtl;->zzh()Lcom/google/android/libraries/places/internal/zzbtl;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbtl;->zzc:Lcom/google/android/libraries/places/internal/zzbtl;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbtl;->zzd:Ljava/security/Provider;

    .line 5
    .line 6
    return-void
.end method

.method public static zze()Lcom/google/android/libraries/places/internal/zzbtl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtl;->zzc:Lcom/google/android/libraries/places/internal/zzbtl;

    .line 2
    .line 3
    return-object v0
.end method

.method public static zzg(Ljava/util/List;)[B
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwb;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/google/android/libraries/places/internal/zzbtm;

    .line 18
    .line 19
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbtm;->zza:Lcom/google/android/libraries/places/internal/zzbtm;

    .line 20
    .line 21
    if-eq v3, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbtm;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/internal/zzbwb;->zzm(I)Lcom/google/android/libraries/places/internal/zzbwb;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbtm;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v0, v3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzs(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwb;

    .line 39
    .line 40
    .line 41
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbwb;->zzg()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzH(J)[B

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method private static zzh()Lcom/google/android/libraries/places/internal/zzbtl;
    .locals 22

    .line 1
    const-string v0, "org.eclipse.jetty.alpn.ALPN"

    .line 2
    .line 3
    const-string v1, "getApplicationProtocol"

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    const-class v4, Lcom/google/android/libraries/places/internal/zzbtl;

    .line 7
    .line 8
    const-class v5, Ljava/net/Socket;

    .line 9
    .line 10
    const-class v6, Ljavax/net/ssl/SSLSocket;

    .line 11
    .line 12
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    .line 13
    .line 14
    .line 15
    move-result-object v7

    .line 16
    array-length v8, v7

    .line 17
    const/4 v9, 0x0

    .line 18
    move v10, v9

    .line 19
    :goto_0
    const/4 v11, 0x0

    .line 20
    if-ge v10, v8, :cond_2

    .line 21
    .line 22
    aget-object v12, v7, v10

    .line 23
    .line 24
    sget-object v13, Lcom/google/android/libraries/places/internal/zzbtl;->zzb:[Ljava/lang/String;

    .line 25
    .line 26
    array-length v14, v13

    .line 27
    move v14, v9

    .line 28
    :goto_1
    const/4 v15, 0x5

    .line 29
    if-ge v14, v15, :cond_1

    .line 30
    .line 31
    aget-object v15, v13, v14

    .line 32
    .line 33
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v16

    .line 37
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    sget-object v16, Lcom/google/android/libraries/places/internal/zzbtl;->zza:Ljava/util/logging/Logger;

    .line 48
    .line 49
    sget-object v17, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 50
    .line 51
    const-string v19, "getAndroidSecurityProvider"

    .line 52
    .line 53
    const-string v20, "Found registered provider {0}"

    .line 54
    .line 55
    const-string v18, "io.grpc.okhttp.internal.Platform"

    .line 56
    .line 57
    move-object/from16 v21, v15

    .line 58
    .line 59
    invoke-virtual/range {v16 .. v21}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    move-object/from16 v20, v12

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_0
    add-int/2addr v14, v3

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    add-int/2addr v10, v3

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbtl;->zza:Ljava/util/logging/Logger;

    .line 70
    .line 71
    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 72
    .line 73
    const-string v8, "getAndroidSecurityProvider"

    .line 74
    .line 75
    const-string v10, "Unable to find Conscrypt"

    .line 76
    .line 77
    const-string v12, "io.grpc.okhttp.internal.Platform"

    .line 78
    .line 79
    invoke-virtual {v2, v7, v12, v8, v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    move-object/from16 v20, v11

    .line 83
    .line 84
    :goto_2
    if-eqz v20, :cond_5

    .line 85
    .line 86
    new-instance v14, Lcom/google/android/libraries/places/internal/zzbtf;

    .line 87
    .line 88
    new-array v0, v3, [Ljava/lang/Class;

    .line 89
    .line 90
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 91
    .line 92
    aput-object v1, v0, v9

    .line 93
    .line 94
    const-string v1, "setUseSessionTickets"

    .line 95
    .line 96
    invoke-direct {v14, v11, v1, v0}, Lcom/google/android/libraries/places/internal/zzbtf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 97
    .line 98
    .line 99
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtf;

    .line 100
    .line 101
    new-array v0, v3, [Ljava/lang/Class;

    .line 102
    .line 103
    const-class v1, Ljava/lang/String;

    .line 104
    .line 105
    aput-object v1, v0, v9

    .line 106
    .line 107
    const-string v1, "setHostname"

    .line 108
    .line 109
    invoke-direct {v15, v11, v1, v0}, Lcom/google/android/libraries/places/internal/zzbtf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 110
    .line 111
    .line 112
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbtf;

    .line 113
    .line 114
    new-array v0, v9, [Ljava/lang/Class;

    .line 115
    .line 116
    const-string v2, "getAlpnSelectedProtocol"

    .line 117
    .line 118
    const-class v6, [B

    .line 119
    .line 120
    invoke-direct {v1, v6, v2, v0}, Lcom/google/android/libraries/places/internal/zzbtf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 121
    .line 122
    .line 123
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbtf;

    .line 124
    .line 125
    new-array v0, v3, [Ljava/lang/Class;

    .line 126
    .line 127
    aput-object v6, v0, v9

    .line 128
    .line 129
    const-string v6, "setAlpnProtocols"

    .line 130
    .line 131
    invoke-direct {v2, v11, v6, v0}, Lcom/google/android/libraries/places/internal/zzbtf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 132
    .line 133
    .line 134
    :try_start_0
    const-string v0, "android.net.TrafficStats"

    .line 135
    .line 136
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    const-string v6, "tagSocket"

    .line 141
    .line 142
    new-array v7, v3, [Ljava/lang/Class;

    .line 143
    .line 144
    aput-object v5, v7, v9

    .line 145
    .line 146
    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 147
    .line 148
    .line 149
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    :try_start_1
    const-string v7, "untagSocket"

    .line 151
    .line 152
    new-array v8, v3, [Ljava/lang/Class;

    .line 153
    .line 154
    aput-object v5, v8, v9

    .line 155
    .line 156
    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 157
    .line 158
    .line 159
    move-result-object v11
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 160
    :catch_0
    :goto_3
    move-object/from16 v16, v6

    .line 161
    .line 162
    move-object/from16 v17, v11

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :catch_1
    move-object v6, v11

    .line 166
    goto :goto_3

    .line 167
    :goto_4
    invoke-virtual/range {v20 .. v20}, Ljava/security/Provider;->getName()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const-string v5, "GmsCore_OpenSSL"

    .line 172
    .line 173
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_3

    .line 178
    .line 179
    invoke-virtual/range {v20 .. v20}, Ljava/security/Provider;->getName()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const-string v5, "Conscrypt"

    .line 184
    .line 185
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_3

    .line 190
    .line 191
    invoke-virtual/range {v20 .. v20}, Ljava/security/Provider;->getName()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const-string v5, "Ssl_Guard"

    .line 196
    .line 197
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_4

    .line 202
    .line 203
    :cond_3
    :goto_5
    move/from16 v21, v3

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_4
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    const-string v5, "android.net.Network"

    .line 211
    .line 212
    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :catch_2
    move-exception v0

    .line 217
    move-object v11, v0

    .line 218
    sget-object v6, Lcom/google/android/libraries/places/internal/zzbtl;->zza:Ljava/util/logging/Logger;

    .line 219
    .line 220
    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 221
    .line 222
    const-string v9, "isAtLeastAndroid5"

    .line 223
    .line 224
    const-string v10, "Can\'t find class"

    .line 225
    .line 226
    const-string v8, "io.grpc.okhttp.internal.Platform"

    .line 227
    .line 228
    invoke-virtual/range {v6 .. v11}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    .line 230
    .line 231
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    const-string v3, "android.app.ActivityOptions"

    .line 236
    .line 237
    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 238
    .line 239
    .line 240
    const/16 v21, 0x2

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :catch_3
    move-exception v0

    .line 244
    move-object v9, v0

    .line 245
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbtl;->zza:Ljava/util/logging/Logger;

    .line 246
    .line 247
    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 248
    .line 249
    const-string v7, "isAtLeastAndroid41"

    .line 250
    .line 251
    const-string v8, "Can\'t find class"

    .line 252
    .line 253
    const-string v6, "io.grpc.okhttp.internal.Platform"

    .line 254
    .line 255
    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    .line 257
    .line 258
    const/4 v0, 0x3

    .line 259
    move/from16 v21, v0

    .line 260
    .line 261
    :goto_6
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbtg;

    .line 262
    .line 263
    move-object v13, v0

    .line 264
    move-object/from16 v18, v1

    .line 265
    .line 266
    move-object/from16 v19, v2

    .line 267
    .line 268
    invoke-direct/range {v13 .. v21}, Lcom/google/android/libraries/places/internal/zzbtg;-><init>(Lcom/google/android/libraries/places/internal/zzbtf;Lcom/google/android/libraries/places/internal/zzbtf;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/google/android/libraries/places/internal/zzbtf;Lcom/google/android/libraries/places/internal/zzbtf;Ljava/security/Provider;I)V

    .line 269
    .line 270
    .line 271
    return-object v0

    .line 272
    :cond_5
    :try_start_4
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    .line 277
    .line 278
    .line 279
    move-result-object v2
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_6

    .line 280
    :try_start_5
    const-string v4, "TLS"

    .line 281
    .line 282
    invoke-static {v4, v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    invoke-virtual {v4, v11, v11, v11}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    const-class v5, Ljavax/net/ssl/SSLEngine;

    .line 294
    .line 295
    invoke-virtual {v5, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    invoke-virtual {v5, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    const-class v4, Ljavax/net/ssl/SSLParameters;

    .line 303
    .line 304
    const-string v5, "setApplicationProtocols"

    .line 305
    .line 306
    new-array v7, v3, [Ljava/lang/Class;

    .line 307
    .line 308
    const-class v8, [Ljava/lang/String;

    .line 309
    .line 310
    aput-object v8, v7, v9

    .line 311
    .line 312
    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    invoke-virtual {v6, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    new-instance v5, Lcom/google/android/libraries/places/internal/zzbti;

    .line 321
    .line 322
    invoke-direct {v5, v2, v4, v1, v11}, Lcom/google/android/libraries/places/internal/zzbti;-><init>(Ljava/security/Provider;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/google/android/libraries/places/internal/zzbth;)V
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/KeyManagementException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_4

    .line 323
    .line 324
    .line 325
    return-object v5

    .line 326
    :catch_4
    :try_start_6
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v5, "$Provider"

    .line 339
    .line 340
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v7, "$ClientProvider"

    .line 360
    .line 361
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    move-result-object v16

    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    const-string v0, "$ServerProvider"

    .line 381
    .line 382
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    move-result-object v17

    .line 393
    const-string v0, "put"

    .line 394
    .line 395
    const/4 v5, 0x2

    .line 396
    new-array v5, v5, [Ljava/lang/Class;

    .line 397
    .line 398
    aput-object v6, v5, v9

    .line 399
    .line 400
    aput-object v4, v5, v3

    .line 401
    .line 402
    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 403
    .line 404
    .line 405
    move-result-object v13

    .line 406
    const-string v0, "get"

    .line 407
    .line 408
    new-array v4, v3, [Ljava/lang/Class;

    .line 409
    .line 410
    aput-object v6, v4, v9

    .line 411
    .line 412
    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 413
    .line 414
    .line 415
    move-result-object v14

    .line 416
    const-string v0, "remove"

    .line 417
    .line 418
    new-array v3, v3, [Ljava/lang/Class;

    .line 419
    .line 420
    aput-object v6, v3, v9

    .line 421
    .line 422
    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 423
    .line 424
    .line 425
    move-result-object v15

    .line 426
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbtj;

    .line 427
    .line 428
    move-object v12, v0

    .line 429
    move-object/from16 v18, v2

    .line 430
    .line 431
    invoke-direct/range {v12 .. v18}, Lcom/google/android/libraries/places/internal/zzbtj;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;Ljava/security/Provider;)V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_5

    .line 432
    .line 433
    .line 434
    return-object v0

    .line 435
    :catch_5
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbtl;

    .line 436
    .line 437
    invoke-direct {v0, v2}, Lcom/google/android/libraries/places/internal/zzbtl;-><init>(Ljava/security/Provider;)V

    .line 438
    .line 439
    .line 440
    return-object v0

    .line 441
    :catch_6
    move-exception v0

    .line 442
    new-instance v1, Ljava/lang/RuntimeException;

    .line 443
    .line 444
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 445
    .line 446
    .line 447
    throw v1
.end method


# virtual methods
.method public zza(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public zzb(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public zzc()I
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    return v0
.end method

.method public zzd(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzf()Ljava/security/Provider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbtl;->zzd:Ljava/security/Provider;

    .line 2
    .line 3
    return-object v0
.end method
