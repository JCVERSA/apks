.class public final Lcom/yandex/mobile/ads/impl/s22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/tv;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/tv;

.field private b:J

.field private c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/tv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/tv;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s22;->a:Lcom/yandex/mobile/ads/impl/tv;

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s22;->c:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xv;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/xv;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/s22;->c:Landroid/net/Uri;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s22;->a:Lcom/yandex/mobile/ads/impl/tv;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/tv;->a(Lcom/yandex/mobile/ads/impl/xv;)J

    move-result-wide v0

    .line 6
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/s22;->a:Lcom/yandex/mobile/ads/impl/tv;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/tv;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s22;->c:Landroid/net/Uri;

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s22;->a:Lcom/yandex/mobile/ads/impl/tv;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/tv;->getResponseHeaders()Ljava/util/Map;

    return-wide v0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/d72;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s22;->a:Lcom/yandex/mobile/ads/impl/tv;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/tv;->a(Lcom/yandex/mobile/ads/impl/d72;)V

    return-void
.end method

.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s22;->a:Lcom/yandex/mobile/ads/impl/tv;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/tv;->close()V

    return-void
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/s22;->b:J

    return-wide v0
.end method

.method public final f()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s22;->c:Landroid/net/Uri;

    return-object p0
.end method

.method public final getResponseHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s22;->a:Lcom/yandex/mobile/ads/impl/tv;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/tv;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s22;->a:Lcom/yandex/mobile/ads/impl/tv;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/tv;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s22;->a:Lcom/yandex/mobile/ads/impl/tv;

    invoke-interface {v0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/qv;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-wide p2, p0, Lcom/yandex/mobile/ads/impl/s22;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/s22;->b:J

    :cond_0
    return p1
.end method
