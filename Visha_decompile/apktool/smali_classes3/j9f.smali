.class public final Lj9f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;
.implements Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;
.implements Lcom/google/android/gms/ads/mediation/MediationAppOpenAdCallback;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbpe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbpe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj9f;->a:Lcom/google/android/gms/internal/ads/zzbpe;

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lj9f;->a:Lcom/google/android/gms/internal/ads/zzbpe;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbpe;->zzf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getDomain()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mediated ad failed to show: Error Code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Error Message = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Error Domain = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object p0, p0, Lj9f;->a:Lcom/google/android/gms/internal/ads/zzbpe;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->zza()Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbpe;->zzk(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onAdFailedToShow(Ljava/lang/String;)V
    .locals 2

    .line 6
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mediated ad failed to show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object p0, p0, Lj9f;->a:Lcom/google/android/gms/internal/ads/zzbpe;

    .line 7
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbpe;->zzl(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lj9f;->a:Lcom/google/android/gms/internal/ads/zzbpe;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbpe;->zzn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onAdOpened()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lj9f;->a:Lcom/google/android/gms/internal/ads/zzbpe;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbpe;->zzp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onUserEarnedReward()V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lj9f;->a:Lcom/google/android/gms/internal/ads/zzbpe;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbpe;->zzu()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object p0, p0, Lj9f;->a:Lcom/google/android/gms/internal/ads/zzbpe;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbwu;-><init>(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzbpe;->zzt(Lcom/google/android/gms/internal/ads/zzbwa;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onVideoComplete()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lj9f;->a:Lcom/google/android/gms/internal/ads/zzbpe;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbpe;->zzw()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onVideoMute()V
    .locals 0

    return-void
.end method

.method public final onVideoPause()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lj9f;->a:Lcom/google/android/gms/internal/ads/zzbpe;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbpe;->zzx()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onVideoPlay()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lj9f;->a:Lcom/google/android/gms/internal/ads/zzbpe;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbpe;->zzy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onVideoStart()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lj9f;->a:Lcom/google/android/gms/internal/ads/zzbpe;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbpe;->zzz()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onVideoUnmute()V
    .locals 0

    return-void
.end method

.method public final reportAdClicked()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lj9f;->a:Lcom/google/android/gms/internal/ads/zzbpe;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbpe;->zze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final reportAdImpression()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lj9f;->a:Lcom/google/android/gms/internal/ads/zzbpe;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbpe;->zzm()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
