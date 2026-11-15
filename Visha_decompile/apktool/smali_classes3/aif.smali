.class public final Laif;
.super Lcom/google/android/gms/internal/ads/z3;
.source "SourceFile"

# interfaces
.implements Ltgf;


# instance fields
.field public e:Lugf;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Lcom/google/android/gms/internal/ads/y3;

.field public j:J

.field public k:J


# direct methods
.method public constructor <init>(Lchf;Lbhf;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/z3;-><init>(Lchf;)V

    invoke-interface {p1}, Lchf;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lrif;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z3;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchf;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lrif;-><init>(Landroid/content/Context;Lbhf;Lchf;Ljava/lang/Integer;)V

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "ExoPlayerAdapter initialized."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iput-object v0, p0, Laif;->e:Lugf;

    invoke-virtual {v0, p0}, Lugf;->C(Ltgf;)V

    return-void
.end method

.method public static synthetic t(Laif;)V
    .locals 32

    move-object/from16 v15, p0

    iget-object v0, v15, Laif;->f:Ljava/lang/String;

    invoke-static {v0}, Laif;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v17, "error"

    :try_start_0
    sget-object v0, Lcye;->N:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sget-object v2, Lcye;->t:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v11, v2

    sget-object v2, Lcye;->c2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v3

    invoke-interface {v3}, Lfy0;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v15, Laif;->j:J

    sub-long/2addr v3, v5

    cmp-long v3, v3, v0

    if-gtz v3, :cond_b

    iget-boolean v0, v15, Laif;->g:Z

    if-nez v0, :cond_a

    iget-boolean v0, v15, Laif;->h:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    move-object v2, v15

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    move-object v5, v13

    move-object v2, v15

    goto/16 :goto_7

    :cond_0
    iget-object v0, v15, Laif;->e:Lugf;

    invoke-virtual {v0}, Lugf;->M()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v15, Laif;->e:Lugf;

    invoke-virtual {v0}, Lugf;->V()J

    move-result-wide v9

    const-wide/16 v18, 0x0

    cmp-long v0, v9, v18

    if-lez v0, :cond_7

    iget-object v0, v15, Laif;->e:Lugf;

    invoke-virtual {v0}, Lugf;->R()J

    move-result-wide v6

    iget-wide v0, v15, Laif;->k:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_5

    cmp-long v0, v6, v18

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v8, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    :try_start_2
    iget-object v0, v15, Laif;->f:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_2

    :try_start_3
    iget-object v1, v15, Laif;->e:Lugf;

    invoke-virtual {v1}, Lugf;->r()J

    move-result-wide v20

    goto :goto_2

    :cond_2
    move-wide/from16 v20, v3

    :goto_2
    if-eqz v2, :cond_3

    iget-object v1, v15, Laif;->e:Lugf;

    invoke-virtual {v1}, Lugf;->T()J

    move-result-wide v22

    goto :goto_3

    :cond_3
    move-wide/from16 v22, v3

    :goto_3
    if-eqz v2, :cond_4

    iget-object v1, v15, Laif;->e:Lugf;

    invoke-virtual {v1}, Lugf;->s()J

    move-result-wide v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v24, v1

    goto :goto_4

    :cond_4
    move-wide/from16 v24, v3

    :goto_4
    :try_start_4
    invoke-static {}, Lugf;->O()I

    move-result v16

    invoke-static {}, Lugf;->Q()I

    move-result v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v13

    move-wide v4, v6

    move-wide/from16 v27, v6

    move-wide v6, v9

    move-wide/from16 v29, v9

    move-wide/from16 v9, v20

    move-wide/from16 v20, v11

    move-wide/from16 v11, v22

    move-object/from16 v31, v13

    move-wide/from16 v13, v24

    move/from16 v15, v16

    move/from16 v16, v26

    :try_start_5
    invoke-virtual/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/z3;->h(Ljava/lang/String;Ljava/lang/String;JJZJJJII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v2, p0

    move-wide/from16 v0, v27

    :try_start_6
    iput-wide v0, v2, Laif;->k:J

    move-wide/from16 v3, v29

    goto :goto_6

    :catchall_1
    move-exception v0

    :goto_5
    move-object/from16 v5, v31

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v31, v13

    move-object v2, v15

    goto :goto_5

    :cond_5
    move-wide v0, v6

    move-wide/from16 v20, v11

    move-object/from16 v31, v13

    move-object v2, v15

    move-wide v3, v9

    :goto_6
    cmp-long v5, v0, v3

    if-ltz v5, :cond_6

    iget-object v0, v2, Laif;->f:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v5, v31

    :try_start_7
    invoke-virtual {v2, v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/z3;->e(Ljava/lang/String;Ljava/lang/String;J)V

    monitor-exit p0

    goto/16 :goto_a

    :cond_6
    move-object/from16 v5, v31

    iget-object v3, v2, Laif;->e:Lugf;

    invoke-virtual {v3}, Lugf;->S()J

    move-result-wide v3

    cmp-long v3, v3, v20

    if-ltz v3, :cond_8

    cmp-long v0, v0, v18

    if-lez v0, :cond_8

    monitor-exit p0

    goto/16 :goto_a

    :cond_7
    move-object v5, v13

    move-object v2, v15

    :cond_8
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    sget-object v0, Lcye;->O:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Laif;->w(J)V

    return-void

    :cond_9
    move-object v5, v13

    move-object v2, v15

    :try_start_8
    const-string v17, "exoPlayerReleased"

    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExoPlayer was released during preloading."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_7

    :cond_a
    move-object v5, v13

    move-object v2, v15

    const-string v17, "externalAbort"

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Abort requested before buffering finished. "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object v5, v13

    move-object v2, v15

    const-string v17, "downloadTimeout"

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timeout reached. Limit: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :goto_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception v0

    :goto_8
    move-object/from16 v1, v17

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v5, v13

    move-object v2, v15

    goto :goto_8

    :goto_9
    iget-object v3, v2, Laif;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to preload url "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Exception: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    const-string v3, "VideoStreamExoPlayerCache.preload"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lqef;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/z3;->release()V

    invoke-static {v1, v0}, Laif;->v(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, Laif;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v5, v1, v0}, Lcom/google/android/gms/internal/ads/z3;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzz()Lshf;

    move-result-object v0

    iget-object v1, v2, Laif;->i:Lcom/google/android/gms/internal/ads/y3;

    invoke-virtual {v0, v1}, Lshf;->f(Lcom/google/android/gms/internal/ads/y3;)V

    return-void
.end method

.method public static final u(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "cache:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Laif;->g:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/z3;->release()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Laif;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Laif;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laif;->f:Ljava/lang/String;

    const-string v2, "externalAbort"

    const-string v3, "Programmatic precache abort."

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/z3;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final i(I)V
    .locals 0

    iget-object p0, p0, Laif;->e:Lugf;

    invoke-virtual {p0, p1}, Lugf;->A(I)V

    return-void
.end method

.method public final k(I)V
    .locals 0

    iget-object p0, p0, Laif;->e:Lugf;

    invoke-virtual {p0, p1}, Lugf;->B(I)V

    return-void
.end method

.method public final l(I)V
    .locals 0

    iget-object p0, p0, Laif;->e:Lugf;

    invoke-virtual {p0, p1}, Lugf;->D(I)V

    return-void
.end method

.method public final m(I)V
    .locals 0

    iget-object p0, p0, Laif;->e:Lugf;

    invoke-virtual {p0, p1}, Lugf;->E(I)V

    return-void
.end method

.method public final n(Ljava/lang/String;)Z
    .locals 1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/z3;->o(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final o(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 45

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-object/from16 v0, p2

    const/16 v17, 0x1

    iput-object v13, v15, Laif;->f:Ljava/lang/String;

    const-string v18, "error"

    invoke-static/range {p1 .. p1}, Laif;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v19, 0x0

    :try_start_0
    array-length v1, v0

    new-array v1, v1, [Landroid/net/Uri;

    move/from16 v2, v19

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    goto/16 :goto_b

    :cond_0
    iget-object v0, v15, Laif;->e:Lugf;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/z3;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lugf;->w([Landroid/net/Uri;Ljava/lang/String;)V

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/z3;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchf;

    if-eqz v0, :cond_1

    invoke-interface {v0, v14, v15}, Lchf;->zzt(Ljava/lang/String;Lcom/google/android/gms/internal/ads/z3;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v20

    sget-object v1, Lcye;->O:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sget-object v1, Lcye;->N:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v9, v1, v3

    sget-object v1, Lcye;->t:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    sget-object v1, Lcye;->c2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    const-wide/16 v23, -0x1

    move-wide/from16 v1, v23

    :goto_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v20

    cmp-long v3, v3, v9

    if-gtz v3, :cond_d

    iget-boolean v3, v15, Laif;->g:Z

    if-nez v3, :cond_c

    iget-boolean v3, v15, Laif;->h:Z

    if-eqz v3, :cond_2

    monitor-exit p0

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    goto/16 :goto_a

    :cond_2
    iget-object v3, v15, Laif;->e:Lugf;

    invoke-virtual {v3}, Lugf;->M()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v15, Laif;->e:Lugf;

    invoke-virtual {v3}, Lugf;->V()J

    move-result-wide v4

    const-wide/16 v25, 0x0

    cmp-long v3, v4, v25

    if-lez v3, :cond_a

    iget-object v3, v15, Laif;->e:Lugf;

    invoke-virtual {v3}, Lugf;->R()J

    move-result-wide v27

    cmp-long v3, v27, v1

    if-eqz v3, :cond_7

    cmp-long v1, v27, v25

    if-lez v1, :cond_3

    move/from16 v8, v17

    goto :goto_2

    :cond_3
    move/from16 v8, v19

    :goto_2
    if-eqz v22, :cond_4

    iget-object v1, v15, Laif;->e:Lugf;

    invoke-virtual {v1}, Lugf;->r()J

    move-result-wide v1

    move-wide/from16 v29, v1

    goto :goto_3

    :cond_4
    move-wide/from16 v29, v23

    :goto_3
    if-eqz v22, :cond_5

    iget-object v1, v15, Laif;->e:Lugf;

    invoke-virtual {v1}, Lugf;->T()J

    move-result-wide v1

    move-wide/from16 v31, v1

    goto :goto_4

    :cond_5
    move-wide/from16 v31, v23

    :goto_4
    if-eqz v22, :cond_6

    iget-object v1, v15, Laif;->e:Lugf;

    invoke-virtual {v1}, Lugf;->s()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide/from16 v33, v1

    goto :goto_5

    :cond_6
    move-wide/from16 v33, v23

    :goto_5
    :try_start_2
    invoke-static {}, Lugf;->O()I

    move-result v16

    invoke-static {}, Lugf;->Q()I

    move-result v35
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v36, v4

    move-wide/from16 v4, v27

    move-wide/from16 v38, v6

    move-wide/from16 v6, v36

    move-wide/from16 v40, v9

    move-wide/from16 v9, v29

    move-wide/from16 v42, v11

    move-wide/from16 v11, v31

    move-object/from16 v44, v14

    move-wide/from16 v13, v33

    move/from16 v15, v16

    move/from16 v16, v35

    :try_start_3
    invoke-virtual/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/z3;->h(Ljava/lang/String;Ljava/lang/String;JJZJJJII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide/from16 v1, v27

    move-wide/from16 v3, v36

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_6
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, v44

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    move-object/from16 v44, v14

    goto :goto_6

    :cond_7
    move-wide/from16 v38, v6

    move-wide/from16 v40, v9

    move-wide/from16 v42, v11

    move-object/from16 v44, v14

    move-wide v3, v4

    :goto_7
    cmp-long v5, v27, v3

    if-ltz v5, :cond_8

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, v44

    :try_start_4
    invoke-virtual {v5, v6, v7, v3, v4}, Lcom/google/android/gms/internal/ads/z3;->e(Ljava/lang/String;Ljava/lang/String;J)V

    monitor-exit p0

    goto :goto_8

    :cond_8
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, v44

    iget-object v3, v5, Laif;->e:Lugf;

    invoke-virtual {v3}, Lugf;->S()J

    move-result-wide v3

    cmp-long v3, v3, v38

    if-ltz v3, :cond_9

    cmp-long v3, v27, v25

    if-lez v3, :cond_9

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_8
    return v17

    :cond_9
    move-wide/from16 v3, v42

    goto :goto_9

    :cond_a
    move-wide/from16 v38, v6

    move-wide/from16 v40, v9

    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    move-wide v3, v11

    :goto_9
    :try_start_5
    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    monitor-exit p0

    move-wide v11, v3

    move-object v15, v5

    move-object v13, v6

    move-object v14, v7

    move-wide/from16 v6, v38

    move-wide/from16 v9, v40

    goto/16 :goto_1

    :catch_1
    const-string v18, "interrupted"

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Wait interrupted."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_a

    :cond_b
    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    const-string v18, "exoPlayerReleased"

    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExoPlayer was released during preloading."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    const-string v18, "externalAbort"

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Abort requested before buffering finished. "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-wide/from16 v40, v9

    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    const-string v18, "downloadTimeout"

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout reached. Limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v40

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_a
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v0

    :goto_b
    move-object/from16 v1, v18

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to preload url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    const-string v2, "VideoStreamExoPlayerCache.preload"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lqef;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/z3;->release()V

    invoke-static {v1, v0}, Laif;->v(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v7, v1, v0}, Lcom/google/android/gms/internal/ads/z3;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v19
.end method

.method public final r(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/internal/ads/y3;)Z
    .locals 5

    const/4 v0, 0x1

    iput-object p1, p0, Laif;->f:Ljava/lang/String;

    iput-object p3, p0, Laif;->i:Lcom/google/android/gms/internal/ads/y3;

    invoke-static {p1}, Laif;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    :try_start_0
    array-length v2, p2

    new-array v2, v2, [Landroid/net/Uri;

    move v3, v1

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_0

    aget-object v4, p2, v3

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/2addr v3, v0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    iget-object p2, p0, Laif;->e:Lugf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/z3;->c:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Lugf;->w([Landroid/net/Uri;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/z3;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lchf;

    if-eqz p2, :cond_1

    invoke-interface {p2, p3, p0}, Lchf;->zzt(Ljava/lang/String;Lcom/google/android/gms/internal/ads/z3;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p2

    invoke-interface {p2}, Lfy0;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Laif;->j:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Laif;->k:J

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Laif;->w(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to preload url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    const-string v0, "VideoStreamExoPlayerCache.preload"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lqef;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/z3;->release()V

    const-string v0, "error"

    invoke-static {v0, p2}, Laif;->v(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/google/android/gms/internal/ads/z3;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final release()V
    .locals 2

    iget-object v0, p0, Laif;->e:Lugf;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lugf;->C(Ltgf;)V

    iget-object p0, p0, Laif;->e:Lugf;

    invoke-virtual {p0}, Lugf;->y()V

    :cond_0
    return-void
.end method

.method public final s()Lugf;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Laif;->h:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Laif;->e:Lugf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lugf;->C(Ltgf;)V

    iget-object v0, p0, Laif;->e:Lugf;

    iput-object v1, p0, Laif;->e:Lugf;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final w(J)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lpzh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcda;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcda;-><init>(Laif;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final zzD(II)V
    .locals 0

    return-void
.end method

.method public final zzi(ZJ)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z3;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lchf;

    if-eqz p0, :cond_0

    sget-object v0, Lzef;->f:Lg8i;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzccz;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzccz;-><init>(Lchf;ZJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final zzk(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Precache error"

    invoke-static {p0, p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "VideoStreamExoPlayerCache.onError"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lqef;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zzl(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Precache exception"

    invoke-static {p0, p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "VideoStreamExoPlayerCache.onException"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lqef;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zzm(I)V
    .locals 0

    return-void
.end method

.method public final zzv()V
    .locals 0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Precache onRenderedFirstFrame"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void
.end method
