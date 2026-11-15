.class public final Lcom/yandex/mobile/ads/impl/p11;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/p11$a;,
        Lcom/yandex/mobile/ads/impl/p11$b;
    }
.end annotation

.annotation runtime Lld9;
.end annotation


# static fields
.field public static final Companion:Lcom/yandex/mobile/ads/impl/p11$b;

.field private static final e:[Lef5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lef5;"
        }
    .end annotation
.end field


# instance fields
.field private final a:J

.field private final b:Ljava/lang/Integer;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/yandex/mobile/ads/impl/p11$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/p11$b;-><init>(I)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/p11;->Companion:Lcom/yandex/mobile/ads/impl/p11$b;

    new-instance v0, Lkl5;

    sget-object v2, Lc0a;->a:Lc0a;

    invoke-static {v2}, Lqn0;->t(Lef5;)Lef5;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lkl5;-><init>(Lef5;Lef5;)V

    const/4 v2, 0x4

    new-array v2, v2, [Lef5;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object v3, v2, v1

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const/4 v0, 0x3

    aput-object v3, v2, v0

    sput-object v2, Lcom/yandex/mobile/ads/impl/p11;->e:[Lef5;

    return-void
.end method

.method public synthetic constructor <init>(IJLjava/lang/Integer;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2

    and-int/lit8 v0, p1, 0xf

    const/16 v1, 0xf

    if-eq v1, v0, :cond_0

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/p11$a;->a:Lcom/yandex/mobile/ads/impl/p11$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/p11$a;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lbc8;->a(IILkotlinx/serialization/descriptors/a;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/p11;->a:J

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/p11;->b:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/p11;->c:Ljava/util/Map;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/p11;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/Integer;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/p11;->a:J

    .line 4
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/p11;->b:Ljava/lang/Integer;

    .line 5
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/p11;->c:Ljava/util/Map;

    .line 6
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/p11;->d:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/p11;Lid1;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/p11;->e:[Lef5;

    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/p11;->a:J

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lid1;->u(Lkotlinx/serialization/descriptors/a;IJ)V

    sget-object v1, Lv15;->a:Lv15;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/p11;->b:Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1, v2}, Lid1;->h(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/p11;->c:Ljava/util/Map;

    invoke-interface {p1, p2, v1, v0, v2}, Lid1;->h(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    sget-object v0, Lc0a;->a:Lc0a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p11;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {p1, p2, v1, v0, p0}, Lid1;->h(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic a()[Lef5;
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/mobile/ads/impl/p11;->e:[Lef5;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/p11;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/p11;

    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/p11;->a:J

    iget-wide v5, p1, Lcom/yandex/mobile/ads/impl/p11;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/p11;->b:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/p11;->b:Ljava/lang/Integer;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/p11;->c:Ljava/util/Map;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/p11;->c:Ljava/util/Map;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p11;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/p11;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/p11;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/p11;->b:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/p11;->c:Ljava/util/Map;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p11;->d:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/p11;->a:J

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/p11;->b:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/p11;->c:Ljava/util/Map;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p11;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MobileAdsNetworkResponseLog(timestamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", statusCode="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", headers="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", body="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
