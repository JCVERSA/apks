.class abstract Lcom/yandex/mobile/ads/impl/fh0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/fh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fh0$a;->c:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/ForwardingTimeout;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/fh0;->d(Lcom/yandex/mobile/ads/impl/fh0;)Lokio/BufferedSource;

    move-result-object p1

    invoke-interface {p1}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$a;->a:Lokio/ForwardingTimeout;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/fh0$a;->b:Z

    return p0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$a;->c:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/fh0;->e(Lcom/yandex/mobile/ads/impl/fh0;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$a;->c:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/fh0;->e(Lcom/yandex/mobile/ads/impl/fh0;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$a;->c:Lcom/yandex/mobile/ads/impl/fh0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/fh0$a;->a:Lokio/ForwardingTimeout;

    invoke-static {v0, v2}, Lcom/yandex/mobile/ads/impl/fh0;->a(Lcom/yandex/mobile/ads/impl/fh0;Lokio/ForwardingTimeout;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fh0$a;->c:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/impl/fh0;->a(Lcom/yandex/mobile/ads/impl/fh0;I)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fh0$a;->c:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/fh0;->e(Lcom/yandex/mobile/ads/impl/fh0;)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/fh0$a;->b:Z

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$a;->c:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/fh0;->d(Lcom/yandex/mobile/ads/impl/fh0;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/fh0$a;->c:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fh0;->c()Lcom/yandex/mobile/ads/impl/ao1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ao1;->j()V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fh0$a;->b()V

    throw p1
.end method

.method public final timeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fh0$a;->a:Lokio/ForwardingTimeout;

    return-object p0
.end method
