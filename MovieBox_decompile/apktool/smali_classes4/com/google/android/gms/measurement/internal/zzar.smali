.class public final Lcom/google/android/gms/measurement/internal/zzar;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final zza:Ljava/lang/String;

.field private zzb:J

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzal;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzal;Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Lcom/google/android/gms/measurement/internal/zzal;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzar;->zzb:J

    .line 9
    .line 10
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final zza()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzap;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v6, "app_id = ? and rowid > ?"

    .line 9
    .line 10
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 11
    .line 12
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzar;->zzb:J

    .line 13
    .line 14
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    const/4 v12, 0x0

    .line 23
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Lcom/google/android/gms/measurement/internal/zzal;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v4, "raw_events"

    .line 30
    .line 31
    const-string v13, "rowid"

    .line 32
    .line 33
    const-string v14, "name"

    .line 34
    .line 35
    const-string v15, "timestamp"

    .line 36
    .line 37
    const-string v16, "metadata_fingerprint"

    .line 38
    .line 39
    const-string v17, "data"

    .line 40
    .line 41
    const-string v18, "realtime"

    .line 42
    .line 43
    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const-string v10, "rowid"

    .line 48
    .line 49
    const-string v11, "1000"

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v9, 0x0

    .line 53
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_0

    .line 62
    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 68
    .line 69
    .line 70
    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto/16 :goto_4

    .line 73
    .line 74
    :catch_0
    move-exception v0

    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :cond_0
    const/4 v0, 0x0

    .line 78
    :try_start_1
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    const/4 v3, 0x3

    .line 83
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 84
    .line 85
    .line 86
    move-result-wide v6

    .line 87
    const/4 v3, 0x5

    .line 88
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 89
    .line 90
    .line 91
    move-result-wide v8

    .line 92
    const-wide/16 v10, 0x1

    .line 93
    .line 94
    cmp-long v3, v8, v10

    .line 95
    .line 96
    const/4 v8, 0x1

    .line 97
    if-nez v3, :cond_1

    .line 98
    .line 99
    move v0, v8

    .line 100
    :cond_1
    const/4 v3, 0x4

    .line 101
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getBlob(I)[B

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzar;->zzb:J

    .line 106
    .line 107
    cmp-long v9, v4, v9

    .line 108
    .line 109
    if-lez v9, :cond_2

    .line 110
    .line 111
    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzar;->zzb:J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .line 113
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    invoke-static {v9, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzlb;[B)Lcom/google/android/gms/internal/measurement/zzlb;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .line 123
    :try_start_3
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    if-eqz v8, :cond_3

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_3
    const-string v8, ""

    .line 131
    .line 132
    :goto_0
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    const/4 v9, 0x2

    .line 137
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 138
    .line 139
    .line 140
    move-result-wide v9

    .line 141
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    .line 142
    .line 143
    .line 144
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzap;

    .line 145
    .line 146
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjt;

    .line 151
    .line 152
    move-object v9, v3

    .line 153
    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    .line 154
    .line 155
    move-object v3, v10

    .line 156
    move v8, v0

    .line 157
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(JJZLcom/google/android/gms/internal/measurement/zzfy$zzf;)V

    .line 158
    .line 159
    .line 160
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :catch_1
    move-exception v0

    .line 165
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Lcom/google/android/gms/measurement/internal/zzal;

    .line 166
    .line 167
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    const-string v4, "Data loss. Failed to merge raw event. appId"

    .line 176
    .line 177
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 187
    .line 188
    .line 189
    move-result v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    if-nez v0, :cond_0

    .line 191
    .line 192
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :goto_2
    :try_start_4
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Lcom/google/android/gms/measurement/internal/zzal;

    .line 197
    .line 198
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    const-string v4, "Data loss. Error querying raw events batch. appId"

    .line 207
    .line 208
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 209
    .line 210
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 215
    .line 216
    .line 217
    if-eqz v12, :cond_4

    .line 218
    .line 219
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 220
    .line 221
    .line 222
    :cond_4
    :goto_3
    return-object v2

    .line 223
    :goto_4
    if-eqz v12, :cond_5

    .line 224
    .line 225
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 226
    .line 227
    .line 228
    :cond_5
    throw v0
.end method
