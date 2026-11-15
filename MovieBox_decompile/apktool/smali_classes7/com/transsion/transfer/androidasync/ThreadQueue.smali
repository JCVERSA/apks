.class Lcom/transsion/transfer/androidasync/ThreadQueue;
.super Ljava/util/LinkedList;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/WeakHashMap;


# instance fields
.field queueSemaphore:Ljava/util/concurrent/Semaphore;

.field waiter:Lcom/transsion/transfer/androidasync/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/transfer/androidasync/ThreadQueue;->a:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/Semaphore;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/ThreadQueue;->queueSemaphore:Ljava/util/concurrent/Semaphore;

    .line 11
    .line 12
    return-void
.end method

.method static getOrCreateThreadQueue(Ljava/lang/Thread;)Lcom/transsion/transfer/androidasync/ThreadQueue;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/transfer/androidasync/ThreadQueue;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/transsion/transfer/androidasync/ThreadQueue;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/transsion/transfer/androidasync/ThreadQueue;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/transsion/transfer/androidasync/ThreadQueue;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    return-object v1

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method static release(Lcom/transsion/transfer/androidasync/c;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/transfer/androidasync/ThreadQueue;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/transsion/transfer/androidasync/ThreadQueue;

    .line 23
    .line 24
    iget-object v3, v2, Lcom/transsion/transfer/androidasync/ThreadQueue;->waiter:Lcom/transsion/transfer/androidasync/c;

    .line 25
    .line 26
    if-ne v3, p0, :cond_0

    .line 27
    .line 28
    iget-object v2, v2, Lcom/transsion/transfer/androidasync/ThreadQueue;->queueSemaphore:Ljava/util/concurrent/Semaphore;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/ThreadQueue;->add(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/lang/Runnable;)Z
    .locals 0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic remove()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/ThreadQueue;->remove()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Runnable;
    .locals 1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit p0

    return-object v0

    .line 9
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
