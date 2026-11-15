.class public final Lgse;
.super Liwe;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/widget/FrameLayout;

.field public final synthetic c:Landroid/widget/FrameLayout;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lcom/google/android/gms/ads/internal/client/zzaz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lgse;->b:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lgse;->c:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lgse;->d:Landroid/content/Context;

    iput-object p1, p0, Lgse;->e:Lcom/google/android/gms/ads/internal/client/zzaz;

    invoke-direct {p0}, Liwe;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lgse;->d:Landroid/content/Context;

    const-string v0, "native_ad_view_delegate"

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/internal/client/zzaz;->j(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/ads/internal/client/zzfj;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzfj;-><init>()V

    return-object p0
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/ads/internal/client/zzco;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lgse;->c:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lgse;->b:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/ads/internal/client/zzco;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzbfx;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lgse;->d:Landroid/content/Context;

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

    iget-object v2, p0, Lgse;->b:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lgse;->c:Landroid/widget/FrameLayout;

    invoke-static {v3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    const-string v4, "com.google.android.gms.ads.ChimeraNativeAdViewDelegateCreatorImpl"

    new-instance v5, Lcom/google/android/gms/ads/internal/client/zzav;

    invoke-direct {v5}, Lcom/google/android/gms/ads/internal/client/zzav;-><init>()V

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/zzs;->zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbga;

    const v4, 0xefc3650

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbga;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbfw;->zzdy(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbfx;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/util/client/zzr; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lgse;->e:Lcom/google/android/gms/ads/internal/client/zzaz;

    iget-object p0, p0, Lgse;->d:Landroid/content/Context;

    invoke-static {p0}, Luaf;->c(Landroid/content/Context;)Lwaf;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/android/gms/ads/internal/client/zzaz;->i(Lcom/google/android/gms/ads/internal/client/zzaz;Lwaf;)V

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/client/zzaz;->h(Lcom/google/android/gms/ads/internal/client/zzaz;)Lwaf;

    move-result-object p0

    const-string v1, "ClientApiBroker.createNativeAdViewDelegate"

    invoke-interface {p0, v0, v1}, Lwaf;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgse;->e:Lcom/google/android/gms/ads/internal/client/zzaz;

    iget-object v1, p0, Lgse;->d:Landroid/content/Context;

    iget-object v2, p0, Lgse;->b:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lgse;->c:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzaz;->e(Lcom/google/android/gms/ads/internal/client/zzaz;)Ln1f;

    move-result-object v0

    invoke-virtual {v0, v1, v2, p0}, Ln1f;->c(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/zzbfx;

    move-result-object p0

    :goto_0
    return-object p0
.end method
