.class public abstract Lg7/e;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:J

.field private final b:J

.field private c:J

.field private d:Z

.field private final e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lg7/e;->d:Z

    .line 6
    .line 7
    new-instance v0, Lg7/e$a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lg7/e$a;-><init>(Lg7/e;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lg7/e;->e:Landroid/os/Handler;

    .line 13
    .line 14
    iput-wide p1, p0, Lg7/e;->a:J

    .line 15
    .line 16
    iput-wide p3, p0, Lg7/e;->b:J

    .line 17
    .line 18
    return-void
.end method

.method static synthetic a(Lg7/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lg7/e;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lg7/e;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lg7/e;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic c(Lg7/e;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lg7/e;->b:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized d()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lg7/e;->d:Z

    .line 4
    .line 5
    iget-object v1, p0, Lg7/e;->e:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method public abstract e()V
.end method

.method public abstract f(J)V
.end method

.method public final declared-synchronized g()Lg7/e;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lg7/e;->d:Z

    .line 4
    .line 5
    iget-wide v0, p0, Lg7/e;->a:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lg7/e;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iget-wide v2, p0, Lg7/e;->a:J

    .line 25
    .line 26
    add-long/2addr v0, v2

    .line 27
    iput-wide v0, p0, Lg7/e;->c:J

    .line 28
    .line 29
    iget-object v0, p0, Lg7/e;->e:Landroid/os/Handler;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-object p0

    .line 41
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    throw v0
.end method
