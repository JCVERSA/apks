.class public final Lcom/yandex/mobile/ads/impl/d7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Z

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerifiableNetwork;",
            "Lcom/yandex/mobile/ads/impl/m7;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IZZLjava/util/LinkedHashMap;Ljava/util/Set;)V
    .locals 1

    const-string v0, "adNetworksCustomParameters"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enabledAdUnits"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yandex/mobile/ads/impl/d7;->a:I

    iput-boolean p2, p0, Lcom/yandex/mobile/ads/impl/d7;->b:Z

    iput-boolean p3, p0, Lcom/yandex/mobile/ads/impl/d7;->c:Z

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/d7;->d:Ljava/util/Map;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/d7;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerifiableNetwork;",
            "Lcom/yandex/mobile/ads/impl/m7;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d7;->d:Ljava/util/Map;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/d7;->c:Z

    return p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/d7;->b:Z

    return p0
.end method

.method public final d()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d7;->e:Ljava/util/Set;

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/d7;->a:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/d7;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/d7;

    iget v1, p0, Lcom/yandex/mobile/ads/impl/d7;->a:I

    iget v3, p1, Lcom/yandex/mobile/ads/impl/d7;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/d7;->b:Z

    iget-boolean v3, p1, Lcom/yandex/mobile/ads/impl/d7;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/d7;->c:Z

    iget-boolean v3, p1, Lcom/yandex/mobile/ads/impl/d7;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/d7;->d:Ljava/util/Map;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/d7;->d:Ljava/util/Map;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d7;->e:Ljava/util/Set;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/d7;->e:Ljava/util/Set;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/yandex/mobile/ads/impl/d7;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/yandex/mobile/ads/impl/d7;->b:Z

    invoke-static {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/a7;->a(ZII)I

    move-result v0

    iget-boolean v2, p0, Lcom/yandex/mobile/ads/impl/d7;->c:Z

    invoke-static {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/a7;->a(ZII)I

    move-result v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/d7;->d:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d7;->e:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/yandex/mobile/ads/impl/d7;->a:I

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/d7;->b:Z

    iget-boolean v2, p0, Lcom/yandex/mobile/ads/impl/d7;->c:Z

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/d7;->d:Ljava/util/Map;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d7;->e:Ljava/util/Set;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdQualityVerificationPolicy(usagePercent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", enabled="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", blockAdOnInternalError="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", adNetworksCustomParameters="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", enabledAdUnits="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
