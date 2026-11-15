.class final Lcom/yandex/mobile/ads/impl/hj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/up1$b;


# instance fields
.field private final a:Ljava/util/HashMap;

.field private final b:Lcom/yandex/mobile/ads/impl/fr1;

.field private final c:Lcom/yandex/mobile/ads/impl/ym;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/BlockingQueue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/yandex/mobile/ads/impl/up1<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ym;Ljava/util/concurrent/PriorityBlockingQueue;Lcom/yandex/mobile/ads/impl/fr1;)V
    .locals 1
    .param p1    # Lcom/yandex/mobile/ads/impl/ym;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/PriorityBlockingQueue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/hj2;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/hj2;->b:Lcom/yandex/mobile/ads/impl/fr1;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hj2;->c:Lcom/yandex/mobile/ads/impl/ym;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hj2;->d:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/up1;Lcom/yandex/mobile/ads/impl/xq1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/up1<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/xq1<",
            "*>;)V"
        }
    .end annotation

    .line 16
    iget-object v0, p2, Lcom/yandex/mobile/ads/impl/xq1;->b:Lcom/yandex/mobile/ads/impl/tm$a;

    if-eqz v0, :cond_3

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 18
    iget-wide v3, v0, Lcom/yandex/mobile/ads/impl/tm$a;->e:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/up1;->d()Ljava/lang/String;

    move-result-object p1

    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hj2;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 23
    sget-boolean v1, Lcom/yandex/mobile/ads/impl/ti2;->a:Z

    if-eqz v1, :cond_1

    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sp0;->e([Ljava/lang/Object;)V

    .line 26
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/up1;

    .line 27
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hj2;->b:Lcom/yandex/mobile/ads/impl/fr1;

    check-cast v1, Lcom/yandex/mobile/ads/impl/h60;

    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1, v0, p2, v2}, Lcom/yandex/mobile/ads/impl/h60;->a(Lcom/yandex/mobile/ads/impl/up1;Lcom/yandex/mobile/ads/impl/xq1;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 30
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/hj2;->b(Lcom/yandex/mobile/ads/impl/up1;)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/yandex/mobile/ads/impl/up1;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/up1<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/up1;->d()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hj2;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hj2;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    const-string v2, "waiting-for-response"

    invoke-virtual {p1, v2}, Lcom/yandex/mobile/ads/impl/up1;->a(Ljava/lang/String;)V

    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/hj2;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-boolean p1, Lcom/yandex/mobile/ads/impl/ti2;->a:Z

    if-eqz p1, :cond_1

    .line 9
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 11
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hj2;->a:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/up1;->a(Lcom/yandex/mobile/ads/impl/up1$b;)V

    .line 13
    sget-boolean p1, Lcom/yandex/mobile/ads/impl/ti2;->a:Z

    if-eqz p1, :cond_3

    .line 14
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/yandex/mobile/ads/impl/up1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/up1<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/up1;->d()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hj2;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/yandex/mobile/ads/impl/ti2;->a:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/sp0;->e([Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/up1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hj2;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lcom/yandex/mobile/ads/impl/up1;->a(Lcom/yandex/mobile/ads/impl/up1$b;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/hj2;->c:Lcom/yandex/mobile/ads/impl/ym;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/hj2;->d:Ljava/util/concurrent/BlockingQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/hj2;->c:Lcom/yandex/mobile/ads/impl/ym;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ym;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
