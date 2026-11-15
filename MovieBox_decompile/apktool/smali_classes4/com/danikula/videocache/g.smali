.class final Lcom/danikula/videocache/g;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danikula/videocache/g$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/lang/String;

.field private volatile c:Lcom/danikula/videocache/e;

.field private final d:Ljava/util/List;

.field private final e:Lcom/danikula/videocache/b;

.field private final f:Lcom/danikula/videocache/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/danikula/videocache/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/danikula/videocache/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/danikula/videocache/g;->d:Ljava/util/List;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/danikula/videocache/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/danikula/videocache/g;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p2}, Lcom/danikula/videocache/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Lcom/danikula/videocache/c;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/danikula/videocache/g;->f:Lcom/danikula/videocache/c;

    .line 34
    .line 35
    new-instance p2, Lcom/danikula/videocache/g$a;

    .line 36
    .line 37
    invoke-direct {p2, p1, v0}, Lcom/danikula/videocache/g$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Lcom/danikula/videocache/g;->e:Lcom/danikula/videocache/b;

    .line 41
    .line 42
    return-void
.end method

.method private c()Lcom/danikula/videocache/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/danikula/videocache/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/danikula/videocache/g;->f:Lcom/danikula/videocache/c;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/danikula/videocache/c;->c:Lcom/danikula/videocache/a;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/danikula/videocache/e;-><init>(Lcom/danikula/videocache/a;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/danikula/videocache/g;->f:Lcom/danikula/videocache/c;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/danikula/videocache/c;->c:Lcom/danikula/videocache/a;

    .line 13
    .line 14
    invoke-interface {v1}, Lcom/danikula/videocache/a;->B()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/danikula/videocache/g;->e:Lcom/danikula/videocache/b;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/danikula/videocache/e;->l(Lcom/danikula/videocache/b;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/danikula/videocache/g;->c()Lcom/danikula/videocache/e;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;

    .line 14
    .line 15
    :goto_0
    iput-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-gtz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/danikula/videocache/m;->e()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    :cond_1
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public d(Lcom/danikula/videocache/d;Ljava/net/Socket;)V
    .locals 2

    .line 1
    const-string v0, "processRequest\uff0c shutdown, threadName = "

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/danikula/videocache/g;->e()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/danikula/videocache/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/danikula/videocache/m;->f()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Lcom/danikula/videocache/e;->k(Lcom/danikula/videocache/d;Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Lcom/danikula/videocache/q;->f(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/danikula/videocache/g;->a()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-static {p2}, Lcom/danikula/videocache/q;->f(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/danikula/videocache/g;->a()V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/danikula/videocache/m;->g()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
