.class public final Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$FrameWatcher;,
        Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a;

.field public final b:Lsh8;

.field public final c:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$FrameWatcher;

.field public final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a;)V
    .locals 1

    const-string v0, "reporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->a:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a;

    new-instance p1, Lsh8;

    invoke-direct {p1}, Lsh8;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->b:Lsh8;

    new-instance p1, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$FrameWatcher;

    invoke-direct {p1, p0}, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$FrameWatcher;-><init>(Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;)V

    iput-object p1, p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->c:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$FrameWatcher;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->b:Lsh8;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->b:Lsh8;

    invoke-virtual {v1}, Lsh8;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->b:Lsh8;

    invoke-virtual {v1}, Lsh8;->b()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->a:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a;

    const-string v3, "view pool profiling"

    invoke-interface {v2, v3, v1}, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$a;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->b:Lsh8;

    invoke-virtual {p0}, Lsh8;->a()V

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final b(Ljava/lang/String;J)V
    .locals 2

    const-string v0, "viewName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->b:Lsh8;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->b:Lsh8;

    invoke-virtual {v1, p1, p2, p3}, Lsh8;->d(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->c:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$FrameWatcher;

    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->d:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$FrameWatcher;->watch(Landroid/os/Handler;)V

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final c(J)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->b:Lsh8;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->b:Lsh8;

    invoke-virtual {v1, p1, p2}, Lsh8;->e(J)V

    iget-object p1, p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->c:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$FrameWatcher;

    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->d:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$FrameWatcher;->watch(Landroid/os/Handler;)V

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final d(J)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->b:Lsh8;

    invoke-virtual {v0, p1, p2}, Lsh8;->f(J)V

    iget-object p1, p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->c:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$FrameWatcher;

    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->d:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$FrameWatcher;->watch(Landroid/os/Handler;)V

    return-void
.end method
