.class public Lcom/transsion/transfer/androidasync/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/s;


# instance fields
.field a:Lcom/transsion/transfer/androidasync/s;

.field b:Z

.field final c:Lcom/transsion/transfer/androidasync/ByteBufferList;

.field d:Lst/j;

.field e:I

.field f:Z


# direct methods
.method public constructor <init>(Lcom/transsion/transfer/androidasync/s;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/n;->c:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 10
    .line 11
    const v0, 0x7fffffff

    .line 12
    .line 13
    .line 14
    iput v0, p0, Lcom/transsion/transfer/androidasync/n;->e:I

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/n;->m(Lcom/transsion/transfer/androidasync/s;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic e(Lcom/transsion/transfer/androidasync/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/n;->p()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/transsion/transfer/androidasync/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/n;->p()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private p()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/n;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/n;->c:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/n;->a:Lcom/transsion/transfer/androidasync/s;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/n;->c:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 12
    .line 13
    invoke-interface {v1, v2}, Lcom/transsion/transfer/androidasync/s;->n(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/n;->c:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->s()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/n;->f:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/n;->a:Lcom/transsion/transfer/androidasync/s;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/s;->d()V

    .line 32
    .line 33
    .line 34
    :cond_1
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/n;->d:Lst/j;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-interface {v0}, Lst/j;->a()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw v1
.end method


# virtual methods
.method public B(Lst/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/n;->d:Lst/j;

    .line 2
    .line 3
    return-void
.end method

.method public a()Lcom/transsion/transfer/androidasync/AsyncServer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/n;->a:Lcom/transsion/transfer/androidasync/s;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/s;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/n;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->o()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/n;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/transsion/transfer/androidasync/m;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/transsion/transfer/androidasync/m;-><init>(Lcom/transsion/transfer/androidasync/n;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/n;->c:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/n;->c:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->r()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    iput-boolean v1, p0, Lcom/transsion/transfer/androidasync/n;->f:Z

    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/n;->a:Lcom/transsion/transfer/androidasync/s;

    .line 48
    .line 49
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/s;->d()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw v1
.end method

.method public g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/transfer/androidasync/n;->b:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/n;->p()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/n;->c:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->r()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/n;->b:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public i(Lst/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/n;->a:Lcom/transsion/transfer/androidasync/s;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/transsion/transfer/androidasync/s;->i(Lst/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected j(Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 0

    .line 1
    return-void
.end method

.method public k()Lst/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/n;->d:Lst/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/n;->c:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public m(Lcom/transsion/transfer/androidasync/s;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/n;->a:Lcom/transsion/transfer/androidasync/s;

    .line 2
    .line 3
    new-instance v0, Lcom/transsion/transfer/androidasync/k;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/k;-><init>(Lcom/transsion/transfer/androidasync/n;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/s;->B(Lst/j;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public n(Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/n;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->o()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/n;->c:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/n;->c:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget v2, p0, Lcom/transsion/transfer/androidasync/n;->e:I

    .line 25
    .line 26
    if-lt v1, v2, :cond_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/n;->j(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/n;->c:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->f(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 38
    .line 39
    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/n;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Lcom/transsion/transfer/androidasync/l;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/l;-><init>(Lcom/transsion/transfer/androidasync/n;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p1

    .line 56
    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/n;->j(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/n;->h()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/n;->a:Lcom/transsion/transfer/androidasync/s;

    .line 66
    .line 67
    invoke-interface {v0, p1}, Lcom/transsion/transfer/androidasync/s;->n(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/n;->c:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 71
    .line 72
    monitor-enter v0

    .line 73
    :try_start_2
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/n;->c:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->f(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 76
    .line 77
    .line 78
    monitor-exit v0

    .line 79
    return-void

    .line 80
    :catchall_1
    move-exception p1

    .line 81
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    throw p1
.end method

.method public o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/transfer/androidasync/n;->e:I

    .line 2
    .line 3
    return-void
.end method
