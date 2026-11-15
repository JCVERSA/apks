.class public final Lo0h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lkmh;

.field public final synthetic c:Lhmh;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lsth;

.field public final synthetic f:Lvmh;

.field public final synthetic g:Lq0h;


# direct methods
.method public constructor <init>(Lq0h;JLkmh;Lhmh;Ljava/lang/String;Lsth;Lvmh;)V
    .locals 0

    iput-wide p2, p0, Lo0h;->a:J

    iput-object p4, p0, Lo0h;->b:Lkmh;

    iput-object p5, p0, Lo0h;->c:Lhmh;

    iput-object p6, p0, Lo0h;->d:Ljava/lang/String;

    iput-object p7, p0, Lo0h;->e:Lsth;

    iput-object p8, p0, Lo0h;->f:Lvmh;

    iput-object p1, p0, Lo0h;->g:Lq0h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lo0h;->g:Lq0h;

    invoke-static {v2}, Lq0h;->e(Lq0h;)Lfy0;

    move-result-object v3

    invoke-interface {v3}, Lfy0;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v0, Lo0h;->a:J

    sub-long/2addr v3, v5

    instance-of v5, v1, Ljava/util/concurrent/TimeoutException;

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    :goto_0
    move-object v14, v7

    goto :goto_2

    :cond_0
    instance-of v5, v1, Lcom/google/android/gms/internal/ads/zzefc;

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    instance-of v5, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_0

    :cond_2
    instance-of v5, v1, Lcom/google/android/gms/internal/ads/zzfbw;

    if-eqz v5, :cond_3

    const/4 v5, 0x5

    goto :goto_0

    :cond_3
    instance-of v5, v1, Lcom/google/android/gms/internal/ads/zzdvg;

    const/4 v8, 0x6

    if-eqz v5, :cond_5

    invoke-static/range {p1 .. p1}, Lgoh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v5

    iget v5, v5, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    if-ne v5, v6, :cond_4

    const/4 v8, 0x1

    :cond_4
    sget-object v5, Lcye;->O1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v9

    invoke-virtual {v9, v5}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    instance-of v5, v1, Lcom/google/android/gms/internal/ads/zzecj;

    if-eqz v5, :cond_5

    move-object v5, v1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzecj;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzecj;->zzb()Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v5

    if-eqz v5, :cond_5

    iget v5, v5, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v14, v5

    :goto_1
    move v5, v8

    goto :goto_2

    :cond_5
    move-object v14, v7

    goto :goto_1

    :goto_2
    monitor-enter v2

    :try_start_0
    invoke-static {v2}, Lq0h;->n(Lq0h;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v2}, Lq0h;->c(Lq0h;)Ls0h;

    move-result-object v8

    iget-object v9, v0, Lo0h;->b:Lkmh;

    iget-object v10, v0, Lo0h;->c:Lhmh;

    instance-of v11, v1, Lcom/google/android/gms/internal/ads/zzecj;

    if-eqz v11, :cond_6

    move-object v7, v1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzecj;

    :cond_6
    move-object v11, v7

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :goto_3
    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v5

    move-wide v12, v3

    invoke-virtual/range {v7 .. v13}, Ls0h;->a(Lkmh;Lhmh;ILcom/google/android/gms/internal/ads/zzecj;J)V

    :cond_7
    sget-object v7, Lcye;->v8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v8

    invoke-virtual {v8, v7}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v2}, Lq0h;->d(Lq0h;)Lwth;

    move-result-object v7

    iget-object v8, v0, Lo0h;->e:Lsth;

    iget-object v9, v0, Lo0h;->f:Lvmh;

    iget-object v10, v0, Lo0h;->c:Lhmh;

    iget-object v11, v10, Lhmh;->n:Ljava/util/List;

    invoke-virtual {v8, v9, v10, v11}, Lsth;->d(Lvmh;Lhmh;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iget-object v9, v10, Lhmh;->x0:Lcom/google/android/gms/ads/internal/util/client/zzv;

    invoke-virtual {v7, v8, v9}, Lwth;->e(Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    :cond_8
    invoke-static {v2}, Lq0h;->o(Lq0h;)Z

    move-result v7

    if-eqz v7, :cond_9

    monitor-exit v2

    return-void

    :cond_9
    invoke-static {v2}, Lq0h;->h(Lq0h;)Ljava/util/LinkedHashMap;

    move-result-object v15

    iget-object v13, v0, Lo0h;->c:Lhmh;

    new-instance v11, Lp0h;

    iget-object v8, v0, Lo0h;->d:Ljava/lang/String;

    iget-object v9, v13, Lhmh;->f0:Ljava/lang/String;

    move-object v7, v11

    move v10, v5

    move-object v0, v11

    move-wide v11, v3

    move-object v5, v13

    move-object v13, v14

    invoke-direct/range {v7 .. v13}, Lp0h;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Integer;)V

    invoke-virtual {v15, v5, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lgoh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    if-eq v1, v6, :cond_a

    if-nez v1, :cond_b

    :cond_a
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/client/zze;->zzd:Lcom/google/android/gms/ads/internal/client/zze;

    if-eqz v1, :cond_b

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/zze;->zzc:Ljava/lang/String;

    const-string v6, "com.google.android.gms.ads"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Lcom/google/android/gms/internal/ads/zzecj;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zze;->zzd:Lcom/google/android/gms/ads/internal/client/zze;

    const/16 v6, 0xd

    invoke-direct {v1, v6, v0}, Lcom/google/android/gms/internal/ads/zzecj;-><init>(ILcom/google/android/gms/ads/internal/client/zze;)V

    invoke-static {v1}, Lgoh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    :cond_b
    invoke-static {v2}, Lq0h;->b(Lq0h;)Loxg;

    move-result-object v1

    invoke-virtual {v1, v5, v3, v4, v0}, Loxg;->f(Lhmh;JLcom/google/android/gms/ads/internal/client/zze;)V

    monitor-exit v2

    return-void

    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 12

    iget-object p1, p0, Lo0h;->g:Lq0h;

    invoke-static {p1}, Lq0h;->e(Lq0h;)Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lo0h;->a:J

    sub-long/2addr v0, v2

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lq0h;->n(Lq0h;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lq0h;->c(Lq0h;)Ls0h;

    move-result-object v4

    iget-object v5, p0, Lo0h;->b:Lkmh;

    iget-object v6, p0, Lo0h;->c:Lhmh;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v9, v0

    invoke-virtual/range {v4 .. v10}, Ls0h;->a(Lkmh;Lhmh;ILcom/google/android/gms/internal/ads/zzecj;J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {p1}, Lq0h;->o(Lq0h;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit p1

    return-void

    :cond_1
    iget-object v2, p0, Lo0h;->c:Lhmh;

    invoke-static {p1, v2}, Lq0h;->p(Lq0h;Lhmh;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lq0h;->h(Lq0h;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp0h;

    iput-wide v0, p0, Lp0h;->d:J

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lq0h;->h(Lq0h;)Ljava/util/LinkedHashMap;

    move-result-object v3

    new-instance v11, Lp0h;

    iget-object v5, p0, Lo0h;->d:Ljava/lang/String;

    iget-object v6, v2, Lhmh;->f0:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v4, v11

    move-wide v8, v0

    invoke-direct/range {v4 .. v10}, Lp0h;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Integer;)V

    invoke-virtual {v3, v2, v11}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-static {p1}, Lq0h;->b(Lq0h;)Loxg;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Loxg;->g(Lhmh;JLcom/google/android/gms/ads/internal/client/zze;)V

    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
