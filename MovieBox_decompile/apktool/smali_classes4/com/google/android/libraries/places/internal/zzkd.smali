.class public final Lcom/google/android/libraries/places/internal/zzkd;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static zza:Landroid/os/DropBoxManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final zzb:Ljava/util/LinkedHashMap;

.field private static zzc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzkc;

    .line 2
    .line 3
    const/high16 v1, 0x3f400000    # 0.75f

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/16 v3, 0x10

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/libraries/places/internal/zzkc;-><init>(IFZ)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/android/libraries/places/internal/zzkd;->zzb:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    return-void
.end method

.method public static declared-synchronized zza(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    const-class p1, Lcom/google/android/libraries/places/internal/zzkd;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzkd;->zza:Landroid/os/DropBoxManager;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "dropbox"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/os/DropBoxManager;

    .line 19
    .line 20
    sput-object p0, Lcom/google/android/libraries/places/internal/zzkd;->zza:Landroid/os/DropBoxManager;

    .line 21
    .line 22
    const-string p0, "com.google.android.libraries.places"

    .line 23
    .line 24
    sput-object p0, Lcom/google/android/libraries/places/internal/zzkd;->zzc:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit p1

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    monitor-exit p1

    .line 31
    return-void

    .line 32
    :goto_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p0
.end method

.method public static declared-synchronized zzb(Ljava/lang/Throwable;)V
    .locals 17

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const-class v3, Lcom/google/android/libraries/places/internal/zzkd;

    .line 5
    .line 6
    monitor-enter v3

    .line 7
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    sget-object v7, Lcom/google/android/libraries/places/internal/zzkd;->zzb:Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    check-cast v7, Ljava/lang/Integer;

    .line 30
    .line 31
    if-eqz v7, :cond_0

    .line 32
    .line 33
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eq v7, v6, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_0
    :goto_0
    sget-object v7, Lcom/google/android/libraries/places/internal/zzkd;->zza:Landroid/os/DropBoxManager;

    .line 44
    .line 45
    if-eqz v7, :cond_3

    .line 46
    .line 47
    const-string v8, "system_app_crash"

    .line 48
    .line 49
    invoke-virtual {v7, v8}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-eqz v7, :cond_3

    .line 54
    .line 55
    sget-object v7, Lcom/google/android/libraries/places/internal/zzkd;->zza:Landroid/os/DropBoxManager;

    .line 56
    .line 57
    new-instance v8, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const/16 v9, 0x2e

    .line 63
    .line 64
    invoke-static {v9}, Lcom/google/android/libraries/places/internal/zzma;->zzb(C)Lcom/google/android/libraries/places/internal/zzma;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    invoke-static {v9}, Lcom/google/android/libraries/places/internal/zzmy;->zzb(Lcom/google/android/libraries/places/internal/zzma;)Lcom/google/android/libraries/places/internal/zzmy;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    const-string v10, "3.5.0"

    .line 73
    .line 74
    invoke-virtual {v9, v10}, Lcom/google/android/libraries/places/internal/zzmy;->zzf(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    if-eq v10, v0, :cond_1

    .line 83
    .line 84
    :catch_0
    const-wide/16 v11, -0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_1
    const-wide/16 v13, 0x0

    .line 88
    .line 89
    move v10, v2

    .line 90
    :goto_1
    :try_start_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v15

    .line 94
    if-ge v10, v15, :cond_2

    .line 95
    .line 96
    const-wide/16 v15, 0x64

    .line 97
    .line 98
    mul-long/2addr v13, v15

    .line 99
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v15

    .line 103
    check-cast v15, Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v15
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    int-to-long v11, v15

    .line 110
    add-long/2addr v13, v11

    .line 111
    add-int/2addr v10, v1

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    move-wide v11, v13

    .line 114
    :goto_2
    :try_start_2
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    new-array v0, v0, [Ljava/lang/Object;

    .line 119
    .line 120
    sget-object v10, Lcom/google/android/libraries/places/internal/zzkd;->zzc:Ljava/lang/String;

    .line 121
    .line 122
    aput-object v10, v0, v2

    .line 123
    .line 124
    aput-object v9, v0, v1

    .line 125
    .line 126
    const-string v9, "3.5.0"

    .line 127
    .line 128
    const/4 v10, 0x2

    .line 129
    aput-object v9, v0, v10

    .line 130
    .line 131
    const-string v9, "Package: %s v%d (%s)\n"

    .line 132
    .line 133
    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    new-array v0, v1, [Ljava/lang/Object;

    .line 141
    .line 142
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 143
    .line 144
    aput-object v1, v0, v2

    .line 145
    .line 146
    const-string v1, "Build: %s\n"

    .line 147
    .line 148
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v0, "\n"

    .line 156
    .line 157
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-static/range {p0 .. p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const-string v1, "system_app_crash"

    .line 172
    .line 173
    invoke-virtual {v7, v1, v0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    sget-object v0, Lcom/google/android/libraries/places/internal/zzkd;->zzb:Ljava/util/LinkedHashMap;

    .line 177
    .line 178
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    .line 188
    .line 189
    monitor-exit v3

    .line 190
    return-void

    .line 191
    :cond_3
    monitor-exit v3

    .line 192
    return-void

    .line 193
    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    throw v0
.end method
