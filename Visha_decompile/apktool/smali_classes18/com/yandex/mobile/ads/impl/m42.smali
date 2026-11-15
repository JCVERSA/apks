.class public final Lcom/yandex/mobile/ads/impl/m42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/l42;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/l42;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m42;->b:Lcom/yandex/mobile/ads/impl/l42;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m42;->b:Lcom/yandex/mobile/ads/impl/l42;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/l42;->b()Lcom/yandex/mobile/ads/impl/h42;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/h42;->d()Lcom/yandex/mobile/ads/impl/k42;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/m42;->b:Lcom/yandex/mobile/ads/impl/l42;

    sget-object v3, Lcom/yandex/mobile/ads/impl/l42;->h:Lcom/yandex/mobile/ads/impl/l42;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/l42$b;->a()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/k42;->h()Lcom/yandex/mobile/ads/impl/l42;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/l42;->d()Lcom/yandex/mobile/ads/impl/l42$a;

    move-result-object v4

    invoke-interface {v4}, Lcom/yandex/mobile/ads/impl/l42$a;->a()J

    move-result-wide v4

    const-string v6, "starting"

    invoke-static {v1, v0, v6}, Lcom/yandex/mobile/ads/impl/i42;->a(Lcom/yandex/mobile/ads/impl/h42;Lcom/yandex/mobile/ads/impl/k42;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-wide/16 v4, -0x1

    :goto_1
    :try_start_1
    invoke-static {v2, v1}, Lcom/yandex/mobile/ads/impl/l42;->a(Lcom/yandex/mobile/ads/impl/l42;Lcom/yandex/mobile/ads/impl/h42;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v2, Lzfb;->a:Lzfb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/k42;->h()Lcom/yandex/mobile/ads/impl/l42;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/l42;->d()Lcom/yandex/mobile/ads/impl/l42$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/l42$a;->a()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/yandex/mobile/ads/impl/i42;->a(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finished run in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/yandex/mobile/ads/impl/i42;->a(Lcom/yandex/mobile/ads/impl/h42;Lcom/yandex/mobile/ads/impl/k42;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception v6

    :try_start_3
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/l42;->d()Lcom/yandex/mobile/ads/impl/l42$a;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/yandex/mobile/ads/impl/l42$a;->execute(Ljava/lang/Runnable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/k42;->h()Lcom/yandex/mobile/ads/impl/l42;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/l42;->d()Lcom/yandex/mobile/ads/impl/l42$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/l42$a;->a()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/yandex/mobile/ads/impl/i42;->a(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed a run in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/yandex/mobile/ads/impl/i42;->a(Lcom/yandex/mobile/ads/impl/h42;Lcom/yandex/mobile/ads/impl/k42;Ljava/lang/String;)V

    :cond_3
    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method
