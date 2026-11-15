.class final Lcom/yandex/mobile/ads/impl/b60$a;
.super Lokio/ForwardingSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/b60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private b:Z

.field private c:J

.field private d:Z

.field final synthetic e:Lcom/yandex/mobile/ads/impl/b60;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/b60;Lokio/Sink;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Sink;",
            "J)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/b60$a;->e:Lcom/yandex/mobile/ads/impl/b60;

    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    iput-wide p3, p0, Lcom/yandex/mobile/ads/impl/b60$a;->a:J

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/b60$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/b60$a;->d:Z

    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/b60$a;->a:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/b60$a;->c:J

    cmp-long v1, v3, v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "unexpected end of stream"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Lokio/ForwardingSink;->close()V

    iget-boolean v2, p0, Lcom/yandex/mobile/ads/impl/b60$a;->b:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/b60$a;->b:Z

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/b60$a;->e:Lcom/yandex/mobile/ads/impl/b60;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/yandex/mobile/ads/impl/b60;->a(ZZLjava/io/IOException;)Ljava/io/IOException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v2

    iget-boolean v3, p0, Lcom/yandex/mobile/ads/impl/b60$a;->b:Z

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/b60$a;->b:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b60$a;->e:Lcom/yandex/mobile/ads/impl/b60;

    invoke-virtual {p0, v1, v0, v2}, Lcom/yandex/mobile/ads/impl/b60;->a(ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    :goto_2
    throw v2
.end method

.method public final flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Lokio/ForwardingSink;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/b60$a;->b:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/b60$a;->b:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b60$a;->e:Lcom/yandex/mobile/ads/impl/b60;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/yandex/mobile/ads/impl/b60;->a(ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    :goto_0
    throw v0
.end method

.method public final write(Lokio/Buffer;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/b60$a;->d:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/b60$a;->a:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/b60$a;->c:J

    add-long/2addr v2, p2

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/b60$a;->a:J

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/b60$a;->c:J

    add-long/2addr v2, p2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "expected "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " bytes but received "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/b60$a;->c:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/b60$a;->c:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-boolean p2, p0, Lcom/yandex/mobile/ads/impl/b60$a;->b:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/yandex/mobile/ads/impl/b60$a;->b:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b60$a;->e:Lcom/yandex/mobile/ads/impl/b60;

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p2, p1}, Lcom/yandex/mobile/ads/impl/b60;->a(ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_1
    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
