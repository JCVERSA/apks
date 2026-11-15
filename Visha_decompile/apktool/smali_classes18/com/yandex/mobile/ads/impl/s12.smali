.class public final Lcom/yandex/mobile/ads/impl/s12;
.super Lcom/yandex/mobile/ads/impl/sy1;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ag1;

.field private final b:Lcom/yandex/mobile/ads/impl/zf1;

.field private c:Lcom/yandex/mobile/ads/impl/p52;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/sy1;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/ag1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ag1;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/s12;->a:Lcom/yandex/mobile/ads/impl/ag1;

    new-instance v0, Lcom/yandex/mobile/ads/impl/zf1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/zf1;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/s12;->b:Lcom/yandex/mobile/ads/impl/zf1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/n01;Ljava/nio/ByteBuffer;)Lcom/yandex/mobile/ads/impl/k01;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/s12;->c:Lcom/yandex/mobile/ads/impl/p52;

    if-eqz v2, :cond_0

    iget-wide v3, p1, Lcom/yandex/mobile/ads/impl/n01;->j:J

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/p52;->c()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lcom/yandex/mobile/ads/impl/p52;

    iget-wide v3, p1, Lcom/yandex/mobile/ads/impl/ry;->f:J

    invoke-direct {v2, v3, v4}, Lcom/yandex/mobile/ads/impl/p52;-><init>(J)V

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/s12;->c:Lcom/yandex/mobile/ads/impl/p52;

    iget-wide v3, p1, Lcom/yandex/mobile/ads/impl/ry;->f:J

    iget-wide v5, p1, Lcom/yandex/mobile/ads/impl/n01;->j:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/yandex/mobile/ads/impl/p52;->a(J)J

    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/s12;->a:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v2, p2, p1}, Lcom/yandex/mobile/ads/impl/ag1;->a(I[B)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/s12;->b:Lcom/yandex/mobile/ads/impl/zf1;

    invoke-virtual {v2, p2, p1}, Lcom/yandex/mobile/ads/impl/zf1;->a(I[B)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/s12;->b:Lcom/yandex/mobile/ads/impl/zf1;

    const/16 p2, 0x27

    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/zf1;->d(I)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/s12;->b:Lcom/yandex/mobile/ads/impl/zf1;

    invoke-virtual {p1, v1}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result p1

    int-to-long p1, p1

    const/16 v2, 0x20

    shl-long/2addr p1, v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/s12;->b:Lcom/yandex/mobile/ads/impl/zf1;

    invoke-virtual {v3, v2}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr p1, v2

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/s12;->b:Lcom/yandex/mobile/ads/impl/zf1;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/zf1;->d(I)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/s12;->b:Lcom/yandex/mobile/ads/impl/zf1;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/s12;->b:Lcom/yandex/mobile/ads/impl/zf1;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result v3

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/s12;->a:Lcom/yandex/mobile/ads/impl/ag1;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    if-eqz v3, :cond_6

    const/16 v4, 0xff

    if-eq v3, v4, :cond_5

    const/4 v2, 0x4

    if-eq v3, v2, :cond_4

    const/4 v2, 0x5

    if-eq v3, v2, :cond_3

    const/4 v2, 0x6

    if-eq v3, v2, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/s12;->a:Lcom/yandex/mobile/ads/impl/ag1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s12;->c:Lcom/yandex/mobile/ads/impl/p52;

    invoke-static {v2, p1, p2, p0}, Lcom/yandex/mobile/ads/impl/g52;->a(Lcom/yandex/mobile/ads/impl/ag1;JLcom/yandex/mobile/ads/impl/p52;)Lcom/yandex/mobile/ads/impl/g52;

    move-result-object p0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/s12;->a:Lcom/yandex/mobile/ads/impl/ag1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s12;->c:Lcom/yandex/mobile/ads/impl/p52;

    invoke-static {v2, p1, p2, p0}, Lcom/yandex/mobile/ads/impl/t12;->a(Lcom/yandex/mobile/ads/impl/ag1;JLcom/yandex/mobile/ads/impl/p52;)Lcom/yandex/mobile/ads/impl/t12;

    move-result-object p0

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s12;->a:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/v12;->a(Lcom/yandex/mobile/ads/impl/ag1;)Lcom/yandex/mobile/ads/impl/v12;

    move-result-object p0

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s12;->a:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-static {p0, v2, p1, p2}, Lcom/yandex/mobile/ads/impl/gl1;->a(Lcom/yandex/mobile/ads/impl/ag1;IJ)Lcom/yandex/mobile/ads/impl/gl1;

    move-result-object p0

    goto :goto_0

    :cond_6
    new-instance p0, Lcom/yandex/mobile/ads/impl/u12;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/u12;-><init>()V

    :goto_0
    if-nez p0, :cond_7

    new-instance p0, Lcom/yandex/mobile/ads/impl/k01;

    new-array p1, v0, [Lcom/yandex/mobile/ads/impl/k01$b;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/k01;-><init>([Lcom/yandex/mobile/ads/impl/k01$b;)V

    goto :goto_1

    :cond_7
    new-instance p1, Lcom/yandex/mobile/ads/impl/k01;

    new-array p2, v1, [Lcom/yandex/mobile/ads/impl/k01$b;

    aput-object p0, p2, v0

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/k01;-><init>([Lcom/yandex/mobile/ads/impl/k01$b;)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method
