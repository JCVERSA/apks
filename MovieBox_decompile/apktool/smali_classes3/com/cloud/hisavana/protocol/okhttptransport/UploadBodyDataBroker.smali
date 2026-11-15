.class final Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->a:Ljava/util/concurrent/BlockingQueue;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    .line 26
    return-void
.end method

.method private d()Landroid/util/Pair;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->a:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/io/IOException;

    .line 18
    .line 19
    const-string v1, "Interrupted while waiting for a read to finish!"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method


# virtual methods
.method b(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Throwable;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->e(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/r;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/y;->s()Lcom/google/common/util/concurrent/y;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->a:Ljava/util/concurrent/BlockingQueue;

    .line 21
    .line 22
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/Throwable;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/y;->setException(Ljava/lang/Throwable;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public flush()V
    .locals 0

    .line 1
    return-void
.end method

.method h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->d()Landroid/util/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lcom/google/common/util/concurrent/y;

    .line 17
    .line 18
    sget-object v1, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;->END_OF_BODY:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/y;->set(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "Already closed"

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method j(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->a:Ljava/util/concurrent/BlockingQueue;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/util/Pair;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/google/common/util/concurrent/y;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/y;->setException(Ljava/lang/Throwable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 1
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    .line 2
    .line 3
    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/common/base/m;->u(Z)V

    .line 10
    .line 11
    .line 12
    :goto_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    cmp-long v0, p2, v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->d()Landroid/util/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lcom/google/common/util/concurrent/y;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    int-to-long v3, v2

    .line 35
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(JJ)J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    long-to-int v3, v3

    .line 40
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 41
    .line 42
    .line 43
    :try_start_0
    invoke-virtual {p1, v1}, Lokio/Buffer;->read(Ljava/nio/ByteBuffer;)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    int-to-long v3, v3

    .line 48
    const-wide/16 v5, -0x1

    .line 49
    .line 50
    cmp-long v5, v3, v5

    .line 51
    .line 52
    if-eqz v5, :cond_0

    .line 53
    .line 54
    sub-long/2addr p2, v3

    .line 55
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 56
    .line 57
    .line 58
    sget-object v1, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;->SUCCESS:Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker$ReadResult;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/y;->set(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 67
    .line 68
    const-string p2, "The source has been exhausted but we expected more!"

    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/y;->setException(Ljava/lang/Throwable;)Z

    .line 74
    .line 75
    .line 76
    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/y;->setException(Ljava/lang/Throwable;)Z

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :cond_1
    return-void
.end method
