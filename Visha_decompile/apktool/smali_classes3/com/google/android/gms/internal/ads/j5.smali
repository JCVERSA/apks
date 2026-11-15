.class public final Lcom/google/android/gms/internal/ads/j5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwjh;


# instance fields
.field public final a:Lwjh;

.field public final b:Lwjh;

.field public final c:Loph;

.field public final d:Ljava/lang/String;

.field public e:Loyf;

.field public final f:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lwjh;Lwjh;Loph;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/j5;->a:Lwjh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/j5;->b:Lwjh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/j5;->c:Loph;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/j5;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/j5;->f:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic c(Lcom/google/android/gms/internal/ads/j5;Lxjh;Lzih;Lvjh;Loyf;Lejh;)Lim5;
    .locals 8

    if-eqz p5, :cond_2

    iget-object v1, p2, Lzih;->a:Lvjh;

    iget-object v2, p2, Lzih;->b:Lxjh;

    iget-object v3, p2, Lzih;->c:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v4, p2, Lzih;->d:Ljava/lang/String;

    iget-object v5, p2, Lzih;->e:Ljava/util/concurrent/Executor;

    iget-object v6, p2, Lzih;->f:Lcom/google/android/gms/ads/internal/client/zzx;

    iget-object v7, p5, Lejh;->a:Lcph;

    new-instance p2, Lzih;

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lzih;-><init>(Lvjh;Lxjh;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/ads/internal/client/zzx;Lcph;)V

    iget-object v0, p5, Lejh;->c:Lbph;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/j5;->e:Loyf;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/j5;->c:Loph;

    invoke-virtual {p3, p2}, Loph;->f(Lnph;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/j5;->f(Lbph;Lxjh;)Lim5;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j5;->c:Loph;

    invoke-virtual {v0, p2}, Loph;->a(Lnph;)Lim5;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/j5;->e:Loyf;

    new-instance p1, Lwih;

    invoke-direct {p1, p0}, Lwih;-><init>(Lcom/google/android/gms/internal/ads/j5;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/j5;->f:Ljava/util/concurrent/Executor;

    invoke-static {v2, p1, p0}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2}, Loph;->f(Lnph;)V

    iget-object p1, p1, Lxjh;->b:Lujh;

    iget-object p2, p5, Lejh;->b:Lcom/google/android/gms/internal/ads/zzbuy;

    new-instance p5, Lxjh;

    invoke-direct {p5, p1, p2}, Lxjh;-><init>(Lujh;Lcom/google/android/gms/internal/ads/zzbuy;)V

    move-object p1, p5

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/j5;->a:Lwjh;

    check-cast p2, Lmjh;

    invoke-virtual {p2, p1, p3, p4}, Lmjh;->c(Lxjh;Lvjh;Loyf;)Lim5;

    move-result-object p1

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/j5;->e:Loyf;

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static synthetic d(Lcom/google/android/gms/internal/ads/j5;Llph;)Lim5;
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p1, Llph;->a:Lbph;

    if-eqz v0, :cond_0

    iget-object p1, p1, Llph;->b:Lnph;

    if-eqz p1, :cond_0

    check-cast p1, Lzih;

    invoke-static {}, Lcom/google/android/gms/internal/ads/g2;->d0()Lcom/google/android/gms/internal/ads/a2;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/z1;->h0()Lcom/google/android/gms/internal/ads/y1;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbn$zzb$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzb$zzd;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/y1;->v(Lcom/google/android/gms/internal/ads/zzbbn$zzb$zzd;)Lcom/google/android/gms/internal/ads/y1;

    invoke-static {}, Lcom/google/android/gms/internal/ads/d2;->f0()Lcom/google/android/gms/internal/ads/d2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/y1;->x(Lcom/google/android/gms/internal/ads/d2;)Lcom/google/android/gms/internal/ads/y1;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/a2;->v(Lcom/google/android/gms/internal/ads/y1;)Lcom/google/android/gms/internal/ads/a2;

    invoke-virtual {v1}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/g2;

    iget-object v2, v0, Lbph;->a:Loyf;

    invoke-interface {v2}, Loyf;->zzb()Lgvf;

    move-result-object v2

    invoke-virtual {v2}, Lgvf;->c()Ls5g;

    move-result-object v2

    invoke-virtual {v2, v1}, Ls5g;->z(Lcom/google/android/gms/internal/ads/g2;)V

    iget-object p1, p1, Lzih;->b:Lxjh;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/j5;->f(Lbph;Lxjh;)Lim5;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdvg;

    const/4 p1, 0x1

    const-string v0, "Empty prefetch"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdvg;-><init>(ILjava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final bridge synthetic a(Lxjh;Lvjh;Ljava/lang/Object;)Lim5;
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/j5;->e(Lxjh;Lvjh;Loyf;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized b()Loyf;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j5;->e:Loyf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized e(Lxjh;Lvjh;Loyf;)Lim5;
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    monitor-enter p0

    :try_start_0
    iget-object v1, v0, Lxjh;->b:Lujh;

    invoke-interface {v5, v1}, Lvjh;->a(Lujh;)Lnyf;

    move-result-object v1

    new-instance v2, Lajh;

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/j5;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Lajh;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lnyf;->i(Lajh;)Lnyf;

    invoke-interface {v1}, Lnyf;->zzh()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Loyf;

    invoke-interface {v6}, Loyf;->zzf()Lenh;

    invoke-interface {v6}, Loyf;->zzf()Lenh;

    invoke-interface {v6}, Loyf;->zzf()Lenh;

    move-result-object v1

    iget-object v1, v1, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-nez v2, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzx:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Loyf;->zzf()Lenh;

    move-result-object v1

    iget-object v11, v1, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v12, v1, Lenh;->f:Ljava/lang/String;

    iget-object v14, v1, Lenh;->j:Lcom/google/android/gms/ads/internal/client/zzx;

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/j5;->f:Ljava/util/concurrent/Executor;

    new-instance v16, Lzih;

    const/4 v15, 0x0

    move-object/from16 v8, v16

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    move-object v13, v4

    invoke-direct/range {v8 .. v15}, Lzih;-><init>(Lvjh;Lxjh;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/ads/internal/client/zzx;Lcph;)V

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/j5;->b:Lwjh;

    check-cast v1, Lfjh;

    invoke-virtual {v1, v0, v5, v6}, Lfjh;->c(Lxjh;Lvjh;Loyf;)Lim5;

    move-result-object v1

    invoke-static {v1}, Lq7i;->zzE(Lim5;)Lq7i;

    move-result-object v8

    new-instance v9, Lxih;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v0, v4

    move-object/from16 v4, v16

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lxih;-><init>(Lcom/google/android/gms/internal/ads/j5;Lxjh;Lzih;Lvjh;Loyf;)V

    invoke-static {v8, v9, v0}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    check-cast v0, Lq7i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    iput-object v6, v7, Lcom/google/android/gms/internal/ads/j5;->e:Loyf;

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/j5;->a:Lwjh;

    check-cast v1, Lmjh;

    invoke-virtual {v1, v0, v5, v6}, Lmjh;->c(Lxjh;Lvjh;Loyf;)Lim5;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final f(Lbph;Lxjh;)Lim5;
    .locals 2

    iget-object v0, p1, Lbph;->a:Loyf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/j5;->e:Loyf;

    iget-object v1, p1, Lbph;->c:Lbuf;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Loyf;->zze()Ltjh;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lbph;->c:Lbuf;

    invoke-virtual {p0}, Lbuf;->f()Ltjh;

    move-result-object p0

    iget-object p2, p1, Lbph;->a:Loyf;

    invoke-interface {p2}, Loyf;->zze()Ltjh;

    move-result-object p2

    invoke-interface {p0, p2}, Ltjh;->g(Ltjh;)V

    :cond_0
    iget-object p0, p1, Lbph;->c:Lbuf;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v0}, Loyf;->zzb()Lgvf;

    move-result-object v0

    iget-object v1, p1, Lbph;->b:Lvmh;

    invoke-virtual {v0, v1}, Lgvf;->k(Lvmh;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/j5;->a:Lwjh;

    iget-object p1, p1, Lbph;->a:Loyf;

    check-cast p0, Lmjh;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lmjh;->c(Lxjh;Lvjh;Loyf;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzd()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/j5;->b()Loyf;

    move-result-object p0

    return-object p0
.end method
