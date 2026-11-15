.class public final Lcom/yandex/mobile/ads/impl/uk1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/uk1$a;,
        Lcom/yandex/mobile/ads/impl/uk1$b;
    }
.end annotation

.annotation runtime Lld9;
.end annotation


# static fields
.field public static final Companion:Lcom/yandex/mobile/ads/impl/uk1$b;


# instance fields
.field private final a:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/uk1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/uk1$b;-><init>(I)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/uk1;->Companion:Lcom/yandex/mobile/ads/impl/uk1$b;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/uk1;->a:D

    return-void
.end method

.method public synthetic constructor <init>(ID)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    .line 3
    sget-object v0, Lcom/yandex/mobile/ads/impl/uk1$a;->a:Lcom/yandex/mobile/ads/impl/uk1$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/uk1$a;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lbc8;->a(IILkotlinx/serialization/descriptors/a;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/uk1;->a:D

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/uk1;Lid1;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/uk1;->a:D

    const/4 p0, 0x0

    invoke-interface {p1, p2, p0, v0, v1}, Lid1;->F(Lkotlinx/serialization/descriptors/a;ID)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/uk1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/uk1;

    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/uk1;->a:D

    iget-wide p0, p1, Lcom/yandex/mobile/ads/impl/uk1;->a:D

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/uk1;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/uk1;->a:D

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrefetchedMediationRevenue(value="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
