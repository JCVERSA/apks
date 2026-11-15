.class public final Lcom/google/android/gms/internal/ads/a6;
.super Lcom/google/android/gms/internal/ads/z5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/ads/internal/client/zzfp;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lzth;Lfy0;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/google/android/gms/internal/ads/z5;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/ads/internal/client/zzfp;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lzth;Lfy0;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic i(Ljava/lang/Object;)Lcom/google/android/gms/ads/internal/client/zzdx;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbwd;

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbwd;->zzc()Lcom/google/android/gms/ads/internal/client/zzdx;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Failed to get response info for the rewarded ad."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final j(Landroid/content/Context;)Lim5;
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/ads/n8;->h()Lcom/google/android/gms/internal/ads/n8;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z5;->e:Lcom/google/android/gms/ads/internal/client/zzfp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/zzfp;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/z5;->d:Lcom/google/android/gms/internal/ads/zzboy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/z5;->a:Lcom/google/android/gms/ads/internal/ClientApi;

    iget v4, p0, Lcom/google/android/gms/internal/ads/z5;->c:I

    invoke-virtual {v3, p1, v1, v2, v4}, Lcom/google/android/gms/ads/internal/ClientApi;->zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;I)Lcom/google/android/gms/internal/ads/zzbwd;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfjq;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfjq;-><init>(Lcom/google/android/gms/internal/ads/a6;Lcom/google/android/gms/internal/ads/n8;Lcom/google/android/gms/internal/ads/zzbwd;)V

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z5;->e:Lcom/google/android/gms/ads/internal/client/zzfp;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzfp;->zzc:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-interface {p1, p0, v1}, Lcom/google/android/gms/internal/ads/zzbwd;->zzf(Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/internal/ads/zzbwk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed to load rewarded ad."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzfiq;

    const-string p1, "remote exception"

    invoke-direct {p0, v2, p1}, Lcom/google/android/gms/internal/ads/zzfiq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/n8;->zzd(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfiq;

    const-string p1, "Failed to create a rewarded ad."

    invoke-direct {p0, v2, p1}, Lcom/google/android/gms/internal/ads/zzfiq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/n8;->zzd(Ljava/lang/Throwable;)Z

    :goto_0
    return-object v0
.end method
