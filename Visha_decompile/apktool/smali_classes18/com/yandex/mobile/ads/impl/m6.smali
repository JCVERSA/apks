.class public final Lcom/yandex/mobile/ads/impl/m6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:Lcom/yandex/mobile/ads/impl/n6;

.field private final c:Lcom/yandex/mobile/ads/impl/o6;


# direct methods
.method public constructor <init>(JLcom/yandex/mobile/ads/impl/n6;Lcom/yandex/mobile/ads/impl/o6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/m6;->a:J

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/m6;->b:Lcom/yandex/mobile/ads/impl/n6;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/m6;->c:Lcom/yandex/mobile/ads/impl/o6;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/m6;->a:J

    return-wide v0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/n6;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m6;->b:Lcom/yandex/mobile/ads/impl/n6;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/o6;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m6;->c:Lcom/yandex/mobile/ads/impl/o6;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/m6;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/m6;

    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/m6;->a:J

    iget-wide v5, p1, Lcom/yandex/mobile/ads/impl/m6;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m6;->b:Lcom/yandex/mobile/ads/impl/n6;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/m6;->b:Lcom/yandex/mobile/ads/impl/n6;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m6;->c:Lcom/yandex/mobile/ads/impl/o6;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/m6;->c:Lcom/yandex/mobile/ads/impl/o6;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/m6;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m6;->b:Lcom/yandex/mobile/ads/impl/n6;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/n6;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m6;->c:Lcom/yandex/mobile/ads/impl/o6;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/m6;->a:J

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/m6;->b:Lcom/yandex/mobile/ads/impl/n6;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m6;->c:Lcom/yandex/mobile/ads/impl/o6;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdPodItem(duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", skip="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", transitionPolicy="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
