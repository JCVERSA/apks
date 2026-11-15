.class final Lcom/yandex/mobile/ads/impl/zk;
.super Lcom/yandex/mobile/ads/impl/ry;
.source "SourceFile"


# instance fields
.field private j:J

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ry;-><init>(I)V

    const/16 v0, 0x20

    iput v0, p0, Lcom/yandex/mobile/ads/impl/zk;->l:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ry;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ry;->i()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gm;->d()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gm;->f()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zk;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/yandex/mobile/ads/impl/zk;->k:I

    iget v1, p0, Lcom/yandex/mobile/ads/impl/zk;->l:I

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gm;->e()Z

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gm;->e()Z

    move-result v1

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/ry;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ry;->d:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    add-int/2addr v0, v1

    const v1, 0x2ee000

    if-le v0, v1, :cond_3

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    iget v0, p0, Lcom/yandex/mobile/ads/impl/zk;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yandex/mobile/ads/impl/zk;->k:I

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-wide v2, p1, Lcom/yandex/mobile/ads/impl/ry;->f:J

    iput-wide v2, p0, Lcom/yandex/mobile/ads/impl/ry;->f:J

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gm;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/gm;->d(I)V

    :cond_4
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gm;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/gm;->d(I)V

    :cond_5
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/ry;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/impl/ry;->e(I)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ry;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_6
    iget-wide v2, p1, Lcom/yandex/mobile/ads/impl/ry;->f:J

    iput-wide v2, p0, Lcom/yandex/mobile/ads/impl/zk;->j:J

    return v1

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final b()V
    .locals 1

    invoke-super {p0}, Lcom/yandex/mobile/ads/impl/ry;->b()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/mobile/ads/impl/zk;->k:I

    return-void
.end method

.method public final f(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    if-lez p1, :cond_0

    iput p1, p0, Lcom/yandex/mobile/ads/impl/zk;->l:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/zk;->j:J

    return-wide v0
.end method

.method public final l()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/zk;->k:I

    return p0
.end method

.method public final m()Z
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/zk;->k:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
