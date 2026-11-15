.class public final Lcom/google/android/gms/ads/internal/client/zzl;
.super Lcom/google/android/gms/dynamic/RemoteCreator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdPreloaderRemoteCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.google.android.gms.ads.internal.client.IAdPreloaderCreator"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/gms/ads/internal/client/zzci;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/ads/internal/client/zzci;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/ads/internal/client/zzci;

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzci;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object p0
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;)Lcom/google/android/gms/ads/internal/client/zzch;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/RemoteCreator;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/ads/internal/client/zzci;

    const p1, 0xefc3650

    invoke-virtual {p0, v1, p2, p1}, Lcom/google/android/gms/ads/internal/client/zzci;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzboy;I)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.gms.ads.internal.client.IAdPreloader"

    invoke-interface {p0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of v1, p1, Lcom/google/android/gms/ads/internal/client/zzch;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzch;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/google/android/gms/ads/internal/client/zzcf;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/client/zzcf;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/client/zzch;->zzh(Lcom/google/android/gms/internal/ads/zzboy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    const-string p1, "Could not get remote AdPreloaderCreator."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
