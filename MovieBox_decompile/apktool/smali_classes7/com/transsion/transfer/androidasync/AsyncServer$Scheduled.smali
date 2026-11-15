.class Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/future/a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/AsyncServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Scheduled"
.end annotation


# instance fields
.field cancelled:Z

.field public runnable:Ljava/lang/Runnable;

.field public server:Lcom/transsion/transfer/androidasync/AsyncServer;

.field public time:J


# direct methods
.method public constructor <init>(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->server:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->runnable:Ljava/lang/Runnable;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->time:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->server:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->server:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iput-boolean v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->cancelled:Z

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return v1

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v1
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->cancelled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDone()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->server:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->cancelled:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->server:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/transsion/transfer/androidasync/AsyncServer;->e:Ljava/util/PriorityQueue;

    .line 11
    .line 12
    invoke-virtual {v1, p0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    monitor-exit v0

    .line 24
    return v1

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v1
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$Scheduled;->runnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
