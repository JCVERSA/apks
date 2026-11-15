.class public final Lcom/yandex/mobile/ads/impl/m11;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/m11$a;,
        Lcom/yandex/mobile/ads/impl/m11$b;
    }
.end annotation

.annotation runtime Lld9;
.end annotation


# static fields
.field public static final Companion:Lcom/yandex/mobile/ads/impl/m11$b;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o11;

.field private final b:Lcom/yandex/mobile/ads/impl/p11;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/m11$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/m11$b;-><init>(I)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/m11;->Companion:Lcom/yandex/mobile/ads/impl/m11$b;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/yandex/mobile/ads/impl/o11;Lcom/yandex/mobile/ads/impl/p11;)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-eq v1, v0, :cond_0

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/m11$a;->a:Lcom/yandex/mobile/ads/impl/m11$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/m11$a;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lbc8;->a(IILkotlinx/serialization/descriptors/a;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/m11;->a:Lcom/yandex/mobile/ads/impl/o11;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/m11;->b:Lcom/yandex/mobile/ads/impl/p11;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o11;Lcom/yandex/mobile/ads/impl/p11;)V
    .locals 1

    .line 2
    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m11;->a:Lcom/yandex/mobile/ads/impl/o11;

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/m11;->b:Lcom/yandex/mobile/ads/impl/p11;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/m11;Lid1;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .locals 3

    sget-object v0, Lcom/yandex/mobile/ads/impl/o11$a;->a:Lcom/yandex/mobile/ads/impl/o11$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m11;->a:Lcom/yandex/mobile/ads/impl/o11;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lid1;->q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    sget-object v0, Lcom/yandex/mobile/ads/impl/p11$a;->a:Lcom/yandex/mobile/ads/impl/p11$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m11;->b:Lcom/yandex/mobile/ads/impl/p11;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0, p0}, Lid1;->h(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/m11;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/m11;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m11;->a:Lcom/yandex/mobile/ads/impl/o11;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/m11;->a:Lcom/yandex/mobile/ads/impl/o11;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m11;->b:Lcom/yandex/mobile/ads/impl/p11;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/m11;->b:Lcom/yandex/mobile/ads/impl/p11;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m11;->a:Lcom/yandex/mobile/ads/impl/o11;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o11;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m11;->b:Lcom/yandex/mobile/ads/impl/p11;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/p11;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m11;->a:Lcom/yandex/mobile/ads/impl/o11;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m11;->b:Lcom/yandex/mobile/ads/impl/p11;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MobileAdsNetworkLog(request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", response="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
