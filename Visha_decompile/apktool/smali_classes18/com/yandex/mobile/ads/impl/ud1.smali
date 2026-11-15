.class public final Lcom/yandex/mobile/ads/impl/ud1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/q62;

.field private final b:Lcom/yandex/mobile/ads/impl/n92;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/q62;Lcom/yandex/mobile/ads/impl/n92;)V
    .locals 1

    const-string v0, "notice"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validationResult"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ud1;->a:Lcom/yandex/mobile/ads/impl/q62;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ud1;->b:Lcom/yandex/mobile/ads/impl/n92;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/q62;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ud1;->a:Lcom/yandex/mobile/ads/impl/q62;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/n92;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ud1;->b:Lcom/yandex/mobile/ads/impl/n92;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/ud1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/ud1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ud1;->a:Lcom/yandex/mobile/ads/impl/q62;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ud1;->a:Lcom/yandex/mobile/ads/impl/q62;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ud1;->b:Lcom/yandex/mobile/ads/impl/n92;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/ud1;->b:Lcom/yandex/mobile/ads/impl/n92;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ud1;->a:Lcom/yandex/mobile/ads/impl/q62;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ud1;->b:Lcom/yandex/mobile/ads/impl/n92;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ud1;->a:Lcom/yandex/mobile/ads/impl/q62;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ud1;->b:Lcom/yandex/mobile/ads/impl/n92;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoticeValidationHolder(notice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", validationResult="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
