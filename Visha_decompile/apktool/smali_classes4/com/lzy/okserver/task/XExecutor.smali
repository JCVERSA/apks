.class public Lcom/lzy/okserver/task/XExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okserver/task/XExecutor$b;,
        Lcom/lzy/okserver/task/XExecutor$a;
    }
.end annotation


# instance fields
.field public b:Landroid/os/Handler;

.field public c:Ljava/util/List;

.field public d:Ljava/util/List;


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/lzy/okserver/task/XExecutor;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public addOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$a;)V
    .locals 1

    iget-object v0, p0, Lcom/lzy/okserver/task/XExecutor;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzy/okserver/task/XExecutor;->d:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/lzy/okserver/task/XExecutor;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnTaskEndListener(Lcom/lzy/okserver/task/XExecutor$b;)V
    .locals 1

    iget-object v0, p0, Lcom/lzy/okserver/task/XExecutor;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzy/okserver/task/XExecutor;->c:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/lzy/okserver/task/XExecutor;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 3

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    iget-object p2, p0, Lcom/lzy/okserver/task/XExecutor;->c:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/lzy/okserver/task/XExecutor;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lubc;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/lzy/okserver/task/XExecutor;->b:Landroid/os/Handler;

    new-instance v2, Lcom/lzy/okserver/task/XExecutor$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/lzy/okserver/task/XExecutor$1;-><init>(Lcom/lzy/okserver/task/XExecutor;Lcom/lzy/okserver/task/XExecutor$b;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/lzy/okserver/task/XExecutor;->d:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/lzy/okserver/task/XExecutor;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lubc;->a(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/lzy/okserver/task/XExecutor;->b:Landroid/os/Handler;

    new-instance v1, Lcom/lzy/okserver/task/XExecutor$2;

    invoke-direct {v1, p0, v0}, Lcom/lzy/okserver/task/XExecutor$2;-><init>(Lcom/lzy/okserver/task/XExecutor;Lcom/lzy/okserver/task/XExecutor$a;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public removeOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$a;)V
    .locals 0

    iget-object p0, p0, Lcom/lzy/okserver/task/XExecutor;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnTaskEndListener(Lcom/lzy/okserver/task/XExecutor$b;)V
    .locals 0

    iget-object p0, p0, Lcom/lzy/okserver/task/XExecutor;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
