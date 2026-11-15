.class final Lcom/google/android/libraries/places/internal/zzbob;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzboe;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzboe;Lcom/google/android/libraries/places/internal/zzboa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbob;->zza:Lcom/google/android/libraries/places/internal/zzboe;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbob;->zza:Lcom/google/android/libraries/places/internal/zzboe;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzboe;->zzj(Lcom/google/android/libraries/places/internal/zzboe;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzboe;->zzg(Lcom/google/android/libraries/places/internal/zzboe;Ljava/util/concurrent/ScheduledFuture;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzboe;->zzb(Lcom/google/android/libraries/places/internal/zzboe;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzboe;->zza(Lcom/google/android/libraries/places/internal/zzboe;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    sub-long/2addr v0, v3

    .line 23
    const-wide/16 v5, 0x0

    .line 24
    .line 25
    cmp-long v0, v0, v5

    .line 26
    .line 27
    if-lez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbob;->zza:Lcom/google/android/libraries/places/internal/zzboe;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzboe;->zze(Lcom/google/android/libraries/places/internal/zzboe;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v5, Lcom/google/android/libraries/places/internal/zzbod;

    .line 36
    .line 37
    invoke-direct {v5, v0, v2}, Lcom/google/android/libraries/places/internal/zzbod;-><init>(Lcom/google/android/libraries/places/internal/zzboe;Lcom/google/android/libraries/places/internal/zzboc;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzboe;->zza(Lcom/google/android/libraries/places/internal/zzboe;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v6

    .line 44
    sub-long/2addr v6, v3

    .line 45
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    .line 47
    invoke-interface {v1, v5, v6, v7, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzboe;->zzg(Lcom/google/android/libraries/places/internal/zzboe;Ljava/util/concurrent/ScheduledFuture;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbob;->zza:Lcom/google/android/libraries/places/internal/zzboe;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzboe;->zzf(Lcom/google/android/libraries/places/internal/zzboe;Z)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbob;->zza:Lcom/google/android/libraries/places/internal/zzboe;

    .line 62
    .line 63
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzboe;->zzg(Lcom/google/android/libraries/places/internal/zzboe;Ljava/util/concurrent/ScheduledFuture;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbob;->zza:Lcom/google/android/libraries/places/internal/zzboe;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzboe;->zzc(Lcom/google/android/libraries/places/internal/zzboe;)Ljava/lang/Runnable;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 73
    .line 74
    .line 75
    return-void
.end method
