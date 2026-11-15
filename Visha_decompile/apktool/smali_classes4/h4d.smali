.class public Lh4d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh4d$b;,
        Lh4d$a;
    }
.end annotation


# instance fields
.field public a:J

.field public b:Z

.field public c:Z

.field public final d:Lsud;

.field public e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lh4d;->a:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh4d;->b:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lh4d;->c:Z

    new-instance p1, Lsud;

    invoke-direct {p1}, Lsud;-><init>()V

    iput-object p1, p0, Lh4d;->d:Lsud;

    new-instance p1, Lh4d$a;

    invoke-static {}, Lh4d;->g()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lh4d$a;-><init>(Landroid/os/Looper;Lh4d;)V

    iput-object p1, p0, Lh4d;->e:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic c(Lh4d;)V
    .locals 0

    invoke-virtual {p0}, Lh4d;->f()V

    return-void
.end method

.method public static g()Landroid/os/Looper;
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lh4d;->b:Z

    iget-object v0, p0, Lh4d;->e:Landroid/os/Handler;

    const v1, 0xb303

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lh4d$b;)V
    .locals 2

    iget-boolean v0, p0, Lh4d;->c:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lh4d;->d:Lsud;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lh4d;->d:Lsud;

    invoke-virtual {v1}, Lsud;->c()V

    iget-object p0, p0, Lh4d;->d:Lsud;

    invoke-virtual {p0, p1}, Lsud;->b(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final declared-synchronized d()Lh4d;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lh4d;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-object p0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lh4d;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lh4d;->b:Z

    iget-object v0, p0, Lh4d;->e:Landroid/os/Handler;

    const v1, 0xb303

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lh4d;->c:Z

    iput-boolean v0, p0, Lh4d;->b:Z

    iget-object v0, p0, Lh4d;->e:Landroid/os/Handler;

    const v1, 0xb303

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lh4d;->d:Lsud;

    invoke-virtual {v0}, Lsud;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final f()V
    .locals 4

    iget-boolean v0, p0, Lh4d;->c:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lh4d;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lh4d;->d:Lsud;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lh4d;->d:Lsud;

    invoke-virtual {v1}, Lsud;->a()Ljava/util/List;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4d$b;

    invoke-interface {v1}, Lh4d$b;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lh4d;->e:Landroid/os/Handler;

    const v1, 0xb303

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lh4d;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method
