.class public final Loph;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lvoh;

.field public final b:Lmph;

.field public final c:Looh;

.field public final d:Ljava/util/ArrayDeque;

.field public e:Lwph;

.field public f:I


# direct methods
.method public constructor <init>(Lvoh;Looh;Lmph;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Loph;->f:I

    iput-object p1, p0, Loph;->a:Lvoh;

    iput-object p2, p0, Loph;->c:Looh;

    iput-object p3, p0, Loph;->b:Lmph;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Loph;->d:Ljava/util/ArrayDeque;

    new-instance p1, Ljph;

    invoke-direct {p1, p0}, Ljph;-><init>(Loph;)V

    invoke-virtual {p2, p1}, Looh;->b(Ljph;)V

    return-void
.end method

.method public static bridge synthetic b(Loph;)Ljava/util/ArrayDeque;
    .locals 0

    iget-object p0, p0, Loph;->d:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method public static synthetic c(Loph;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Loph;->f:I

    invoke-virtual {p0}, Loph;->h()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static bridge synthetic d(Loph;Lwph;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Loph;->e:Lwph;

    return-void
.end method

.method public static bridge synthetic e(Loph;)V
    .locals 0

    invoke-virtual {p0}, Loph;->h()V

    return-void
.end method

.method public static bridge synthetic g(Loph;)I
    .locals 0

    iget p0, p0, Loph;->f:I

    return p0
.end method


# virtual methods
.method public final declared-synchronized a(Lnph;)Lim5;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Loph;->f:I

    invoke-virtual {p0}, Loph;->i()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    iget-object v0, p0, Loph;->e:Lwph;

    invoke-virtual {v0, p1}, Lwph;->c(Lnph;)Lim5;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized f(Lnph;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loph;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
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

.method public final declared-synchronized h()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcye;->l6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v0

    invoke-virtual {v0}, Lqef;->j()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzg()Lief;

    move-result-object v0

    invoke-virtual {v0}, Lief;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Loph;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Loph;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Loph;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnph;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lnph;->zza()Lcph;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Loph;->a:Lvoh;

    invoke-interface {v0}, Lnph;->zza()Lcph;

    move-result-object v2

    invoke-interface {v1, v2}, Lvoh;->a(Lcph;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    iget-object v1, p0, Loph;->a:Lvoh;

    iget-object v2, p0, Loph;->b:Lmph;

    new-instance v3, Lwph;

    invoke-direct {v3, v1, v2, v0}, Lwph;-><init>(Lvoh;Lmph;Lnph;)V

    iput-object v3, p0, Loph;->e:Lwph;

    new-instance v1, Lkph;

    invoke-direct {v1, p0, v0}, Lkph;-><init>(Loph;Lnph;)V

    invoke-virtual {v3, v1}, Lwph;->d(Lv7i;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized i()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loph;->e:Lwph;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
