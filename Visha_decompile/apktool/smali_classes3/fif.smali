.class public final Lfif;
.super Lp4i;
.source "SourceFile"


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lv9i;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:Z

.field public j:Ljava/io/InputStream;

.field public k:Z

.field public l:Landroid/net/Uri;

.field public volatile m:Lcom/google/android/gms/internal/ads/zzbas;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:J

.field public s:Lim5;

.field public final t:Ljava/util/concurrent/atomic/AtomicLong;

.field public final u:Loif;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv9i;Ljava/lang/String;ILixi;Loif;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lp4i;-><init>(Z)V

    iput-object p1, p0, Lfif;->e:Landroid/content/Context;

    iput-object p2, p0, Lfif;->f:Lv9i;

    iput-object p6, p0, Lfif;->u:Loif;

    iput-object p3, p0, Lfif;->g:Ljava/lang/String;

    iput p4, p0, Lfif;->h:I

    iput-boolean v0, p0, Lfif;->n:Z

    iput-boolean v0, p0, Lfif;->o:Z

    iput-boolean v0, p0, Lfif;->p:Z

    iput-boolean v0, p0, Lfif;->q:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lfif;->r:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, -0x1

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lfif;->t:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p1, 0x0

    iput-object p1, p0, Lfif;->s:Lim5;

    sget-object p1, Lcye;->c2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lfif;->i:Z

    invoke-virtual {p0, p5}, Lp4i;->c(Lixi;)V

    return-void
.end method

