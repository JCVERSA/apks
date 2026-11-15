.class final Lcom/google/android/libraries/places/internal/zzbpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbft;


# instance fields
.field final zza:Lcom/google/android/libraries/places/internal/zzbpm;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbpo;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbpm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbpl;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 7
    .line 8
    return-void
.end method

.method private static final zza(Lcom/google/android/libraries/places/internal/zzbcf;)Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbpo;->zzi:Lcom/google/android/libraries/places/internal/zzbca;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzbcf;->zzb(Lcom/google/android/libraries/places/internal/zzbca;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const/4 p0, -0x1

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 10
    .line 11
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzH(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    monitor-enter v4

    .line 16
    :try_start_0
    iget-object v5, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 17
    .line 18
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzbpo;->zzD(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpd;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    iget-object v7, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 23
    .line 24
    const/4 v8, 0x1

    .line 25
    iput-boolean v8, v7, Lcom/google/android/libraries/places/internal/zzbpm;->zzb:Z

    .line 26
    .line 27
    iget-object v9, v6, Lcom/google/android/libraries/places/internal/zzbpd;->zzc:Ljava/util/Collection;

    .line 28
    .line 29
    invoke-interface {v9, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    if-eqz v9, :cond_0

    .line 34
    .line 35
    new-instance v9, Ljava/util/ArrayList;

    .line 36
    .line 37
    iget-object v10, v6, Lcom/google/android/libraries/places/internal/zzbpd;->zzc:Ljava/util/Collection;

    .line 38
    .line 39
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v9, v7}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 46
    .line 47
    .line 48
    move-result-object v13

    .line 49
    new-instance v7, Lcom/google/android/libraries/places/internal/zzbpd;

    .line 50
    .line 51
    iget-object v12, v6, Lcom/google/android/libraries/places/internal/zzbpd;->zzb:Ljava/util/List;

    .line 52
    .line 53
    iget-object v14, v6, Lcom/google/android/libraries/places/internal/zzbpd;->zzd:Ljava/util/Collection;

    .line 54
    .line 55
    iget-object v15, v6, Lcom/google/android/libraries/places/internal/zzbpd;->zzf:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 56
    .line 57
    iget-boolean v9, v6, Lcom/google/android/libraries/places/internal/zzbpd;->zzg:Z

    .line 58
    .line 59
    iget-boolean v10, v6, Lcom/google/android/libraries/places/internal/zzbpd;->zza:Z

    .line 60
    .line 61
    iget-boolean v11, v6, Lcom/google/android/libraries/places/internal/zzbpd;->zzh:Z

    .line 62
    .line 63
    iget v6, v6, Lcom/google/android/libraries/places/internal/zzbpd;->zze:I

    .line 64
    .line 65
    move/from16 v18, v11

    .line 66
    .line 67
    move-object v11, v7

    .line 68
    move/from16 v16, v9

    .line 69
    .line 70
    move/from16 v17, v10

    .line 71
    .line 72
    move/from16 v19, v6

    .line 73
    .line 74
    invoke-direct/range {v11 .. v19}, Lcom/google/android/libraries/places/internal/zzbpd;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lcom/google/android/libraries/places/internal/zzbpm;ZZZI)V

    .line 75
    .line 76
    .line 77
    move-object v6, v7

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    goto/16 :goto_d

    .line 81
    .line 82
    :cond_0
    :goto_0
    invoke-static {v5, v6}, Lcom/google/android/libraries/places/internal/zzbpo;->zzV(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbpd;)V

    .line 83
    .line 84
    .line 85
    iget-object v5, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 86
    .line 87
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzbpo;->zzA(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbjj;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zza()Lcom/google/android/libraries/places/internal/zzbdj;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v5, v6}, Lcom/google/android/libraries/places/internal/zzbjj;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbjj;

    .line 96
    .line 97
    .line 98
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 100
    .line 101
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzO(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    const/high16 v5, -0x80000000

    .line 110
    .line 111
    if-ne v4, v5, :cond_1

    .line 112
    .line 113
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzL(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/util/concurrent/Executor;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbph;

    .line 120
    .line 121
    invoke-direct {v2, v1}, Lcom/google/android/libraries/places/internal/zzbph;-><init>(Lcom/google/android/libraries/places/internal/zzbpl;)V

    .line 122
    .line 123
    .line 124
    check-cast v0, Lcom/google/android/libraries/places/internal/zzbdw;

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_1
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 134
    .line 135
    iget-boolean v5, v4, Lcom/google/android/libraries/places/internal/zzbpm;->zzc:Z

    .line 136
    .line 137
    if-eqz v5, :cond_2

    .line 138
    .line 139
    iget-object v5, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 140
    .line 141
    invoke-static {v5, v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzW(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbpm;)V

    .line 142
    .line 143
    .line 144
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 145
    .line 146
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzD(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpd;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    iget-object v4, v4, Lcom/google/android/libraries/places/internal/zzbpd;->zzf:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 151
    .line 152
    iget-object v5, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 153
    .line 154
    if-ne v4, v5, :cond_16

    .line 155
    .line 156
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 157
    .line 158
    invoke-static {v4, v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzbpo;->zzaa(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_2
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbfs;->zzd:Lcom/google/android/libraries/places/internal/zzbfs;

    .line 163
    .line 164
    if-ne v2, v4, :cond_3

    .line 165
    .line 166
    iget-object v5, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 167
    .line 168
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzbpo;->zzP(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    const/16 v6, 0x3e8

    .line 177
    .line 178
    if-le v5, v6, :cond_3

    .line 179
    .line 180
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 181
    .line 182
    iget-object v5, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 183
    .line 184
    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/zzbpo;->zzW(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbpm;)V

    .line 185
    .line 186
    .line 187
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 188
    .line 189
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzD(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpd;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    iget-object v4, v4, Lcom/google/android/libraries/places/internal/zzbpd;->zzf:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 194
    .line 195
    iget-object v5, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 196
    .line 197
    if-ne v4, v5, :cond_16

    .line 198
    .line 199
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 200
    .line 201
    const-string v5, "Too many transparent retries. Might be a bug in gRPC"

    .line 202
    .line 203
    invoke-virtual {v4, v5}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    new-instance v5, Lcom/google/android/libraries/places/internal/zzbdq;

    .line 208
    .line 209
    const/4 v6, 0x0

    .line 210
    invoke-direct {v5, v0, v6}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4, v5}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 218
    .line 219
    invoke-static {v4, v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzbpo;->zzaa(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_3
    iget-object v5, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 224
    .line 225
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzbpo;->zzD(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpd;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    iget-object v5, v5, Lcom/google/android/libraries/places/internal/zzbpd;->zzf:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 230
    .line 231
    if-nez v5, :cond_15

    .line 232
    .line 233
    if-eq v2, v4, :cond_13

    .line 234
    .line 235
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbfs;->zzb:Lcom/google/android/libraries/places/internal/zzbfs;

    .line 236
    .line 237
    const/4 v5, 0x0

    .line 238
    if-ne v2, v4, :cond_4

    .line 239
    .line 240
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 241
    .line 242
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzN(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-virtual {v4, v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    if-eqz v4, :cond_4

    .line 251
    .line 252
    goto/16 :goto_a

    .line 253
    .line 254
    :cond_4
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbfs;->zzc:Lcom/google/android/libraries/places/internal/zzbfs;

    .line 255
    .line 256
    if-ne v2, v4, :cond_5

    .line 257
    .line 258
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 259
    .line 260
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzad(Lcom/google/android/libraries/places/internal/zzbpo;)Z

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    if-eqz v5, :cond_15

    .line 265
    .line 266
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzY(Lcom/google/android/libraries/places/internal/zzbpo;)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_c

    .line 270
    .line 271
    :cond_5
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 272
    .line 273
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzN(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 278
    .line 279
    .line 280
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 281
    .line 282
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzad(Lcom/google/android/libraries/places/internal/zzbpo;)Z

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    if-eqz v6, :cond_d

    .line 287
    .line 288
    invoke-static/range {p3 .. p3}, Lcom/google/android/libraries/places/internal/zzbpl;->zza(Lcom/google/android/libraries/places/internal/zzbcf;)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    iget-object v6, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 293
    .line 294
    invoke-static {v6}, Lcom/google/android/libraries/places/internal/zzbpo;->zzz(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbje;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    iget-object v6, v6, Lcom/google/android/libraries/places/internal/zzbje;->zzc:Ljava/util/Set;

    .line 299
    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zza()Lcom/google/android/libraries/places/internal/zzbdj;

    .line 301
    .line 302
    .line 303
    move-result-object v7

    .line 304
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v6

    .line 308
    iget-object v7, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 309
    .line 310
    invoke-static {v7}, Lcom/google/android/libraries/places/internal/zzbpo;->zzF(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpn;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    if-eqz v7, :cond_6

    .line 315
    .line 316
    if-nez v6, :cond_7

    .line 317
    .line 318
    if-eqz v4, :cond_6

    .line 319
    .line 320
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 321
    .line 322
    .line 323
    move-result v7

    .line 324
    if-gez v7, :cond_6

    .line 325
    .line 326
    goto :goto_1

    .line 327
    :cond_6
    move v7, v5

    .line 328
    goto :goto_2

    .line 329
    :cond_7
    :goto_1
    iget-object v7, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 330
    .line 331
    invoke-static {v7}, Lcom/google/android/libraries/places/internal/zzbpo;->zzF(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpn;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    invoke-virtual {v7}, Lcom/google/android/libraries/places/internal/zzbpn;->zzb()Z

    .line 336
    .line 337
    .line 338
    move-result v7

    .line 339
    xor-int/2addr v7, v8

    .line 340
    :goto_2
    if-eqz v6, :cond_8

    .line 341
    .line 342
    if-nez v7, :cond_8

    .line 343
    .line 344
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    .line 345
    .line 346
    .line 347
    move-result v9

    .line 348
    if-nez v9, :cond_8

    .line 349
    .line 350
    if-eqz v4, :cond_8

    .line 351
    .line 352
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 353
    .line 354
    .line 355
    move-result v9

    .line 356
    if-lez v9, :cond_8

    .line 357
    .line 358
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    :cond_8
    if-eqz v6, :cond_9

    .line 363
    .line 364
    if-nez v7, :cond_9

    .line 365
    .line 366
    goto :goto_3

    .line 367
    :cond_9
    move v8, v5

    .line 368
    :goto_3
    if-eqz v8, :cond_a

    .line 369
    .line 370
    iget-object v5, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 371
    .line 372
    invoke-static {v5, v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzZ(Lcom/google/android/libraries/places/internal/zzbpo;Ljava/lang/Integer;)V

    .line 373
    .line 374
    .line 375
    :cond_a
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 376
    .line 377
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzH(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    monitor-enter v6

    .line 382
    :try_start_1
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 383
    .line 384
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzD(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpd;

    .line 385
    .line 386
    .line 387
    move-result-object v5

    .line 388
    iget-object v7, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 389
    .line 390
    new-instance v9, Ljava/util/ArrayList;

    .line 391
    .line 392
    iget-object v10, v5, Lcom/google/android/libraries/places/internal/zzbpd;->zzd:Ljava/util/Collection;

    .line 393
    .line 394
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 395
    .line 396
    .line 397
    invoke-interface {v9, v7}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 401
    .line 402
    .line 403
    move-result-object v14

    .line 404
    new-instance v7, Lcom/google/android/libraries/places/internal/zzbpd;

    .line 405
    .line 406
    iget-object v12, v5, Lcom/google/android/libraries/places/internal/zzbpd;->zzb:Ljava/util/List;

    .line 407
    .line 408
    iget-object v13, v5, Lcom/google/android/libraries/places/internal/zzbpd;->zzc:Ljava/util/Collection;

    .line 409
    .line 410
    iget-object v15, v5, Lcom/google/android/libraries/places/internal/zzbpd;->zzf:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 411
    .line 412
    iget-boolean v9, v5, Lcom/google/android/libraries/places/internal/zzbpd;->zzg:Z

    .line 413
    .line 414
    iget-boolean v10, v5, Lcom/google/android/libraries/places/internal/zzbpd;->zza:Z

    .line 415
    .line 416
    iget-boolean v11, v5, Lcom/google/android/libraries/places/internal/zzbpd;->zzh:Z

    .line 417
    .line 418
    iget v5, v5, Lcom/google/android/libraries/places/internal/zzbpd;->zze:I

    .line 419
    .line 420
    move/from16 v18, v11

    .line 421
    .line 422
    move-object v11, v7

    .line 423
    move/from16 v16, v9

    .line 424
    .line 425
    move/from16 v17, v10

    .line 426
    .line 427
    move/from16 v19, v5

    .line 428
    .line 429
    invoke-direct/range {v11 .. v19}, Lcom/google/android/libraries/places/internal/zzbpd;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lcom/google/android/libraries/places/internal/zzbpm;ZZZI)V

    .line 430
    .line 431
    .line 432
    invoke-static {v4, v7}, Lcom/google/android/libraries/places/internal/zzbpo;->zzV(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbpd;)V

    .line 433
    .line 434
    .line 435
    if-eqz v8, :cond_c

    .line 436
    .line 437
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 438
    .line 439
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzD(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpd;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/zzbpo;->zzae(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbpd;)Z

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    if-nez v4, :cond_b

    .line 448
    .line 449
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 450
    .line 451
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzD(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpd;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    iget-object v4, v4, Lcom/google/android/libraries/places/internal/zzbpd;->zzd:Ljava/util/Collection;

    .line 456
    .line 457
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    if-nez v4, :cond_c

    .line 462
    .line 463
    goto :goto_4

    .line 464
    :catchall_1
    move-exception v0

    .line 465
    goto :goto_5

    .line 466
    :cond_b
    :goto_4
    monitor-exit v6

    .line 467
    return-void

    .line 468
    :cond_c
    monitor-exit v6

    .line 469
    goto/16 :goto_c

    .line 470
    .line 471
    :goto_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 472
    throw v0

    .line 473
    :cond_d
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzG(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpp;

    .line 474
    .line 475
    .line 476
    move-result-object v6

    .line 477
    const-wide/16 v9, 0x0

    .line 478
    .line 479
    if-nez v6, :cond_f

    .line 480
    .line 481
    :cond_e
    move v4, v5

    .line 482
    goto/16 :goto_9

    .line 483
    .line 484
    :cond_f
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzG(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpp;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    iget-object v4, v4, Lcom/google/android/libraries/places/internal/zzbpp;->zzf:Ljava/util/Set;

    .line 489
    .line 490
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zza()Lcom/google/android/libraries/places/internal/zzbdj;

    .line 491
    .line 492
    .line 493
    move-result-object v6

    .line 494
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v4

    .line 498
    invoke-static/range {p3 .. p3}, Lcom/google/android/libraries/places/internal/zzbpl;->zza(Lcom/google/android/libraries/places/internal/zzbcf;)Ljava/lang/Integer;

    .line 499
    .line 500
    .line 501
    move-result-object v6

    .line 502
    iget-object v7, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 503
    .line 504
    invoke-static {v7}, Lcom/google/android/libraries/places/internal/zzbpo;->zzF(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpn;

    .line 505
    .line 506
    .line 507
    move-result-object v7

    .line 508
    if-eqz v7, :cond_10

    .line 509
    .line 510
    if-nez v4, :cond_11

    .line 511
    .line 512
    if-eqz v6, :cond_10

    .line 513
    .line 514
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 515
    .line 516
    .line 517
    move-result v7

    .line 518
    if-gez v7, :cond_10

    .line 519
    .line 520
    goto :goto_6

    .line 521
    :cond_10
    move v7, v5

    .line 522
    goto :goto_7

    .line 523
    :cond_11
    :goto_6
    iget-object v7, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 524
    .line 525
    invoke-static {v7}, Lcom/google/android/libraries/places/internal/zzbpo;->zzF(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpn;

    .line 526
    .line 527
    .line 528
    move-result-object v7

    .line 529
    invoke-virtual {v7}, Lcom/google/android/libraries/places/internal/zzbpn;->zzb()Z

    .line 530
    .line 531
    .line 532
    move-result v7

    .line 533
    xor-int/2addr v7, v8

    .line 534
    :goto_7
    iget-object v11, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 535
    .line 536
    invoke-static {v11}, Lcom/google/android/libraries/places/internal/zzbpo;->zzG(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpp;

    .line 537
    .line 538
    .line 539
    move-result-object v12

    .line 540
    iget v12, v12, Lcom/google/android/libraries/places/internal/zzbpp;->zza:I

    .line 541
    .line 542
    iget-object v13, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 543
    .line 544
    iget v13, v13, Lcom/google/android/libraries/places/internal/zzbpm;->zzd:I

    .line 545
    .line 546
    add-int/2addr v13, v8

    .line 547
    if-le v12, v13, :cond_e

    .line 548
    .line 549
    if-nez v7, :cond_e

    .line 550
    .line 551
    if-nez v6, :cond_12

    .line 552
    .line 553
    if-eqz v4, :cond_e

    .line 554
    .line 555
    invoke-static {v11}, Lcom/google/android/libraries/places/internal/zzbpo;->zze(Lcom/google/android/libraries/places/internal/zzbpo;)J

    .line 556
    .line 557
    .line 558
    move-result-wide v6

    .line 559
    long-to-double v6, v6

    .line 560
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbpo;->zzJ()Ljava/util/Random;

    .line 561
    .line 562
    .line 563
    move-result-object v4

    .line 564
    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    .line 565
    .line 566
    .line 567
    move-result-wide v9

    .line 568
    mul-double/2addr v6, v9

    .line 569
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 570
    .line 571
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zze(Lcom/google/android/libraries/places/internal/zzbpo;)J

    .line 572
    .line 573
    .line 574
    move-result-wide v9

    .line 575
    long-to-double v9, v9

    .line 576
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzG(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpp;

    .line 577
    .line 578
    .line 579
    move-result-object v11

    .line 580
    iget-wide v11, v11, Lcom/google/android/libraries/places/internal/zzbpp;->zzd:D

    .line 581
    .line 582
    mul-double/2addr v9, v11

    .line 583
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzG(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpp;

    .line 584
    .line 585
    .line 586
    move-result-object v11

    .line 587
    iget-wide v11, v11, Lcom/google/android/libraries/places/internal/zzbpp;->zzc:J

    .line 588
    .line 589
    double-to-long v9, v9

    .line 590
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 591
    .line 592
    .line 593
    move-result-wide v9

    .line 594
    invoke-static {v4, v9, v10}, Lcom/google/android/libraries/places/internal/zzbpo;->zzR(Lcom/google/android/libraries/places/internal/zzbpo;J)V

    .line 595
    .line 596
    .line 597
    double-to-long v9, v6

    .line 598
    :goto_8
    move v4, v8

    .line 599
    goto :goto_9

    .line 600
    :cond_12
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 601
    .line 602
    .line 603
    move-result v4

    .line 604
    if-ltz v4, :cond_e

    .line 605
    .line 606
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 607
    .line 608
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 609
    .line 610
    .line 611
    move-result v6

    .line 612
    int-to-long v6, v6

    .line 613
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 614
    .line 615
    .line 616
    move-result-wide v9

    .line 617
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 618
    .line 619
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzG(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpp;

    .line 620
    .line 621
    .line 622
    move-result-object v6

    .line 623
    iget-wide v6, v6, Lcom/google/android/libraries/places/internal/zzbpp;->zzb:J

    .line 624
    .line 625
    invoke-static {v4, v6, v7}, Lcom/google/android/libraries/places/internal/zzbpo;->zzR(Lcom/google/android/libraries/places/internal/zzbpo;J)V

    .line 626
    .line 627
    .line 628
    goto :goto_8

    .line 629
    :goto_9
    if-eqz v4, :cond_15

    .line 630
    .line 631
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 632
    .line 633
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 634
    .line 635
    iget v2, v2, Lcom/google/android/libraries/places/internal/zzbpm;->zzd:I

    .line 636
    .line 637
    add-int/2addr v2, v8

    .line 638
    invoke-static {v0, v2, v5}, Lcom/google/android/libraries/places/internal/zzbpo;->zzE(Lcom/google/android/libraries/places/internal/zzbpo;IZ)Lcom/google/android/libraries/places/internal/zzbpm;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    if-eqz v0, :cond_16

    .line 643
    .line 644
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 645
    .line 646
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbpo;->zzH(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    monitor-enter v2

    .line 651
    :try_start_2
    iget-object v3, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 652
    .line 653
    new-instance v4, Lcom/google/android/libraries/places/internal/zzboy;

    .line 654
    .line 655
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbpo;->zzH(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v5

    .line 659
    invoke-direct {v4, v5}, Lcom/google/android/libraries/places/internal/zzboy;-><init>(Ljava/lang/Object;)V

    .line 660
    .line 661
    .line 662
    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzU(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzboy;)V

    .line 663
    .line 664
    .line 665
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 666
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 667
    .line 668
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbpo;->zzM(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 669
    .line 670
    .line 671
    move-result-object v2

    .line 672
    new-instance v3, Lcom/google/android/libraries/places/internal/zzbpg;

    .line 673
    .line 674
    invoke-direct {v3, v1, v4, v0}, Lcom/google/android/libraries/places/internal/zzbpg;-><init>(Lcom/google/android/libraries/places/internal/zzbpl;Lcom/google/android/libraries/places/internal/zzboy;Lcom/google/android/libraries/places/internal/zzbpm;)V

    .line 675
    .line 676
    .line 677
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 678
    .line 679
    invoke-interface {v2, v3, v9, v10, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    invoke-virtual {v4, v0}, Lcom/google/android/libraries/places/internal/zzboy;->zzb(Ljava/util/concurrent/Future;)V

    .line 684
    .line 685
    .line 686
    return-void

    .line 687
    :catchall_2
    move-exception v0

    .line 688
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 689
    throw v0

    .line 690
    :cond_13
    :goto_a
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 691
    .line 692
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 693
    .line 694
    iget v2, v2, Lcom/google/android/libraries/places/internal/zzbpm;->zzd:I

    .line 695
    .line 696
    invoke-static {v0, v2, v8}, Lcom/google/android/libraries/places/internal/zzbpo;->zzE(Lcom/google/android/libraries/places/internal/zzbpo;IZ)Lcom/google/android/libraries/places/internal/zzbpm;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    if-eqz v0, :cond_16

    .line 701
    .line 702
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 703
    .line 704
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbpo;->zzad(Lcom/google/android/libraries/places/internal/zzbpo;)Z

    .line 705
    .line 706
    .line 707
    move-result v3

    .line 708
    if-eqz v3, :cond_14

    .line 709
    .line 710
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbpo;->zzH(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v2

    .line 714
    monitor-enter v2

    .line 715
    :try_start_4
    iget-object v3, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 716
    .line 717
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbpo;->zzD(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpd;

    .line 718
    .line 719
    .line 720
    move-result-object v4

    .line 721
    iget-object v5, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 722
    .line 723
    new-instance v6, Ljava/util/ArrayList;

    .line 724
    .line 725
    iget-object v7, v4, Lcom/google/android/libraries/places/internal/zzbpd;->zzd:Ljava/util/Collection;

    .line 726
    .line 727
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 728
    .line 729
    .line 730
    invoke-interface {v6, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 731
    .line 732
    .line 733
    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 737
    .line 738
    .line 739
    move-result-object v11

    .line 740
    new-instance v5, Lcom/google/android/libraries/places/internal/zzbpd;

    .line 741
    .line 742
    iget-object v9, v4, Lcom/google/android/libraries/places/internal/zzbpd;->zzb:Ljava/util/List;

    .line 743
    .line 744
    iget-object v10, v4, Lcom/google/android/libraries/places/internal/zzbpd;->zzc:Ljava/util/Collection;

    .line 745
    .line 746
    iget-object v12, v4, Lcom/google/android/libraries/places/internal/zzbpd;->zzf:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 747
    .line 748
    iget-boolean v13, v4, Lcom/google/android/libraries/places/internal/zzbpd;->zzg:Z

    .line 749
    .line 750
    iget-boolean v14, v4, Lcom/google/android/libraries/places/internal/zzbpd;->zza:Z

    .line 751
    .line 752
    iget-boolean v15, v4, Lcom/google/android/libraries/places/internal/zzbpd;->zzh:Z

    .line 753
    .line 754
    iget v4, v4, Lcom/google/android/libraries/places/internal/zzbpd;->zze:I

    .line 755
    .line 756
    move-object v8, v5

    .line 757
    move/from16 v16, v4

    .line 758
    .line 759
    invoke-direct/range {v8 .. v16}, Lcom/google/android/libraries/places/internal/zzbpd;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lcom/google/android/libraries/places/internal/zzbpm;ZZZI)V

    .line 760
    .line 761
    .line 762
    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/zzbpo;->zzV(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbpd;)V

    .line 763
    .line 764
    .line 765
    monitor-exit v2

    .line 766
    goto :goto_b

    .line 767
    :catchall_3
    move-exception v0

    .line 768
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 769
    throw v0

    .line 770
    :cond_14
    :goto_b
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 771
    .line 772
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbpo;->zzK(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/util/concurrent/Executor;

    .line 773
    .line 774
    .line 775
    move-result-object v2

    .line 776
    new-instance v3, Lcom/google/android/libraries/places/internal/zzbpi;

    .line 777
    .line 778
    invoke-direct {v3, v1, v0}, Lcom/google/android/libraries/places/internal/zzbpi;-><init>(Lcom/google/android/libraries/places/internal/zzbpl;Lcom/google/android/libraries/places/internal/zzbpm;)V

    .line 779
    .line 780
    .line 781
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 782
    .line 783
    .line 784
    return-void

    .line 785
    :cond_15
    :goto_c
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 786
    .line 787
    iget-object v5, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 788
    .line 789
    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/zzbpo;->zzW(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbpm;)V

    .line 790
    .line 791
    .line 792
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 793
    .line 794
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbpo;->zzD(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpd;

    .line 795
    .line 796
    .line 797
    move-result-object v4

    .line 798
    iget-object v4, v4, Lcom/google/android/libraries/places/internal/zzbpd;->zzf:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 799
    .line 800
    iget-object v5, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 801
    .line 802
    if-ne v4, v5, :cond_16

    .line 803
    .line 804
    iget-object v4, v1, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 805
    .line 806
    invoke-static {v4, v0, v2, v3}, Lcom/google/android/libraries/places/internal/zzbpo;->zzaa(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 807
    .line 808
    .line 809
    :cond_16
    return-void

    .line 810
    :goto_d
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 811
    throw v0
.end method

.method public final zze(Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpl;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/libraries/places/internal/zzbpm;->zzd:I

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbpo;->zzh:Lcom/google/android/libraries/places/internal/zzbca;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbcf;->zzd(Lcom/google/android/libraries/places/internal/zzbca;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbpl;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 13
    .line 14
    iget v1, v1, Lcom/google/android/libraries/places/internal/zzbpm;->zzd:I

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbcf;->zzf(Lcom/google/android/libraries/places/internal/zzbca;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbpl;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbpo;->zzW(Lcom/google/android/libraries/places/internal/zzbpo;Lcom/google/android/libraries/places/internal/zzbpm;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzD(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpd;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbpd;->zzf:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbpl;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 39
    .line 40
    if-ne v0, v1, :cond_4

    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzF(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpn;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzF(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpn;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_1
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbpn;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget v2, v0, Lcom/google/android/libraries/places/internal/zzbpn;->zza:I

    .line 61
    .line 62
    if-ne v1, v2, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget v3, v0, Lcom/google/android/libraries/places/internal/zzbpn;->zzc:I

    .line 66
    .line 67
    add-int/2addr v3, v1

    .line 68
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbpn;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    .line 70
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzL(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/util/concurrent/Executor;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbpe;

    .line 87
    .line 88
    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/places/internal/zzbpe;-><init>(Lcom/google/android/libraries/places/internal/zzbpl;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 89
    .line 90
    .line 91
    check-cast v0, Lcom/google/android/libraries/places/internal/zzbdw;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    .line 97
    .line 98
    .line 99
    :cond_4
    return-void
.end method

.method public final zzf(Lcom/google/android/libraries/places/internal/zzbqq;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzD(Lcom/google/android/libraries/places/internal/zzbpo;)Lcom/google/android/libraries/places/internal/zzbpd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzbpd;->zzf:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    const-string v2, "Headers should be received prior to messages."

    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbpd;->zzf:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbpl;->zza:Lcom/google/android/libraries/places/internal/zzbpm;

    .line 22
    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbjd;->zzh(Lcom/google/android/libraries/places/internal/zzbqq;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzL(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/util/concurrent/Executor;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbpj;

    .line 36
    .line 37
    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/places/internal/zzbpj;-><init>(Lcom/google/android/libraries/places/internal/zzbpl;Lcom/google/android/libraries/places/internal/zzbqq;)V

    .line 38
    .line 39
    .line 40
    check-cast v0, Lcom/google/android/libraries/places/internal/zzbdw;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final zzg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzp()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbpl;->zzb:Lcom/google/android/libraries/places/internal/zzbpo;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbpo;->zzL(Lcom/google/android/libraries/places/internal/zzbpo;)Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbpk;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzbpk;-><init>(Lcom/google/android/libraries/places/internal/zzbpl;)V

    .line 19
    .line 20
    .line 21
    check-cast v0, Lcom/google/android/libraries/places/internal/zzbdw;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
