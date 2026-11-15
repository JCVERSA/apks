.class final Lcom/yandex/mobile/ads/impl/ho;
.super Lcom/yandex/mobile/ads/impl/ik;
.source "SourceFile"


# instance fields
.field private i:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ik;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ho;->j:[I

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    sub-int v3, v2, v1

    .line 5
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ik;->b:Lcom/yandex/mobile/ads/impl/uh$a;

    iget v4, v4, Lcom/yandex/mobile/ads/impl/uh$a;->d:I

    div-int/2addr v3, v4

    .line 6
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ik;->c:Lcom/yandex/mobile/ads/impl/uh$a;

    iget v4, v4, Lcom/yandex/mobile/ads/impl/uh$a;->d:I

    mul-int/2addr v3, v4

    .line 7
    invoke-virtual {p0, v3}, Lcom/yandex/mobile/ads/impl/ik;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_0
    if-ge v1, v2, :cond_1

    .line 8
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget v6, v0, v5

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    .line 9
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 10
    :cond_0
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ik;->b:Lcom/yandex/mobile/ads/impl/uh$a;

    iget v4, v4, Lcom/yandex/mobile/ads/impl/uh$a;->d:I

    add-int/2addr v1, v4

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public final a([I)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ho;->i:[I

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/uh$a;)Lcom/yandex/mobile/ads/impl/uh$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/uh$b;
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ho;->i:[I

    if-nez p0, :cond_0

    sget-object p0, Lcom/yandex/mobile/ads/impl/uh$a;->e:Lcom/yandex/mobile/ads/impl/uh$a;

    return-object p0

    :cond_0
    iget v0, p1, Lcom/yandex/mobile/ads/impl/uh$a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget v0, p1, Lcom/yandex/mobile/ads/impl/uh$a;->b:I

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    move v2, v3

    :goto_1
    array-length v5, p0

    if-ge v2, v5, :cond_4

    aget v5, p0, v2

    iget v6, p1, Lcom/yandex/mobile/ads/impl/uh$a;->b:I

    if-ge v5, v6, :cond_3

    if-eq v5, v2, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    or-int/2addr v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/yandex/mobile/ads/impl/uh$b;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/uh$b;-><init>(Lcom/yandex/mobile/ads/impl/uh$a;)V

    throw p0

    :cond_4
    if-eqz v0, :cond_5

    new-instance v0, Lcom/yandex/mobile/ads/impl/uh$a;

    iget p1, p1, Lcom/yandex/mobile/ads/impl/uh$a;->a:I

    array-length p0, p0

    invoke-direct {v0, p1, p0, v1}, Lcom/yandex/mobile/ads/impl/uh$a;-><init>(III)V

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/yandex/mobile/ads/impl/uh$a;->e:Lcom/yandex/mobile/ads/impl/uh$a;

    :goto_3
    return-object v0

    :cond_6
    new-instance p0, Lcom/yandex/mobile/ads/impl/uh$b;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/uh$b;-><init>(Lcom/yandex/mobile/ads/impl/uh$a;)V

    throw p0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ho;->i:[I

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ho;->j:[I

    return-void
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ho;->j:[I

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ho;->i:[I

    return-void
.end method
