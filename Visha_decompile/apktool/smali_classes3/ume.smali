.class public final Lume;
.super Liwe;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/google/android/gms/internal/ads/zzboy;

.field public final synthetic e:Lcom/google/android/gms/ads/internal/client/zzaz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;)V
    .locals 0

    iput-object p2, p0, Lume;->b:Landroid/content/Context;

    iput-object p3, p0, Lume;->c:Ljava/lang/String;

    iput-object p4, p0, Lume;->d:Lcom/google/android/gms/internal/ads/zzboy;

    iput-object p1, p0, Lume;->e:Lcom/google/android/gms/ads/internal/client/zzaz;

    invoke-direct {p0}, Liwe;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lume;->b:Landroid/content/Context;

    const-string v0, "native_ad"

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/internal/client/zzaz;->j(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/ads/internal/client/zzfe;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzfe;-><init>()V

    return-object p0
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/ads/internal/client/zzco;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lume;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lume;->c:Ljava/lang/String;

    iget-object p0, p0, Lume;->d:Lcom/google/android/gms/internal/ads/zzboy;

    const v2, 0xefc3650

    invoke-interface {p1, v0, v1, p0, v2}, Lcom/google/android/gms/ads/internal/client/zzco;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;I)Lcom/google/android/gms/ads/internal/client/zzbt;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lume;->b:Landroid/content/Context;

    invoke-static {v0}, Lcye;->a(Landroid/content/Context;)V

    sget-object v1, Lcye;->Na:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    const-string v3, "com.google.android.gms.ads.ChimeraAdLoaderBuilderCreatorImpl"

    new-instance v4, Lcom/google/android/gms/ads/internal/client/zzap;

    invoke-direct {v4}, Lcom/google/android/gms/ads/internal/client/zzap;-><init>()V

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/ads/internal/util/client/zzs;->zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzbu;

    iget-object v3, p0, Lume;->c:Ljava/lang/String;

    iget-object v4, p0, Lume;->d:Lcom/google/android/gms/internal/ads/zzboy;

    const v5, 0xefc3650

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/ads/internal/client/zzbu;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;I)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/ads/internal/client/zzbt;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/google/android/gms/ads/internal/client/zzbt;

    :goto_0
    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzbr;

    invoke-direct {v2, v0}, Lcom/google/android/gms/ads/internal/client/zzbr;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/util/client/zzr; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lume;->e:Lcom/google/android/gms/ads/internal/client/zzaz;

    iget-object p0, p0, Lume;->b:Landroid/content/Context;

    invoke-static {p0}, Luaf;->c(Landroid/content/Context;)Lwaf;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/google/android/gms/ads/internal/client/zzaz;->i(Lcom/google/android/gms/ads/internal/client/zzaz;Lwaf;)V

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/client/zzaz;->h(Lcom/google/android/gms/ads/internal/client/zzaz;)Lwaf;

    move-result-object p0

    const-string v2, "ClientApiBroker.createAdLoaderBuilder"

    invoke-interface {p0, v0, v2}, Lwaf;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lume;->e:Lcom/google/android/gms/ads/internal/client/zzaz;

    iget-object v1, p0, Lume;->b:Landroid/content/Context;

    iget-object v2, p0, Lume;->c:Ljava/lang/String;

    iget-object p0, p0, Lume;->d:Lcom/google/android/gms/internal/ads/zzboy;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzaz;->a(Lcom/google/android/gms/ads/internal/client/zzaz;)Lcom/google/android/gms/ads/internal/client/zzi;

    move-result-object v0

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/gms/ads/internal/client/zzi;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;)Lcom/google/android/gms/ads/internal/client/zzbt;

    move-result-object v1

    :goto_2
    return-object v1
.end method
