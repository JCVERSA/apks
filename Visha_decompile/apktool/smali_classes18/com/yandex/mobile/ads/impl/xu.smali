.class public final Lcom/yandex/mobile/ads/impl/xu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/xu$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/m80;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/l62;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/qr0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/m80;Ljava/util/List;Lcom/yandex/mobile/ads/impl/qr0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/m80;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/l62;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/qr0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xu;->a:Lcom/yandex/mobile/ads/impl/m80;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/xu;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/xu;->c:Lcom/yandex/mobile/ads/impl/qr0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/m80;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xu;->a:Lcom/yandex/mobile/ads/impl/m80;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/qr0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xu;->c:Lcom/yandex/mobile/ads/impl/qr0;

    return-object p0
.end method

.method public final c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/l62;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xu;->b:Ljava/util/List;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/xu;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/xu;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xu;->a:Lcom/yandex/mobile/ads/impl/m80;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/xu;->a:Lcom/yandex/mobile/ads/impl/m80;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xu;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/xu;->b:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xu;->c:Lcom/yandex/mobile/ads/impl/qr0;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/xu;->c:Lcom/yandex/mobile/ads/impl/qr0;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xu;->a:Lcom/yandex/mobile/ads/impl/m80;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/m80;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/xu;->b:Ljava/util/List;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xu;->c:Lcom/yandex/mobile/ads/impl/qr0;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xu;->a:Lcom/yandex/mobile/ads/impl/m80;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xu;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xu;->c:Lcom/yandex/mobile/ads/impl/qr0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CreativeExtensions(falseClick="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", trackingEvents="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", linearCreativeInfo="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
