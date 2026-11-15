.class public final Lcom/google/android/gms/internal/ads/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lare;


# static fields
.field public static s:Lcom/google/android/gms/internal/ads/c0;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Layh;

.field public final d:Lfyh;

.field public final e:Lgyh;

.field public final f:Lase;

.field public final g:Lrwh;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Leyh;

.field public final j:Ljava/util/concurrent/CountDownLatch;

.field public final k:Lose;

.field public final l:Lhse;

.field public final m:Lzre;

.field public volatile n:J

.field public final o:Ljava/lang/Object;

.field public volatile p:Z

.field public volatile q:Z

.field public final r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lrwh;Layh;Lfyh;Lgyh;Lase;Ljava/util/concurrent/Executor;Lowh;ILose;Lhse;Lzre;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/c0;->n:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/c0;->o:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/c0;->q:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c0;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/c0;->g:Lrwh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/c0;->c:Layh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/c0;->d:Lfyh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/c0;->e:Lgyh;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/c0;->f:Lase;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/c0;->h:Ljava/util/concurrent/Executor;

    iput p9, p0, Lcom/google/android/gms/internal/ads/c0;->r:I

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/c0;->k:Lose;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/c0;->l:Lhse;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/c0;->m:Lzre;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/c0;->q:Z

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c0;->j:Ljava/util/concurrent/CountDownLatch;

    new-instance p1, Lzqe;

    invoke-direct {p1, p0, p8}, Lzqe;-><init>(Lcom/google/android/gms/internal/ads/c0;Lowh;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c0;->i:Leyh;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/e;Z)Lcom/google/android/gms/internal/ads/c0;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/ads/c0;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ltwh;->c()Lswh;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/e;->f0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lswh;->a(Ljava/lang/String;)Lswh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/e;->i0()Z

    move-result p1

    invoke-virtual {v1, p1}, Lswh;->g(Z)Lswh;

    invoke-virtual {v1}, Lswh;->h()Ltwh;

    move-result-object p1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {p0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/c0;->j(Landroid/content/Context;Ljava/util/concurrent/Executor;Ltwh;Z)Lcom/google/android/gms/internal/ads/c0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static bridge synthetic b(Lcom/google/android/gms/internal/ads/c0;)Lrwh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/c0;->g:Lrwh;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/android/gms/internal/ads/c0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/c0;->o:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/android/gms/internal/ads/c0;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/c0;->p:Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/google/android/gms/internal/ads/c0;)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/c0;->l(I)Lzxh;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lzxh;->a()Lcom/google/android/gms/internal/ads/i0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/i0;->k0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lzxh;->a()Lcom/google/android/gms/internal/ads/i0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/i0;->j0()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    move-object v8, v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    move-object v8, v4

    move-object v9, v8

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/c0;->b:Landroid/content/Context;

    iget v7, p0, Lcom/google/android/gms/internal/ads/c0;->r:I

    const-string v10, "1"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/c0;->g:Lrwh;

    const/4 v6, 0x1

    move-object v11, v3

    invoke-static/range {v5 .. v11}, Lcxh;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrwh;)Lcom/google/android/gms/internal/ads/zzfoi;

    move-result-object v4

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzfoi;->zzb:[B

    if-eqz v5, :cond_b

    array-length v6, v5
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v5, v3, v6}, Lcom/google/android/gms/internal/ads/zzgwn;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v3

    invoke-static {}, Lesi;->a()Lesi;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/h0;->c0(Lcom/google/android/gms/internal/ads/zzgwn;Lesi;)Lcom/google/android/gms/internal/ads/h0;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/h0;->d0()Lcom/google/android/gms/internal/ads/i0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/i0;->k0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/h0;->d0()Lcom/google/android/gms/internal/ads/i0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/i0;->j0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/h0;->e0()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgwn;->zzA()[B

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/c0;->l(I)Lzxh;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lzxh;->a()Lcom/google/android/gms/internal/ads/i0;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/h0;->d0()Lcom/google/android/gms/internal/ads/i0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/i0;->k0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/i0;->k0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/h0;->d0()Lcom/google/android/gms/internal/ads/i0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/i0;->j0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/i0;->j0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v2

    goto/16 :goto_5

    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/c0;->i:Leyh;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzfoi;->zzc:I

    sget-object v6, Lcye;->A2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v7

    invoke-virtual {v7, v6}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/c0;->d:Lfyh;

    invoke-virtual {v4, v3}, Lfyh;->a(Lcom/google/android/gms/internal/ads/h0;)Z

    move-result v3

    goto :goto_2

    :cond_5
    const/4 v6, 0x4

    if-ne v4, v6, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/c0;->d:Lfyh;

    invoke-virtual {v4, v3, v5}, Lfyh;->b(Lcom/google/android/gms/internal/ads/h0;Leyh;)Z

    move-result v3

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/c0;->c:Layh;

    invoke-virtual {v4, v3, v5}, Layh;->a(Lcom/google/android/gms/internal/ads/h0;Leyh;)Z

    move-result v3

    :goto_2
    if-nez v3, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/c0;->g:Lrwh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const/16 v5, 0xfa9

    invoke-virtual {v2, v5, v3, v4}, Lrwh;->d(IJ)Lxda;

    goto :goto_6

    :cond_8
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/c0;->l(I)Lzxh;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/c0;->e:Lgyh;

    invoke-virtual {v4, v3}, Lgyh;->c(Lzxh;)Z

    move-result v3

    if-eqz v3, :cond_9

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/c0;->q:Z

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/c0;->n:J

    goto :goto_6

    :cond_a
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/c0;->g:Lrwh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const/16 v5, 0x1392

    invoke-virtual {v2, v5, v3, v4}, Lrwh;->d(IJ)Lxda;

    goto :goto_6

    :catch_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/c0;->g:Lrwh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const/16 v5, 0x7ee

    invoke-virtual {v2, v5, v3, v4}, Lrwh;->d(IJ)Lxda;

    goto :goto_6

    :cond_b
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const/16 v2, 0x1391

    invoke-virtual {v3, v2, v4, v5}, Lrwh;->d(IJ)Lxda;
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :goto_5
    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/c0;->g:Lrwh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const/16 v0, 0xfa2

    invoke-virtual {v3, v0, v4, v5, v2}, Lrwh;->c(IJLjava/lang/Exception;)Lxda;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_c
    :goto_6
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/c0;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :goto_7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/c0;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public static bridge synthetic h(Lcom/google/android/gms/internal/ads/c0;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/c0;->p:Z

    return p0
.end method

.method public static declared-synchronized j(Landroid/content/Context;Ljava/util/concurrent/Executor;Ltwh;Z)Lcom/google/android/gms/internal/ads/c0;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const-class v14, Lcom/google/android/gms/internal/ads/c0;

    monitor-enter v14

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/c0;->s:Lcom/google/android/gms/internal/ads/c0;

    if-nez v1, :cond_4

    move/from16 v1, p3

    invoke-static {v0, v8, v1}, Lrwh;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lrwh;

    move-result-object v3

    sget-object v1, Lcye;->D3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static/range {p0 .. p0}, Lmre;->c(Landroid/content/Context;)Lmre;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    move-object/from16 v20, v2

    :goto_0
    sget-object v1, Lcye;->E3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static/range {p0 .. p1}, Lose;->d(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lose;

    move-result-object v1

    move-object v11, v1

    goto :goto_1

    :cond_1
    move-object v11, v2

    :goto_1
    sget-object v1, Lcye;->S2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lhse;

    invoke-direct {v1}, Lhse;-><init>()V

    move-object v12, v1

    goto :goto_2

    :cond_2
    move-object v12, v2

    :goto_2
    sget-object v1, Lcye;->a3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lzre;

    invoke-direct {v1}, Lzre;-><init>()V

    move-object v13, v1

    move-object/from16 v1, p2

    goto :goto_3

    :cond_3
    move-object/from16 v1, p2

    move-object v13, v2

    :goto_3
    invoke-static {v0, v8, v3, v1}, Ljxh;->c(Landroid/content/Context;Ljava/util/concurrent/Executor;Lrwh;Ltwh;)Ljxh;

    move-result-object v17

    new-instance v2, Lcom/google/android/gms/internal/ads/zzavu;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzavu;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/f0;

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/ads/f0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavu;)V

    new-instance v7, Lase;

    move-object v15, v7

    move-object/from16 v16, p2

    move-object/from16 v18, v4

    move-object/from16 v19, v2

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    invoke-direct/range {v15 .. v23}, Lase;-><init>(Ltwh;Ljxh;Lcom/google/android/gms/internal/ads/f0;Lcom/google/android/gms/internal/ads/zzavu;Lmre;Lose;Lhse;Lzre;)V

    invoke-static {v0, v3}, Lqxh;->b(Landroid/content/Context;Lrwh;)I

    move-result v10

    new-instance v9, Lowh;

    invoke-direct {v9}, Lowh;-><init>()V

    new-instance v15, Lcom/google/android/gms/internal/ads/c0;

    new-instance v4, Layh;

    invoke-direct {v4, v0, v10}, Layh;-><init>(Landroid/content/Context;I)V

    new-instance v5, Lfyh;

    new-instance v1, Lyqe;

    invoke-direct {v1, v3}, Lyqe;-><init>(Lrwh;)V

    sget-object v2, Lcye;->C2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v6

    invoke-virtual {v6, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v5, v0, v10, v1, v2}, Lfyh;-><init>(Landroid/content/Context;ILrxh;Z)V

    new-instance v6, Lgyh;

    invoke-direct {v6, v0, v7, v3, v9}, Lgyh;-><init>(Landroid/content/Context;Lhyh;Lrwh;Lowh;)V

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/c0;-><init>(Landroid/content/Context;Lrwh;Layh;Lfyh;Lgyh;Lase;Ljava/util/concurrent/Executor;Lowh;ILose;Lhse;Lzre;)V

    sput-object v15, Lcom/google/android/gms/internal/ads/c0;->s:Lcom/google/android/gms/internal/ads/c0;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/c0;->f()V

    sget-object v0, Lcom/google/android/gms/internal/ads/c0;->s:Lcom/google/android/gms/internal/ads/c0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c0;->g()V

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/ads/c0;->s:Lcom/google/android/gms/internal/ads/c0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v14

    return-object v0

    :goto_4
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized f()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/c0;->l(I)Lzxh;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c0;->e:Lgyh;

    invoke-virtual {v0, v3}, Lgyh;->c(Lzxh;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/c0;->q:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c0;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/c0;->g:Lrwh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const/16 v0, 0xfad

    invoke-virtual {v2, v0, v3, v4}, Lrwh;->d(IJ)Lxda;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final g()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/c0;->p:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c0;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/c0;->p:Z

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/c0;->n:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xe10

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/c0;->e:Lgyh;

    invoke-virtual {v1}, Lgyh;->b()Lzxh;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3, v4}, Lzxh;->d(J)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/c0;->r:I

    invoke-static {v1}, Lqxh;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/c0;->h:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaup;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzaup;-><init>(Lcom/google/android/gms/internal/ads/c0;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    return-void
.end method

.method public final declared-synchronized i()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/c0;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final k()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/c0;->k:Lose;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lose;->h()V

    :cond_0
    return-void
.end method

.method public final l(I)Lzxh;
    .locals 1

    iget p1, p0, Lcom/google/android/gms/internal/ads/c0;->r:I

    invoke-static {p1}, Lqxh;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p1, Lcye;->A2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/c0;->d:Lfyh;

    invoke-virtual {p0, v0}, Lfyh;->c(I)Lzxh;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/c0;->c:Layh;

    invoke-virtual {p0, v0}, Layh;->c(I)Lzxh;

    move-result-object p0

    return-object p0
.end method

.method public final zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/c0;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/c0;->k()V

    sget-object v1, Lcye;->S2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/c0;->l:Lhse;

    invoke-virtual {v1}, Lhse;->i()V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/c0;->g()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/c0;->e:Lgyh;

    invoke-virtual {v1}, Lgyh;->a()Luwh;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-interface/range {v2 .. v7}, Luwh;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/c0;->g:Lrwh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v12, v2, v8

    const/4 v15, 0x0

    const/16 v11, 0x1388

    move-object v14, v1

    invoke-virtual/range {v10 .. v15}, Lrwh;->f(IJLjava/lang/String;Ljava/util/Map;)Lxda;

    return-object v1

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public final zzf(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/c0;->k()V

    sget-object v0, Lcye;->S2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c0;->l:Lhse;

    invoke-virtual {v0}, Lhse;->j()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/c0;->g()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c0;->e:Lgyh;

    invoke-virtual {v0}, Lgyh;->a()Luwh;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-interface {v0, p1, v3}, Luwh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/c0;->g:Lrwh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v6, v5, v1

    const/4 v9, 0x0

    const/16 v5, 0x1389

    move-object v8, p1

    invoke-virtual/range {v4 .. v9}, Lrwh;->f(IJLjava/lang/String;Ljava/util/Map;)Lxda;

    return-object p1

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public final zzg(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "19"

    return-object p0
.end method

.method public final zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/c0;->k()V

    sget-object v0, Lcye;->S2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c0;->l:Lhse;

    invoke-virtual {v0, p1, p2}, Lhse;->k(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/c0;->g()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c0;->e:Lgyh;

    invoke-virtual {v0}, Lgyh;->a()Luwh;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-interface {v0, p1, v3, p2, p3}, Luwh;->c(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/c0;->g:Lrwh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long v6, p2, v1

    const/4 v9, 0x0

    const/16 v5, 0x138a

    move-object v8, p1

    invoke-virtual/range {v4 .. v9}, Lrwh;->f(IJLjava/lang/String;Ljava/util/Map;)Lxda;

    return-object p1

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public final zzk(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c0;->e:Lgyh;

    invoke-virtual {v0}, Lgyh;->a()Luwh;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1, p1}, Luwh;->b(Ljava/lang/String;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfom; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/c0;->g:Lrwh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfom;->zza()I

    move-result v0

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lrwh;->c(IJLjava/lang/Exception;)Lxda;

    :cond_0
    return-void
.end method

.method public final zzl(III)V
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lcye;->cc:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/c0;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    int-to-float v2, v2

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v9, v2, v3

    move/from16 v4, p2

    int-to-float v15, v4

    mul-float v10, v15, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v3, 0x0

    move/from16 v18, v15

    move v15, v3

    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/c0;->zzk(Landroid/view/MotionEvent;)V

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v9, v2, v3

    mul-float v10, v18, v3

    const/4 v8, 0x2

    const/4 v15, 0x0

    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/c0;->zzk(Landroid/view/MotionEvent;)V

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    move/from16 v3, p3

    int-to-long v5, v3

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v8, v2, v1

    mul-float v9, v18, v1

    const/4 v15, 0x0

    const-wide/16 v3, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v3 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/c0;->zzk(Landroid/view/MotionEvent;)V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzn([Ljava/lang/StackTraceElement;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/c0;->m:Lzre;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzre;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final zzo(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/c0;->f:Lase;

    invoke-virtual {p0, p1}, Lase;->a(Landroid/view/View;)V

    return-void
.end method
