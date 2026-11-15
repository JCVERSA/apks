.class public final Lgeh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lcom/google/android/gms/internal/ads/zzfgn;

.field public final e:Lsmg;

.field public f:J

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzfgn;Lsmg;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgeh;->f:J

    const/4 v0, 0x0

    iput v0, p0, Lgeh;->g:I

    iput-object p1, p0, Lgeh;->a:Landroid/content/Context;

    iput-object p2, p0, Lgeh;->c:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lgeh;->b:Ljava/util/Set;

    iput-object p4, p0, Lgeh;->d:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-object p5, p0, Lgeh;->e:Lsmg;

    return-void
.end method

.method public static synthetic b(Lgeh;JLeeh;Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    sget-object p1, Lb0f;->a:Leze;

    invoke-virtual {p1}, Leze;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lj3i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signal runtime (ms) : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_0
    sget-object p1, Lcye;->q2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcye;->u2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-interface {p3}, Leeh;->zza()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sig"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    sget-object p1, Lcye;->o2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lgeh;->e:Lsmg;

    invoke-virtual {p1}, Lsmg;->a()Lrmg;

    move-result-object p1

    const-string p2, "action"

    const-string p4, "lat_ms"

    invoke-virtual {p1, p2, p4}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    const-string p2, "lat_grp"

    const-string p4, "sig_lat_grp"

    invoke-virtual {p1, p2, p4}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-interface {p3}, Leeh;->zza()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, "lat_id"

    invoke-virtual {p1, p4, p2}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p4, "clat_ms"

    invoke-virtual {p1, p4, p2}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    sget-object p2, Lcye;->p2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p4

    invoke-virtual {p4, p2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    monitor-enter p0

    :try_start_1
    iget p2, p0, Lgeh;->g:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lgeh;->g:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object p2

    invoke-virtual {p2}, Lqef;->i()Ltef;

    move-result-object p2

    invoke-virtual {p2}, Ltef;->c()Ljava/lang/String;

    move-result-object p2

    const-string p4, "seq_num"

    invoke-virtual {p1, p4, p2}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    monitor-enter p0

    :try_start_2
    iget p2, p0, Lgeh;->g:I

    iget-object p4, p0, Lgeh;->b:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p4

    if-ne p2, p4, :cond_4

    iget-wide v0, p0, Lgeh;->f:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    iput p2, p0, Lgeh;->g:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p2

    invoke-interface {p2}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lgeh;->f:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3}, Leeh;->zza()I

    move-result p4

    const/16 v0, 0x27

    if-le p4, v0, :cond_3

    invoke-interface {p3}, Leeh;->zza()I

    move-result p3

    const/16 p4, 0x34

    if-ge p3, p4, :cond_3

    const-string p3, "lat_gmssg"

    invoke-virtual {p1, p3, p2}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_3
    const-string p3, "lat_clsg"

    invoke-virtual {p1, p3, p2}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    :cond_4
    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :cond_5
    :goto_3
    invoke-virtual {p1}, Lrmg;->k()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Landroid/os/Bundle;Z)Lim5;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    iget-object v0, v6, Lgeh;->a:Landroid/content/Context;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lvrh;->a(Landroid/content/Context;I)Lwrh;

    move-result-object v8

    invoke-interface {v8}, Lwrh;->zzi()Lwrh;

    new-instance v9, Ljava/util/ArrayList;

    iget-object v0, v6, Lgeh;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcye;->Pb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_0
    move-object v10, v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v1

    invoke-interface {v1}, Lfy0;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v6, Lgeh;->f:J

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcye;->q2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v1

    invoke-interface {v1}, Lfy0;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v12, p1

    instance-of v3, v12, Lkyf;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdqm;->zze:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdqm;->zzh:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    move-object/from16 v12, p1

    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Leeh;

    invoke-interface {v4}, Leeh;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v2

    invoke-interface {v4}, Leeh;->zzb()Lim5;

    move-result-object v14

    new-instance v15, Lcom/google/android/gms/internal/ads/zzesw;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzesw;-><init>(Lgeh;JLeeh;Landroid/os/Bundle;)V

    sget-object v0, Lzef;->g:Lg8i;

    invoke-interface {v14, v15, v0}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/j8;->b(Ljava/lang/Iterable;)Lw7i;

    move-result-object v10

    new-instance v13, Lfeh;

    move-object v0, v13

    move-object v1, v9

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lfeh;-><init>(Ljava/util/List;Ljava/lang/Object;ZLandroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v0, v6, Lgeh;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {v10, v13, v0}, Lw7i;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgq;->zza()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v6, Lgeh;->d:Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-static {v0, v1, v8}, Lgsh;->a(Lim5;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;)V

    :cond_5
    return-object v0
.end method
