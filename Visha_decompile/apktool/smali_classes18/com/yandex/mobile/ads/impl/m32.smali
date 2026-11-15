.class final Lcom/yandex/mobile/ads/impl/m32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/n32;


# instance fields
.field private final b:[Lcom/yandex/mobile/ads/impl/hv;

.field private final c:[J


# direct methods
.method public constructor <init>([Lcom/yandex/mobile/ads/impl/hv;[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m32;->b:[Lcom/yandex/mobile/ads/impl/hv;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/m32;->c:[J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m32;->c:[J

    array-length p0, p0

    return p0
.end method

.method public final a(J)I
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m32;->c:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/yandex/mobile/ads/impl/f92;->a([JJZ)I

    move-result p1

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m32;->c:[J

    array-length p0, p0

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final a(I)J
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m32;->c:[J

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 2
    aget-wide p0, p0, p1

    return-wide p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final b(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/hv;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m32;->c:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/yandex/mobile/ads/impl/f92;->b([JJZ)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m32;->b:[Lcom/yandex/mobile/ads/impl/hv;

    aget-object p0, p0, p1

    sget-object p1, Lcom/yandex/mobile/ads/impl/hv;->s:Lcom/yandex/mobile/ads/impl/hv;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
