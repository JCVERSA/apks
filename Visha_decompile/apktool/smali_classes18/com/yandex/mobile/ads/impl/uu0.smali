.class public final Lcom/yandex/mobile/ads/impl/uu0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lcom/yandex/mobile/ads/impl/vu0;


# direct methods
.method public constructor <init>(ILcom/yandex/mobile/ads/impl/vu0;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yandex/mobile/ads/impl/uu0;->a:I

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/uu0;->b:Lcom/yandex/mobile/ads/impl/vu0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/vu0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uu0;->b:Lcom/yandex/mobile/ads/impl/vu0;

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/uu0;->a:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/uu0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/uu0;

    iget v1, p0, Lcom/yandex/mobile/ads/impl/uu0;->a:I

    iget v3, p1, Lcom/yandex/mobile/ads/impl/uu0;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uu0;->b:Lcom/yandex/mobile/ads/impl/vu0;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/uu0;->b:Lcom/yandex/mobile/ads/impl/vu0;

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/yandex/mobile/ads/impl/uu0;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uu0;->b:Lcom/yandex/mobile/ads/impl/vu0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/yandex/mobile/ads/impl/uu0;->a:I

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uu0;->b:Lcom/yandex/mobile/ads/impl/vu0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MeasuredSizeSpec(value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
