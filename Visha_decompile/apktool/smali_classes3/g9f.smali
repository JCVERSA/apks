.class public final Lg9f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbqi;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzbpe;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzbrk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbrk;Lcom/google/android/gms/internal/ads/zzbqi;Lcom/google/android/gms/internal/ads/zzbpe;)V
    .locals 0

    iput-object p2, p0, Lg9f;->a:Lcom/google/android/gms/internal/ads/zzbqi;

    iput-object p3, p0, Lg9f;->b:Lcom/google/android/gms/internal/ads/zzbpe;

    iput-object p1, p0, Lg9f;->c:Lcom/google/android/gms/internal/ads/zzbrk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/google/android/gms/ads/AdError;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lg9f;->a:Lcom/google/android/gms/internal/ads/zzbqi;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->zza()Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbqi;->zzf(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, ""

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onFailure(Ljava/lang/String;)V
    .locals 3

    .line 3
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    const/4 v1, 0x0

    const-string v2, "undefined"

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lg9f;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;

    const-string v0, ""

    if-nez p1, :cond_0

    const-string p1, "Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object p0, p0, Lg9f;->a:Lcom/google/android/gms/internal/ads/zzbqi;

    const-string v1, "Adapter returned null."

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/ads/zzbqi;->zze(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lg9f;->c:Lcom/google/android/gms/internal/ads/zzbrk;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbrk;->zzc(Lcom/google/android/gms/internal/ads/zzbrk;Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;)V

    iget-object p1, p0, Lg9f;->a:Lcom/google/android/gms/internal/ads/zzbqi;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbqi;->zzg()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p0, p0, Lg9f;->b:Lcom/google/android/gms/internal/ads/zzbpe;

    new-instance p1, Lj9f;

    invoke-direct {p1, p0}, Lj9f;-><init>(Lcom/google/android/gms/internal/ads/zzbpe;)V

    :goto_1
    return-object p1
.end method
