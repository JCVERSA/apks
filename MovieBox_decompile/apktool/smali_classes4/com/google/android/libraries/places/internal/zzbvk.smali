.class public abstract Lcom/google/android/libraries/places/internal/zzbvk;
.super Lcom/google/android/libraries/places/internal/zzbbm;
.source "source.java"


# static fields
.field private static final zzi:Ljava/util/logging/Logger;


# instance fields
.field protected zzf:Z

.field protected final zzg:Lcom/google/android/libraries/places/internal/zzbbo;

.field protected zzh:Lcom/google/android/libraries/places/internal/zzaze;

.field private final zzj:Ljava/util/Map;

.field private final zzk:Lcom/google/android/libraries/places/internal/zzbbd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/libraries/places/internal/zzbvk;

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
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbvk;->zzi:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/libraries/places/internal/zzbbd;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbm;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbnq;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbnq;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzg:Lcom/google/android/libraries/places/internal/zzbbo;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzk:Lcom/google/android/libraries/places/internal/zzbbd;

    .line 19
    .line 20
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbvk;->zzi:Ljava/util/logging/Logger;

    .line 21
    .line 22
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 23
    .line 24
    const-string v1, "<init>"

    .line 25
    .line 26
    const-string v2, "Created"

    .line 27
    .line 28
    const-string v3, "io.grpc.util.MultiChildLoadBalancer"

    .line 29
    .line 30
    invoke-virtual {p1, v0, v3, v1, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbvk;)Lcom/google/android/libraries/places/internal/zzbbd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzk:Lcom/google/android/libraries/places/internal/zzbbd;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/libraries/places/internal/zzbvk;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzk()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbvk;->zzi:Ljava/util/logging/Logger;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbbi;)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzf:Z

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbvk;->zzi:Ljava/util/logging/Logger;

    .line 6
    .line 7
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 8
    .line 9
    const-string v4, "io.grpc.util.MultiChildLoadBalancer"

    .line 10
    .line 11
    const-string v5, "acceptResolvedAddressesInternal"

    .line 12
    .line 13
    const-string v6, "Received resolution result: {0}"

    .line 14
    .line 15
    move-object v7, p1

    .line 16
    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zze()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/google/android/libraries/places/internal/zzazs;

    .line 43
    .line 44
    new-instance v12, Lcom/google/android/libraries/places/internal/zzbvj;

    .line 45
    .line 46
    invoke-direct {v12, v3}, Lcom/google/android/libraries/places/internal/zzbvj;-><init>(Lcom/google/android/libraries/places/internal/zzazs;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    .line 50
    .line 51
    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lcom/google/android/libraries/places/internal/zzbvi;

    .line 56
    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    invoke-interface {v0, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto/16 :goto_a

    .line 65
    .line 66
    :cond_0
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbbc;

    .line 67
    .line 68
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbbe;->zzc()Lcom/google/android/libraries/places/internal/zzbbe;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-direct {v9, v3}, Lcom/google/android/libraries/places/internal/zzbbc;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    .line 73
    .line 74
    .line 75
    new-instance v3, Lcom/google/android/libraries/places/internal/zzbvi;

    .line 76
    .line 77
    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzg:Lcom/google/android/libraries/places/internal/zzbbo;

    .line 78
    .line 79
    const/4 v10, 0x0

    .line 80
    const/4 v11, 0x0

    .line 81
    const/4 v8, 0x0

    .line 82
    move-object v4, v3

    .line 83
    move-object v5, p0

    .line 84
    move-object v6, v12

    .line 85
    invoke-direct/range {v4 .. v11}, Lcom/google/android/libraries/places/internal/zzbvi;-><init>(Lcom/google/android/libraries/places/internal/zzbvk;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzbbo;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzbbk;Lcom/google/android/libraries/places/internal/zzbbi;Z)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    const/4 v3, 0x0

    .line 97
    if-eqz v2, :cond_2

    .line 98
    .line 99
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string v2, "NameResolver returned no usable address. "

    .line 106
    .line 107
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbvk;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_7

    .line 119
    .line 120
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_5

    .line 138
    .line 139
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    check-cast v5, Ljava/util/Map$Entry;

    .line 144
    .line 145
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    .line 150
    .line 151
    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-nez v7, :cond_4

    .line 156
    .line 157
    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    .line 158
    .line 159
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Lcom/google/android/libraries/places/internal/zzbvi;

    .line 164
    .line 165
    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_4
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    .line 170
    .line 171
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    check-cast v5, Lcom/google/android/libraries/places/internal/zzbvi;

    .line 176
    .line 177
    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzbvi;->zzm()Z

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    if-eqz v6, :cond_3

    .line 182
    .line 183
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_5
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    if-eqz v4, :cond_6

    .line 196
    .line 197
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    check-cast v4, Lcom/google/android/libraries/places/internal/zzbvi;

    .line 202
    .line 203
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbvi;->zzc()Lcom/google/android/libraries/places/internal/zzbbo;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-virtual {v4, v5}, Lcom/google/android/libraries/places/internal/zzbvi;->zzi(Lcom/google/android/libraries/places/internal/zzbbo;)V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    if-eqz v4, :cond_b

    .line 224
    .line 225
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    check-cast v4, Ljava/util/Map$Entry;

    .line 230
    .line 231
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    check-cast v5, Lcom/google/android/libraries/places/internal/zzbvi;

    .line 236
    .line 237
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    .line 238
    .line 239
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    check-cast v5, Lcom/google/android/libraries/places/internal/zzbvi;

    .line 248
    .line 249
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    instance-of v6, v4, Lcom/google/android/libraries/places/internal/zzazs;

    .line 254
    .line 255
    if-eqz v6, :cond_8

    .line 256
    .line 257
    new-instance v6, Lcom/google/android/libraries/places/internal/zzbvj;

    .line 258
    .line 259
    move-object v7, v4

    .line 260
    check-cast v7, Lcom/google/android/libraries/places/internal/zzazs;

    .line 261
    .line 262
    invoke-direct {v6, v7}, Lcom/google/android/libraries/places/internal/zzbvj;-><init>(Lcom/google/android/libraries/places/internal/zzazs;)V

    .line 263
    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_8
    instance-of v6, v4, Lcom/google/android/libraries/places/internal/zzbvj;

    .line 267
    .line 268
    const-string v7, "key is wrong type"

    .line 269
    .line 270
    invoke-static {v6, v7}, Lcom/google/android/libraries/places/internal/zzmt;->zzf(ZLjava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    move-object v6, v4

    .line 274
    check-cast v6, Lcom/google/android/libraries/places/internal/zzbvj;

    .line 275
    .line 276
    :goto_4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zze()Ljava/util/List;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 285
    .line 286
    .line 287
    move-result v8

    .line 288
    if-eqz v8, :cond_a

    .line 289
    .line 290
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v8

    .line 294
    check-cast v8, Lcom/google/android/libraries/places/internal/zzazs;

    .line 295
    .line 296
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbvj;

    .line 297
    .line 298
    invoke-direct {v9, v8}, Lcom/google/android/libraries/places/internal/zzbvj;-><init>(Lcom/google/android/libraries/places/internal/zzazs;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v6, v9}, Lcom/google/android/libraries/places/internal/zzbvj;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v9

    .line 305
    if-eqz v9, :cond_9

    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_a
    move-object v8, v3

    .line 309
    :goto_5
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    const-string v6, " no longer present in load balancer children"

    .line 314
    .line 315
    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    invoke-static {v8, v4}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbbi;->zzc()Lcom/google/android/libraries/places/internal/zzbbg;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    invoke-virtual {v4, v6}, Lcom/google/android/libraries/places/internal/zzbbg;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzbbg;

    .line 331
    .line 332
    .line 333
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaye;->zza()Lcom/google/android/libraries/places/internal/zzayb;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    sget-object v7, Lcom/google/android/libraries/places/internal/zzbbm;->zzd:Lcom/google/android/libraries/places/internal/zzayc;

    .line 338
    .line 339
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 340
    .line 341
    invoke-virtual {v6, v7, v8}, Lcom/google/android/libraries/places/internal/zzayb;->zzb(Lcom/google/android/libraries/places/internal/zzayc;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzayb;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v6}, Lcom/google/android/libraries/places/internal/zzayb;->zzc()Lcom/google/android/libraries/places/internal/zzaye;

    .line 345
    .line 346
    .line 347
    move-result-object v6

    .line 348
    invoke-virtual {v4, v6}, Lcom/google/android/libraries/places/internal/zzbbg;->zzb(Lcom/google/android/libraries/places/internal/zzaye;)Lcom/google/android/libraries/places/internal/zzbbg;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4, v3}, Lcom/google/android/libraries/places/internal/zzbbg;->zzc(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbbg;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbbg;->zzd()Lcom/google/android/libraries/places/internal/zzbbi;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    invoke-virtual {v5, v4}, Lcom/google/android/libraries/places/internal/zzbvi;->zzj(Lcom/google/android/libraries/places/internal/zzbbi;)V

    .line 359
    .line 360
    .line 361
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzbvi;->zzl(Lcom/google/android/libraries/places/internal/zzbvi;)Z

    .line 362
    .line 363
    .line 364
    move-result v6

    .line 365
    if-nez v6, :cond_7

    .line 366
    .line 367
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzbvi;->zzd(Lcom/google/android/libraries/places/internal/zzbvi;)Lcom/google/android/libraries/places/internal/zzbvg;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzbvb;->zzg()Lcom/google/android/libraries/places/internal/zzbbm;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    invoke-virtual {v5, v4}, Lcom/google/android/libraries/places/internal/zzbbm;->zzc(Lcom/google/android/libraries/places/internal/zzbbi;)V

    .line 376
    .line 377
    .line 378
    goto/16 :goto_3

    .line 379
    .line 380
    :cond_b
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 381
    .line 382
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    new-instance v3, Ljava/util/ArrayList;

    .line 387
    .line 388
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .line 390
    .line 391
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    .line 392
    .line 393
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zznx;->zzj(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zznx;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 402
    .line 403
    .line 404
    move-result v4

    .line 405
    move v5, v1

    .line 406
    :goto_6
    if-ge v5, v4, :cond_d

    .line 407
    .line 408
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v7

    .line 416
    if-nez v7, :cond_c

    .line 417
    .line 418
    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    .line 419
    .line 420
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v6

    .line 424
    check-cast v6, Lcom/google/android/libraries/places/internal/zzbvi;

    .line 425
    .line 426
    invoke-virtual {v6}, Lcom/google/android/libraries/places/internal/zzbvi;->zzh()V

    .line 427
    .line 428
    .line 429
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 433
    .line 434
    goto :goto_6

    .line 435
    :cond_d
    :goto_7
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    if-nez v0, :cond_e

    .line 440
    .line 441
    goto :goto_9

    .line 442
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvk;->zzl()V

    .line 443
    .line 444
    .line 445
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    if-eqz v2, :cond_f

    .line 454
    .line 455
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    check-cast v2, Lcom/google/android/libraries/places/internal/zzbvi;

    .line 460
    .line 461
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbvi;->zzk()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    .line 463
    .line 464
    goto :goto_8

    .line 465
    :cond_f
    :goto_9
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzf:Z

    .line 466
    .line 467
    return-object p1

    .line 468
    :goto_a
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzf:Z

    .line 469
    .line 470
    throw p1
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzh:Lcom/google/android/libraries/places/internal/zzaze;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzb:Lcom/google/android/libraries/places/internal/zzaze;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzk:Lcom/google/android/libraries/places/internal/zzbbd;

    .line 8
    .line 9
    sget-object v1, Lcom/google/android/libraries/places/internal/zzaze;->zzc:Lcom/google/android/libraries/places/internal/zzaze;

    .line 10
    .line 11
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbbc;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbbe;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbbe;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v2, p1}, Lcom/google/android/libraries/places/internal/zzbbc;-><init>(Lcom/google/android/libraries/places/internal/zzbbe;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzbbd;->zze(Lcom/google/android/libraries/places/internal/zzaze;Lcom/google/android/libraries/places/internal/zzbbk;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final zze()V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbvk;->zzi:Ljava/util/logging/Logger;

    .line 2
    .line 3
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 4
    .line 5
    const-string v2, "shutdown"

    .line 6
    .line 7
    const-string v3, "Shutdown"

    .line 8
    .line 9
    const-string v4, "io.grpc.util.MultiChildLoadBalancer"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v4, v2, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/google/android/libraries/places/internal/zzbvi;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbvi;->zzk()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method protected final zzh()Lcom/google/android/libraries/places/internal/zzbbd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzk:Lcom/google/android/libraries/places/internal/zzbbd;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzi()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbvk;->zzj:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected abstract zzl()V
.end method
