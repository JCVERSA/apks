.class final Lcom/yandex/div/internal/util/SingleThreadExecutor$Worker;
.super Lcom/yandex/div/internal/util/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/util/SingleThreadExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Worker"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/yandex/div/internal/util/SingleThreadExecutor$Worker;",
        "Lcom/yandex/div/internal/util/NamedRunnable;",
        "<init>",
        "(Lcom/yandex/div/internal/util/SingleThreadExecutor;)V",
        "Lzfb;",
        "execute",
        "()V",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yandex/div/internal/util/SingleThreadExecutor;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/util/SingleThreadExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-static {p1}, Lcom/yandex/div/internal/util/SingleThreadExecutor;->d(Lcom/yandex/div/internal/util/SingleThreadExecutor;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/div/internal/util/NamedRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    iget-object v0, p0, Lcom/yandex/div/internal/util/SingleThreadExecutor$Worker;->this$0:Lcom/yandex/div/internal/util/SingleThreadExecutor;

    invoke-static {v0}, Lcom/yandex/div/internal/util/SingleThreadExecutor;->b(Lcom/yandex/div/internal/util/SingleThreadExecutor;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/internal/util/SingleThreadExecutor$Worker;->this$0:Lcom/yandex/div/internal/util/SingleThreadExecutor;

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lcom/yandex/div/internal/util/SingleThreadExecutor;->a(Lcom/yandex/div/internal/util/SingleThreadExecutor;)Lcom/yandex/div/internal/util/SingleThreadExecutor$Worker;

    move-result-object v2

    invoke-static {v2, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lcom/yandex/div/internal/util/SingleThreadExecutor;->c(Lcom/yandex/div/internal/util/SingleThreadExecutor;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_5

    :cond_0
    invoke-static {v1}, Lcom/yandex/div/internal/util/SingleThreadExecutor;->c(Lcom/yandex/div/internal/util/SingleThreadExecutor;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/yandex/div/internal/util/SingleThreadExecutor;->f(Lcom/yandex/div/internal/util/SingleThreadExecutor;Ljava/util/List;)V

    sget-object v1, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit v0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    if-eqz v2, :cond_1

    :try_start_1
    move-object v1, v2

    check-cast v1, Ljava/lang/Iterable;

    iget-object v4, p0, Lcom/yandex/div/internal/util/SingleThreadExecutor$Worker;->this$0:Lcom/yandex/div/internal/util/SingleThreadExecutor;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_3
    invoke-virtual {v4, v5}, Lcom/yandex/div/internal/util/SingleThreadExecutor;->g(Ljava/lang/RuntimeException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_2
    iget-object v1, p0, Lcom/yandex/div/internal/util/SingleThreadExecutor$Worker;->this$0:Lcom/yandex/div/internal/util/SingleThreadExecutor;

    invoke-static {v1}, Lcom/yandex/div/internal/util/SingleThreadExecutor;->b(Lcom/yandex/div/internal/util/SingleThreadExecutor;)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/div/internal/util/SingleThreadExecutor$Worker;->this$0:Lcom/yandex/div/internal/util/SingleThreadExecutor;

    monitor-enter v1

    :try_start_4
    invoke-static {p0, v3}, Lcom/yandex/div/internal/util/SingleThreadExecutor;->e(Lcom/yandex/div/internal/util/SingleThreadExecutor;Lcom/yandex/div/internal/util/SingleThreadExecutor$Worker;)V

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/yandex/div/internal/util/SingleThreadExecutor$Worker;->this$0:Lcom/yandex/div/internal/util/SingleThreadExecutor;

    invoke-static {v1}, Lcom/yandex/div/internal/util/SingleThreadExecutor;->b(Lcom/yandex/div/internal/util/SingleThreadExecutor;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lcom/yandex/div/internal/util/SingleThreadExecutor$Worker;->this$0:Lcom/yandex/div/internal/util/SingleThreadExecutor;

    monitor-enter v1

    :try_start_5
    invoke-static {v4}, Lcom/yandex/div/internal/util/SingleThreadExecutor;->c(Lcom/yandex/div/internal/util/SingleThreadExecutor;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/yandex/div/internal/util/SingleThreadExecutor;->c(Lcom/yandex/div/internal/util/SingleThreadExecutor;)Ljava/util/List;

    move-result-object v2

    invoke-static {v4, v3}, Lcom/yandex/div/internal/util/SingleThreadExecutor;->f(Lcom/yandex/div/internal/util/SingleThreadExecutor;Ljava/util/List;)V

    goto :goto_3

    :catchall_2
    move-exception p0

    goto :goto_4

    :cond_2
    invoke-static {v4, v3}, Lcom/yandex/div/internal/util/SingleThreadExecutor;->e(Lcom/yandex/div/internal/util/SingleThreadExecutor;Lcom/yandex/div/internal/util/SingleThreadExecutor$Worker;)V

    const/4 v0, 0x0

    :goto_3
    sget-object v4, Lzfb;->a:Lzfb;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v1

    goto :goto_0

    :goto_4
    monitor-exit v1

    throw p0

    :cond_3
    return-void

    :catchall_3
    move-exception p0

    goto :goto_6

    :cond_4
    :goto_5
    :try_start_6
    const-string p0, "We shouldn\'t create excessive workers"

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0

    throw p0
.end method
