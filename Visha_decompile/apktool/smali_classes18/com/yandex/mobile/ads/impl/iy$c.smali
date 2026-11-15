.class public final Lcom/yandex/mobile/ads/impl/iy$c;
.super Lcom/yandex/mobile/ads/impl/iy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/iy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/iy$c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/mobile/ads/impl/iy$c$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/yandex/mobile/ads/impl/iy$c$a;->b:Lcom/yandex/mobile/ads/impl/iy$c$a;

    const-string v1, "text"

    const-string v2, "Enable Test mode"

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "actionType"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/yandex/mobile/ads/impl/iy;-><init>(I)V

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/iy$c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/iy$c;->b:Lcom/yandex/mobile/ads/impl/iy$c$a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/iy$c$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iy$c;->b:Lcom/yandex/mobile/ads/impl/iy$c$a;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iy$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/iy$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/iy$c;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/iy$c;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/iy$c;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iy$c;->b:Lcom/yandex/mobile/ads/impl/iy$c$a;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/iy$c;->b:Lcom/yandex/mobile/ads/impl/iy$c$a;

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/iy$c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iy$c;->b:Lcom/yandex/mobile/ads/impl/iy$c$a;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/iy$c;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iy$c;->b:Lcom/yandex/mobile/ads/impl/iy$c$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Button(text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", actionType="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
