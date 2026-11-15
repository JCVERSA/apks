.class final Lcom/google/android/libraries/places/internal/zzbie;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbih;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbcr;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbih;Lcom/google/android/libraries/places/internal/zzbcr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbie;->zza:Lcom/google/android/libraries/places/internal/zzbih;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, "savedListener"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbie;->zzb:Lcom/google/android/libraries/places/internal/zzbcr;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbih;->zzk()Ljava/util/logging/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v2, "run"

    .line 12
    .line 13
    const-string v3, "io.grpc.internal.DnsNameResolver$Resolve"

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbie;->zza:Lcom/google/android/libraries/places/internal/zzbih;

    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbih;->zzk()Ljava/util/logging/Logger;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbih;->zzj(Lcom/google/android/libraries/places/internal/zzbih;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v5, "Attempting DNS resolution of "

    .line 32
    .line 33
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v4, v1, v3, v2, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    const/4 v0, 0x1

    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    :try_start_0
    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbie;->zza:Lcom/google/android/libraries/places/internal/zzbih;

    .line 44
    .line 45
    invoke-static {v6}, Lcom/google/android/libraries/places/internal/zzbih;->zzg(Lcom/google/android/libraries/places/internal/zzbih;)Lcom/google/android/libraries/places/internal/zzazs;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbct;->zzc()Lcom/google/android/libraries/places/internal/zzbcs;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    if-eqz v6, :cond_2

    .line 54
    .line 55
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbih;->zzk()Ljava/util/logging/Logger;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-virtual {v8, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_1

    .line 64
    .line 65
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbih;->zzk()Ljava/util/logging/Logger;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    new-instance v10, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v11, "Using proxy address "

    .line 79
    .line 80
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-virtual {v8, v1, v3, v2, v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v7, v1}, Lcom/google/android/libraries/places/internal/zzbcs;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzbcs;

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbie;->zza:Lcom/google/android/libraries/places/internal/zzbih;

    .line 102
    .line 103
    invoke-virtual {v1, v5}, Lcom/google/android/libraries/places/internal/zzbih;->zzi(Z)Lcom/google/android/libraries/places/internal/zzbib;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbib;->zzb(Lcom/google/android/libraries/places/internal/zzbib;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    if-eqz v1, :cond_4

    .line 112
    .line 113
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbie;->zzb:Lcom/google/android/libraries/places/internal/zzbcr;

    .line 114
    .line 115
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbib;->zzb(Lcom/google/android/libraries/places/internal/zzbib;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbcr;->zza(Lcom/google/android/libraries/places/internal/zzbdo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbib;->zzb(Lcom/google/android/libraries/places/internal/zzbib;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-nez v1, :cond_3

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_3
    move v0, v5

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbie;->zza:Lcom/google/android/libraries/places/internal/zzbih;

    .line 131
    .line 132
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbih;->zzh(Lcom/google/android/libraries/places/internal/zzbih;)Lcom/google/android/libraries/places/internal/zzbdw;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbid;

    .line 137
    .line 138
    invoke-direct {v2, p0, v0}, Lcom/google/android/libraries/places/internal/zzbid;-><init>(Lcom/google/android/libraries/places/internal/zzbie;Z)V

    .line 139
    .line 140
    .line 141
    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_4
    :try_start_1
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbib;->zzc(Lcom/google/android/libraries/places/internal/zzbib;)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    if-eqz v1, :cond_5

    .line 153
    .line 154
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbib;->zzc(Lcom/google/android/libraries/places/internal/zzbib;)Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v7, v1}, Lcom/google/android/libraries/places/internal/zzbcs;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzbcs;

    .line 159
    .line 160
    .line 161
    :cond_5
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbib;->zza(Lcom/google/android/libraries/places/internal/zzbib;)Lcom/google/android/libraries/places/internal/zzbcp;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    if-eqz v1, :cond_6

    .line 166
    .line 167
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbib;->zza(Lcom/google/android/libraries/places/internal/zzbib;)Lcom/google/android/libraries/places/internal/zzbcp;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v7, v1}, Lcom/google/android/libraries/places/internal/zzbcs;->zzc(Lcom/google/android/libraries/places/internal/zzbcp;)Lcom/google/android/libraries/places/internal/zzbcs;

    .line 172
    .line 173
    .line 174
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbie;->zzb:Lcom/google/android/libraries/places/internal/zzbcr;

    .line 175
    .line 176
    invoke-virtual {v7}, Lcom/google/android/libraries/places/internal/zzbcs;->zzd()Lcom/google/android/libraries/places/internal/zzbct;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbcr;->zzb(Lcom/google/android/libraries/places/internal/zzbct;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :catchall_0
    move-exception v1

    .line 185
    goto :goto_5

    .line 186
    :catch_0
    move-exception v1

    .line 187
    :try_start_2
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbie;->zzb:Lcom/google/android/libraries/places/internal/zzbcr;

    .line 188
    .line 189
    sget-object v3, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 190
    .line 191
    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzbie;->zza:Lcom/google/android/libraries/places/internal/zzbih;

    .line 192
    .line 193
    invoke-static {v6}, Lcom/google/android/libraries/places/internal/zzbih;->zzj(Lcom/google/android/libraries/places/internal/zzbih;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    new-instance v7, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    const-string v8, "Unable to resolve host "

    .line 203
    .line 204
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    invoke-virtual {v3, v6}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v3, v1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/internal/zzbcr;->zza(Lcom/google/android/libraries/places/internal/zzbdo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    .line 224
    .line 225
    :goto_3
    if-eqz v4, :cond_7

    .line 226
    .line 227
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbib;->zzb(Lcom/google/android/libraries/places/internal/zzbib;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    if-nez v1, :cond_7

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_7
    move v0, v5

    .line 235
    :goto_4
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbie;->zza:Lcom/google/android/libraries/places/internal/zzbih;

    .line 236
    .line 237
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbih;->zzh(Lcom/google/android/libraries/places/internal/zzbih;)Lcom/google/android/libraries/places/internal/zzbdw;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    new-instance v2, Lcom/google/android/libraries/places/internal/zzbid;

    .line 242
    .line 243
    invoke-direct {v2, p0, v0}, Lcom/google/android/libraries/places/internal/zzbid;-><init>(Lcom/google/android/libraries/places/internal/zzbie;Z)V

    .line 244
    .line 245
    .line 246
    goto :goto_1

    .line 247
    :goto_5
    if-eqz v4, :cond_8

    .line 248
    .line 249
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbib;->zzb(Lcom/google/android/libraries/places/internal/zzbib;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    if-nez v2, :cond_8

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_8
    move v0, v5

    .line 257
    :goto_6
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbie;->zza:Lcom/google/android/libraries/places/internal/zzbih;

    .line 258
    .line 259
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbih;->zzh(Lcom/google/android/libraries/places/internal/zzbih;)Lcom/google/android/libraries/places/internal/zzbdw;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    new-instance v3, Lcom/google/android/libraries/places/internal/zzbid;

    .line 264
    .line 265
    invoke-direct {v3, p0, v0}, Lcom/google/android/libraries/places/internal/zzbid;-><init>(Lcom/google/android/libraries/places/internal/zzbie;Z)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    .line 272
    .line 273
    .line 274
    throw v1
.end method
