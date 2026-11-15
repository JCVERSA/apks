.class public final Lcom/yandex/mobile/ads/impl/i2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Lcom/yandex/mobile/ads/impl/g2;

.field private final c:J

.field private final d:I


# direct methods
.method public constructor <init>(ZLcom/yandex/mobile/ads/impl/g2;JI)V
    .locals 1

    const-string v0, "requestPolicy"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/i2;->a:Z

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/i2;->b:Lcom/yandex/mobile/ads/impl/g2;

    iput-wide p3, p0, Lcom/yandex/mobile/ads/impl/i2;->c:J

    iput p5, p0, Lcom/yandex/mobile/ads/impl/i2;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/i2;->d:I

    return p0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/i2;->c:J

    return-wide v0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/g2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i2;->b:Lcom/yandex/mobile/ads/impl/g2;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/i2;->a:Z

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/i2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/i2;

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/i2;->a:Z

    iget-boolean v3, p1, Lcom/yandex/mobile/ads/impl/i2;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i2;->b:Lcom/yandex/mobile/ads/impl/g2;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/i2;->b:Lcom/yandex/mobile/ads/impl/g2;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/i2;->c:J

    iget-wide v5, p1, Lcom/yandex/mobile/ads/impl/i2;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/yandex/mobile/ads/impl/i2;->d:I

    iget p1, p1, Lcom/yandex/mobile/ads/impl/i2;->d:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/i2;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i2;->b:Lcom/yandex/mobile/ads/impl/g2;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/i2;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/yandex/mobile/ads/impl/i2;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/i2;->a:Z

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i2;->b:Lcom/yandex/mobile/ads/impl/g2;

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/i2;->c:J

    iget p0, p0, Lcom/yandex/mobile/ads/impl/i2;->d:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdBlockerState(wasDetected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", requestPolicy="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", lastUpdateTime="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", failedRequestsCount="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
