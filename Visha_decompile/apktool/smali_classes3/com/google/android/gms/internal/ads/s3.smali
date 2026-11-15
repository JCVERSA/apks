.class public final Lcom/google/android/gms/internal/ads/s3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leme;


# instance fields
.field public volatile a:Lt4f;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s3;->b:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/android/gms/internal/ads/s3;)Lt4f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/s3;->a:Lt4f;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/android/gms/internal/ads/s3;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s3;->a:Lt4f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/s3;->a:Lt4f;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->disconnect()V

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/c;)Lfme;
    .locals 13

    const-string v0, "ms"

    const-string v1, "Http assets remote cache took "

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbku;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c;->zzl()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    new-array v4, v3, [Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v4, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbku;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c;->zzk()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v4, v3}, Lcom/google/android/gms/internal/ads/zzbku;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p1

    invoke-interface {p1}, Lfy0;->elapsedRealtime()J

    move-result-wide v3

    const/4 p1, 0x0

    :try_start_0
    new-instance v6, Leff;

    invoke-direct {v6}, Leff;-><init>()V

    new-instance v7, Lc5f;

    invoke-direct {v7, p0, v6}, Lc5f;-><init>(Lcom/google/android/gms/internal/ads/s3;Leff;)V

    new-instance v8, Ld5f;

    invoke-direct {v8, p0, v6}, Ld5f;-><init>(Lcom/google/android/gms/internal/ads/s3;Leff;)V

    new-instance v9, Lt4f;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/s3;->b:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzu()Lcom/google/android/gms/ads/internal/util/zzbt;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/ads/internal/util/zzbt;->zzb()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v9, v10, v11, v7, v8}, Lt4f;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a$a;Lcom/google/android/gms/common/internal/a$b;)V

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/s3;->a:Lt4f;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/s3;->a:Lt4f;

    invoke-virtual {v7}, Lcom/google/android/gms/common/internal/a;->checkAvailabilityAndConnect()V

    new-instance v7, Lcom/google/android/gms/internal/ads/r3;

    invoke-direct {v7, p0, v2}, Lcom/google/android/gms/internal/ads/r3;-><init>(Lcom/google/android/gms/internal/ads/s3;Lcom/google/android/gms/internal/ads/zzbku;)V

    sget-object v2, Lzef;->a:Lg8i;

    invoke-static {v6, v7, v2}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v6

    sget-object v7, Lcye;->F4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v8

    invoke-virtual {v8, v7}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v10, Lzef;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v6, v7, v8, v9, v10}, Lcom/google/android/gms/internal/ads/j8;->o(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbld;

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ads/zzbld;-><init>(Lcom/google/android/gms/internal/ads/s3;)V

    invoke-interface {v6, v7, v2}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v2

    invoke-interface {v2}, Lfy0;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbuw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbuw;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object p0, Lcom/google/android/gms/internal/ads/zzbkw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbuw;->zza(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbkw;

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbkw;->zza:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkw;->zze:[Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbkw;->zzf:[Ljava/lang/String;

    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    :goto_1
    array-length p1, v0

    if-ge v5, p1, :cond_3

    aget-object p1, v0, v5

    aget-object v2, v1, v5

    invoke-virtual {v9, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzbkw;->zzc:I

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbkw;->zzd:[B

    iget-boolean v10, p0, Lcom/google/android/gms/internal/ads/zzbkw;->zzg:Z

    iget-wide v11, p0, Lcom/google/android/gms/internal/ads/zzbkw;->zzh:J

    new-instance p1, Lfme;

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Lfme;-><init>(I[BLjava/util/Map;ZJ)V

    :goto_2
    return-object p1

    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbkw;->zzb:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaps;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzaps;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p1

    invoke-interface {p1}, Lfy0;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    throw p0

    :catch_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p0

    invoke-interface {p0}, Lfy0;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-object p1
.end method
