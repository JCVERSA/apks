.class public final Ljhf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv9i;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lv9i;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Z

.field public f:Ljava/io/InputStream;

.field public g:Z

.field public h:Landroid/net/Uri;

.field public volatile i:Lcom/google/android/gms/internal/ads/zzbas;

.field public j:Z

.field public k:Z

.field public l:Lcfi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv9i;Ljava/lang/String;ILixi;Lghf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljhf;->a:Landroid/content/Context;

    iput-object p2, p0, Ljhf;->b:Lv9i;

    iput-object p3, p0, Ljhf;->c:Ljava/lang/String;

    iput p4, p0, Ljhf;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljhf;->j:Z

    iput-boolean p1, p0, Ljhf;->k:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, -0x1

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sget-object p1, Lcye;->c2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Ljhf;->e:Z

    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 1

    iget-boolean v0, p0, Ljhf;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljhf;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ljhf;->b:Lv9i;

    invoke-interface {p0, p1, p2, p3}, Lk8j;->b([BII)I

    move-result p0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attempt to read closed CacheDataSource."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lixi;)V
    .locals 0

    return-void
.end method

.method public final j(Lcfi;)J
    .locals 5

    iget-boolean v0, p0, Ljhf;->g:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljhf;->g:Z

    iget-object v0, p1, Lcfi;->a:Landroid/net/Uri;

    iput-object v0, p0, Ljhf;->h:Landroid/net/Uri;

    iput-object p1, p0, Ljhf;->l:Lcfi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbas;->zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzbas;

    move-result-object v0

    iput-object v0, p0, Ljhf;->i:Lcom/google/android/gms/internal/ads/zzbas;

    sget-object v0, Lcye;->x4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljhf;->i:Lcom/google/android/gms/internal/ads/zzbas;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljhf;->i:Lcom/google/android/gms/internal/ads/zzbas;

    iget-wide v2, p1, Lcfi;->e:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzbas;->zzh:J

    iget-object p1, p0, Ljhf;->i:Lcom/google/android/gms/internal/ads/zzbas;

    iget-object v0, p0, Ljhf;->c:Ljava/lang/String;

    invoke-static {v0}, Lj3i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzbas;->zzi:Ljava/lang/String;

    iget-object p1, p0, Ljhf;->i:Lcom/google/android/gms/internal/ads/zzbas;

    iget v0, p0, Ljhf;->d:I

    iput v0, p1, Lcom/google/android/gms/internal/ads/zzbas;->zzj:I

    iget-object p1, p0, Ljhf;->i:Lcom/google/android/gms/internal/ads/zzbas;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbas;->zzg:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcye;->z4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    sget-object p1, Lcye;->y4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p1

    invoke-interface {p1}, Lfy0;->elapsedRealtime()J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzd()Lzwe;

    iget-object p1, p0, Ljhf;->a:Landroid/content/Context;

    iget-object v0, p0, Ljhf;->i:Lcom/google/android/gms/internal/ads/zzbas;

    invoke-static {p1, v0}, Lzwe;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbas;)Ljava/util/concurrent/Future;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laxe;

    invoke-virtual {v2}, Laxe;->d()Z

    invoke-virtual {v2}, Laxe;->f()Z

    move-result v3

    iput-boolean v3, p0, Ljhf;->j:Z

    invoke-virtual {v2}, Laxe;->e()Z

    move-result v3

    iput-boolean v3, p0, Ljhf;->k:Z

    invoke-virtual {v2}, Laxe;->a()J

    invoke-virtual {p0}, Ljhf;->k()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Laxe;->c()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Ljhf;->f:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catch_1
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p0

    invoke-interface {p0}, Lfy0;->elapsedRealtime()J

    throw v1

    :cond_2
    iget-object v0, p0, Ljhf;->i:Lcom/google/android/gms/internal/ads/zzbas;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljhf;->i:Lcom/google/android/gms/internal/ads/zzbas;

    iget-wide v1, p1, Lcfi;->e:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbas;->zzh:J

    iget-object v0, p0, Ljhf;->i:Lcom/google/android/gms/internal/ads/zzbas;

    iget-object v1, p0, Ljhf;->c:Ljava/lang/String;

    invoke-static {v1}, Lj3i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbas;->zzi:Ljava/lang/String;

    iget-object v0, p0, Ljhf;->i:Lcom/google/android/gms/internal/ads/zzbas;

    iget v1, p0, Ljhf;->d:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzbas;->zzj:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzc()Lcom/google/android/gms/internal/ads/m0;

    move-result-object v0

    iget-object v1, p0, Ljhf;->i:Lcom/google/android/gms/internal/ads/zzbas;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/m0;->b(Lcom/google/android/gms/internal/ads/zzbas;)Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbap;->zze()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbap;->zzg()Z

    move-result v0

    iput-boolean v0, p0, Ljhf;->j:Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbap;->zzf()Z

    move-result v0

    iput-boolean v0, p0, Ljhf;->k:Z

    invoke-virtual {p0}, Ljhf;->k()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbap;->zzc()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Ljhf;->f:Ljava/io/InputStream;

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_4
    iget-object v0, p0, Ljhf;->i:Lcom/google/android/gms/internal/ads/zzbas;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcfi;->a()Lzci;

    move-result-object p1

    iget-object v0, p0, Ljhf;->i:Lcom/google/android/gms/internal/ads/zzbas;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbas;->zza:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzci;->d(Landroid/net/Uri;)Lzci;

    invoke-virtual {p1}, Lzci;->e()Lcfi;

    move-result-object p1

    iput-object p1, p0, Ljhf;->l:Lcfi;

    :cond_5
    iget-object p1, p0, Ljhf;->b:Lv9i;

    iget-object p0, p0, Ljhf;->l:Lcfi;

    invoke-interface {p1, p0}, Lv9i;->j(Lcfi;)J

    move-result-wide p0

    return-wide p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attempt to open an already open CacheDataSource."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k()Z
    .locals 4

    iget-boolean v0, p0, Ljhf;->e:Z

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

    iget-boolean v0, p0, Ljhf;->j:Z

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

    iget-boolean p0, p0, Ljhf;->k:Z

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Ljhf;->h:Landroid/net/Uri;

    return-object p0
.end method

.method public final zzd()V
    .locals 2

    iget-boolean v0, p0, Ljhf;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljhf;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljhf;->h:Landroid/net/Uri;

    iget-object v1, p0, Ljhf;->f:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lpv4;->a(Ljava/io/Closeable;)V

    iput-object v0, p0, Ljhf;->f:Ljava/io/InputStream;

    return-void

    :cond_0
    iget-object p0, p0, Ljhf;->b:Lv9i;

    invoke-interface {p0}, Lv9i;->zzd()V

    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Attempt to close an already closed CacheDataSource."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final synthetic zze()Ljava/util/Map;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
