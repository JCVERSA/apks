.class final Lcom/google/android/gms/measurement/internal/zzmj;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Z

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzo;

.field private final synthetic zzc:Z

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzbf;

.field private final synthetic zze:Ljava/lang/String;

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzls;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzls;ZLcom/google/android/gms/measurement/internal/zzo;ZLcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zza:Z

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 4
    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzc:Z

    .line 6
    .line 7
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzd:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zze:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzls;)Lcom/google/android/gms/measurement/internal/zzgb;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "Discarding data. Failed to send event to service"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zza:Z

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 37
    .line 38
    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzc:Z

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzd:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 45
    .line 46
    :goto_0
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 47
    .line 48
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzgb;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_2
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzce:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const-wide/16 v3, 0x0

    .line 66
    .line 67
    :try_start_0
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zze:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_4

    .line 74
    .line 75
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 76
    .line 77
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 83
    .line 84
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 85
    .line 86
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhy;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :try_start_1
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 95
    .line 96
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 97
    .line 98
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhy;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 103
    .line 104
    .line 105
    move-result-wide v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    goto :goto_2

    .line 107
    :catch_0
    move-exception v0

    .line 108
    move-wide v7, v3

    .line 109
    :goto_1
    move-wide v11, v5

    .line 110
    goto :goto_3

    .line 111
    :catch_1
    move-exception v0

    .line 112
    move-wide v7, v3

    .line 113
    move-wide v11, v7

    .line 114
    goto :goto_3

    .line 115
    :cond_3
    move-wide v5, v3

    .line 116
    move-wide v7, v5

    .line 117
    :goto_2
    :try_start_2
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzd:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 118
    .line 119
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 120
    .line 121
    invoke-interface {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 122
    .line 123
    .line 124
    if-eqz v2, :cond_5

    .line 125
    .line 126
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const-string v9, "Logging telemetry for logEvent"

    .line 137
    .line 138
    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 142
    .line 143
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 144
    .line 145
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgm;->zza(Lcom/google/android/gms/measurement/internal/zzhy;)Lcom/google/android/gms/measurement/internal/zzgm;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 150
    .line 151
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 158
    .line 159
    .line 160
    move-result-wide v14

    .line 161
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 162
    .line 163
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 170
    .line 171
    .line 172
    move-result-wide v10

    .line 173
    sub-long/2addr v10, v7

    .line 174
    long-to-int v0, v10

    .line 175
    const v10, 0x8dcd

    .line 176
    .line 177
    .line 178
    const/4 v11, 0x0

    .line 179
    move-wide v12, v5

    .line 180
    move/from16 v16, v0

    .line 181
    .line 182
    invoke-virtual/range {v9 .. v16}, Lcom/google/android/gms/measurement/internal/zzgm;->zza(IIJJI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :catch_2
    move-exception v0

    .line 187
    goto :goto_1

    .line 188
    :cond_4
    :try_start_3
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzd:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 189
    .line 190
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zze:Ljava/lang/String;

    .line 191
    .line 192
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 193
    .line 194
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzx()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    invoke-interface {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 203
    .line 204
    .line 205
    goto :goto_4

    .line 206
    :goto_3
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 207
    .line 208
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    const-string v6, "Failed to send event to the service"

    .line 217
    .line 218
    invoke-virtual {v5, v6, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    if-eqz v2, :cond_5

    .line 222
    .line 223
    cmp-long v0, v11, v3

    .line 224
    .line 225
    if-eqz v0, :cond_5

    .line 226
    .line 227
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 228
    .line 229
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 230
    .line 231
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgm;->zza(Lcom/google/android/gms/measurement/internal/zzhy;)Lcom/google/android/gms/measurement/internal/zzgm;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 236
    .line 237
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 238
    .line 239
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 244
    .line 245
    .line 246
    move-result-wide v13

    .line 247
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 248
    .line 249
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 250
    .line 251
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 256
    .line 257
    .line 258
    move-result-wide v2

    .line 259
    sub-long/2addr v2, v7

    .line 260
    long-to-int v15, v2

    .line 261
    const v9, 0x8dcd

    .line 262
    .line 263
    .line 264
    const/16 v10, 0xd

    .line 265
    .line 266
    move-object v8, v0

    .line 267
    invoke-virtual/range {v8 .. v15}, Lcom/google/android/gms/measurement/internal/zzgm;->zza(IIJJI)V

    .line 268
    .line 269
    .line 270
    :cond_5
    :goto_4
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzmj;->zzf:Lcom/google/android/gms/measurement/internal/zzls;

    .line 271
    .line 272
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzls;->zze(Lcom/google/android/gms/measurement/internal/zzls;)V

    .line 273
    .line 274
    .line 275
    return-void
.end method
