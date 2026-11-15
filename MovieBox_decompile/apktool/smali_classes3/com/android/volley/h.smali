.class public Lcom/android/volley/h;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/concurrent/PriorityBlockingQueue;

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;

.field private final e:Lcom/android/volley/c;

.field private final f:Lcom/android/volley/f;

.field private final g:Lcom/android/volley/j;

.field private final h:[Lcom/android/volley/NetworkDispatcher;

.field private i:Lcom/android/volley/CacheDispatcher;

.field private final j:Ljava/util/List;

.field private final k:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/volley/c;Lcom/android/volley/f;)V
    .locals 1

    const/4 v0, 0x4

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/h;-><init>(Lcom/android/volley/c;Lcom/android/volley/f;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/c;Lcom/android/volley/f;I)V
    .locals 3

    .line 12
    new-instance v0, Lcom/android/volley/ExecutorDelivery;

    new-instance v1, Landroid/os/Handler;

    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    .line 14
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/volley/h;-><init>(Lcom/android/volley/c;Lcom/android/volley/f;ILcom/android/volley/j;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/c;Lcom/android/volley/f;ILcom/android/volley/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/volley/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/volley/h;->b:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/h;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 5
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/h;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/h;->j:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/h;->k:Ljava/util/List;

    .line 8
    iput-object p1, p0, Lcom/android/volley/h;->e:Lcom/android/volley/c;

    .line 9
    iput-object p2, p0, Lcom/android/volley/h;->f:Lcom/android/volley/f;

    .line 10
    new-array p1, p3, [Lcom/android/volley/NetworkDispatcher;

    iput-object p1, p0, Lcom/android/volley/h;->h:[Lcom/android/volley/NetworkDispatcher;

    .line 11
    iput-object p4, p0, Lcom/android/volley/h;->g:Lcom/android/volley/j;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    .locals 2

    .line 1
    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->setRequestQueue(Lcom/android/volley/h;)Lcom/android/volley/Request;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/volley/h;->b:Ljava/util/Set;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/h;->b:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0}, Lcom/android/volley/h;->d()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->setSequence(I)Lcom/android/volley/Request;

    .line 18
    .line 19
    .line 20
    const-string v0, "add-to-queue"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/android/volley/h;->e(Lcom/android/volley/Request;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/volley/h;->b(Lcom/android/volley/Request;)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p1
.end method

.method b(Lcom/android/volley/Request;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/volley/Request;->shouldCache()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/volley/h;->f(Lcom/android/volley/Request;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/volley/h;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method c(Lcom/android/volley/Request;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/h;->b:Ljava/util/Set;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/h;->b:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    iget-object v1, p0, Lcom/android/volley/h;->j:Ljava/util/List;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_1
    iget-object v0, p0, Lcom/android/volley/h;->j:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    const/4 v0, 0x5

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/android/volley/h;->e(Lcom/android/volley/Request;I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    throw p1

    .line 42
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    throw p1

    .line 44
    :catchall_1
    move-exception p1

    .line 45
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    throw p1
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/volley/h;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method e(Lcom/android/volley/Request;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/volley/h;->k:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/android/volley/h;->k:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    monitor-exit p1

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    throw p2

    .line 29
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p2
.end method

.method f(Lcom/android/volley/Request;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/volley/h;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/h;->h()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/volley/CacheDispatcher;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/volley/h;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/volley/h;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/volley/h;->e:Lcom/android/volley/c;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/android/volley/h;->g:Lcom/android/volley/j;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/volley/CacheDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/c;Lcom/android/volley/j;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/volley/h;->i:Lcom/android/volley/CacheDispatcher;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/android/volley/h;->h:[Lcom/android/volley/NetworkDispatcher;

    .line 24
    .line 25
    array-length v1, v1

    .line 26
    if-ge v0, v1, :cond_0

    .line 27
    .line 28
    new-instance v1, Lcom/android/volley/NetworkDispatcher;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/volley/h;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/volley/h;->f:Lcom/android/volley/f;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/android/volley/h;->e:Lcom/android/volley/c;

    .line 35
    .line 36
    iget-object v5, p0, Lcom/android/volley/h;->g:Lcom/android/volley/j;

    .line 37
    .line 38
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/volley/NetworkDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/f;Lcom/android/volley/c;Lcom/android/volley/j;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/volley/h;->h:[Lcom/android/volley/NetworkDispatcher;

    .line 42
    .line 43
    aput-object v1, v2, v0

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/volley/h;->i:Lcom/android/volley/CacheDispatcher;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/volley/CacheDispatcher;->quit()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/volley/h;->h:[Lcom/android/volley/NetworkDispatcher;

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_2

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/android/volley/NetworkDispatcher;->quit()V

    .line 19
    .line 20
    .line 21
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    return-void
.end method
