.class public final Lu7e;
.super Liwe;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lcom/google/android/gms/ads/internal/client/zzaz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/app/Activity;)V
    .locals 0

    iput-object p2, p0, Lu7e;->b:Landroid/app/Activity;

    iput-object p1, p0, Lu7e;->c:Lcom/google/android/gms/ads/internal/client/zzaz;

    invoke-direct {p0}, Liwe;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lu7e;->b:Landroid/app/Activity;

    const-string v0, "ad_overlay"

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/internal/client/zzaz;->j(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/ads/internal/client/zzco;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lu7e;->b:Landroid/app/Activity;

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/internal/client/zzco;->zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzbsy;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lu7e;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcye;->a(Landroid/content/Context;)V

    sget-object v1, Lcye;->Na:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.ChimeraAdOverlayCreatorImpl"

    new-instance v3, Lcom/google/android/gms/ads/internal/client/zzab;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/client/zzab;-><init>()V

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/ads/internal/util/client/zzs;->zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbtb;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbtb;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbsx;->zzI(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbsy;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/util/client/zzr; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lu7e;->c:Lcom/google/android/gms/ads/internal/client/zzaz;

    iget-object p0, p0, Lu7e;->b:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Luaf;->c(Landroid/content/Context;)Lwaf;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/android/gms/ads/internal/client/zzaz;->i(Lcom/google/android/gms/ads/internal/client/zzaz;Lwaf;)V

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/client/zzaz;->h(Lcom/google/android/gms/ads/internal/client/zzaz;)Lwaf;

    move-result-object p0

    const-string v1, "ClientApiBroker.createAdOverlay"

    invoke-interface {p0, v0, v1}, Lwaf;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu7e;->c:Lcom/google/android/gms/ads/internal/client/zzaz;

    iget-object p0, p0, Lu7e;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzaz;->g(Lcom/google/android/gms/ads/internal/client/zzaz;)Liaf;

    move-result-object v0

    invoke-virtual {v0, p0}, Liaf;->c(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzbsy;

    move-result-object p0

    :goto_0
    return-object p0
.end method
