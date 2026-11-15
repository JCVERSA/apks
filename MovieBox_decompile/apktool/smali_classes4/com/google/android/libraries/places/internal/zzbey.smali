.class public final Lcom/google/android/libraries/places/internal/zzbey;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbbq;

.field private final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbbq;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string p2, "registry"

    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbey;->zza:Lcom/google/android/libraries/places/internal/zzbbq;

    .line 10
    .line 11
    const-string p1, "pick_first"

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbey;->zzb:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzbey;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbbo;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbey;->zza:Lcom/google/android/libraries/places/internal/zzbbq;

    .line 2
    .line 3
    const-string p1, "pick_first"

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbbq;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbbo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Lcom/google/android/libraries/places/internal/zzbex;

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "Trying to load \'"

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, "\' because using default policy, but it\'s unavailable"

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbex;-><init>(Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbew;)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzbey;)Lcom/google/android/libraries/places/internal/zzbbq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbey;->zza:Lcom/google/android/libraries/places/internal/zzbbq;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/libraries/places/internal/zzbey;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbey;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method final zzc(Ljava/util/Map;)Lcom/google/android/libraries/places/internal/zzbcp;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "loadBalancingConfig"

    .line 10
    .line 11
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-static {p1, v2}, Lcom/google/android/libraries/places/internal/zzbkg;->zzh(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    const-string v2, "loadBalancingPolicy"

    .line 35
    .line 36
    invoke-static {p1, v2}, Lcom/google/android/libraries/places/internal/zzbkg;->zze(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {p1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    :cond_2
    move-object p1, v0

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_5

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Ljava/util/Map;

    .line 87
    .line 88
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    const/4 v4, 0x1

    .line 93
    if-ne v3, v4, :cond_4

    .line 94
    .line 95
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Ljava/util/Map$Entry;

    .line 108
    .line 109
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Ljava/lang/String;

    .line 114
    .line 115
    new-instance v4, Lcom/google/android/libraries/places/internal/zzbqf;

    .line 116
    .line 117
    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzbkg;->zzj(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-direct {v4, v3, v2}, Lcom/google/android/libraries/places/internal/zzbqf;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 129
    .line 130
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v3, "There are "

    .line 144
    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v0, " fields in a LoadBalancingConfig object. Exactly one is expected. Config="

    .line 152
    .line 153
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p1

    .line 167
    :cond_5
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    :goto_2
    if-eqz p1, :cond_a

    .line 172
    .line 173
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-nez v1, :cond_a

    .line 178
    .line 179
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbey;->zza:Lcom/google/android/libraries/places/internal/zzbbq;

    .line 180
    .line 181
    new-instance v6, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_8

    .line 195
    .line 196
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    move-object v7, v1

    .line 201
    check-cast v7, Lcom/google/android/libraries/places/internal/zzbqf;

    .line 202
    .line 203
    invoke-virtual {v7}, Lcom/google/android/libraries/places/internal/zzbqf;->zza()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbbq;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbbo;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    if-nez v8, :cond_6

    .line 212
    .line 213
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-nez p1, :cond_7

    .line 222
    .line 223
    const-class p1, Lcom/google/android/libraries/places/internal/zzbqh;

    .line 224
    .line 225
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 234
    .line 235
    const-string v3, "io.grpc.internal.ServiceConfigUtil"

    .line 236
    .line 237
    const-string v4, "selectLbPolicyFromList"

    .line 238
    .line 239
    const-string v5, "{0} specified by Service Config are not available"

    .line 240
    .line 241
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    :cond_7
    invoke-virtual {v7}, Lcom/google/android/libraries/places/internal/zzbqf;->zzb()Ljava/util/Map;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {v8, p1}, Lcom/google/android/libraries/places/internal/zzbbo;->zzc(Ljava/util/Map;)Lcom/google/android/libraries/places/internal/zzbcp;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbcp;->zzc()Lcom/google/android/libraries/places/internal/zzbdo;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    if-nez v0, :cond_9

    .line 257
    .line 258
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbqg;

    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbcp;->zzd()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-direct {v0, v8, p1}, Lcom/google/android/libraries/places/internal/zzbqg;-><init>(Lcom/google/android/libraries/places/internal/zzbbo;Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbcp;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbcp;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    goto :goto_4

    .line 272
    :cond_8
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 273
    .line 274
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    const-string v2, "None of "

    .line 284
    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v0, " specified by Service Config are available."

    .line 292
    .line 293
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbcp;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbcp;

    .line 305
    .line 306
    .line 307
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_9
    :goto_4
    return-object p1

    .line 309
    :goto_5
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 310
    .line 311
    const-string v1, "can\'t parse load balancer configuration"

    .line 312
    .line 313
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbcp;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)Lcom/google/android/libraries/places/internal/zzbcp;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    return-object p1

    .line 326
    :cond_a
    return-object v0
.end method
