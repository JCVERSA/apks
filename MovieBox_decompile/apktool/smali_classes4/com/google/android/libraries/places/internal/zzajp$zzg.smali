.class final Lcom/google/android/libraries/places/internal/zzajp$zzg;
.super Lcom/google/android/libraries/places/internal/zzajp$zza;
.source "source.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzajr;)V
    .locals 0

    .line 2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzajp$zza;-><init>(Lcom/google/android/libraries/places/internal/zzajo;)V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/libraries/places/internal/zzajp;Lcom/google/android/libraries/places/internal/zzajp$zzd;)Lcom/google/android/libraries/places/internal/zzajp$zzd;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzajp;->zzb(Lcom/google/android/libraries/places/internal/zzajp;)Lcom/google/android/libraries/places/internal/zzajp$zzd;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eq v0, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzajp;->zzg(Lcom/google/android/libraries/places/internal/zzajp;Lcom/google/android/libraries/places/internal/zzajp$zzd;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p2

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p1

    .line 15
    return-object v0

    .line 16
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p2
.end method

.method final zzb(Lcom/google/android/libraries/places/internal/zzajp;Lcom/google/android/libraries/places/internal/zzajp$zzj;)Lcom/google/android/libraries/places/internal/zzajp$zzj;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzajp;->zzc(Lcom/google/android/libraries/places/internal/zzajp;)Lcom/google/android/libraries/places/internal/zzajp$zzj;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eq v0, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzajp;->zzi(Lcom/google/android/libraries/places/internal/zzajp;Lcom/google/android/libraries/places/internal/zzajp$zzj;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p2

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p1

    .line 15
    return-object v0

    .line 16
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p2
.end method

.method final zzc(Lcom/google/android/libraries/places/internal/zzajp$zzj;Lcom/google/android/libraries/places/internal/zzajp$zzj;)V
    .locals 0

    .line 1
    iput-object p2, p1, Lcom/google/android/libraries/places/internal/zzajp$zzj;->next:Lcom/google/android/libraries/places/internal/zzajp$zzj;

    .line 2
    .line 3
    return-void
.end method

.method final zzd(Lcom/google/android/libraries/places/internal/zzajp$zzj;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p2, p1, Lcom/google/android/libraries/places/internal/zzajp$zzj;->thread:Ljava/lang/Thread;

    .line 2
    .line 3
    return-void
.end method

.method final zze(Lcom/google/android/libraries/places/internal/zzajp;Lcom/google/android/libraries/places/internal/zzajp$zzd;Lcom/google/android/libraries/places/internal/zzajp$zzd;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzajp;->zzb(Lcom/google/android/libraries/places/internal/zzajp;)Lcom/google/android/libraries/places/internal/zzajp$zzd;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-ne v0, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzajp;->zzg(Lcom/google/android/libraries/places/internal/zzajp;Lcom/google/android/libraries/places/internal/zzajp$zzd;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit p1

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p2
.end method

.method final zzf(Lcom/google/android/libraries/places/internal/zzajp;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzajp;->zzd(Lcom/google/android/libraries/places/internal/zzajp;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-ne v0, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzajp;->zzh(Lcom/google/android/libraries/places/internal/zzajp;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit p1

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p2
.end method

.method final zzg(Lcom/google/android/libraries/places/internal/zzajp;Lcom/google/android/libraries/places/internal/zzajp$zzj;Lcom/google/android/libraries/places/internal/zzajp$zzj;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzajp;->zzc(Lcom/google/android/libraries/places/internal/zzajp;)Lcom/google/android/libraries/places/internal/zzajp$zzj;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-ne v0, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzajp;->zzi(Lcom/google/android/libraries/places/internal/zzajp;Lcom/google/android/libraries/places/internal/zzajp$zzj;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit p1

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p2
.end method
