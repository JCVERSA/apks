.class final Lcom/yandex/mobile/ads/impl/qm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/jc0;)J
    .locals 6

    .line 1
    iget p1, p1, Lcom/yandex/mobile/ads/impl/jc0;->A:I

    int-to-long v0, p1

    .line 2
    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/qm;->a:J

    iget-wide p0, p0, Lcom/yandex/mobile/ads/impl/qm;->b:J

    const-wide/16 v4, 0x211

    sub-long/2addr p0, v4

    const-wide/32 v4, 0xf4240

    mul-long/2addr p0, v4

    div-long/2addr p0, v0

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    add-long/2addr p0, v2

    return-wide p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/ry;)J
    .locals 10

    .line 7
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/qm;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 8
    iget-wide v0, p2, Lcom/yandex/mobile/ads/impl/ry;->f:J

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/qm;->a:J

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/qm;->c:Z

    if-eqz v0, :cond_1

    .line 10
    iget-wide p0, p2, Lcom/yandex/mobile/ads/impl/ry;->f:J

    return-wide p0

    .line 11
    :cond_1
    iget-object v0, p2, Lcom/yandex/mobile/ads/impl/ry;->d:Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    const/4 v5, 0x4

    if-ge v1, v5, :cond_2

    shl-int/lit8 v4, v4, 0x8

    .line 13
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/f21;->b(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/qm;->c:Z

    .line 16
    iput-wide v2, p0, Lcom/yandex/mobile/ads/impl/qm;->b:J

    .line 17
    iget-wide v0, p2, Lcom/yandex/mobile/ads/impl/ry;->f:J

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/qm;->a:J

    .line 18
    const-string p0, "C2Mp3TimestampTracker"

    const-string p1, "MPEG audio header is invalid."

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/et0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-wide p0, p2, Lcom/yandex/mobile/ads/impl/ry;->f:J

    return-wide p0

    .line 20
    :cond_3
    iget p1, p1, Lcom/yandex/mobile/ads/impl/jc0;->A:I

    int-to-long p1, p1

    .line 21
    iget-wide v4, p0, Lcom/yandex/mobile/ads/impl/qm;->a:J

    iget-wide v6, p0, Lcom/yandex/mobile/ads/impl/qm;->b:J

    const-wide/16 v8, 0x211

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    div-long/2addr v6, p1

    .line 22
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    add-long/2addr p1, v4

    .line 23
    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/qm;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/yandex/mobile/ads/impl/qm;->b:J

    return-wide p1
.end method

.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/qm;->a:J

    .line 5
    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/qm;->b:J

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/qm;->c:Z

    return-void
.end method
