.class public final Lm1f;
.super Lcom/google/android/gms/ads/formats/UnifiedNativeAd;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbhn;

.field public final b:Ljava/util/List;

.field public final c:Lc1f;

.field public final d:Lcom/google/android/gms/ads/VideoController;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbhn;)V
    .locals 5

    const-string v0, ""

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lm1f;->b:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v1, p0, Lm1f;->d:Lcom/google/android/gms/ads/VideoController;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lm1f;->e:Ljava/util/List;

    iput-object p1, p0, Lm1f;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbhn;->zzu()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/os/IBinder;

    if-nez v2, :cond_2

    :cond_1
    move-object v3, v1

    goto :goto_1

    :cond_2
    const-string v3, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzbft;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbft;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbfr;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzbfr;-><init>(Landroid/os/IBinder;)V

    :goto_1
    if-eqz v3, :cond_0

    iget-object v2, p0, Lm1f;->b:Ljava/util/List;

    new-instance v4, Lc1f;

    invoke-direct {v4, v3}, Lc1f;-><init>(Lcom/google/android/gms/internal/ads/zzbft;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_2
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :try_start_1
    iget-object p1, p0, Lm1f;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbhn;->zzv()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_6

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/client/zzdf;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzdg;

    move-result-object v2

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_5

    :cond_6
    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_5

    iget-object v3, p0, Lm1f;->e:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/ads/internal/client/zzdh;

    invoke-direct {v4, v2}, Lcom/google/android/gms/ads/internal/client/zzdh;-><init>(Lcom/google/android/gms/ads/internal/client/zzdg;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_5
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :try_start_2
    iget-object p1, p0, Lm1f;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbhn;->zzk()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object p1

    if-eqz p1, :cond_8

    new-instance v2, Lc1f;

    invoke-direct {v2, p1}, Lc1f;-><init>(Lcom/google/android/gms/internal/ads/zzbft;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    goto :goto_6

    :catch_2
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_6
    iput-object v1, p0, Lm1f;->c:Lc1f;

    :try_start_3
    iget-object p1, p0, Lm1f;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbhn;->zzi()Lcom/google/android/gms/internal/ads/zzbfm;

    move-result-object p1

    if-eqz p1, :cond_9

    new-instance p1, Lb1f;

    iget-object p0, p0, Lm1f;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzi()Lcom/google/android/gms/internal/ads/zzbfm;

    move-result-object p0

    invoke-direct {p1, p0}, Lb1f;-><init>(Lcom/google/android/gms/internal/ads/zzbfm;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception p0

    goto :goto_7

    :cond_9
    return-void

    :goto_7
    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final performClick(Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lm1f;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhn;->zzz(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, ""

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordImpression(Landroid/os/Bundle;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lm1f;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhn;->zzJ(Landroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, ""

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final reportTouchEvent(Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lm1f;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhn;->zzC(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, ""

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza()Lcom/google/android/gms/ads/VideoController;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lm1f;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzh()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lm1f;->d:Lcom/google/android/gms/ads/VideoController;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzh()Lcom/google/android/gms/ads/internal/client/zzea;

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
    iget-object p0, p0, Lm1f;->d:Lcom/google/android/gms/ads/VideoController;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .locals 0

    iget-object p0, p0, Lm1f;->c:Lc1f;

    return-object p0
.end method

.method public final zzc()Ljava/lang/Double;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lm1f;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zze()D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double p0, v1, v3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    const-string v1, ""

    invoke-static {v1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final zzd()Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lm1f;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzl()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0
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

.method public final zze()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lm1f;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzn()Ljava/lang/String;

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

.method public final zzf()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lm1f;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzo()Ljava/lang/String;

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

.method public final zzg()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lm1f;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzp()Ljava/lang/String;

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

.method public final zzh()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lm1f;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzq()Ljava/lang/String;

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

.method public final zzi()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lm1f;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzs()Ljava/lang/String;

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

.method public final zzj()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lm1f;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzt()Ljava/lang/String;

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

.method public final zzk()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lm1f;->b:Ljava/util/List;

    return-object p0
.end method
