.class public Lcom/yandex/mobile/ads/impl/lc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/a80;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/a80;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/wz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lc0;->a:Lcom/yandex/mobile/ads/impl/a80;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lc0;->a:Lcom/yandex/mobile/ads/impl/a80;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/a80;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lc0;->a:Lcom/yandex/mobile/ads/impl/a80;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/a80;->a(I)V

    return-void
.end method

.method public final a([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lc0;->a:Lcom/yandex/mobile/ads/impl/a80;

    invoke-interface {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/a80;->a([BII)V

    return-void
.end method

.method public final a([BIIZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lc0;->a:Lcom/yandex/mobile/ads/impl/a80;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/a80;->a([BIIZ)Z

    move-result p0

    return p0
.end method

.method public b()J
    .locals 2

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lc0;->a:Lcom/yandex/mobile/ads/impl/a80;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/a80;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lc0;->a:Lcom/yandex/mobile/ads/impl/a80;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/a80;->b(I)V

    return-void
.end method

.method public final b([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lc0;->a:Lcom/yandex/mobile/ads/impl/a80;

    invoke-interface {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/a80;->b([BII)V

    return-void
.end method

.method public final b([BIIZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lc0;->a:Lcom/yandex/mobile/ads/impl/a80;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/a80;->b([BIIZ)Z

    move-result p0

    return p0
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lc0;->a:Lcom/yandex/mobile/ads/impl/a80;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/a80;->c()V

    return-void
.end method

.method public d()J
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lc0;->a:Lcom/yandex/mobile/ads/impl/a80;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/a80;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lc0;->a:Lcom/yandex/mobile/ads/impl/a80;

    invoke-interface {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/qv;->read([BII)I

    move-result p0

    return p0
.end method
