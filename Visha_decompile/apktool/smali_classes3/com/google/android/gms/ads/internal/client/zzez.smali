.class public final Lcom/google/android/gms/ads/internal/client/zzez;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/MediaContent;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbfq;

.field public final b:Lcom/google/android/gms/ads/VideoController;

.field public final c:Lcom/google/android/gms/internal/ads/zzbgn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbfq;Lcom/google/android/gms/internal/ads/zzbgn;)V
    .locals 1
    .param p2    # Lcom/google/android/gms/internal/ads/zzbgn;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v0}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzez;->b:Lcom/google/android/gms/ads/VideoController;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzez;->a:Lcom/google/android/gms/internal/ads/zzbfq;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzez;->c:Lcom/google/android/gms/internal/ads/zzbgn;

    return-void
.end method


# virtual methods
.method public final getAspectRatio()F
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzez;->a:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbfq;->zze()F

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getCurrentTime()F
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzez;->a:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbfq;->zzf()F

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getDuration()F
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzez;->a:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbfq;->zzg()F

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getMainImage()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzez;->a:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbfq;->zzi()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzez;->a:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfq;->zzh()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzez;->b:Lcom/google/android/gms/ads/VideoController;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfq;->zzh()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/VideoController;->zzb(Lcom/google/android/gms/ads/internal/client/zzea;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzez;->b:Lcom/google/android/gms/ads/VideoController;

    return-object p0
.end method

.method public final hasVideoContent()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzez;->a:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbfq;->zzl()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setMainImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzez;->a:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfq;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, ""

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzbgn;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzez;->c:Lcom/google/android/gms/internal/ads/zzbgn;

    return-object p0
.end method

.method public final zzb()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzez;->a:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbfq;->zzk()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbfq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzez;->a:Lcom/google/android/gms/internal/ads/zzbfq;

    return-object p0
.end method
