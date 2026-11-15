.class public final Lcom/yandex/mobile/ads/impl/u61;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/v7;

.field private final b:Lcom/yandex/mobile/ads/impl/ca1;

.field private final c:Lcom/yandex/mobile/ads/impl/fa1;

.field private final d:Lcom/yandex/mobile/ads/impl/hq1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/hq1<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;"
        }
    .end annotation
.end field

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ca1;Lcom/yandex/mobile/ads/impl/fa1;Lcom/yandex/mobile/ads/impl/hq1;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/v7;",
            "Lcom/yandex/mobile/ads/impl/ca1;",
            "Lcom/yandex/mobile/ads/impl/fa1;",
            "Lcom/yandex/mobile/ads/impl/hq1<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "adRequestData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeResponseType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceType"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestPolicy"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/u61;->a:Lcom/yandex/mobile/ads/impl/v7;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/u61;->b:Lcom/yandex/mobile/ads/impl/ca1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/u61;->c:Lcom/yandex/mobile/ads/impl/fa1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/u61;->d:Lcom/yandex/mobile/ads/impl/hq1;

    iput p5, p0, Lcom/yandex/mobile/ads/impl/u61;->e:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/v7;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u61;->a:Lcom/yandex/mobile/ads/impl/v7;

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/u61;->e:I

    return p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/ca1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u61;->b:Lcom/yandex/mobile/ads/impl/ca1;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/hq1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/mobile/ads/impl/hq1<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u61;->d:Lcom/yandex/mobile/ads/impl/hq1;

    return-object p0
.end method

.method public final e()Lcom/yandex/mobile/ads/impl/fa1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u61;->c:Lcom/yandex/mobile/ads/impl/fa1;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/u61;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/u61;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u61;->a:Lcom/yandex/mobile/ads/impl/v7;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/u61;->a:Lcom/yandex/mobile/ads/impl/v7;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u61;->b:Lcom/yandex/mobile/ads/impl/ca1;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/u61;->b:Lcom/yandex/mobile/ads/impl/ca1;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u61;->c:Lcom/yandex/mobile/ads/impl/fa1;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/u61;->c:Lcom/yandex/mobile/ads/impl/fa1;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u61;->d:Lcom/yandex/mobile/ads/impl/hq1;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/u61;->d:Lcom/yandex/mobile/ads/impl/hq1;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lcom/yandex/mobile/ads/impl/u61;->e:I

    iget p1, p1, Lcom/yandex/mobile/ads/impl/u61;->e:I

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u61;->a:Lcom/yandex/mobile/ads/impl/v7;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/v7;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u61;->b:Lcom/yandex/mobile/ads/impl/ca1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u61;->c:Lcom/yandex/mobile/ads/impl/fa1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u61;->d:Lcom/yandex/mobile/ads/impl/hq1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lcom/yandex/mobile/ads/impl/u61;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u61;->a:Lcom/yandex/mobile/ads/impl/v7;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/u61;->b:Lcom/yandex/mobile/ads/impl/ca1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/u61;->c:Lcom/yandex/mobile/ads/impl/fa1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/u61;->d:Lcom/yandex/mobile/ads/impl/hq1;

    iget p0, p0, Lcom/yandex/mobile/ads/impl/u61;->e:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NativeAdRequestData(adRequestData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", nativeResponseType="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sourceType="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", requestPolicy="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adsCount="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
