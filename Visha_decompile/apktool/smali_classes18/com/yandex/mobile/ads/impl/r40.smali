.class public final Lcom/yandex/mobile/ads/impl/r40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/a62;


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/r40;->a:[B

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/qv;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/r40;->a:[B

    array-length v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r40;->a:[B

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0, p2}, Lcom/yandex/mobile/ads/impl/qv;->read([BII)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    if-eqz p3, :cond_0

    return p1

    .line 5
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    return p0
.end method

.method public final a(JIIILcom/yandex/mobile/ads/impl/a62$a;)V
    .locals 0
    .param p6    # Lcom/yandex/mobile/ads/impl/a62$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/jc0;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final b(ILcom/yandex/mobile/ads/impl/ag1;)V
    .locals 0

    invoke-virtual {p2, p1}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    return-void
.end method
