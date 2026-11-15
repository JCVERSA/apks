.class public final Lhaf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbgn;

.field public b:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$DisplayOpenMeasurement;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhaf;->a:Lcom/google/android/gms/internal/ads/zzbgn;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lhaf;->a:Lcom/google/android/gms/internal/ads/zzbgn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbgn;->zzl()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAvailableAssetNames()Ljava/util/List;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lhaf;->a:Lcom/google/android/gms/internal/ads/zzbgn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbgn;->zzk()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCustomFormatId()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lhaf;->a:Lcom/google/android/gms/internal/ads/zzbgn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbgn;->zzi()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDisplayOpenMeasurement()Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$DisplayOpenMeasurement;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lhaf;->b:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$DisplayOpenMeasurement;

    if-nez v0, :cond_0

    iget-object v0, p0, Lhaf;->a:Lcom/google/android/gms/internal/ads/zzbgn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgn;->zzq()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ldaf;

    invoke-direct {v1, v0}, Ldaf;-><init>(Lcom/google/android/gms/internal/ads/zzbgn;)V

    iput-object v1, p0, Lhaf;->b:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$DisplayOpenMeasurement;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lhaf;->b:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$DisplayOpenMeasurement;

    return-object p0
.end method

.method public final getImage(Ljava/lang/String;)Lcom/google/android/gms/ads/nativead/NativeAd$Image;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lhaf;->a:Lcom/google/android/gms/internal/ads/zzbgn;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgn;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Leaf;

    invoke-direct {p1, p0}, Leaf;-><init>(Lcom/google/android/gms/internal/ads/zzbft;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, ""

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMediaContent()Lcom/google/android/gms/ads/MediaContent;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lhaf;->a:Lcom/google/android/gms/internal/ads/zzbgn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbgn;->zzf()Lcom/google/android/gms/internal/ads/zzbfq;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzez;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbgn;->zzf()Lcom/google/android/gms/internal/ads/zzbfq;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/ads/internal/client/zzez;-><init>(Lcom/google/android/gms/internal/ads/zzbfq;Lcom/google/android/gms/internal/ads/zzbgn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lhaf;->a:Lcom/google/android/gms/internal/ads/zzbgn;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgn;->zzj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, ""

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final performClick(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lhaf;->a:Lcom/google/android/gms/internal/ads/zzbgn;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgn;->zzn(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, ""

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordImpression()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lhaf;->a:Lcom/google/android/gms/internal/ads/zzbgn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbgn;->zzo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
