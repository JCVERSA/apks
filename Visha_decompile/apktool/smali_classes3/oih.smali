.class public final Loih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzfgn;

.field public final synthetic b:Lwrh;

.field public final synthetic c:Latf;

.field public final synthetic d:Lpih;


# direct methods
.method public constructor <init>(Lpih;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;Latf;)V
    .locals 0

    iput-object p2, p0, Loih;->a:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-object p3, p0, Loih;->b:Lwrh;

    iput-object p4, p0, Loih;->c:Latf;

    iput-object p1, p0, Loih;->d:Lpih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 4

    sget-object v0, Lcye;->N5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Banner ad failed to load"

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Loih;->d:Lpih;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Loih;->c:Latf;

    invoke-virtual {v1}, Latf;->c()Lgvf;

    move-result-object v2

    invoke-virtual {v2, p1}, Lgvf;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v2

    invoke-static {v0, v2}, Lpih;->i(Lpih;Lcom/google/android/gms/ads/internal/client/zze;)V

    invoke-virtual {v1}, Latf;->d()Lmzf;

    move-result-object v1

    invoke-virtual {v1, v2}, Lmzf;->A(Lcom/google/android/gms/ads/internal/client/zze;)V

    iget v1, v2, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    const-string v3, "BannerAdLoader.onFailure"

    invoke-static {v1, p1, v3}, Ldoh;->b(ILjava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v0}, Lpih;->q(Lpih;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lpih;->j(Lpih;)V

    invoke-static {v0}, Lpih;->c(Lpih;)Lcom/google/android/gms/internal/ads/i4;

    move-result-object v1

    invoke-static {v0}, Lpih;->d(Lpih;)Lj5g;

    move-result-object v3

    invoke-virtual {v3}, Lj5g;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/i4;->F(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    sget-object v1, Lsze;->c:Leze;

    invoke-virtual {v1}, Leze;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Loih;->a:Lcom/google/android/gms/internal/ads/zzfgn;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfgn;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object p0, p0, Loih;->b:Lwrh;

    invoke-interface {p0, p1}, Lwrh;->f(Ljava/lang/Throwable;)Lwrh;

    invoke-interface {p0, v3}, Lwrh;->zzg(Z)Lwrh;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lpih;->f(Lpih;)Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object v1

    iget-object p0, p0, Loih;->b:Lwrh;

    invoke-interface {p0, v2}, Lwrh;->a(Lcom/google/android/gms/ads/internal/client/zze;)Lwrh;

    invoke-interface {p0, p1}, Lwrh;->f(Ljava/lang/Throwable;)Lwrh;

    invoke-interface {p0, v3}, Lwrh;->zzg(Z)Lwrh;

    invoke-interface {p0}, Lwrh;->zzm()Lash;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc(Lash;)V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Loih;->d:Lpih;

    check-cast p1, Lsrf;

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lpih;->q(Lpih;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lpih;->p()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    sget-object v1, Lsze;->c:Leze;

    invoke-virtual {v1}, Leze;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Loih;->a:Lcom/google/android/gms/internal/ads/zzfgn;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lbuf;->g()Lvmh;

    move-result-object v3

    iget-object v3, v3, Lvmh;->b:Lumh;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfgn;->zzg(Lumh;)Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {p1}, Lbuf;->c()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcuv;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfgn;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object p0, p0, Loih;->b:Lwrh;

    invoke-interface {p0, v2}, Lwrh;->zzg(Z)Lwrh;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lpih;->f(Lpih;)Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object v1

    iget-object p0, p0, Loih;->b:Lwrh;

    invoke-virtual {p1}, Lbuf;->g()Lvmh;

    move-result-object v3

    iget-object v3, v3, Lvmh;->b:Lumh;

    invoke-interface {p0, v3}, Lwrh;->e(Lumh;)Lwrh;

    invoke-virtual {p1}, Lbuf;->c()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcuv;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lwrh;->zzd(Ljava/lang/String;)Lwrh;

    invoke-interface {p0, v2}, Lwrh;->zzg(Z)Lwrh;

    invoke-interface {p0}, Lwrh;->zzm()Lash;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc(Lash;)V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
