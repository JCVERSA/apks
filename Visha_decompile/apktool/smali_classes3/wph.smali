.class public final Lwph;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnph;

.field public final b:Lim5;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Lvoh;Lmph;Lnph;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwph;->c:Z

    iput-boolean v0, p0, Lwph;->d:Z

    iput-object p3, p0, Lwph;->a:Lnph;

    invoke-interface {p2, p3}, Lmph;->a(Lnph;)Lim5;

    move-result-object v0

    new-instance v1, Luph;

    invoke-direct {v1, p0, p2, p1, p3}, Luph;-><init>(Lwph;Lmph;Lvoh;Lnph;)V

    invoke-interface {p3}, Lnph;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p1

    new-instance v0, Lvph;

    invoke-direct {v0, p0, p2}, Lvph;-><init>(Lwph;Lmph;)V

    invoke-interface {p3}, Lnph;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p2

    const-class p3, Ljava/lang/Exception;

    invoke-static {p1, p3, v0, p2}, Lcom/google/android/gms/internal/ads/j8;->f(Lim5;Ljava/lang/Class;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p1

    iput-object p1, p0, Lwph;->b:Lim5;

    return-void
.end method

.method public static synthetic a(Lwph;Lmph;Ljava/lang/Exception;)Lim5;
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lwph;->d:Z

    throw p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static synthetic b(Lwph;Lmph;Lvoh;Lnph;Lbph;)Lim5;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lwph;->d:Z

    invoke-interface {p1, p4}, Lmph;->b(Lbph;)V

    iget-boolean p1, p0, Lwph;->c:Z

    if-nez p1, :cond_0

    invoke-interface {p3}, Lnph;->zza()Lcph;

    move-result-object p1

    invoke-interface {p2, p1, p4}, Lvoh;->d(Lcph;Lbph;)Z

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Llph;

    invoke-direct {p1, p4, p3}, Llph;-><init>(Lbph;Lnph;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p1

    monitor-exit p0

    :goto_0
    return-object p1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized c(Lnph;)Lim5;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lwph;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lwph;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lwph;->a:Lnph;

    invoke-interface {v0}, Lnph;->zza()Lcph;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lnph;->zza()Lcph;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lnph;->zza()Lcph;

    move-result-object v0

    invoke-interface {p1}, Lnph;->zza()Lcph;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lwph;->c:Z

    iget-object p1, p0, Lwph;->b:Lim5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d(Lv7i;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ltph;

    invoke-direct {v0}, Ltph;-><init>()V

    iget-object v1, p0, Lwph;->a:Lnph;

    invoke-interface {v1}, Lnph;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lwph;->b:Lim5;

    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    invoke-interface {v1}, Lnph;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
