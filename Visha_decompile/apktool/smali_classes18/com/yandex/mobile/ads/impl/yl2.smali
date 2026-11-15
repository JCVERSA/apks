.class public final Lcom/yandex/mobile/ads/impl/yl2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/common/ImpressionData;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/t4;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 1

    const-string v0, "impressionData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yl2;->a:Lcom/yandex/mobile/ads/impl/t4;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/yl2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/impl/yl2;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/yl2;->a:Lcom/yandex/mobile/ads/impl/t4;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yl2;->a:Lcom/yandex/mobile/ads/impl/t4;

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

.method public final getRawData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yl2;->a:Lcom/yandex/mobile/ads/impl/t4;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/t4;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yl2;->a:Lcom/yandex/mobile/ads/impl/t4;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/t4;->hashCode()I

    move-result p0

    return p0
.end method
