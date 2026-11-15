.class final Lcom/google/android/libraries/places/internal/zzbsc;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/concurrent/CountDownLatch;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbri;

.field final synthetic zzc:Lcom/google/android/libraries/places/internal/zzbsf;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbsf;Ljava/util/concurrent/CountDownLatch;Lcom/google/android/libraries/places/internal/zzbri;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zza:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzb:Lcom/google/android/libraries/places/internal/zzbri;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

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
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zza:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 12
    .line 13
    .line 14
    :goto_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbsb;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbsb;-><init>(Lcom/google/android/libraries/places/internal/zzbsc;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwh;->zzb(Lcom/google/android/libraries/places/internal/zzbws;)Lcom/google/android/libraries/places/internal/zzbwd;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x1

    .line 25
    :try_start_1
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 26
    .line 27
    iget-object v4, v3, Lcom/google/android/libraries/places/internal/zzbsf;->zza:Lcom/google/android/libraries/places/internal/zzbaa;

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzE(Lcom/google/android/libraries/places/internal/zzbsf;)Ljavax/net/SocketFactory;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzz(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/net/InetSocketAddress;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 45
    .line 46
    invoke-static {v6}, Lcom/google/android/libraries/places/internal/zzbsf;->zzz(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/net/InetSocketAddress;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getPort()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    invoke-virtual {v4, v3, v6}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbaa;->zze()Ljava/net/SocketAddress;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    instance-of v6, v6, Ljava/net/InetSocketAddress;

    .line 64
    .line 65
    if-eqz v6, :cond_7

    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbaa;->zzd()Ljava/net/InetSocketAddress;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbaa;->zze()Ljava/net/SocketAddress;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 76
    .line 77
    iget-object v7, v7, Lcom/google/android/libraries/places/internal/zzbsf;->zza:Lcom/google/android/libraries/places/internal/zzbaa;

    .line 78
    .line 79
    invoke-virtual {v7}, Lcom/google/android/libraries/places/internal/zzbaa;->zzc()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    iget-object v8, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 84
    .line 85
    iget-object v8, v8, Lcom/google/android/libraries/places/internal/zzbsf;->zza:Lcom/google/android/libraries/places/internal/zzbaa;

    .line 86
    .line 87
    invoke-virtual {v8}, Lcom/google/android/libraries/places/internal/zzbaa;->zzb()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    check-cast v4, Ljava/net/InetSocketAddress;

    .line 92
    .line 93
    invoke-static {v3, v6, v4, v7, v8}, Lcom/google/android/libraries/places/internal/zzbsf;->zzA(Lcom/google/android/libraries/places/internal/zzbsf;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    :goto_1
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 98
    .line 99
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbsf;->zzF(Lcom/google/android/libraries/places/internal/zzbsf;)Ljavax/net/ssl/SSLSocketFactory;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    if-eqz v6, :cond_4

    .line 104
    .line 105
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbsf;->zzF(Lcom/google/android/libraries/places/internal/zzbsf;)Ljavax/net/ssl/SSLSocketFactory;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbsf;->zzy()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 114
    .line 115
    invoke-virtual {v7}, Lcom/google/android/libraries/places/internal/zzbsf;->zzi()I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    iget-object v8, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 120
    .line 121
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/zzbsf;->zzu(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbsz;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    const-string v9, "sslSocketFactory"

    .line 126
    .line 127
    invoke-static {v6, v9}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    const-string v9, "socket"

    .line 131
    .line 132
    invoke-static {v3, v9}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    const-string v9, "spec"

    .line 136
    .line 137
    invoke-static {v8, v9}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6, v3, v4, v7, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Ljavax/net/ssl/SSLSocket;

    .line 145
    .line 146
    invoke-virtual {v8, v3, v1}, Lcom/google/android/libraries/places/internal/zzbsz;->zza(Ljavax/net/ssl/SSLSocket;Z)V

    .line 147
    .line 148
    .line 149
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsk;->zzd()Lcom/google/android/libraries/places/internal/zzbsk;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-virtual {v8}, Lcom/google/android/libraries/places/internal/zzbsz;->zzb()Z

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    if-eqz v7, :cond_1

    .line 158
    .line 159
    sget-object v5, Lcom/google/android/libraries/places/internal/zzbsm;->zza:Ljava/util/List;

    .line 160
    .line 161
    :cond_1
    invoke-virtual {v6, v3, v4, v5}, Lcom/google/android/libraries/places/internal/zzbsk;->zzb(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    sget-object v6, Lcom/google/android/libraries/places/internal/zzbsm;->zza:Ljava/util/List;

    .line 166
    .line 167
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzbtm;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbtm;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    new-instance v8, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v9, "Only "

    .line 185
    .line 186
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v6, " are supported, but negotiated protocol is %s"

    .line 193
    .line 194
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    invoke-static {v7, v6, v5}, Lcom/google/android/libraries/places/internal/zzmt;->zzr(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    sget-object v5, Lcom/google/android/libraries/places/internal/zzbte;->zza:Lcom/google/android/libraries/places/internal/zzbte;

    .line 205
    .line 206
    const-string v6, "["

    .line 207
    .line 208
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    if-eqz v6, :cond_2

    .line 213
    .line 214
    const-string v6, "]"

    .line 215
    .line 216
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-eqz v6, :cond_2

    .line 221
    .line 222
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    add-int/lit8 v6, v6, -0x1

    .line 227
    .line 228
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    goto :goto_2

    .line 233
    :cond_2
    move-object v6, v4

    .line 234
    :goto_2
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    invoke-interface {v5, v6, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    if-eqz v5, :cond_3

    .line 243
    .line 244
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    goto :goto_3

    .line 249
    :cond_3
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 250
    .line 251
    const-string v5, "Cannot verify hostname: "

    .line 252
    .line 253
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw v3

    .line 261
    :cond_4
    :goto_3
    invoke-virtual {v3, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 262
    .line 263
    .line 264
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbwh;->zzd(Ljava/net/Socket;)Lcom/google/android/libraries/places/internal/zzbws;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbwh;->zzb(Lcom/google/android/libraries/places/internal/zzbws;)Lcom/google/android/libraries/places/internal/zzbwd;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzb:Lcom/google/android/libraries/places/internal/zzbri;

    .line 273
    .line 274
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbwh;->zzc(Ljava/net/Socket;)Lcom/google/android/libraries/places/internal/zzbwq;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    invoke-virtual {v4, v6, v3}, Lcom/google/android/libraries/places/internal/zzbri;->zzm(Lcom/google/android/libraries/places/internal/zzbwq;Ljava/net/Socket;)V

    .line 279
    .line 280
    .line 281
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 282
    .line 283
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbsf;->zzk(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzaye;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    invoke-virtual {v6}, Lcom/google/android/libraries/places/internal/zzaye;->zzb()Lcom/google/android/libraries/places/internal/zzayb;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    sget-object v7, Lcom/google/android/libraries/places/internal/zzazw;->zza:Lcom/google/android/libraries/places/internal/zzayc;

    .line 292
    .line 293
    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    invoke-virtual {v6, v7, v8}, Lcom/google/android/libraries/places/internal/zzayb;->zzb(Lcom/google/android/libraries/places/internal/zzayc;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzayb;

    .line 298
    .line 299
    .line 300
    sget-object v7, Lcom/google/android/libraries/places/internal/zzazw;->zzb:Lcom/google/android/libraries/places/internal/zzayc;

    .line 301
    .line 302
    invoke-virtual {v3}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    invoke-virtual {v6, v7, v8}, Lcom/google/android/libraries/places/internal/zzayb;->zzb(Lcom/google/android/libraries/places/internal/zzayc;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzayb;

    .line 307
    .line 308
    .line 309
    sget-object v7, Lcom/google/android/libraries/places/internal/zzazw;->zzc:Lcom/google/android/libraries/places/internal/zzayc;

    .line 310
    .line 311
    invoke-virtual {v6, v7, v5}, Lcom/google/android/libraries/places/internal/zzayb;->zzb(Lcom/google/android/libraries/places/internal/zzayc;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzayb;

    .line 312
    .line 313
    .line 314
    sget-object v7, Lcom/google/android/libraries/places/internal/zzbit;->zza:Lcom/google/android/libraries/places/internal/zzayc;

    .line 315
    .line 316
    if-nez v5, :cond_5

    .line 317
    .line 318
    sget-object v8, Lcom/google/android/libraries/places/internal/zzbdf;->zza:Lcom/google/android/libraries/places/internal/zzbdf;

    .line 319
    .line 320
    goto :goto_4

    .line 321
    :catchall_0
    move-exception v1

    .line 322
    goto/16 :goto_a

    .line 323
    .line 324
    :catch_1
    move-exception v1

    .line 325
    goto/16 :goto_7

    .line 326
    .line 327
    :catch_2
    move-exception v3

    .line 328
    goto/16 :goto_8

    .line 329
    .line 330
    :cond_5
    sget-object v8, Lcom/google/android/libraries/places/internal/zzbdf;->zzc:Lcom/google/android/libraries/places/internal/zzbdf;

    .line 331
    .line 332
    :goto_4
    invoke-virtual {v6, v7, v8}, Lcom/google/android/libraries/places/internal/zzayb;->zzb(Lcom/google/android/libraries/places/internal/zzayc;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzayb;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v6}, Lcom/google/android/libraries/places/internal/zzayb;->zzc()Lcom/google/android/libraries/places/internal/zzaye;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    invoke-static {v4, v6}, Lcom/google/android/libraries/places/internal/zzbsf;->zzG(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzaye;)V
    :try_end_1
    .catch Lcom/google/android/libraries/places/internal/zzbdp; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    .line 341
    .line 342
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 343
    .line 344
    new-instance v4, Lcom/google/android/libraries/places/internal/zzbse;

    .line 345
    .line 346
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzv(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbuf;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    invoke-interface {v6, v0, v2}, Lcom/google/android/libraries/places/internal/zzbuf;->zzc(Lcom/google/android/libraries/places/internal/zzbwd;Z)Lcom/google/android/libraries/places/internal/zzbtr;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-direct {v4, v1, v0}, Lcom/google/android/libraries/places/internal/zzbse;-><init>(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbtr;)V

    .line 355
    .line 356
    .line 357
    invoke-static {v1, v4}, Lcom/google/android/libraries/places/internal/zzbsf;->zzH(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbse;)V

    .line 358
    .line 359
    .line 360
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 361
    .line 362
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    monitor-enter v1

    .line 367
    :try_start_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 368
    .line 369
    const-string v2, "socket"

    .line 370
    .line 371
    invoke-static {v3, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    invoke-static {v0, v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzM(Lcom/google/android/libraries/places/internal/zzbsf;Ljava/net/Socket;)V

    .line 375
    .line 376
    .line 377
    if-eqz v5, :cond_6

    .line 378
    .line 379
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 380
    .line 381
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbaf;

    .line 382
    .line 383
    new-instance v3, Lcom/google/android/libraries/places/internal/zzbag;

    .line 384
    .line 385
    invoke-direct {v3, v5}, Lcom/google/android/libraries/places/internal/zzbag;-><init>(Ljavax/net/ssl/SSLSession;)V

    .line 386
    .line 387
    .line 388
    invoke-direct {v2, v3}, Lcom/google/android/libraries/places/internal/zzbaf;-><init>(Lcom/google/android/libraries/places/internal/zzbag;)V

    .line 389
    .line 390
    .line 391
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzL(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbaf;)V

    .line 392
    .line 393
    .line 394
    goto :goto_5

    .line 395
    :catchall_1
    move-exception v0

    .line 396
    goto :goto_6

    .line 397
    :cond_6
    :goto_5
    monitor-exit v1

    .line 398
    return-void

    .line 399
    :goto_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 400
    throw v0

    .line 401
    :cond_7
    :try_start_3
    sget-object v3, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 402
    .line 403
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 404
    .line 405
    iget-object v4, v4, Lcom/google/android/libraries/places/internal/zzbsf;->zza:Lcom/google/android/libraries/places/internal/zzbaa;

    .line 406
    .line 407
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbaa;->zze()Ljava/net/SocketAddress;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v4

    .line 419
    new-instance v6, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .line 423
    .line 424
    const-string v7, "Unsupported SocketAddress implementation "

    .line 425
    .line 426
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    new-instance v4, Lcom/google/android/libraries/places/internal/zzbdp;

    .line 441
    .line 442
    invoke-direct {v4, v3, v5}, Lcom/google/android/libraries/places/internal/zzbdp;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 443
    .line 444
    .line 445
    throw v4
    :try_end_3
    .catch Lcom/google/android/libraries/places/internal/zzbdp; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 446
    :goto_7
    :try_start_4
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 447
    .line 448
    invoke-virtual {v3, v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzb(Ljava/lang/Throwable;)V

    .line 449
    .line 450
    .line 451
    goto :goto_9

    .line 452
    :goto_8
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 453
    .line 454
    sget-object v5, Lcom/google/android/libraries/places/internal/zzbtp;->zzg:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 455
    .line 456
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbdp;->zza()Lcom/google/android/libraries/places/internal/zzbdo;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    invoke-static {v4, v1, v5, v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzO(Lcom/google/android/libraries/places/internal/zzbsf;ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbdo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 461
    .line 462
    .line 463
    :goto_9
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 464
    .line 465
    new-instance v3, Lcom/google/android/libraries/places/internal/zzbse;

    .line 466
    .line 467
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzv(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbuf;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    invoke-interface {v4, v0, v2}, Lcom/google/android/libraries/places/internal/zzbuf;->zzc(Lcom/google/android/libraries/places/internal/zzbwd;Z)Lcom/google/android/libraries/places/internal/zzbtr;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    invoke-direct {v3, v1, v0}, Lcom/google/android/libraries/places/internal/zzbse;-><init>(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbtr;)V

    .line 476
    .line 477
    .line 478
    invoke-static {v1, v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzH(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbse;)V

    .line 479
    .line 480
    .line 481
    return-void

    .line 482
    :goto_a
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbsc;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 483
    .line 484
    new-instance v4, Lcom/google/android/libraries/places/internal/zzbse;

    .line 485
    .line 486
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzv(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbuf;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    invoke-interface {v5, v0, v2}, Lcom/google/android/libraries/places/internal/zzbuf;->zzc(Lcom/google/android/libraries/places/internal/zzbwd;Z)Lcom/google/android/libraries/places/internal/zzbtr;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-direct {v4, v3, v0}, Lcom/google/android/libraries/places/internal/zzbse;-><init>(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbtr;)V

    .line 495
    .line 496
    .line 497
    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/zzbsf;->zzH(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbse;)V

    .line 498
    .line 499
    .line 500
    throw v1
.end method
