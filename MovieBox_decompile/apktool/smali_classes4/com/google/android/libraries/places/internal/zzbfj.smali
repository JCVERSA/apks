.class final Lcom/google/android/libraries/places/internal/zzbfj;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/google/android/libraries/places/internal/zzazg;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbfq;

.field private final zzb:Z

.field private final zzc:Z

.field private final zzd:J

.field private volatile zze:Ljava/util/concurrent/ScheduledFuture;

.field private volatile zzf:Z


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbfq;Lcom/google/android/libraries/places/internal/zzazn;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzb:Z

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzc:Z

    .line 12
    .line 13
    const-wide/16 p1, 0x0

    .line 14
    .line 15
    :goto_0
    iput-wide p1, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzd:J

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzc:Z

    .line 20
    .line 21
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzazn;->zzb(Ljava/util/concurrent/TimeUnit;)J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    goto :goto_0
.end method

.method static bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzbfj;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzd:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbfq;->zzo(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbfr;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbfj;->zzb()Lcom/google/android/libraries/places/internal/zzbdo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzh(Lcom/google/android/libraries/places/internal/zzbdo;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method final zzb()Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-wide v1, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzd:J

    .line 3
    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    const-wide/16 v4, 0x1

    .line 11
    .line 12
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v6

    .line 16
    div-long/2addr v1, v6

    .line 17
    iget-wide v6, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzd:J

    .line 18
    .line 19
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v6

    .line 23
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    rem-long/2addr v6, v3

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    iget-boolean v5, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzb:Z

    .line 35
    .line 36
    if-eq v4, v5, :cond_0

    .line 37
    .line 38
    const-string v5, "CallOptions"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string v5, "Context"

    .line 42
    .line 43
    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v5, " deadline exceeded after "

    .line 47
    .line 48
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v8, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzd:J

    .line 52
    .line 53
    const-wide/16 v10, 0x0

    .line 54
    .line 55
    cmp-long v5, v8, v10

    .line 56
    .line 57
    if-gez v5, :cond_1

    .line 58
    .line 59
    const/16 v5, 0x2d

    .line 60
    .line 61
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 68
    .line 69
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    new-array v5, v4, [Ljava/lang/Object;

    .line 74
    .line 75
    aput-object v2, v5, v0

    .line 76
    .line 77
    const-string v2, ".%09d"

    .line 78
    .line 79
    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, "s. "

    .line 87
    .line 88
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    .line 92
    .line 93
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbfq;->zzg(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzayj;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    sget-object v5, Lcom/google/android/libraries/places/internal/zzayx;->zza:Lcom/google/android/libraries/places/internal/zzayh;

    .line 98
    .line 99
    invoke-virtual {v2, v5}, Lcom/google/android/libraries/places/internal/zzayj;->zzl(Lcom/google/android/libraries/places/internal/zzayh;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Ljava/lang/Long;

    .line 104
    .line 105
    if-nez v2, :cond_2

    .line 106
    .line 107
    const-wide/16 v5, 0x0

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 111
    .line 112
    .line 113
    move-result-wide v5

    .line 114
    long-to-double v5, v5

    .line 115
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbfq;->zzf()D

    .line 116
    .line 117
    .line 118
    move-result-wide v7

    .line 119
    div-double/2addr v5, v7

    .line 120
    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    new-array v4, v4, [Ljava/lang/Object;

    .line 125
    .line 126
    aput-object v2, v4, v0

    .line 127
    .line 128
    const-string v0, "Name resolution delay %.9f seconds."

    .line 129
    .line 130
    invoke-static {v1, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    .line 138
    .line 139
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbfq;->zzo(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbfr;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v0, :cond_3

    .line 144
    .line 145
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbjj;

    .line 146
    .line 147
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbjj;-><init>()V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    .line 151
    .line 152
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzbfq;->zzo(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbfr;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzbfr;->zzg(Lcom/google/android/libraries/places/internal/zzbjj;)V

    .line 157
    .line 158
    .line 159
    const-string v1, " "

    .line 160
    .line 161
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zze:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 172
    .line 173
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    return-object v0
.end method

.method final zzc()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzf:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzc:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzb:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbfq;->zzq(Lcom/google/android/libraries/places/internal/zzbfq;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbfq;->zzq(Lcom/google/android/libraries/places/internal/zzbfq;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbki;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzbki;-><init>(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    iget-wide v2, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzd:J

    .line 32
    .line 33
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 34
    .line 35
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zze:Ljava/util/concurrent/ScheduledFuture;

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zza:Lcom/google/android/libraries/places/internal/zzbfq;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbfq;->zzh(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzazj;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzakb;->zza()Ljava/util/concurrent/Executor;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, p0, v1}, Lcom/google/android/libraries/places/internal/zzazj;->zzd(Lcom/google/android/libraries/places/internal/zzazg;Ljava/util/concurrent/Executor;)V

    .line 52
    .line 53
    .line 54
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzf:Z

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbfj;->zzd()V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    return-void
.end method

.method final zzd()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zzf:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfj;->zze:Ljava/util/concurrent/ScheduledFuture;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
