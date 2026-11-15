.class final Lcom/google/android/libraries/places/internal/zzbri;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbwq;


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbwb;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbqe;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzbrj;

.field private zze:Z

.field private zzf:Z

.field private zzg:Z

.field private zzh:Lcom/google/android/libraries/places/internal/zzbwq;

.field private zzi:Ljava/net/Socket;

.field private zzj:Z

.field private zzk:I

.field private zzl:I


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzbqe;Lcom/google/android/libraries/places/internal/zzbrj;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p3, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbri;->zza:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance p3, Lcom/google/android/libraries/places/internal/zzbwb;

    .line 12
    .line 13
    invoke-direct {p3}, Lcom/google/android/libraries/places/internal/zzbwb;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    iput-boolean p3, p0, Lcom/google/android/libraries/places/internal/zzbri;->zze:Z

    .line 20
    .line 21
    iput-boolean p3, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzf:Z

    .line 22
    .line 23
    iput-boolean p3, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzg:Z

    .line 24
    .line 25
    const-string p3, "executor"

    .line 26
    .line 27
    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzc:Lcom/google/android/libraries/places/internal/zzbqe;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzd:Lcom/google/android/libraries/places/internal/zzbrj;

    .line 33
    .line 34
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzbri;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzk:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzbri;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzl:I

    .line 2
    .line 3
    return p0
.end method

.method static zzc(Lcom/google/android/libraries/places/internal/zzbqe;Lcom/google/android/libraries/places/internal/zzbrj;I)Lcom/google/android/libraries/places/internal/zzbri;
    .locals 1

    .line 1
    new-instance p2, Lcom/google/android/libraries/places/internal/zzbri;

    .line 2
    .line 3
    const/16 v0, 0x2710

    .line 4
    .line 5
    invoke-direct {p2, p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzbri;-><init>(Lcom/google/android/libraries/places/internal/zzbqe;Lcom/google/android/libraries/places/internal/zzbrj;I)V

    .line 6
    .line 7
    .line 8
    return-object p2
.end method

.method static bridge synthetic zzd(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbrj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzd:Lcom/google/android/libraries/places/internal/zzbrj;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/libraries/places/internal/zzbri;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/libraries/places/internal/zzbri;)Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzi:Ljava/net/Socket;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbwb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/libraries/places/internal/zzbri;)Lcom/google/android/libraries/places/internal/zzbwq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzh:Lcom/google/android/libraries/places/internal/zzbwq;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/libraries/places/internal/zzbri;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzk:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/libraries/places/internal/zzbri;Z)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzf:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic zzk(Lcom/google/android/libraries/places/internal/zzbri;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzl:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic zzl(Lcom/google/android/libraries/places/internal/zzbri;Z)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zze:Z

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzg:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzg:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzc:Lcom/google/android/libraries/places/internal/zzbqe;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbre;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzbre;-><init>(Lcom/google/android/libraries/places/internal/zzbri;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbqe;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzg:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget v0, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zza:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzf:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzf:Z

    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzc:Lcom/google/android/libraries/places/internal/zzbqe;

    .line 23
    .line 24
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbrd;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzbrd;-><init>(Lcom/google/android/libraries/places/internal/zzbri;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbqe;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw v1

    .line 35
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 36
    .line 37
    const-string v1, "closed"

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method final zzm(Lcom/google/android/libraries/places/internal/zzbwq;Ljava/net/Socket;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzh:Lcom/google/android/libraries/places/internal/zzbwq;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    const-string v1, "AsyncSink\'s becomeConnected should only be called once."

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzh:Lcom/google/android/libraries/places/internal/zzbwq;

    .line 14
    .line 15
    const-string p1, "socket"

    .line 16
    .line 17
    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzi:Ljava/net/Socket;

    .line 21
    .line 22
    return-void
.end method

.method public final zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzg:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    sget v0, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbri;->zza:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 11
    .line 12
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbwb;->zzn(Lcom/google/android/libraries/places/internal/zzbwb;J)V

    .line 13
    .line 14
    .line 15
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzl:I

    .line 16
    .line 17
    iget p2, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzk:I

    .line 18
    .line 19
    add-int/2addr p1, p2

    .line 20
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzl:I

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    iput p2, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzk:I

    .line 24
    .line 25
    iget-boolean p3, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzj:Z

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    if-nez p3, :cond_0

    .line 29
    .line 30
    const/16 p3, 0x2710

    .line 31
    .line 32
    if-le p1, p3, :cond_0

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzj:Z

    .line 35
    .line 36
    move p2, v1

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_4

    .line 40
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zze:Z

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzf:Z

    .line 45
    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzb:Lcom/google/android/libraries/places/internal/zzbwb;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbwb;->zzf()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    const-wide/16 v4, 0x0

    .line 55
    .line 56
    cmp-long p1, v2, v4

    .line 57
    .line 58
    if-gtz p1, :cond_1

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zze:Z

    .line 62
    .line 63
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    if-eqz p2, :cond_2

    .line 65
    .line 66
    :try_start_1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzi:Ljava/net/Socket;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catchall_1
    move-exception p1

    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception p1

    .line 75
    goto :goto_2

    .line 76
    :goto_1
    throw p1

    .line 77
    :goto_2
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzd:Lcom/google/android/libraries/places/internal/zzbrj;

    .line 78
    .line 79
    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzbrj;->zzb(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbri;->zzc:Lcom/google/android/libraries/places/internal/zzbqe;

    .line 84
    .line 85
    new-instance p2, Lcom/google/android/libraries/places/internal/zzbrc;

    .line 86
    .line 87
    invoke-direct {p2, p0}, Lcom/google/android/libraries/places/internal/zzbrc;-><init>(Lcom/google/android/libraries/places/internal/zzbri;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzbqe;->execute(Ljava/lang/Runnable;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_3
    :goto_3
    :try_start_2
    monitor-exit v0

    .line 95
    return-void

    .line 96
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    throw p1

    .line 98
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 99
    .line 100
    const-string p2, "closed"

    .line 101
    .line 102
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1
.end method
