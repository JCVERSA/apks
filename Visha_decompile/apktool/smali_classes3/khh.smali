.class public final Lkhh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lb5h;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzfgn;

.field public final synthetic c:Lwrh;

.field public final synthetic d:Lnhh;

.field public final synthetic e:Lphh;


# direct methods
.method public constructor <init>(Lphh;Lb5h;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;Lnhh;)V
    .locals 0

    iput-object p2, p0, Lkhh;->a:Lb5h;

    iput-object p3, p0, Lkhh;->b:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-object p4, p0, Lkhh;->c:Lwrh;

    iput-object p5, p0, Lkhh;->d:Lnhh;

    iput-object p1, p0, Lkhh;->e:Lphh;

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

    const-string v0, "App open ad failed to load"

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lkhh;->e:Lphh;

    invoke-static {v0}, Lphh;->f(Lphh;)Lwjh;

    move-result-object v1

    invoke-interface {v1}, Lwjh;->zzd()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lerf;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {p1, v2}, Lgoh;->b(Ljava/lang/Throwable;Loxg;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Loyf;->zzb()Lgvf;

    move-result-object v3

    invoke-virtual {v3, p1}, Lgvf;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v3

    :goto_0
    monitor-enter v0

    :try_start_0
    invoke-static {v0, v2}, Lphh;->j(Lphh;Lim5;)V

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lerf;->zzc()Lmzf;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmzf;->A(Lcom/google/android/gms/ads/internal/client/zze;)V

    sget-object v1, Lcye;->m8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lphh;->h(Lphh;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzevy;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/ads/zzevy;-><init>(Lkhh;Lcom/google/android/gms/ads/internal/client/zze;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    invoke-static {v0}, Lphh;->e(Lphh;)Lfih;

    move-result-object v1

    invoke-virtual {v1, v3}, Lfih;->A(Lcom/google/android/gms/ads/internal/client/zze;)V

    iget-object v1, p0, Lkhh;->d:Lnhh;

    invoke-static {v0, v1}, Lphh;->c(Lphh;Lujh;)Lnyf;

    move-result-object v1

    invoke-interface {v1}, Lnyf;->zzh()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lerf;

    invoke-interface {v1}, Loyf;->zzb()Lgvf;

    move-result-object v1

    invoke-virtual {v1}, Lgvf;->c()Ls5g;

    move-result-object v1

    invoke-virtual {v1}, Ls5g;->zzh()V

    :cond_3
    :goto_1
    iget v1, v3, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    const-string v2, "AppOpenAdLoader.onFailure"

    invoke-static {v1, p1, v2}, Ldoh;->b(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lkhh;->a:Lb5h;

    invoke-interface {v1}, Lb5h;->zza()V

    sget-object v1, Lsze;->c:Leze;

    invoke-virtual {v1}, Leze;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lkhh;->b:Lcom/google/android/gms/internal/ads/zzfgn;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfgn;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object p0, p0, Lkhh;->c:Lwrh;

    invoke-interface {p0, p1}, Lwrh;->f(Ljava/lang/Throwable;)Lwrh;

    invoke-interface {p0, v2}, Lwrh;->zzg(Z)Lwrh;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lphh;->g(Lphh;)Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object v1

    iget-object p0, p0, Lkhh;->c:Lwrh;

    invoke-interface {p0, v3}, Lwrh;->a(Lcom/google/android/gms/ads/internal/client/zze;)Lwrh;

    invoke-interface {p0, p1}, Lwrh;->f(Ljava/lang/Throwable;)Lwrh;

    invoke-interface {p0, v2}, Lwrh;->zzg(Z)Lwrh;

    invoke-interface {p0}, Lwrh;->zzm()Lash;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc(Lash;)V

    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lbuf;

    iget-object v0, p0, Lkhh;->e:Lphh;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lphh;->j(Lphh;Lim5;)V

    sget-object v1, Lcye;->m8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbuf;->e()Lb4g;

    move-result-object v1

    invoke-static {v0}, Lphh;->e(Lphh;)Lfih;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb4g;->b(Lfih;)Lb4g;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lkhh;->a:Lb5h;

    invoke-interface {v1, p1}, Lb5h;->zzb(Ljava/lang/Object;)V

    sget-object v1, Lsze;->c:Leze;

    invoke-virtual {v1}, Leze;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkhh;->b:Lcom/google/android/gms/internal/ads/zzfgn;

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

    iget-object p0, p0, Lkhh;->c:Lwrh;

    invoke-interface {p0, v2}, Lwrh;->zzg(Z)Lwrh;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lphh;->g(Lphh;)Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object v1

    iget-object p0, p0, Lkhh;->c:Lwrh;

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
