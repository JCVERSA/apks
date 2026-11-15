.class public final Lcom/yandex/mobile/ads/impl/vv;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/tv;

.field private final b:Lcom/yandex/mobile/ads/impl/xv;

.field private final c:[B

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/s22;Lcom/yandex/mobile/ads/impl/xv;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/vv;->d:Z

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/vv;->e:Z

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vv;->a:Lcom/yandex/mobile/ads/impl/tv;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/vv;->b:Lcom/yandex/mobile/ads/impl/xv;

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vv;->c:[B

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/vv;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vv;->a:Lcom/yandex/mobile/ads/impl/tv;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/tv;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/vv;->e:Z

    :cond_0
    return-void
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vv;->c:[B

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/yandex/mobile/ads/impl/vv;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vv;->c:[B

    aget-byte p0, p0, v2

    and-int/lit16 v1, p0, 0xff

    :goto_0
    return v1
.end method

.method public final read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/yandex/mobile/ads/impl/vv;->read([BII)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/vv;->e:Z

    if-nez v0, :cond_2

    .line 6
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/vv;->d:Z

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vv;->a:Lcom/yandex/mobile/ads/impl/tv;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/vv;->b:Lcom/yandex/mobile/ads/impl/xv;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/tv;->a(Lcom/yandex/mobile/ads/impl/xv;)J

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/vv;->d:Z

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vv;->a:Lcom/yandex/mobile/ads/impl/tv;

    invoke-interface {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/qv;->read([BII)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    return p1

    :cond_1
    return p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
