.class final Lcom/google/android/libraries/places/internal/zzbse;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/google/android/libraries/places/internal/zzbtq;


# instance fields
.field final zza:Lcom/google/android/libraries/places/internal/zzbtr;

.field zzb:Z

.field final synthetic zzc:Lcom/google/android/libraries/places/internal/zzbsf;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzbsi;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbtr;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/google/android/libraries/places/internal/zzbsi;

    .line 7
    .line 8
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 9
    .line 10
    const-class v1, Lcom/google/android/libraries/places/internal/zzbsf;

    .line 11
    .line 12
    invoke-direct {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzbsi;-><init>(Ljava/util/logging/Level;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzb:Z

    .line 19
    .line 20
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zza:Lcom/google/android/libraries/places/internal/zzbtr;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "OkHttpClientTransport"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zza:Lcom/google/android/libraries/places/internal/zzbtr;

    .line 20
    .line 21
    invoke-interface {v2, p0}, Lcom/google/android/libraries/places/internal/zzbtr;->zza(Lcom/google/android/libraries/places/internal/zzbtq;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzo(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbkh;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzo(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbkh;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbkh;->zza()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v2

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 46
    .line 47
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 53
    .line 54
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzl(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    :try_start_2
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 62
    .line 63
    const-string v3, "End of stream or IOException"

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    :cond_2
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 70
    .line 71
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbtp;->zzg:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 72
    .line 73
    invoke-static {v2, v1, v4, v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzO(Lcom/google/android/libraries/places/internal/zzbsf;ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbdo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catchall_1
    move-exception v3

    .line 78
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 80
    :goto_1
    :try_start_5
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 81
    .line 82
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbtp;->zzb:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 83
    .line 84
    sget-object v5, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 85
    .line 86
    const-string v6, "error in frame handler"

    .line 87
    .line 88
    invoke-virtual {v5, v6}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v5, v2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v3, v1, v4, v2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzO(Lcom/google/android/libraries/places/internal/zzbsf;ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbdo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 97
    .line 98
    .line 99
    :goto_2
    :try_start_6
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zza:Lcom/google/android/libraries/places/internal/zzbtr;

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_5

    .line 105
    :catch_0
    move-exception v1

    .line 106
    goto :goto_3

    .line 107
    :catch_1
    move-exception v1

    .line 108
    move-object v7, v1

    .line 109
    goto :goto_4

    .line 110
    :goto_3
    const-string v2, "bio == null"

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_3

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_3
    throw v1

    .line 124
    :goto_4
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsf;->zzD()Ljava/util/logging/Logger;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 129
    .line 130
    const-string v4, "io.grpc.okhttp.OkHttpClientTransport$ClientFrameHandler"

    .line 131
    .line 132
    const-string v5, "run"

    .line 133
    .line 134
    const-string v6, "Exception closing frame reader"

    .line 135
    .line 136
    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    :goto_5
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 140
    .line 141
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzp(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbmk;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbmk;->zze()V

    .line 146
    .line 147
    .line 148
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :catchall_2
    move-exception v1

    .line 157
    :try_start_7
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zza:Lcom/google/android/libraries/places/internal/zzbtr;

    .line 158
    .line 159
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    .line 160
    .line 161
    .line 162
    goto :goto_8

    .line 163
    :catch_2
    move-exception v2

    .line 164
    goto :goto_6

    .line 165
    :catch_3
    move-exception v2

    .line 166
    move-object v8, v2

    .line 167
    goto :goto_7

    .line 168
    :goto_6
    const-string v3, "bio == null"

    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-nez v3, :cond_4

    .line 179
    .line 180
    throw v2

    .line 181
    :goto_7
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsf;->zzD()Ljava/util/logging/Logger;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 186
    .line 187
    const-string v5, "io.grpc.okhttp.OkHttpClientTransport$ClientFrameHandler"

    .line 188
    .line 189
    const-string v6, "run"

    .line 190
    .line 191
    const-string v7, "Exception closing frame reader"

    .line 192
    .line 193
    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    :cond_4
    :goto_8
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 197
    .line 198
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzp(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbmk;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzbmk;->zze()V

    .line 203
    .line 204
    .line 205
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v1
.end method

.method public final zza(ZILcom/google/android/libraries/places/internal/zzbwd;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p3

    .line 2
    check-cast v0, Lcom/google/android/libraries/places/internal/zzbwl;

    .line 3
    .line 4
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/zzbwl;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    move v3, p2

    .line 10
    move v5, p4

    .line 11
    move v6, p1

    .line 12
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbsi;->zza(IILcom/google/android/libraries/places/internal/zzbwb;IZ)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzr(I)Lcom/google/android/libraries/places/internal/zzbry;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzU(I)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    monitor-enter p1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzq(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbrk;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzi:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 45
    .line 46
    invoke-virtual {v0, p2, v1}, Lcom/google/android/libraries/places/internal/zzbrk;->zzc(ILcom/google/android/libraries/places/internal/zzbtp;)V

    .line 47
    .line 48
    .line 49
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    int-to-long p1, p4

    .line 51
    invoke-interface {p3, p1, p2}, Lcom/google/android/libraries/places/internal/zzbwd;->zzF(J)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p2

    .line 56
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p2

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 59
    .line 60
    sget-object p3, Lcom/google/android/libraries/places/internal/zzbtp;->zzb:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 61
    .line 62
    new-instance p4, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string p5, "Received data for unknown stream: "

    .line 68
    .line 69
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-static {p1, p3, p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzN(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbtp;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    int-to-long v1, p4

    .line 84
    invoke-interface {p3, v1, v2}, Lcom/google/android/libraries/places/internal/zzbwd;->zzD(J)V

    .line 85
    .line 86
    .line 87
    new-instance p2, Lcom/google/android/libraries/places/internal/zzbwb;

    .line 88
    .line 89
    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    .line 90
    .line 91
    .line 92
    check-cast p3, Lcom/google/android/libraries/places/internal/zzbwl;

    .line 93
    .line 94
    iget-object p3, p3, Lcom/google/android/libraries/places/internal/zzbwl;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 95
    .line 96
    invoke-virtual {p2, p3, v1, v2}, Lcom/google/android/libraries/places/internal/zzbwb;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/zzbrx;->zzI()Lcom/google/android/libraries/places/internal/zzbvs;

    .line 104
    .line 105
    .line 106
    sget p3, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    .line 107
    .line 108
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 109
    .line 110
    invoke-static {p3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    monitor-enter p3

    .line 115
    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sub-int p4, p5, p4

    .line 120
    .line 121
    invoke-virtual {v0, p2, p1, p4}, Lcom/google/android/libraries/places/internal/zzbrx;->zzO(Lcom/google/android/libraries/places/internal/zzbwb;ZI)V

    .line 122
    .line 123
    .line 124
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 125
    :goto_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 126
    .line 127
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzf(Lcom/google/android/libraries/places/internal/zzbsf;)I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    add-int/2addr p2, p5

    .line 132
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzI(Lcom/google/android/libraries/places/internal/zzbsf;I)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 136
    .line 137
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzf(Lcom/google/android/libraries/places/internal/zzbsf;)I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    int-to-float p2, p2

    .line 142
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzg(Lcom/google/android/libraries/places/internal/zzbsf;)I

    .line 143
    .line 144
    .line 145
    move-result p3

    .line 146
    int-to-float p3, p3

    .line 147
    const/high16 p4, 0x3f000000    # 0.5f

    .line 148
    .line 149
    mul-float/2addr p3, p4

    .line 150
    cmpl-float p2, p2, p3

    .line 151
    .line 152
    if-ltz p2, :cond_2

    .line 153
    .line 154
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    monitor-enter p1

    .line 159
    :try_start_3
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 160
    .line 161
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzq(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbrk;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzf(Lcom/google/android/libraries/places/internal/zzbsf;)I

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    int-to-long p4, p2

    .line 170
    const/4 p2, 0x0

    .line 171
    invoke-virtual {p3, p2, p4, p5}, Lcom/google/android/libraries/places/internal/zzbrk;->zzk(IJ)V

    .line 172
    .line 173
    .line 174
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 175
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 176
    .line 177
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzI(Lcom/google/android/libraries/places/internal/zzbsf;I)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :catchall_1
    move-exception p2

    .line 182
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 183
    throw p2

    .line 184
    :cond_2
    return-void

    .line 185
    :catchall_2
    move-exception p1

    .line 186
    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 187
    throw p1
.end method

.method public final zzb(ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbwf;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbsi;->zzb(IILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbwf;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtp;->zzo:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 8
    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/zzbwf;->zzf()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsf;->zzD()Ljava/util/logging/Logger;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    new-array v4, v4, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    aput-object p0, v4, v5

    .line 26
    .line 27
    aput-object v0, v4, v1

    .line 28
    .line 29
    const-string v1, "%s: Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: %s"

    .line 30
    .line 31
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v4, "io.grpc.okhttp.OkHttpClientTransport$ClientFrameHandler"

    .line 36
    .line 37
    const-string v5, "goAway"

    .line 38
    .line 39
    invoke-virtual {v2, v3, v4, v5, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "too_many_pings"

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzx(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Runnable;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/google/android/libraries/places/internal/zzbrs;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbrs;->zza:Lcom/google/android/libraries/places/internal/zzben;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzben;->zza()V

    .line 61
    .line 62
    .line 63
    :cond_0
    iget p2, p2, Lcom/google/android/libraries/places/internal/zzbtp;->zzs:I

    .line 64
    .line 65
    int-to-long v0, p2

    .line 66
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzbjb;->zza(J)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const-string v0, "Received Goaway"

    .line 71
    .line 72
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-lez v0, :cond_1

    .line 81
    .line 82
    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/zzbwf;->zzf()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-virtual {p2, p3}, Lcom/google/android/libraries/places/internal/zzbdo;->zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    :cond_1
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 91
    .line 92
    const/4 v0, 0x0

    .line 93
    invoke-static {p3, p1, v0, p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzO(Lcom/google/android/libraries/places/internal/zzbsf;ILcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbdo;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final zzc(ZII)V
    .locals 10

    .line 1
    int-to-long v0, p2

    .line 2
    int-to-long v2, p3

    .line 3
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    .line 4
    .line 5
    const/16 v5, 0x20

    .line 6
    .line 7
    shl-long/2addr v0, v5

    .line 8
    const-wide v5, 0xffffffffL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    and-long/2addr v2, v5

    .line 14
    or-long/2addr v0, v2

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v4, v2, v0, v1}, Lcom/google/android/libraries/places/internal/zzbsi;->zzd(IJ)V

    .line 17
    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    monitor-enter p1

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzq(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbrk;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, v2, p2, p3}, Lcom/google/android/libraries/places/internal/zzbrk;->zzb(ZII)V

    .line 35
    .line 36
    .line 37
    monitor-exit p1

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p2

    .line 40
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p2

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    monitor-enter p1

    .line 49
    :try_start_1
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 50
    .line 51
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzn(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbjh;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    const/4 v3, 0x0

    .line 56
    if-eqz p3, :cond_2

    .line 57
    .line 58
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzn(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbjh;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbjh;->zza()J

    .line 63
    .line 64
    .line 65
    move-result-wide p2

    .line 66
    cmp-long p2, p2, v0

    .line 67
    .line 68
    if-nez p2, :cond_1

    .line 69
    .line 70
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 71
    .line 72
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzn(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbjh;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-static {p2, v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzK(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbjh;)V

    .line 77
    .line 78
    .line 79
    move-object v3, p3

    .line 80
    goto :goto_0

    .line 81
    :catchall_1
    move-exception p2

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsf;->zzD()Ljava/util/logging/Logger;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 88
    .line 89
    const-string v4, "io.grpc.okhttp.OkHttpClientTransport$ClientFrameHandler"

    .line 90
    .line 91
    const-string v5, "ping"

    .line 92
    .line 93
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 94
    .line 95
    const-string v7, "Received unexpected ping ack. Expecting %d, got %d"

    .line 96
    .line 97
    iget-object v8, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 98
    .line 99
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/zzbsf;->zzn(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbjh;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-virtual {v8}, Lcom/google/android/libraries/places/internal/zzbjh;->zza()J

    .line 104
    .line 105
    .line 106
    move-result-wide v8

    .line 107
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const/4 v1, 0x2

    .line 116
    new-array v1, v1, [Ljava/lang/Object;

    .line 117
    .line 118
    const/4 v9, 0x0

    .line 119
    aput-object v8, v1, v9

    .line 120
    .line 121
    aput-object v0, v1, v2

    .line 122
    .line 123
    invoke-static {v6, v7, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p2, p3, v4, v5, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbsf;->zzD()Ljava/util/logging/Logger;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 136
    .line 137
    const-string v0, "io.grpc.okhttp.OkHttpClientTransport$ClientFrameHandler"

    .line 138
    .line 139
    const-string v1, "ping"

    .line 140
    .line 141
    const-string v2, "Received unexpected ping ack. No ping outstanding"

    .line 142
    .line 143
    invoke-virtual {p2, p3, v0, v1, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    if-eqz v3, :cond_3

    .line 148
    .line 149
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzbjh;->zzc()Z

    .line 150
    .line 151
    .line 152
    :cond_3
    return-void

    .line 153
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    throw p2
.end method

.method public final zzd(IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbsi;->zzf(IIILjava/util/List;)V

    .line 5
    .line 6
    .line 7
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 8
    .line 9
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    monitor-enter p2

    .line 14
    :try_start_0
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 15
    .line 16
    invoke-static {p3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzq(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbrk;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtp;->zzb:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 21
    .line 22
    invoke-virtual {p3, p1, v0}, Lcom/google/android/libraries/places/internal/zzbrk;->zzc(ILcom/google/android/libraries/places/internal/zzbtp;)V

    .line 23
    .line 24
    .line 25
    monitor-exit p2

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p1
.end method

.method public final zze(ILcom/google/android/libraries/places/internal/zzbtp;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/libraries/places/internal/zzbsi;->zzg(IILcom/google/android/libraries/places/internal/zzbtp;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzm(Lcom/google/android/libraries/places/internal/zzbtp;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "Rst Stream"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzbdo;->zza()Lcom/google/android/libraries/places/internal/zzbdj;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdj;->zzb:Lcom/google/android/libraries/places/internal/zzbdj;

    .line 22
    .line 23
    if-eq v0, v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzbdo;->zza()Lcom/google/android/libraries/places/internal/zzbdj;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbdj;->zze:Lcom/google/android/libraries/places/internal/zzbdj;

    .line 30
    .line 31
    if-ne v0, v2, :cond_1

    .line 32
    .line 33
    :cond_0
    :goto_0
    move v7, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    goto :goto_0

    .line 37
    :goto_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzB(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/google/android/libraries/places/internal/zzbry;

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzbrx;->zzI()Lcom/google/android/libraries/places/internal/zzbvs;

    .line 67
    .line 68
    .line 69
    sget v1, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    .line 70
    .line 71
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 72
    .line 73
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtp;->zzk:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 74
    .line 75
    if-ne p2, v1, :cond_2

    .line 76
    .line 77
    sget-object p2, Lcom/google/android/libraries/places/internal/zzbfs;->zzb:Lcom/google/android/libraries/places/internal/zzbfs;

    .line 78
    .line 79
    :goto_2
    move-object v6, p2

    .line 80
    goto :goto_3

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    goto :goto_4

    .line 83
    :cond_2
    sget-object p2, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :goto_3
    const/4 v8, 0x0

    .line 87
    const/4 v9, 0x0

    .line 88
    move v4, p1

    .line 89
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/libraries/places/internal/zzbsf;->zzP(ILcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbtp;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    monitor-exit v0

    .line 93
    return-void

    .line 94
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    throw p1
.end method

.method public final zzf(ZLcom/google/android/libraries/places/internal/zzbue;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0, p2}, Lcom/google/android/libraries/places/internal/zzbsi;->zzh(ILcom/google/android/libraries/places/internal/zzbue;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    monitor-enter p1

    .line 14
    const/4 v0, 0x4

    .line 15
    :try_start_0
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzbue;->zzf(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzbue;->zza(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzJ(Lcom/google/android/libraries/places/internal/zzbsf;I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p2

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    :goto_0
    const/4 v0, 0x7

    .line 34
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzbue;->zzf(I)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzbue;->zza(I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzt(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbsu;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbsu;->zzh(I)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v0, v2

    .line 57
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzb:Z

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 62
    .line 63
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzp(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbmk;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzk(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzaye;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-interface {v3, v4}, Lcom/google/android/libraries/places/internal/zzbmk;->zza(Lcom/google/android/libraries/places/internal/zzaye;)Lcom/google/android/libraries/places/internal/zzaye;

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v4}, Lcom/google/android/libraries/places/internal/zzbsf;->zzG(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzaye;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 78
    .line 79
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzp(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbmk;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbmk;->zzc()V

    .line 84
    .line 85
    .line 86
    iput-boolean v2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzb:Z

    .line 87
    .line 88
    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 89
    .line 90
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzq(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbrk;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1, p2}, Lcom/google/android/libraries/places/internal/zzbrk;->zza(Lcom/google/android/libraries/places/internal/zzbue;)V

    .line 95
    .line 96
    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 100
    .line 101
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzt(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbsu;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbsu;->zzg()V

    .line 106
    .line 107
    .line 108
    :cond_3
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 109
    .line 110
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzS(Lcom/google/android/libraries/places/internal/zzbsf;)Z

    .line 111
    .line 112
    .line 113
    monitor-exit p1

    .line 114
    return-void

    .line 115
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p2
.end method

.method public final zzg(IJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbsi;->zzj(IIJ)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    monitor-enter v0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzt(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbsu;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v1, 0x0

    .line 23
    long-to-int p2, p2

    .line 24
    invoke-virtual {p1, v1, p2}, Lcom/google/android/libraries/places/internal/zzbsu;->zza(Lcom/google/android/libraries/places/internal/zzbsq;I)I

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzB(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/google/android/libraries/places/internal/zzbry;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzt(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbsu;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzbrx;->zzH()Lcom/google/android/libraries/places/internal/zzbsq;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    long-to-int p2, p2

    .line 65
    invoke-virtual {v1, v2, p2}, Lcom/google/android/libraries/places/internal/zzbsu;->zza(Lcom/google/android/libraries/places/internal/zzbsq;I)I

    .line 66
    .line 67
    .line 68
    :cond_1
    move v1, v3

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 71
    .line 72
    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzU(I)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-nez p2, :cond_1

    .line 77
    .line 78
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 82
    .line 83
    sget-object p3, Lcom/google/android/libraries/places/internal/zzbtp;->zzb:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v1, "Received window_update for unknown stream: "

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzN(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbtp;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    return-void

    .line 106
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    throw p1
.end method

.method public final zzh(ZZIILjava/util/List;I)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzd:Lcom/google/android/libraries/places/internal/zzbsi;

    .line 2
    .line 3
    const/4 p4, 0x1

    .line 4
    invoke-virtual {p1, p4, p3, p5, p2}, Lcom/google/android/libraries/places/internal/zzbsi;->zzc(IILjava/util/List;Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzh(Lcom/google/android/libraries/places/internal/zzbsf;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const p6, 0x7fffffff

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eq p1, p6, :cond_2

    .line 19
    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    move p1, v1

    .line 23
    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result p6

    .line 27
    if-ge p1, p6, :cond_0

    .line 28
    .line 29
    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p6

    .line 33
    check-cast p6, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 34
    .line 35
    iget-object v4, p6, Lcom/google/android/libraries/places/internal/zzbtt;->zzh:Lcom/google/android/libraries/places/internal/zzbwf;

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    add-int/lit8 v4, v4, 0x20

    .line 42
    .line 43
    iget-object p6, p6, Lcom/google/android/libraries/places/internal/zzbtt;->zzi:Lcom/google/android/libraries/places/internal/zzbwf;

    .line 44
    .line 45
    invoke-virtual {p6}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    .line 46
    .line 47
    .line 48
    move-result p6

    .line 49
    add-int/2addr v4, p6

    .line 50
    int-to-long v4, v4

    .line 51
    add-long/2addr v2, v4

    .line 52
    add-int/2addr p1, p4

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-wide/32 v4, 0x7fffffff

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    long-to-int p1, v2

    .line 62
    iget-object p6, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 63
    .line 64
    invoke-static {p6}, Lcom/google/android/libraries/places/internal/zzbsf;->zzh(Lcom/google/android/libraries/places/internal/zzbsf;)I

    .line 65
    .line 66
    .line 67
    move-result p6

    .line 68
    if-le p1, p6, :cond_2

    .line 69
    .line 70
    sget-object p6, Lcom/google/android/libraries/places/internal/zzbdo;->zzj:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 71
    .line 72
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 73
    .line 74
    if-eq p4, p2, :cond_1

    .line 75
    .line 76
    const-string v2, "header"

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    const-string v2, "trailer"

    .line 80
    .line 81
    :goto_1
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 82
    .line 83
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzh(Lcom/google/android/libraries/places/internal/zzbsf;)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const/4 v4, 0x3

    .line 96
    new-array v4, v4, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object v2, v4, v1

    .line 99
    .line 100
    aput-object v3, v4, p4

    .line 101
    .line 102
    const/4 v2, 0x2

    .line 103
    aput-object p1, v4, v2

    .line 104
    .line 105
    const-string p1, "Response %s metadata larger than %d: %d"

    .line 106
    .line 107
    invoke-static {v0, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p6, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 116
    .line 117
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsf;->zzw(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    monitor-enter p1

    .line 122
    :try_start_0
    iget-object p6, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 123
    .line 124
    invoke-static {p6}, Lcom/google/android/libraries/places/internal/zzbsf;->zzB(Lcom/google/android/libraries/places/internal/zzbsf;)Ljava/util/Map;

    .line 125
    .line 126
    .line 127
    move-result-object p6

    .line 128
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-interface {p6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p6

    .line 136
    check-cast p6, Lcom/google/android/libraries/places/internal/zzbry;

    .line 137
    .line 138
    if-nez p6, :cond_3

    .line 139
    .line 140
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 141
    .line 142
    invoke-virtual {p2, p3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzU(I)Z

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    if-eqz p2, :cond_6

    .line 147
    .line 148
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 149
    .line 150
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzq(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbrk;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    sget-object p4, Lcom/google/android/libraries/places/internal/zzbtp;->zzi:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 155
    .line 156
    invoke-virtual {p2, p3, p4}, Lcom/google/android/libraries/places/internal/zzbrk;->zzc(ILcom/google/android/libraries/places/internal/zzbtp;)V

    .line 157
    .line 158
    .line 159
    :goto_2
    move p4, v1

    .line 160
    goto :goto_3

    .line 161
    :catchall_0
    move-exception p2

    .line 162
    goto :goto_4

    .line 163
    :cond_3
    if-nez v0, :cond_4

    .line 164
    .line 165
    invoke-virtual {p6}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    .line 166
    .line 167
    .line 168
    move-result-object p4

    .line 169
    invoke-virtual {p4}, Lcom/google/android/libraries/places/internal/zzbrx;->zzI()Lcom/google/android/libraries/places/internal/zzbvs;

    .line 170
    .line 171
    .line 172
    sget p4, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    .line 173
    .line 174
    invoke-virtual {p6}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    .line 175
    .line 176
    .line 177
    move-result-object p4

    .line 178
    invoke-virtual {p4, p5, p2}, Lcom/google/android/libraries/places/internal/zzbrx;->zzP(Ljava/util/List;Z)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_4
    if-nez p2, :cond_5

    .line 183
    .line 184
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 185
    .line 186
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzbsf;->zzq(Lcom/google/android/libraries/places/internal/zzbsf;)Lcom/google/android/libraries/places/internal/zzbrk;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    sget-object p4, Lcom/google/android/libraries/places/internal/zzbtp;->zzl:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 191
    .line 192
    invoke-virtual {p2, p3, p4}, Lcom/google/android/libraries/places/internal/zzbrk;->zzc(ILcom/google/android/libraries/places/internal/zzbtp;)V

    .line 193
    .line 194
    .line 195
    :cond_5
    invoke-virtual {p6}, Lcom/google/android/libraries/places/internal/zzbry;->zzD()Lcom/google/android/libraries/places/internal/zzbrx;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    new-instance p4, Lcom/google/android/libraries/places/internal/zzbcf;

    .line 200
    .line 201
    invoke-direct {p4}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    .line 202
    .line 203
    .line 204
    sget-object p5, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    .line 205
    .line 206
    invoke-virtual {p2, v0, p5, v1, p4}, Lcom/google/android/libraries/places/internal/zzbee;->zzj(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbcf;)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_6
    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    if-eqz p4, :cond_7

    .line 212
    .line 213
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbse;->zzc:Lcom/google/android/libraries/places/internal/zzbsf;

    .line 214
    .line 215
    sget-object p2, Lcom/google/android/libraries/places/internal/zzbtp;->zzb:Lcom/google/android/libraries/places/internal/zzbtp;

    .line 216
    .line 217
    new-instance p4, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string p5, "Received header for unknown stream: "

    .line 223
    .line 224
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p3

    .line 234
    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbsf;->zzN(Lcom/google/android/libraries/places/internal/zzbsf;Lcom/google/android/libraries/places/internal/zzbtp;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :cond_7
    return-void

    .line 238
    :goto_4
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    throw p2
.end method
