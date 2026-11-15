.class public final Lnve;
.super Lcom/google/android/gms/ads/appopen/AppOpenAd;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbaa;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/gms/internal/ads/zzazx;

.field public d:Lcom/google/android/gms/ads/FullScreenContentCallback;

.field public e:Lcom/google/android/gms/ads/OnPaidEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbaa;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/appopen/AppOpenAd;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzazx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzazx;-><init>()V

    iput-object v0, p0, Lnve;->c:Lcom/google/android/gms/internal/ads/zzazx;

    iput-object p1, p0, Lnve;->a:Lcom/google/android/gms/internal/ads/zzbaa;

    iput-object p2, p0, Lnve;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAdUnitId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnve;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getFullScreenContentCallback()Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 0

    iget-object p0, p0, Lnve;->d:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-object p0
.end method

.method public final getOnPaidEventListener()Lcom/google/android/gms/ads/OnPaidEventListener;
    .locals 0

    iget-object p0, p0, Lnve;->e:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-object p0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lnve;->a:Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbaa;->zzf()Lcom/google/android/gms/ads/internal/client/zzdx;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/ads/ResponseInfo;->zzb(Lcom/google/android/gms/ads/internal/client/zzdx;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object p0

    return-object p0
.end method

.method public final setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .locals 0

    iput-object p1, p0, Lnve;->d:Lcom/google/android/gms/ads/FullScreenContentCallback;

    iget-object p0, p0, Lnve;->c:Lcom/google/android/gms/internal/ads/zzazx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzazx;->zzg(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lnve;->a:Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbaa;->zzg(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/OnPaidEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lnve;->e:Lcom/google/android/gms/ads/OnPaidEventListener;

    :try_start_0
    iget-object p0, p0, Lnve;->a:Lcom/google/android/gms/internal/ads/zzbaa;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzfo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzfo;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzbaa;->zzh(Lcom/google/android/gms/ads/internal/client/zzdq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnve;->a:Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    iget-object p0, p0, Lnve;->c:Lcom/google/android/gms/internal/ads/zzazx;

    invoke-interface {v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzbaa;->zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbah;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
