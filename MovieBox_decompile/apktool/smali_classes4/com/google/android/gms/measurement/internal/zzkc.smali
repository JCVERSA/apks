.class final Lcom/google/android/gms/measurement/internal/zzkc;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/common/util/concurrent/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/m;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzno;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzno;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/measurement/internal/zzno;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzha;->zzm()Landroid/util/SparseArray;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/measurement/internal/zzno;

    .line 12
    .line 13
    iget v2, v1, Lcom/google/android/gms/measurement/internal/zzno;->zzc:I

    .line 14
    .line 15
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzno;->zzb:J

    .line 16
    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Landroid/util/SparseArray;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzjq;Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzcn:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzas()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "registerTriggerAsync failed with throwable"

    .line 42
    .line 43
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzcl:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v1, 0x2

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 63
    .line 64
    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzjq;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move v0, v1

    .line 70
    :goto_0
    const/4 v2, 0x1

    .line 71
    sub-int/2addr v0, v2

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    if-eq v0, v2, :cond_3

    .line 75
    .line 76
    if-eq v0, v1, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zze;->zzg()Lcom/google/android/gms/measurement/internal/zzgg;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgg;->zzad()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const-string v3, "registerTriggerAsync failed. Dropping URI. App ID, Throwable"

    .line 104
    .line 105
    invoke-virtual {v0, v3, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zza()V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 112
    .line 113
    invoke-static {p1, v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzjq;I)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzas()V

    .line 119
    .line 120
    .line 121
    :goto_1
    return-void

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzal()Ljava/util/PriorityQueue;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/measurement/internal/zzno;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 134
    .line 135
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzjq;)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    const/16 v1, 0x20

    .line 140
    .line 141
    if-le v0, v1, :cond_4

    .line 142
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 144
    .line 145
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzjq;I)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zze;->zzg()Lcom/google/android/gms/measurement/internal/zzgg;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgg;->zzad()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    const-string v2, "registerTriggerAsync failed. May try later. App ID, throwable"

    .line 181
    .line 182
    invoke-virtual {v0, v2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 197
    .line 198
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zze;->zzg()Lcom/google/android/gms/measurement/internal/zzgg;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgg;->zzad()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 211
    .line 212
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzjq;)I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    const-string v4, "registerTriggerAsync failed. App ID, delay in seconds, throwable"

    .line 233
    .line 234
    invoke-virtual {v0, v4, v1, v3, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 238
    .line 239
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzjq;)I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb(Lcom/google/android/gms/measurement/internal/zzjq;I)V

    .line 244
    .line 245
    .line 246
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 247
    .line 248
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzjq;)I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    shl-int/2addr v0, v2

    .line 253
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzjq;I)V

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 268
    .line 269
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zze;->zzg()Lcom/google/android/gms/measurement/internal/zzgg;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgg;->zzad()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    const-string v3, "registerTriggerAsync failed with retriable error. Will try later. App ID, throwable"

    .line 290
    .line 291
    invoke-virtual {v0, v3, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 295
    .line 296
    invoke-static {p1, v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzjq;I)V

    .line 297
    .line 298
    .line 299
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 300
    .line 301
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzal()Ljava/util/PriorityQueue;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/measurement/internal/zzno;

    .line 306
    .line 307
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzcn:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zza()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzjq;Z)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzjq;I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/measurement/internal/zzno;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzno;->zza:Ljava/lang/String;

    .line 48
    .line 49
    const-string v1, "Successfully registered trigger URI"

    .line 50
    .line 51
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzas()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 61
    .line 62
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Lcom/google/android/gms/measurement/internal/zzjq;Z)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzas()V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zzb:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkc;->zza:Lcom/google/android/gms/measurement/internal/zzno;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzno;->zza:Ljava/lang/String;

    .line 83
    .line 84
    const-string v1, "registerTriggerAsync ran. uri"

    .line 85
    .line 86
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
