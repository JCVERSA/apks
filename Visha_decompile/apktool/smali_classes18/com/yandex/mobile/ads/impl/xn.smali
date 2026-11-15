.class public final Lcom/yandex/mobile/ads/impl/xn;
.super Lcom/yandex/mobile/ads/impl/sk;
.source "SourceFile"


# instance fields
.field private final n:Lcom/yandex/mobile/ads/impl/ry;

.field private final o:Lcom/yandex/mobile/ads/impl/ag1;

.field private p:J

.field private q:Lcom/yandex/mobile/ads/impl/wn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/sk;-><init>(I)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/ry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/ry;-><init>(I)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/xn;->n:Lcom/yandex/mobile/ads/impl/ry;

    new-instance v0, Lcom/yandex/mobile/ads/impl/ag1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ag1;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/xn;->o:Lcom/yandex/mobile/ads/impl/ag1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/jc0;)I
    .locals 0

    .line 21
    iget-object p0, p1, Lcom/yandex/mobile/ads/impl/jc0;->m:Ljava/lang/String;

    const-string p1, "application/x-camera-motion"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    .line 22
    invoke-static {p0, p1, p1}, Lcom/yandex/mobile/ads/impl/zo1;->a(III)I

    move-result p0

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1, p1, p1}, Lcom/yandex/mobile/ads/impl/zo1;->a(III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 1
    check-cast p2, Lcom/yandex/mobile/ads/impl/wn;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/xn;->q:Lcom/yandex/mobile/ads/impl/wn;

    :cond_0
    return-void
.end method

.method public final a(JJ)V
    .locals 4

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/sk;->e()Z

    move-result p3

    if-nez p3, :cond_6

    iget-wide p3, p0, Lcom/yandex/mobile/ads/impl/xn;->r:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long p3, p3, v0

    if-gez p3, :cond_6

    .line 7
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/xn;->n:Lcom/yandex/mobile/ads/impl/ry;

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/ry;->b()V

    .line 8
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/sk;->q()Lcom/yandex/mobile/ads/impl/kc0;

    move-result-object p3

    .line 9
    iget-object p4, p0, Lcom/yandex/mobile/ads/impl/xn;->n:Lcom/yandex/mobile/ads/impl/ry;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lcom/yandex/mobile/ads/impl/sk;->a(Lcom/yandex/mobile/ads/impl/kc0;Lcom/yandex/mobile/ads/impl/ry;I)I

    move-result p3

    const/4 p4, -0x4

    if-ne p3, p4, :cond_6

    .line 10
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/xn;->n:Lcom/yandex/mobile/ads/impl/ry;

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/gm;->f()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_3

    .line 11
    :cond_1
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/xn;->n:Lcom/yandex/mobile/ads/impl/ry;

    iget-wide v1, p3, Lcom/yandex/mobile/ads/impl/ry;->f:J

    iput-wide v1, p0, Lcom/yandex/mobile/ads/impl/xn;->r:J

    .line 12
    iget-object p4, p0, Lcom/yandex/mobile/ads/impl/xn;->q:Lcom/yandex/mobile/ads/impl/wn;

    if-eqz p4, :cond_0

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/gm;->e()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/xn;->n:Lcom/yandex/mobile/ads/impl/ry;

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/ry;->h()V

    .line 14
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/xn;->n:Lcom/yandex/mobile/ads/impl/ry;

    iget-object p3, p3, Lcom/yandex/mobile/ads/impl/ry;->d:Ljava/nio/ByteBuffer;

    sget p4, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 15
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p4

    const/16 v1, 0x10

    if-eq p4, v1, :cond_3

    const/4 p3, 0x0

    goto :goto_2

    .line 16
    :cond_3
    iget-object p4, p0, Lcom/yandex/mobile/ads/impl/xn;->o:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {p4, v2, v1}, Lcom/yandex/mobile/ads/impl/ag1;->a(I[B)V

    .line 17
    iget-object p4, p0, Lcom/yandex/mobile/ads/impl/xn;->o:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p3

    add-int/lit8 p3, p3, 0x4

    invoke-virtual {p4, p3}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    const/4 p3, 0x3

    .line 18
    new-array p4, p3, [F

    :goto_1
    if-ge v0, p3, :cond_4

    .line 19
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xn;->o:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ag1;->k()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    aput v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object p3, p4

    :goto_2
    if-nez p3, :cond_5

    goto/16 :goto_0

    .line 20
    :cond_5
    iget-object p4, p0, Lcom/yandex/mobile/ads/impl/xn;->q:Lcom/yandex/mobile/ads/impl/wn;

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/xn;->r:J

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/xn;->p:J

    sub-long/2addr v0, v2

    invoke-interface {p4, v0, v1, p3}, Lcom/yandex/mobile/ads/impl/wn;->a(J[F)V

    goto/16 :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public final a(JZ)V
    .locals 0

    const-wide/high16 p1, -0x8000000000000000L

    .line 2
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/xn;->r:J

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xn;->q:Lcom/yandex/mobile/ads/impl/wn;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/wn;->f()V

    :cond_0
    return-void
.end method

.method public final a([Lcom/yandex/mobile/ads/impl/jc0;JJ)V
    .locals 0

    .line 5
    iput-wide p4, p0, Lcom/yandex/mobile/ads/impl/xn;->p:J

    return-void
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "CameraMotionRenderer"

    return-object p0
.end method

.method public final u()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xn;->q:Lcom/yandex/mobile/ads/impl/wn;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/wn;->f()V

    :cond_0
    return-void
.end method
