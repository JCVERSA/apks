.class public final Lcom/yandex/div/internal/viewpool/ViewCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/viewpool/ViewCreator$a;,
        Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;,
        Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;
    }
.end annotation


# static fields
.field public static final b:Lcom/yandex/div/internal/viewpool/ViewCreator$a;


# instance fields
.field public final a:Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/internal/viewpool/ViewCreator$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/internal/viewpool/ViewCreator$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/internal/viewpool/ViewCreator;->b:Lcom/yandex/div/internal/viewpool/ViewCreator$a;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/histogram/a;)V
    .locals 2

    const-string v0, "cpuUsageHistogramReporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;

    const-string v1, "ViewPoolThread"

    invoke-direct {v0, v1, p1}, Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;-><init>(Ljava/lang/String;Lcom/yandex/div/histogram/a;)V

    iput-object v0, p0, Lcom/yandex/div/internal/viewpool/ViewCreator;->a:Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div/internal/viewpool/a$a;)V
    .locals 5

    const-string v0, "channel"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/internal/viewpool/a$a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/internal/viewpool/ViewCreator;->a:Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;

    invoke-virtual {v1}, Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;->getCurrentViewName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/yandex/div/internal/viewpool/a$a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/ViewCreator;->a:Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;

    invoke-virtual {v0}, Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;->getTaskQueue()Lld0;

    move-result-object v0

    invoke-static {v0}, Lld0;->b(Lld0;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p1}, Lcom/yandex/div/internal/viewpool/a$a;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div/internal/viewpool/ViewCreator;->a:Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;

    invoke-virtual {v2}, Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;->getCurrentViewName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/yandex/div/internal/viewpool/a$a;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/yandex/div/internal/viewpool/ViewCreator;->a:Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;

    invoke-virtual {v1}, Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;->getTaskQueue()Lld0;

    move-result-object v1

    invoke-static {v1}, Lld0;->b(Lld0;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Lld0;->c(Lld0;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;

    invoke-virtual {v3}, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;->getViewName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yandex/div/internal/viewpool/a$a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    :try_start_2
    invoke-static {v1}, Lld0;->b(Lld0;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/ViewCreator;->a:Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;

    invoke-virtual {p0}, Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;->getTaskQueue()Lld0;

    move-result-object p0

    new-instance v1, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;

    const/4 v2, -0x1

    invoke-direct {v1, p1, v2}, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;-><init>(Lcom/yandex/div/internal/viewpool/a$a;I)V

    invoke-virtual {p0, v1}, Lld0;->offer(Ljava/lang/Object;)Z

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lld0;->b(Lld0;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-static {v1}, Lld0;->b(Lld0;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    :goto_2
    invoke-static {v0}, Lld0;->b(Lld0;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_3
    invoke-static {v0}, Lld0;->b(Lld0;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_5
    :goto_4
    return-void
.end method

.method public final b(Lcom/yandex/div/internal/viewpool/a$a;I)V
    .locals 1

    const-string v0, "channel"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/ViewCreator;->a:Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;

    invoke-virtual {p0}, Lcom/yandex/div/internal/viewpool/ViewCreator$ViewCreatorThread;->getTaskQueue()Lld0;

    move-result-object p0

    new-instance v0, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;

    invoke-direct {v0, p1, p2}, Lcom/yandex/div/internal/viewpool/ViewCreator$CreateViewTask;-><init>(Lcom/yandex/div/internal/viewpool/a$a;I)V

    invoke-virtual {p0, v0}, Lld0;->offer(Ljava/lang/Object;)Z

    return-void
.end method