.method public static synthetic p(Lfif;)Ljava/lang/Long;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzc()Lcom/google/android/gms/internal/ads/m0;

    move-result-object v0

    iget-object p0, p0, Lfif;->m:Lcom/google/android/gms/internal/ads/zzbas;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/m0;->a(Lcom/google/android/gms/internal/ads/zzbas;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b([BII)I
    .locals 1

    iget-boolean v0, p0, Lfif;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfif;->j:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfif;->f:Lv9i;

    invoke-interface {v0, p1, p2, p3}, Lk8j;->b([BII)I

    move-result p1

    :goto_0
    iget-boolean p2, p0, Lfif;->i:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lfif;->j:Ljava/io/InputStream;

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lp4i;->zzg(I)V

    :cond_2
    return p1

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attempt to read closed GcacheDataSource."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Lcfi;)J
    .locals 14

    const-string v0, "ms"

    const-string v1, "Cache connection took "

    iget-boolean v2, p0, Lfif;->k:Z

    if-nez v2, :cond_9

    const/4 v2, 0x1

    iput-boolean v2, p0, Lfif;->k:Z

    iget-object v3, p1, Lcfi;->a:Landroid/net/Uri;

    iput-object v3, p0, Lfif;->l:Landroid/net/Uri;

    iget-boolean v4, p0, Lfif;->i:Z

    if-nez v4, :cond_0

    invoke-virtual {p0, p1}, Lp4i;->m(Lcfi;)V

    :cond_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbas;->zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzbas;

    move-result-object v3

    iput-object v3, p0, Lfif;->m:Lcom/google/android/gms/internal/ads/zzbas;

    sget-object v3, Lcye;->x4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v5

    invoke-virtual {v5, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lfif;->m:Lcom/google/android/gms/internal/ads/zzbas;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lfif;->m:Lcom/google/android/gms/internal/ads/zzbas;

    iget-wide v8, p1, Lcfi;->e:J

    iput-wide v8, v3, Lcom/google/android/gms/internal/ads/zzbas;->zzh:J

    iget-object v3, p0, Lfif;->m:Lcom/google/android/gms/internal/ads/zzbas;

    iget-object v8, p0, Lfif;->g:Ljava/lang/String;

    invoke-static {v8}, Lj3i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/google/android/gms/internal/ads/zzbas;->zzi:Ljava/lang/String;

    iget-object v3, p0, Lfif;->m:Lcom/google/android/gms/internal/ads/zzbas;

    iget v8, p0, Lfif;->h:I

    iput v8, v3, Lcom/google/android/gms/internal/ads/zzbas;->zzj:I

    iget-object v3, p0, Lfif;->m:Lcom/google/android/gms/internal/ads/zzbas;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzbas;->zzg:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcye;->z4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v8

    invoke-virtual {v8, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    goto :goto_0

    :cond_1
    sget-object v3, Lcye;->y4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v8

    invoke-virtual {v8, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v3

    invoke-interface {v3}, Lfy0;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzd()Lzwe;

    iget-object v3, p0, Lfif;->e:Landroid/content/Context;

    iget-object v12, p0, Lfif;->m:Lcom/google/android/gms/internal/ads/zzbas;

    invoke-static {v3, v12}, Lzwe;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbas;)Ljava/util/concurrent/Future;

    move-result-object v3

    :try_start_0
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v8, v9, v12}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laxe;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v8}, Laxe;->d()Z

    move-result v9

    iput-boolean v9, p0, Lfif;->n:Z

    invoke-virtual {v8}, Laxe;->f()Z

    move-result v9

    iput-boolean v9, p0, Lfif;->p:Z

    invoke-virtual {v8}, Laxe;->e()Z

    move-result v9

    iput-boolean v9, p0, Lfif;->q:Z

    invoke-virtual {v8}, Laxe;->a()J

    move-result-wide v12

    iput-wide v12, p0, Lfif;->r:J

    invoke-virtual {p0}, Lfif;->u()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8}, Laxe;->c()Ljava/io/InputStream;

    move-result-object v8

    iput-object v8, p0, Lfif;->j:Ljava/io/InputStream;

    if-eqz v4, :cond_2

    invoke-virtual {p0, p1}, Lp4i;->m(Lcfi;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_2
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p1

    invoke-interface {p1}, Lfy0;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v10

    iget-object p1, p0, Lfif;->u:Loif;

    iget-object p1, p1, Loif;->a:Lrif;

    invoke-static {p1, v2, v3, v4}, Lrif;->b0(Lrif;ZJ)V

    iput-boolean v2, p0, Lfif;->o:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-wide v5

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v3

    invoke-interface {v3}, Lfy0;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v10

    iget-object v5, p0, Lfif;->u:Loif;

    iget-object v5, v5, Loif;->a:Lrif;

    invoke-static {v5, v2, v3, v4}, Lrif;->b0(Lrif;ZJ)V

    iput-boolean v2, p0, Lfif;->o:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_0
    move v4, v2

    goto :goto_3

    :catch_1
    move v4, v2

    goto :goto_5

    :catchall_1
    move-exception p1

    move v2, v7

    goto :goto_6

    :catch_2
    move v4, v7

    :goto_3
    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v2

    invoke-interface {v2}, Lfy0;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v10

    iget-object v5, p0, Lfif;->u:Loif;

    iget-object v5, v5, Loif;->a:Lrif;

    invoke-static {v5, v4, v2, v3}, Lrif;->b0(Lrif;ZJ)V

    iput-boolean v4, p0, Lfif;->o:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catchall_2
    move-exception p1

    move v2, v4

    goto :goto_6

    :catch_3
    move v4, v7

    :goto_5
    :try_start_3
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v2

    invoke-interface {v2}, Lfy0;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v10

    iget-object v5, p0, Lfif;->u:Loif;

    iget-object v5, v5, Loif;->a:Lrif;

    invoke-static {v5, v4, v2, v3}, Lrif;->b0(Lrif;ZJ)V

    iput-boolean v4, p0, Lfif;->o:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :goto_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v3

    invoke-interface {v3}, Lfy0;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v10

    iget-object v5, p0, Lfif;->u:Loif;

    iget-object v5, v5, Loif;->a:Lrif;

    invoke-static {v5, v2, v3, v4}, Lrif;->b0(Lrif;ZJ)V

    iput-boolean v2, p0, Lfif;->o:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object v0, p0, Lfif;->m:Lcom/google/android/gms/internal/ads/zzbas;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfif;->m:Lcom/google/android/gms/internal/ads/zzbas;

    iget-wide v3, p1, Lcfi;->e:J

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzbas;->zzh:J

    iget-object v0, p0, Lfif;->m:Lcom/google/android/gms/internal/ads/zzbas;

    iget-object v1, p0, Lfif;->g:Ljava/lang/String;

    invoke-static {v1}, Lj3i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbas;->zzi:Ljava/lang/String;

    iget-object v0, p0, Lfif;->m:Lcom/google/android/gms/internal/ads/zzbas;

    iget v1, p0, Lfif;->h:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzbas;->zzj:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzc()Lcom/google/android/gms/internal/ads/m0;

    move-result-object v0

    iget-object v1, p0, Lfif;->m:Lcom/google/android/gms/internal/ads/zzbas;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/m0;->b(Lcom/google/android/gms/internal/ads/zzbas;)Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbap;->zze()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbap;->zzd()Z

    move-result v1

    iput-boolean v1, p0, Lfif;->n:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbap;->zzg()Z

    move-result v1

    iput-boolean v1, p0, Lfif;->p:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbap;->zzf()Z

    move-result v1

    iput-boolean v1, p0, Lfif;->q:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbap;->zza()J

    move-result-wide v3

    iput-wide v3, p0, Lfif;->r:J

    iput-boolean v2, p0, Lfif;->o:Z

    invoke-virtual {p0}, Lfif;->u()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbap;->zzc()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lfif;->j:Ljava/io/InputStream;

    iget-boolean v0, p0, Lfif;->i:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lp4i;->m(Lcfi;)V

    :cond_6
    return-wide v5

    :cond_7
    :goto_8
    iput-boolean v7, p0, Lfif;->o:Z

    iget-object v0, p0, Lfif;->m:Lcom/google/android/gms/internal/ads/zzbas;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcfi;->a()Lzci;

    move-result-object p1

    iget-object v0, p0, Lfif;->m:Lcom/google/android/gms/internal/ads/zzbas;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbas;->zza:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzci;->d(Landroid/net/Uri;)Lzci;

    invoke-virtual {p1}, Lzci;->e()Lcfi;

    move-result-object p1

    :cond_8
    iget-object p0, p0, Lfif;->f:Lv9i;

    invoke-interface {p0, p1}, Lv9i;->j(Lcfi;)J

    move-result-wide p0

    return-wide p0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attempt to open an already open GcacheDataSource."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final n()J
    .locals 2

    iget-wide v0, p0, Lfif;->r:J

    return-wide v0
.end method

.method public final o()J
    .locals 5

    iget-object v0, p0, Lfif;->m:Lcom/google/android/gms/internal/ads/zzbas;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lfif;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfif;->s:Lim5;

    if-nez v0, :cond_2

    sget-object v0, Lzef;->a:Lg8i;

    new-instance v3, Leif;

    invoke-direct {v3, p0}, Leif;-><init>(Lfif;)V

    invoke-interface {v0, v3}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object v0

    iput-object v0, p0, Lfif;->s:Lim5;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lfif;->s:Lim5;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lfif;->t:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lfif;->s:Lim5;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p0, p0, Lfif;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    :catch_0
    :cond_3
    :goto_1
    return-wide v1

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final q()Z
    .locals 0

    iget-boolean p0, p0, Lfif;->n:Z

    return p0
.end method

.method public final r()Z
    .locals 0

    iget-boolean p0, p0, Lfif;->q:Z

    return p0
.end method

.method public final s()Z
    .locals 0

    iget-boolean p0, p0, Lfif;->p:Z

    return p0
.end method

.method public final t()Z
    .locals 0

    iget-boolean p0, p0, Lfif;->o:Z

    return p0
.end method

.method public final u()Z
    .locals 4

    iget-boolean v0, p0, Lfif;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcye;->A4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lfif;->p:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    sget-object v0, Lcye;->B4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lfif;->q:Z

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lfif;->l:Landroid/net/Uri;

    return-object p0
.end method

.method public final zzd()V
    .locals 4

    iget-boolean v0, p0, Lfif;->k:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfif;->k:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lfif;->l:Landroid/net/Uri;

    iget-boolean v2, p0, Lfif;->i:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfif;->j:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    :cond_0
    move v0, v3

    :cond_1
    iget-object v2, p0, Lfif;->j:Ljava/io/InputStream;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lpv4;->a(Ljava/io/Closeable;)V

    iput-object v1, p0, Lfif;->j:Ljava/io/InputStream;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lfif;->f:Lv9i;

    invoke-interface {v1}, Lv9i;->zzd()V

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lp4i;->k()V

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Attempt to close an already closed GcacheDataSource."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
