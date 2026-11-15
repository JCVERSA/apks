.class public final Lqii;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lqii;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loii;

    invoke-direct {v0}, Loii;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgnw;->zza(Leki;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqii;

    sput-object v0, Lqii;->b:Lqii;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lzji;

    invoke-direct {v1}, Lzji;-><init>()V

    new-instance v2, Ldki;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ldki;-><init>(Lzji;Lcki;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lqii;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static c()Lqii;
    .locals 1

    sget-object v0, Lqii;->b:Lqii;

    return-object v0
.end method


# virtual methods
.method public final a(Lyji;Lt9i;)Lb9i;
    .locals 0

    iget-object p0, p0, Lqii;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldki;

    invoke-virtual {p0, p1, p2}, Ldki;->a(Lyji;Lt9i;)Lb9i;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyji;)Lp9i;
    .locals 0

    iget-object p0, p0, Lqii;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldki;

    invoke-virtual {p0, p1}, Ldki;->b(Lyji;)Lp9i;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lb9i;Ljava/lang/Class;Lt9i;)Lyji;
    .locals 0

    iget-object p0, p0, Lqii;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldki;

    invoke-virtual {p0, p1, p2, p3}, Ldki;->c(Lb9i;Ljava/lang/Class;Lt9i;)Lyji;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lp9i;Ljava/lang/Class;)Lyji;
    .locals 0

    iget-object p0, p0, Lqii;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldki;

    invoke-virtual {p0, p1, p2}, Ldki;->d(Lp9i;Ljava/lang/Class;)Lyji;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized f(Lihi;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lzji;

    iget-object v1, p0, Lqii;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldki;

    invoke-direct {v0, v2}, Lzji;-><init>(Ldki;)V

    invoke-virtual {v0, p1}, Lzji;->a(Lihi;)Lzji;

    new-instance p1, Ldki;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Ldki;-><init>(Lzji;Lcki;)V

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
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

.method public final declared-synchronized g(Lmhi;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lzji;

    iget-object v1, p0, Lqii;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldki;

    invoke-direct {v0, v2}, Lzji;-><init>(Ldki;)V

    invoke-virtual {v0, p1}, Lzji;->b(Lmhi;)Lzji;

    new-instance p1, Ldki;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Ldki;-><init>(Lzji;Lcki;)V

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
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

.method public final declared-synchronized h(Lvii;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lzji;

    iget-object v1, p0, Lqii;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldki;

    invoke-direct {v0, v2}, Lzji;-><init>(Ldki;)V

    invoke-virtual {v0, p1}, Lzji;->c(Lvii;)Lzji;

    new-instance p1, Ldki;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Ldki;-><init>(Lzji;Lcki;)V

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
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

.method public final declared-synchronized i(Lzii;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lzji;

    iget-object v1, p0, Lqii;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldki;

    invoke-direct {v0, v2}, Lzji;-><init>(Ldki;)V

    invoke-virtual {v0, p1}, Lzji;->d(Lzii;)Lzji;

    new-instance p1, Ldki;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Ldki;-><init>(Lzji;Lcki;)V

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
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

.method public final j(Lyji;)Z
    .locals 0

    iget-object p0, p0, Lqii;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldki;

    invoke-virtual {p0, p1}, Ldki;->i(Lyji;)Z

    move-result p0

    return p0
.end method

.method public final k(Lyji;)Z
    .locals 0

    iget-object p0, p0, Lqii;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldki;

    invoke-virtual {p0, p1}, Ldki;->j(Lyji;)Z

    move-result p0

    return p0
.end method
