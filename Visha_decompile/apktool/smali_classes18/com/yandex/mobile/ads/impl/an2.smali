.class public final Lcom/yandex/mobile/ads/impl/an2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/rewarded/Reward;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vr1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vr1;)V
    .locals 1

    const-string v0, "rewardData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/an2;->a:Lcom/yandex/mobile/ads/impl/vr1;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/an2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/impl/an2;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/an2;->a:Lcom/yandex/mobile/ads/impl/vr1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/an2;->a:Lcom/yandex/mobile/ads/impl/vr1;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getAmount()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/an2;->a:Lcom/yandex/mobile/ads/impl/vr1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/vr1;->getAmount()I

    move-result p0

    return p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/an2;->a:Lcom/yandex/mobile/ads/impl/vr1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/vr1;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/an2;->a:Lcom/yandex/mobile/ads/impl/vr1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
