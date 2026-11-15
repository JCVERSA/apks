.class public Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public b:Ljava/nio/ByteBuffer;

.field public volatile c:Z

.field public final synthetic d:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->d:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x8000

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->b:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;-><init>(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->c:Z

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->d:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-static {v0}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->b(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->d:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-static {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->c(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Lorg/chromium/net/UrlRequest;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/net/UrlRequest;->cancel()V

    :cond_1
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 7

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->d:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-static {v0}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->a(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "The request was canceled!"

    if-nez v0, :cond_9

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    const-string/jumbo v4, "sink == null"

    invoke-static {v3, v4}, Lxd8;->e(ZLjava/lang/Object;)V

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-ltz v3, :cond_1

    move v0, v2

    :cond_1
    const-string v3, "byteCount < 0: %s"

    invoke-static {v0, v3, p2, p3}, Lxd8;->h(ZLjava/lang/String;J)V

    iget-boolean v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->c:Z

    xor-int/2addr v0, v2

    const-string v3, "closed"

    invoke-static {v0, v3}, Lxd8;->v(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->d:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-static {v0}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->b(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_2

    return-wide v3

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, p2, v5

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->b:Ljava/nio/ByteBuffer;

    long-to-int p2, p2

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_3
    iget-object p2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->d:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-static {p2}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->c(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Lorg/chromium/net/UrlRequest;

    move-result-object p2

    iget-object p3, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p3}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    const/4 p2, 0x0

    :try_start_0
    iget-object p3, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->d:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-static {p3}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->e(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p3

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->d:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-static {v0}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->d(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)J

    move-result-wide v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p3, v5, v6, v0}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->interrupt()V

    move-object p3, p2

    :goto_1
    if-eqz p3, :cond_8

    sget-object v0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$a;->a:[I

    invoke-static {p3}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;->a(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;)Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v2, :cond_7

    const/4 v5, 0x2

    if-eq v0, v5, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 p0, 0x4

    if-ne v0, p0, :cond_4

    invoke-static {p3}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;->c(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-static {p3}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;->c(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lokio/Buffer;->write(Ljava/nio/ByteBuffer;)I

    move-result p0

    invoke-static {p3}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;->c(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    int-to-long p0, p0

    return-wide p0

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "The switch block above is exhaustive!"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_5
    iput-object p2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->b:Ljava/nio/ByteBuffer;

    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iget-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->d:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-static {p1}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->b(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->b:Ljava/nio/ByteBuffer;

    return-wide v3

    :cond_7
    iget-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->d:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-static {p1}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->b(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->b:Ljava/nio/ByteBuffer;

    new-instance p0, Ljava/io/IOException;

    invoke-static {p3}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;->b(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$b;)Lorg/chromium/net/CronetException;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_8
    iget-object p0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback$c;->d:Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;

    invoke-static {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->c(Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Lorg/chromium/net/UrlRequest;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/net/UrlRequest;->cancel()V

    new-instance p0, Lcom/cloud/hisavana/protocol/okhttptransport/CronetTimeoutException;

    invoke-direct {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/CronetTimeoutException;-><init>()V

    throw p0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public timeout()Lokio/Timeout;
    .locals 0

    sget-object p0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object p0
.end method
