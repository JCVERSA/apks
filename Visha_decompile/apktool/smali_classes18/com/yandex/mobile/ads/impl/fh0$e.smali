.class final Lcom/yandex/mobile/ads/impl/fh0$e;
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
    name = "e"
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fh0$e;->c:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/ForwardingTimeout;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/fh0;->c(Lcom/yandex/mobile/ads/impl/fh0;)Lokio/BufferedSink;

    move-result-object p1

    invoke-interface {p1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$e;->a:Lokio/ForwardingTimeout;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/fh0$e;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/fh0$e;->b:Z

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$e;->c:Lcom/yandex/mobile/ads/impl/fh0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fh0$e;->a:Lokio/ForwardingTimeout;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/fh0;->a(Lcom/yandex/mobile/ads/impl/fh0;Lokio/ForwardingTimeout;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fh0$e;->c:Lcom/yandex/mobile/ads/impl/fh0;

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/fh0;->a(Lcom/yandex/mobile/ads/impl/fh0;I)V

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/fh0$e;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fh0$e;->c:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/fh0;->c(Lcom/yandex/mobile/ads/impl/fh0;)Lokio/BufferedSink;

    move-result-object p0

    invoke-interface {p0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public final timeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fh0$e;->a:Lokio/ForwardingTimeout;

    return-object p0
.end method

.method public final write(Lokio/Buffer;J)V
    .locals 5

    const-string v0, "source"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/fh0$e;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    sget-object v2, Lcom/yandex/mobile/ads/impl/g92;->a:[B

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_0

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    cmp-long v0, v0, p2

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fh0$e;->c:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/fh0;->c(Lcom/yandex/mobile/ads/impl/fh0;)Lokio/BufferedSink;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
