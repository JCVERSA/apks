.class public final Le5h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lb5h;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzfgn;

.field public final synthetic c:Lwrh;

.field public final synthetic d:Lubg;

.field public final synthetic e:Lf5h;


# direct methods
.method public constructor <init>(Lf5h;Lb5h;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;Lubg;)V
    .locals 0

    iput-object p2, p0, Le5h;->a:Lb5h;

    iput-object p3, p0, Le5h;->b:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-object p4, p0, Le5h;->c:Lwrh;

    iput-object p5, p0, Le5h;->d:Lubg;

    iput-object p1, p0, Le5h;->e:Lf5h;

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

    const-string v0, "Native ad failed to load"

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Le5h;->d:Lubg;

    invoke-virtual {v0}, Lubg;->a()Lgvf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgvf;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    invoke-virtual {v0}, Lubg;->b()Lmzf;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmzf;->A(Lcom/google/android/gms/ads/internal/client/zze;)V

    iget-object v0, p0, Le5h;->e:Lf5h;

    invoke-static {v0}, Lf5h;->b(Lf5h;)Llkf;

    move-result-object v2

    invoke-virtual {v2}, Llkf;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzekm;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/zzekm;-><init>(Le5h;Lcom/google/android/gms/ads/internal/client/zze;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget v2, v1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    const-string v3, "NativeAdLoader.onFailure"

    invoke-static {v2, p1, v3}, Ldoh;->b(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object v2, p0, Le5h;->a:Lb5h;

    invoke-interface {v2}, Lb5h;->zza()V

    sget-object v2, Lsze;->c:Leze;

    invoke-virtual {v2}, Leze;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Le5h;->b:Lcom/google/android/gms/internal/ads/zzfgn;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object p0, p0, Le5h;->c:Lwrh;

    invoke-interface {p0, p1}, Lwrh;->f(Ljava/lang/Throwable;)Lwrh;

    invoke-interface {p0, v3}, Lwrh;->zzg(Z)Lwrh;

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    return-void

    :cond_1
    invoke-static {v0}, Lf5h;->d(Lf5h;)Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object v0

    iget-object p0, p0, Le5h;->c:Lwrh;

    invoke-interface {p0, v1}, Lwrh;->a(Lcom/google/android/gms/ads/internal/client/zze;)Lwrh;

    invoke-interface {p0, p1}, Lwrh;->f(Ljava/lang/Throwable;)Lwrh;

    invoke-interface {p0, v3}, Lwrh;->zzg(Z)Lwrh;

    invoke-interface {p0}, Lwrh;->zzm()Lash;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc(Lash;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Le5h;->e:Lf5h;

    check-cast p1, Lbuf;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lbuf;->e()Lb4g;

    move-result-object v1

    invoke-static {v0}, Lf5h;->c(Lf5h;)Lz4h;

    move-result-object v2

    invoke-virtual {v2}, Lz4h;->d()Lk4h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb4g;->a(Lk4h;)Lb4g;

    iget-object v1, p0, Le5h;->a:Lb5h;

    invoke-interface {v1, p1}, Lb5h;->zzb(Ljava/lang/Object;)V

    invoke-static {v0}, Lf5h;->b(Lf5h;)Llkf;

    move-result-object v1

    invoke-virtual {v1}, Llkf;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzekl;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzekl;-><init>(Le5h;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object v1, Lsze;->c:Leze;

    invoke-virtual {v1}, Leze;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Le5h;->b:Lcom/google/android/gms/internal/ads/zzfgn;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbuf;->g()Lvmh;

    move-result-object v3

    iget-object v3, v3, Lvmh;->b:Lumh;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfgn;->zzg(Lumh;)Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {p1}, Lbuf;->c()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcuv;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfgn;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object p0, p0, Le5h;->c:Lwrh;

    invoke-interface {p0, v2}, Lwrh;->zzg(Z)Lwrh;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lf5h;->d(Lf5h;)Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object v1

    iget-object p0, p0, Le5h;->c:Lwrh;

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

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
