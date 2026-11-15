.class final Lcom/yandex/mobile/ads/impl/fh0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/fh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final a:Lokio/ForwardingTimeout;

.field private b:Z

.field final synthetic c:Lcom/yandex/mobile/ads/impl/fh0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fh0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fh0$b;->c:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/ForwardingTimeout;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/fh0;->c(Lcom/yandex/mobile/ads/impl/fh0;)Lokio/BufferedSink;

    move-result-object p1

    invoke-interface {p1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$b;->a:Lokio/ForwardingTimeout;

    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/fh0$b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/fh0$b;->b:Z

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$b;->c:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/fh0;->c(Lcom/yandex/mobile/ads/impl/fh0;)Lokio/BufferedSink;

    move-result-object v0

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$b;->c:Lcom/yandex/mobile/ads/impl/fh0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fh0$b;->a:Lokio/ForwardingTimeout;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/fh0;->a(Lcom/yandex/mobile/ads/impl/fh0;Lokio/ForwardingTimeout;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$b;->c:Lcom/yandex/mobile/ads/impl/fh0;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/fh0;->a(Lcom/yandex/mobile/ads/impl/fh0;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/fh0$b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$b;->c:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/fh0;->c(Lcom/yandex/mobile/ads/impl/fh0;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final timeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fh0$b;->a:Lokio/ForwardingTimeout;

    return-object p0
.end method

.method public final write(Lokio/Buffer;J)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/fh0$b;->b:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$b;->c:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/fh0;->c(Lcom/yandex/mobile/ads/impl/fh0;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lokio/BufferedSink;->writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$b;->c:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/fh0;->c(Lcom/yandex/mobile/ads/impl/fh0;)Lokio/BufferedSink;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$b;->c:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/fh0;->c(Lcom/yandex/mobile/ads/impl/fh0;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fh0$b;->c:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/fh0;->c(Lcom/yandex/mobile/ads/impl/fh0;)Lokio/BufferedSink;

    move-result-object p0

    invoke-interface {p0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
