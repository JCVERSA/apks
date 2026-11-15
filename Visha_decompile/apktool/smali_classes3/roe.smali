.class public final Lroe;
.super Liwe;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzboy;

.field public final synthetic d:Lcom/google/android/gms/ads/internal/client/zzaz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;)V
    .locals 0

    iput-object p2, p0, Lroe;->b:Landroid/content/Context;

    iput-object p3, p0, Lroe;->c:Lcom/google/android/gms/internal/ads/zzboy;

    iput-object p1, p0, Lroe;->d:Lcom/google/android/gms/ads/internal/client/zzaz;

    invoke-direct {p0}, Liwe;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lroe;->b:Landroid/content/Context;

    const-string v0, "ads_preloader"

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/internal/client/zzaz;->j(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/ads/internal/client/zzco;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lroe;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object p0, p0, Lroe;->c:Lcom/google/android/gms/internal/ads/zzboy;

    const v1, 0xefc3650

    invoke-interface {p1, v0, p0, v1}, Lcom/google/android/gms/ads/internal/client/zzco;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzboy;I)Lcom/google/android/gms/ads/internal/client/zzch;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/internal/client/zzch;->zzh(Lcom/google/android/gms/internal/ads/zzboy;)V

    return-object p1
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lroe;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {v0}, Lcye;->a(Landroid/content/Context;)V

    sget-object v2, Lcye;->Na:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.google.android.gms.ads.ChimeraAdPreloaderCreatorImpl"

    new-instance v4, Lcom/google/android/gms/ads/internal/client/zzar;

    invoke-direct {v4}, Lcom/google/android/gms/ads/internal/client/zzar;-><init>()V

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/ads/internal/util/client/zzs;->zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzci;

    iget-object v3, p0, Lroe;->c:Lcom/google/android/gms/internal/ads/zzboy;

    const v4, 0xefc3650

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/gms/ads/internal/client/zzci;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzboy;I)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.ads.internal.client.IAdPreloader"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v4, v1, Lcom/google/android/gms/ads/internal/client/zzch;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/google/android/gms/ads/internal/client/zzch;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzcf;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzcf;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-interface {v1, v3}, Lcom/google/android/gms/ads/internal/client/zzch;->zzh(Lcom/google/android/gms/internal/ads/zzboy;)V
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/util/client/zzr; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lroe;->d:Lcom/google/android/gms/ads/internal/client/zzaz;

    iget-object p0, p0, Lroe;->b:Landroid/content/Context;

    invoke-static {p0}, Luaf;->c(Landroid/content/Context;)Lwaf;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/android/gms/ads/internal/client/zzaz;->i(Lcom/google/android/gms/ads/internal/client/zzaz;Lwaf;)V

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/client/zzaz;->h(Lcom/google/android/gms/ads/internal/client/zzaz;)Lwaf;

    move-result-object p0

    const-string v1, "ClientApiBroker.getAdPreloader"

    invoke-interface {p0, v0, v1}, Lwaf;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lroe;->d:Lcom/google/android/gms/ads/internal/client/zzaz;

    iget-object v1, p0, Lroe;->b:Landroid/content/Context;

    iget-object p0, p0, Lroe;->c:Lcom/google/android/gms/internal/ads/zzboy;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzaz;->c(Lcom/google/android/gms/ads/internal/client/zzaz;)Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;)Lcom/google/android/gms/ads/internal/client/zzch;

    move-result-object v2

    :goto_2
    return-object v2
.end method
