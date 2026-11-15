.class public final Lcom/google/android/gms/internal/ads/k5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvoh;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public final b:Lcom/google/android/gms/internal/ads/zzfdj;

.field public final c:Lxoh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfdj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfdj;->zzd:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/k5;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k5;->b:Lcom/google/android/gms/internal/ads/zzfdj;

    new-instance p1, Lxoh;

    invoke-direct {p1}, Lxoh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k5;->c:Lxoh;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcph;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k5;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luoh;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k5;->b:Lcom/google/android/gms/internal/ads/zzfdj;

    invoke-virtual {p1}, Luoh;->b()I

    move-result p1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfdj;->zzd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-ge p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzx;)Lcph;
    .locals 7

    new-instance v0, Lxbf;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/k5;->b:Lcom/google/android/gms/internal/ads/zzfdj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfdj;->zza:Landroid/content/Context;

    invoke-direct {v0, v1}, Lxbf;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lxbf;->a()Lybf;

    move-result-object v0

    iget v4, v0, Lybf;->j:I

    new-instance v0, Ldph;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfdj;->zzf:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ldph;-><init>(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zzx;)V

    return-object v0
.end method

.method public final declared-synchronized c(Lcph;)Lbph;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k5;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luoh;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Luoh;->e()Lbph;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k5;->c:Lxoh;

    invoke-virtual {v1}, Lxoh;->e()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Luoh;->f()Lpph;

    move-result-object p1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/g2;->d0()Lcom/google/android/gms/internal/ads/a2;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/z1;->h0()Lcom/google/android/gms/internal/ads/y1;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbn$zzb$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzb$zzd;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/y1;->v(Lcom/google/android/gms/internal/ads/zzbbn$zzb$zzd;)Lcom/google/android/gms/internal/ads/y1;

    invoke-static {}, Lcom/google/android/gms/internal/ads/d2;->d0()Lcom/google/android/gms/internal/ads/c2;

    move-result-object v3

    iget-boolean v4, p1, Lpph;->b:Z

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/c2;->v(Z)Lcom/google/android/gms/internal/ads/c2;

    iget p1, p1, Lpph;->c:I

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/c2;->w(I)Lcom/google/android/gms/internal/ads/c2;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/y1;->w(Lcom/google/android/gms/internal/ads/c2;)Lcom/google/android/gms/internal/ads/y1;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/a2;->v(Lcom/google/android/gms/internal/ads/y1;)Lcom/google/android/gms/internal/ads/a2;

    invoke-virtual {v1}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/g2;

    iget-object v1, v0, Lbph;->a:Loyf;

    invoke-interface {v1}, Loyf;->zzb()Lgvf;

    move-result-object v1

    invoke-virtual {v1}, Lgvf;->c()Ls5g;

    move-result-object v1

    invoke-virtual {v1, p1}, Ls5g;->u(Lcom/google/android/gms/internal/ads/g2;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k5;->e()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k5;->c:Lxoh;

    invoke-virtual {p1}, Lxoh;->f()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k5;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d(Lcph;Lbph;)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k5;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luoh;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v2

    invoke-interface {v2}, Lfy0;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lbph;->d:J

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k5;->b:Lcom/google/android/gms/internal/ads/zzfdj;

    new-instance v2, Luoh;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzfdj;->zzd:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzfdj;->zze:I

    mul-int/lit16 v4, v4, 0x3e8

    invoke-direct {v2, v3, v4}, Luoh;-><init>(II)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzfdj;->zzc:I

    if-ne v3, v4, :cond_b

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfdj;->zzg:I

    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_a

    const-wide v5, 0x7fffffffffffffffL

    if-eqz v3, :cond_6

    const/4 v1, 0x1

    if-eq v3, v1, :cond_3

    const/4 v1, 0x2

    if-eq v3, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const v3, 0x7fffffff

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Luoh;

    invoke-virtual {v6}, Luoh;->a()I

    move-result v6

    if-ge v6, v3, :cond_1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luoh;

    invoke-virtual {v3}, Luoh;->a()I

    move-result v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcph;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_2
    if-eqz v4, :cond_9

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Luoh;

    invoke-virtual {v7}, Luoh;->d()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-gez v7, :cond_4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luoh;

    invoke-virtual {v4}, Luoh;->d()J

    move-result-wide v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcph;

    move-wide v5, v4

    move-object v4, v3

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_9

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Luoh;

    invoke-virtual {v7}, Luoh;->c()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-gez v7, :cond_7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luoh;

    invoke-virtual {v4}, Luoh;->c()J

    move-result-wide v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcph;

    move-wide v5, v4

    move-object v4, v3

    goto :goto_2

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k5;->c:Lxoh;

    invoke-virtual {v1}, Lxoh;->g()V

    goto :goto_4

    :cond_a
    throw v4

    :cond_b
    :goto_4
    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k5;->c:Lxoh;

    invoke-virtual {p1}, Lxoh;->d()V

    move-object v1, v2

    :cond_c
    invoke-virtual {v1, p2}, Luoh;->h(Lbph;)Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k5;->c:Lxoh;

    invoke-virtual {v0}, Lxoh;->c()V

    invoke-virtual {v0}, Lxoh;->a()Lwoh;

    move-result-object v0

    invoke-virtual {v1}, Luoh;->f()Lpph;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/g2;->d0()Lcom/google/android/gms/internal/ads/a2;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/z1;->h0()Lcom/google/android/gms/internal/ads/y1;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbbn$zzb$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbbn$zzb$zzd;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/y1;->v(Lcom/google/android/gms/internal/ads/zzbbn$zzb$zzd;)Lcom/google/android/gms/internal/ads/y1;

    invoke-static {}, Lcom/google/android/gms/internal/ads/f2;->h0()Lcom/google/android/gms/internal/ads/e2;

    move-result-object v4

    iget-boolean v5, v0, Lwoh;->b:Z

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/e2;->v(Z)Lcom/google/android/gms/internal/ads/e2;

    iget-boolean v0, v0, Lwoh;->c:Z

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/e2;->w(Z)Lcom/google/android/gms/internal/ads/e2;

    iget v0, v1, Lpph;->c:I

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/e2;->x(I)Lcom/google/android/gms/internal/ads/e2;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/y1;->y(Lcom/google/android/gms/internal/ads/e2;)Lcom/google/android/gms/internal/ads/y1;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/a2;->v(Lcom/google/android/gms/internal/ads/y1;)Lcom/google/android/gms/internal/ads/a2;

    invoke-virtual {v2}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/g2;

    iget-object p2, p2, Lbph;->a:Loyf;

    invoke-interface {p2}, Loyf;->zzb()Lgvf;

    move-result-object p2

    invoke-virtual {p2}, Lgvf;->c()Ls5g;

    move-result-object p2

    invoke-virtual {p2, v0}, Ls5g;->t(Lcom/google/android/gms/internal/ads/g2;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k5;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e()V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfdj;->CREATOR:Landroid/os/Parcelable$Creator;

    sget-object v0, Lcye;->o6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k5;->b:Lcom/google/android/gms/internal/ads/zzfdj;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfdj;->zzb:Lcom/google/android/gms/internal/ads/zzfdg;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " PoolCollection"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/k5;->c:Lxoh;

    invoke-virtual {v2}, Lxoh;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/k5;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcph;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Luoh;

    invoke-virtual {v6}, Luoh;->b()I

    move-result v6

    if-ge v5, v6, :cond_0

    const-string v6, "[O]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Luoh;

    invoke-virtual {v5}, Luoh;->b()I

    move-result v5

    :goto_2
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzfdj;->zzd:I

    if-ge v5, v6, :cond_1

    const-string v6, "[ ]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luoh;

    invoke-virtual {v4}, Luoh;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :goto_3
    iget p0, v1, Lcom/google/android/gms/internal/ads/zzfdj;->zzc:I

    if-ge v3, p0, :cond_3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzfdj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/k5;->b:Lcom/google/android/gms/internal/ads/zzfdj;

    return-object p0
.end method
