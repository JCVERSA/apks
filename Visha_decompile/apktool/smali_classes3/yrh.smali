.class public final Lyrh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwrh;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:J

.field public c:J

.field public d:Z

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Lcom/google/android/gms/internal/ads/zzfgs;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:Z

.field public final p:I

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lyrh;->b:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lyrh;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyrh;->d:Z

    const/4 v1, 0x2

    iput v1, p0, Lyrh;->q:I

    iput v1, p0, Lyrh;->r:I

    iput v0, p0, Lyrh;->e:I

    const-string v1, ""

    iput-object v1, p0, Lyrh;->f:Ljava/lang/String;

    iput-object v1, p0, Lyrh;->g:Ljava/lang/String;

    iput-object v1, p0, Lyrh;->h:Ljava/lang/String;

    iput-object v1, p0, Lyrh;->i:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfgs;->zzb:Lcom/google/android/gms/internal/ads/zzfgs;

    iput-object v2, p0, Lyrh;->j:Lcom/google/android/gms/internal/ads/zzfgs;

    iput-object v1, p0, Lyrh;->k:Ljava/lang/String;

    iput-object v1, p0, Lyrh;->l:Ljava/lang/String;

    iput-object v1, p0, Lyrh;->m:Ljava/lang/String;

    iput-boolean v0, p0, Lyrh;->n:Z

    iput-boolean v0, p0, Lyrh;->o:Z

    iput-object p1, p0, Lyrh;->a:Landroid/content/Context;

    iput p2, p0, Lyrh;->p:I

    return-void
.end method

.method public static bridge synthetic g(Lyrh;)Lcom/google/android/gms/internal/ads/zzfgs;
    .locals 0

    iget-object p0, p0, Lyrh;->j:Lcom/google/android/gms/internal/ads/zzfgs;

    return-object p0
.end method

