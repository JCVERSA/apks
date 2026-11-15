.class public abstract Lcom/mgtv/thirdsdk/datareport/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/thirdsdk/datareport/a/a$a;
    }
.end annotation


# instance fields
.field private final a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mgtv/thirdsdk/datareport/a/a$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/mgtv/thirdsdk/datareport/a/a$a;-><init>(Landroid/os/Looper;Lcom/mgtv/thirdsdk/datareport/a/a;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/a;->f:Landroid/os/Handler;

    iput-wide p1, p0, Lcom/mgtv/thirdsdk/datareport/a/a;->b:J

    iput-wide p3, p0, Lcom/mgtv/thirdsdk/datareport/a/a;->a:J

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/datareport/a/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mgtv/thirdsdk/datareport/a/a;->c:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/datareport/a/a;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/mgtv/thirdsdk/datareport/a/a;->d:J

    return-wide p1
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/datareport/a/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mgtv/thirdsdk/datareport/a/a;->a:J

    return-wide v0
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/datareport/a/a;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/mgtv/thirdsdk/datareport/a/a;->e:J

    return-wide p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/a;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/a/a;->f:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public abstract a(J)V
.end method

.method public final declared-synchronized b()Lcom/mgtv/thirdsdk/datareport/a/a;
    .locals 4

    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/mgtv/thirdsdk/datareport/a/a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mgtv/thirdsdk/datareport/a/a;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mgtv/thirdsdk/datareport/a/a;->c:J

    .line 7
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/a;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/a;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-object p0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public abstract c()V
.end method
