.class public final Lcom/yandex/mobile/ads/impl/xi0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/df;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/yandex/mobile/ads/impl/cj0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/df;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/cj0;)V
    .locals 1

    const-string v0, "appMetricaIdentifiers"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mauid"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifiersType"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xi0;->a:Lcom/yandex/mobile/ads/impl/df;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/xi0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/xi0;->c:Lcom/yandex/mobile/ads/impl/cj0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/df;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xi0;->a:Lcom/yandex/mobile/ads/impl/df;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/cj0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xi0;->c:Lcom/yandex/mobile/ads/impl/cj0;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xi0;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/xi0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/xi0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xi0;->a:Lcom/yandex/mobile/ads/impl/df;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/xi0;->a:Lcom/yandex/mobile/ads/impl/df;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xi0;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/xi0;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xi0;->c:Lcom/yandex/mobile/ads/impl/cj0;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/xi0;->c:Lcom/yandex/mobile/ads/impl/cj0;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xi0;->a:Lcom/yandex/mobile/ads/impl/df;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/df;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/xi0;->b:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/v3;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xi0;->c:Lcom/yandex/mobile/ads/impl/cj0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xi0;->a:Lcom/yandex/mobile/ads/impl/df;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xi0;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xi0;->c:Lcom/yandex/mobile/ads/impl/cj0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Identifiers(appMetricaIdentifiers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mauid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", identifiersType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
