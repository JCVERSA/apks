.class public final Lcom/android/net/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/net/n<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/android/net/n<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/android/net/n<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/android/net/b;

.field private final f:Lcom/android/net/h;

.field private final g:Lcom/android/net/q;

.field private final h:[Lcom/android/net/i;

.field private i:Lcom/android/net/c;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/net/b;Lcom/android/net/h;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/net/f;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/net/f;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/net/o;-><init>(Lcom/android/net/b;Lcom/android/net/h;Lcom/android/net/q;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/net/b;Lcom/android/net/h;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/net/o;-><init>(Lcom/android/net/b;Lcom/android/net/h;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/net/b;Lcom/android/net/h;Lcom/android/net/q;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/net/o;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/net/o;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/net/o;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/net/o;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/net/o;->j:Ljava/util/List;

    iput-object p1, p0, Lcom/android/net/o;->e:Lcom/android/net/b;

    iput-object p2, p0, Lcom/android/net/o;->f:Lcom/android/net/h;

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/android/net/i;

    iput-object p1, p0, Lcom/android/net/o;->h:[Lcom/android/net/i;

    iput-object p3, p0, Lcom/android/net/o;->g:Lcom/android/net/q;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/net/n;)Lcom/android/net/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/net/n<",
            "TT;>;)",
            "Lcom/android/net/n<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p0, p1, Lcom/android/net/n;->g:Lcom/android/net/o;

    iget-object v0, p0, Lcom/android/net/o;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/net/o;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/net/o;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/net/n;->f:Ljava/lang/Integer;

    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/android/net/n;->a(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/net/n;->h:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/net/o;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_0
    iget-object p0, p0, Lcom/android/net/o;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final a()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/android/net/o;->i:Lcom/android/net/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/net/c;->a()V

    :cond_0
    iget-object v0, p0, Lcom/android/net/o;->h:[Lcom/android/net/i;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/net/i;->a:Z

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/net/c;

    iget-object v1, p0, Lcom/android/net/o;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/android/net/o;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/android/net/o;->e:Lcom/android/net/b;

    iget-object v5, p0, Lcom/android/net/o;->g:Lcom/android/net/q;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/net/c;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/net/b;Lcom/android/net/q;)V

    iput-object v0, p0, Lcom/android/net/o;->i:Lcom/android/net/c;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1
    iget-object v0, p0, Lcom/android/net/o;->h:[Lcom/android/net/i;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    new-instance v0, Lcom/android/net/i;

    iget-object v1, p0, Lcom/android/net/o;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/android/net/o;->f:Lcom/android/net/h;

    iget-object v4, p0, Lcom/android/net/o;->e:Lcom/android/net/b;

    iget-object v5, p0, Lcom/android/net/o;->g:Lcom/android/net/q;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/net/i;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/net/h;Lcom/android/net/b;Lcom/android/net/q;)V

    iget-object v1, p0, Lcom/android/net/o;->h:[Lcom/android/net/i;

    aput-object v0, v1, v2

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final b(Lcom/android/net/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/net/n<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/net/o;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/net/o;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p0, Lcom/android/net/o;->j:Ljava/util/List;

    monitor-enter p1

    :try_start_1
    iget-object p0, p0, Lcom/android/net/o;->j:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
