.class public final Lcom/yandex/mobile/ads/impl/ey1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Lcom/yandex/mobile/ads/impl/fy1;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ey1;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 6

    const/4 v1, 0x0

    .line 2
    sget-object v4, Lcom/yandex/mobile/ads/impl/fy1;->d:Lcom/yandex/mobile/ads/impl/fy1;

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/ey1;-><init>(IJLcom/yandex/mobile/ads/impl/fy1;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IJLcom/yandex/mobile/ads/impl/fy1;Ljava/lang/String;)V
    .locals 1

    .line 4
    const-string v0, "type"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/ey1;->a:J

    .line 7
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ey1;->b:Ljava/lang/String;

    .line 8
    iput p1, p0, Lcom/yandex/mobile/ads/impl/ey1;->c:I

    .line 9
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ey1;->d:Lcom/yandex/mobile/ads/impl/fy1;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/ey1;->a:J

    return-wide v0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/fy1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ey1;->d:Lcom/yandex/mobile/ads/impl/fy1;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ey1;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/ey1;->c:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/ey1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/ey1;

    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/ey1;->a:J

    iget-wide v5, p1, Lcom/yandex/mobile/ads/impl/ey1;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ey1;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ey1;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/yandex/mobile/ads/impl/ey1;->c:I

    iget v3, p1, Lcom/yandex/mobile/ads/impl/ey1;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ey1;->d:Lcom/yandex/mobile/ads/impl/fy1;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/ey1;->d:Lcom/yandex/mobile/ads/impl/fy1;

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/ey1;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ey1;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/yandex/mobile/ads/impl/ey1;->c:I

    invoke-static {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/dy1;->a(III)I

    move-result v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ey1;->d:Lcom/yandex/mobile/ads/impl/fy1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/ey1;->a:J

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ey1;->b:Ljava/lang/String;

    iget v3, p0, Lcom/yandex/mobile/ads/impl/ey1;->c:I

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ey1;->d:Lcom/yandex/mobile/ads/impl/fy1;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ShowNotice(delay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", url="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", visibilityPercent="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
