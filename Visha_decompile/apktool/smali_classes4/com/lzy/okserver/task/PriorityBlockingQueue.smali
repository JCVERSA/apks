.class public Lcom/lzy/okserver/task/PriorityBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okserver/task/PriorityBlockingQueue$b;,
        Lcom/lzy/okserver/task/PriorityBlockingQueue$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5fcfb35fbf1a7e0aL


# instance fields
.field private final capacity:I

.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field transient head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.b;"
        }
    .end annotation
.end field

.field private transient last:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.b;"
        }
    .end annotation
.end field

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field private final putLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final takeLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7fffffff

    .line 1
    invoke-direct {p0, v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 6
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    if-lez p1, :cond_0

    .line 8
    iput p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    .line 9
    new-instance p1, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;-><init>(Lcom/lzy/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iput-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 11
    invoke-direct {p0, v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;-><init>(I)V

    .line 12
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 14
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 15
    iget v3, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-eq v1, v3, :cond_0

    .line 16
    new-instance v3, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    invoke-direct {v3, p0, v2}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;-><init>(Lcom/lzy/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Queue full"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 19
    :cond_2
    iget-object p0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21
    throw p0
.end method

.method private _dequeue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iget-object v1, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iput-object v0, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iput-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    invoke-virtual {v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method private _enqueue(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.b;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    :goto_0
    iget-object v1, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a()I

    move-result v3

    if-ge v2, v3, :cond_0

    iput-object p1, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iput-object v1, p1, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iput-object p1, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iput-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    :goto_1
    return-void
.end method

.method private declared-synchronized opQueue(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.b;)TE;"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->_dequeue()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->_enqueue(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;-><init>(Lcom/lzy/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private signalNotEmpty()V
    .locals 1

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object p0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method private signalNotFull()V
    .locals 1

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object p0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    :goto_0
    iget-object v0, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    :try_start_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    :goto_0
    iget-object v1, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-eqz v1, :cond_0

    iput-object v0, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    iget v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    :try_start_0
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    :cond_1
    iget-object v1, v1, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return v0

    :goto_0
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw p1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result p0

    return p0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p1, p0, :cond_6

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 6
    iget-object v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, v0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, p2, :cond_2

    .line 7
    :try_start_1
    iget-object v5, v2, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 8
    invoke-virtual {v5}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 9
    invoke-virtual {v5, v6}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c(Ljava/lang/Object;)V

    .line 10
    iput-object v2, v2, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    move-object v2, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    if-lez v3, :cond_1

    .line 11
    :try_start_2
    iput-object v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 12
    iget-object p2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, v3

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p2

    iget v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne p2, v2, :cond_1

    move v0, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 13
    :cond_1
    :goto_1
    throw p1

    :cond_2
    if-lez v3, :cond_3

    .line 14
    iput-object v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 15
    iget-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, v3

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    iget v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p1, v2, :cond_3

    move v0, v4

    .line 16
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_4

    .line 17
    invoke-direct {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->signalNotFull()V

    :cond_4
    return p2

    .line 18
    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_5

    .line 19
    invoke-direct {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->signalNotFull()V

    .line 20
    :cond_5
    throw p1

    .line 21
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public fullyLock()V
    .locals 1

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object p0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public fullyUnlock()V
    .locals 1

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;

    invoke-direct {v0, p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;-><init>(Lcom/lzy/okserver/task/PriorityBlockingQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    .line 19
    :cond_0
    new-instance v1, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    invoke-direct {v1, p0, p1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;-><init>(Lcom/lzy/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 21
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 22
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v4, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ge v2, v4, :cond_1

    .line 23
    invoke-direct {p0, v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 25
    iget v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 26
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_3

    .line 27
    invoke-direct {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->signalNotEmpty()V

    :cond_3
    if-ltz v0, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3

    .line 28
    :goto_1
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 29
    throw p0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    .line 3
    iget-object p4, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    .line 7
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p0, 0x0

    return p0

    .line 8
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 9
    :cond_1
    new-instance p2, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    invoke-direct {p2, p0, p1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;-><init>(Lcom/lzy/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    .line 11
    iget p3, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ge p2, p3, :cond_2

    iget-object p2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_2
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez p1, :cond_3

    .line 13
    invoke-direct {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->signalNotEmpty()V

    :cond_3
    const/4 p0, 0x1

    return p0

    .line 14
    :goto_1
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 15
    throw p0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object p0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iget-object p0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 19
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_1

    .line 20
    invoke-direct {p0, v2}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)Ljava/lang/Object;

    move-result-object v2

    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    .line 22
    iget-object v3, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 23
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 24
    iget v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->signalNotFull()V

    :cond_3
    return-object v2

    .line 25
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 26
    throw p0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 2
    iget-object p3, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 5
    :goto_0
    :try_start_0
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-gtz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    .line 7
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_1
    invoke-direct {p0, v2}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_2

    .line 10
    iget-object p3, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 12
    iget p3, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne p2, p3, :cond_3

    invoke-direct {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->signalNotFull()V

    :cond_3
    return-object p1

    .line 13
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 14
    throw p0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;-><init>(Lcom/lzy/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->signalNotEmpty()V

    :cond_2
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public remainingCapacity()I
    .locals 1

    iget v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    iget-object p0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    :try_start_0
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    :cond_1
    iget-object v2, v1, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->unlink(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return v0

    :goto_0
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw p1
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public take()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    iget-object v3, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->signalNotFull()V

    :cond_2
    return-object v2

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iget-object v1, v1, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 5
    invoke-virtual {v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v2

    .line 6
    iget-object v1, v1, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 8
    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 11
    array-length v1, p1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 12
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iget-object v0, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 13
    invoke-virtual {v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v1

    .line 14
    iget-object v0, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    move v1, v2

    goto :goto_1

    .line 15
    :cond_1
    array-length v0, p1

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    aput-object v0, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-object p1

    :goto_2
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 17
    throw p1
.end method

.method public unlink(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.b;",
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.b;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iput-object v0, p2, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-ne v0, p1, :cond_0

    iput-object p2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    :cond_0
    iget-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p1

    iget p2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_1
    return-void
.end method
