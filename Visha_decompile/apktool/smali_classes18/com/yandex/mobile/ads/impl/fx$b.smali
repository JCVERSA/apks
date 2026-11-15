.class public final Lcom/yandex/mobile/ads/impl/fx$b;
.super Lcom/yandex/mobile/ads/impl/fx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/fx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/iy$g;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/iy$g;)V
    .locals 2

    const-string v0, "adapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/iy$g;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/fx;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fx$b;->b:Lcom/yandex/mobile/ads/impl/iy$g;

    return-void
.end method


# virtual methods
.method public final b()Lcom/yandex/mobile/ads/impl/iy$g;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fx$b;->b:Lcom/yandex/mobile/ads/impl/iy$g;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/fx$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/fx$b;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fx$b;->b:Lcom/yandex/mobile/ads/impl/iy$g;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/fx$b;->b:Lcom/yandex/mobile/ads/impl/iy$g;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fx$b;->b:Lcom/yandex/mobile/ads/impl/iy$g;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/iy$g;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fx$b;->b:Lcom/yandex/mobile/ads/impl/iy$g;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdUnitMediationAdapter(adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
