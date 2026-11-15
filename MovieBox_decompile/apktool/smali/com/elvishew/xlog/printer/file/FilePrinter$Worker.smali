.class Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elvishew/xlog/printer/file/FilePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private logs:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/elvishew/xlog/printer/file/FilePrinter$c;",
            ">;"
        }
    .end annotation
.end field

.field private volatile started:Z

.field final synthetic this$0:Lcom/elvishew/xlog/printer/file/FilePrinter;


# direct methods
.method private constructor <init>(Lcom/elvishew/xlog/printer/file/FilePrinter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->this$0:Lcom/elvishew/xlog/printer/file/FilePrinter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->logs:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/elvishew/xlog/printer/file/FilePrinter;Lcom/elvishew/xlog/printer/file/FilePrinter$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;-><init>(Lcom/elvishew/xlog/printer/file/FilePrinter;)V

    return-void
.end method


# virtual methods
.method enqueue(Lcom/elvishew/xlog/printer/file/FilePrinter$c;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->logs:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method

.method isStarted()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->started:Z

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public run()V
    .locals 7

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->logs:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/elvishew/xlog/printer/file/FilePrinter$c;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->this$0:Lcom/elvishew/xlog/printer/file/FilePrinter;

    .line 12
    .line 13
    iget-wide v2, v0, Lcom/elvishew/xlog/printer/file/FilePrinter$c;->a:J

    .line 14
    .line 15
    iget v4, v0, Lcom/elvishew/xlog/printer/file/FilePrinter$c;->b:I

    .line 16
    .line 17
    iget-object v5, v0, Lcom/elvishew/xlog/printer/file/FilePrinter$c;->c:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v6, v0, Lcom/elvishew/xlog/printer/file/FilePrinter$c;->d:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static/range {v1 .. v6}, Lcom/elvishew/xlog/printer/file/FilePrinter;->b(Lcom/elvishew/xlog/printer/file/FilePrinter;JILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    monitor-enter p0

    .line 30
    const/4 v0, 0x0

    .line 31
    :try_start_1
    iput-boolean v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->started:Z

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    :cond_0
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw v0
.end method

.method start()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->started:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->started:Z

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v0
.end method