.method public static bridge synthetic h(Lyrh;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyrh;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic i(Lyrh;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyrh;->m:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic j(Lyrh;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyrh;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic k(Lyrh;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyrh;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic l(Lyrh;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyrh;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic m(Lyrh;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyrh;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic n(Lyrh;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyrh;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic o(Lyrh;)Z
    .locals 0

    iget-boolean p0, p0, Lyrh;->d:Z

    return p0
.end method

.method public static bridge synthetic q(Lyrh;)I
    .locals 0

    iget p0, p0, Lyrh;->p:I

    return p0
.end method

.method public static bridge synthetic r(Lyrh;)I
    .locals 0

    iget p0, p0, Lyrh;->q:I

    return p0
.end method

.method public static bridge synthetic s(Lyrh;)I
    .locals 0

    iget p0, p0, Lyrh;->r:I

    return p0
.end method

.method public static bridge synthetic t(Lyrh;)I
    .locals 0

    iget p0, p0, Lyrh;->e:I

    return p0
.end method

.method public static bridge synthetic u(Lyrh;)J
    .locals 2

    iget-wide v0, p0, Lyrh;->b:J

    return-wide v0
.end method

.method public static bridge synthetic v(Lyrh;)J
    .locals 2

    iget-wide v0, p0, Lyrh;->c:J

    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized A(Ljava/lang/String;)Lyrh;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lyrh;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized B(Lcom/google/android/gms/internal/ads/zzfgs;)Lyrh;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lyrh;->j:Lcom/google/android/gms/internal/ads/zzfgs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized C(Z)Lyrh;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lyrh;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized D(Ljava/lang/Throwable;)Lyrh;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcye;->U8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Luaf;->h(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyrh;->l:Ljava/lang/String;

    invoke-static {p1}, Luaf;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    invoke-static {v0}, Li2i;->b(C)Li2i;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/l6;->b(Li2i;)Lcom/google/android/gms/internal/ads/l6;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/l6;->d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lyrh;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized E()Lyrh;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzaa;

    move-result-object v0

    iget-object v1, p0, Lyrh;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzaa;->zzm(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lyrh;->e:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    :goto_0
    iput v1, p0, Lyrh;->r:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lyrh;->b:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyrh;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final bridge synthetic a(Lcom/google/android/gms/ads/internal/client/zze;)Lwrh;
    .locals 0

    invoke-virtual {p0, p1}, Lyrh;->w(Lcom/google/android/gms/ads/internal/client/zze;)Lyrh;

    return-object p0
.end method

.method public final declared-synchronized b()Lyrh;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lyrh;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final bridge synthetic c(I)Lwrh;
    .locals 0

    invoke-virtual {p0, p1}, Lyrh;->p(I)Lyrh;

    return-object p0
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/zzfgs;)Lwrh;
    .locals 0

    invoke-virtual {p0, p1}, Lyrh;->B(Lcom/google/android/gms/internal/ads/zzfgs;)Lyrh;

    return-object p0
.end method

.method public final bridge synthetic e(Lumh;)Lwrh;
    .locals 0

    invoke-virtual {p0, p1}, Lyrh;->x(Lumh;)Lyrh;

    return-object p0
.end method

.method public final bridge synthetic f(Ljava/lang/Throwable;)Lwrh;
    .locals 0

    invoke-virtual {p0, p1}, Lyrh;->D(Ljava/lang/Throwable;)Lyrh;

    return-object p0
.end method

.method public final declared-synchronized p(I)Lyrh;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lyrh;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized w(Lcom/google/android/gms/ads/internal/client/zze;)Lyrh;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zze:Landroid/os/IBinder;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcuv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcuv;->zzl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lyrh;->f:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcuv;->zzi()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lyrh;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-object p0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized x(Lumh;)Lyrh;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lumh;->b:Lkmh;

    iget-object v0, v0, Lkmh;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lyrh;->f:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p1, Lumh;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhmh;

    iget-object v0, v0, Lhmh;->b0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lyrh;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized y(Ljava/lang/String;)Lyrh;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcye;->U8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lyrh;->m:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized z(Ljava/lang/String;)Lyrh;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lyrh;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final bridge synthetic zzc(Ljava/lang/String;)Lwrh;
    .locals 0

    invoke-virtual {p0, p1}, Lyrh;->y(Ljava/lang/String;)Lyrh;

    return-object p0
.end method

.method public final bridge synthetic zzd(Ljava/lang/String;)Lwrh;
    .locals 0

    invoke-virtual {p0, p1}, Lyrh;->z(Ljava/lang/String;)Lyrh;

    return-object p0
.end method

.method public final bridge synthetic zze(Ljava/lang/String;)Lwrh;
    .locals 0

    invoke-virtual {p0, p1}, Lyrh;->A(Ljava/lang/String;)Lyrh;

    return-object p0
.end method

.method public final bridge synthetic zzg(Z)Lwrh;
    .locals 0

    invoke-virtual {p0, p1}, Lyrh;->C(Z)Lyrh;

    return-object p0
.end method

.method public final bridge synthetic zzi()Lwrh;
    .locals 0

    invoke-virtual {p0}, Lyrh;->E()Lyrh;

    return-object p0
.end method

.method public final bridge synthetic zzj()Lwrh;
    .locals 0

    invoke-virtual {p0}, Lyrh;->b()Lyrh;

    return-object p0
.end method

.method public final declared-synchronized zzk()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lyrh;->o:Z
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

.method public final zzl()Z
    .locals 0

    iget-object p0, p0, Lyrh;->h:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized zzm()Lash;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lyrh;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lyrh;->n:Z

    iget-boolean v0, p0, Lyrh;->o:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lyrh;->E()Lyrh;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-wide v2, p0, Lyrh;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lyrh;->b()Lyrh;

    :cond_2
    new-instance v0, Lash;

    invoke-direct {v0, p0, v1}, Lash;-><init>(Lyrh;Lzrh;)V
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
