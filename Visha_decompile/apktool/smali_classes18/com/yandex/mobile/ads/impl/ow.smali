.class public final Lcom/yandex/mobile/ads/impl/ow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ow$a;,
        Lcom/yandex/mobile/ads/impl/ow$b;
    }
.end annotation

.annotation runtime Lld9;
.end annotation


# static fields
.field public static final Companion:Lcom/yandex/mobile/ads/impl/ow$b;

.field private static final g:[Lef5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lef5;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ny;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Lcom/yandex/mobile/ads/impl/my;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ly;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/yandex/mobile/ads/impl/ow$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/ow$b;-><init>(I)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/ow;->Companion:Lcom/yandex/mobile/ads/impl/ow$b;

    new-instance v0, Lzg;

    sget-object v2, Lcom/yandex/mobile/ads/impl/ny$a;->a:Lcom/yandex/mobile/ads/impl/ny$a;

    invoke-direct {v0, v2}, Lzg;-><init>(Lef5;)V

    new-instance v2, Lzg;

    sget-object v3, Lcom/yandex/mobile/ads/impl/ly$a;->a:Lcom/yandex/mobile/ads/impl/ly$a;

    invoke-direct {v2, v3}, Lzg;-><init>(Lef5;)V

    const/4 v3, 0x6

    new-array v3, v3, [Lef5;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const/4 v0, 0x3

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    aput-object v2, v3, v0

    sput-object v3, Lcom/yandex/mobile/ads/impl/ow;->g:[Lef5;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/my;Ljava/util/List;)V
    .locals 2

    and-int/lit8 v0, p1, 0x36

    const/16 v1, 0x36

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/yandex/mobile/ads/impl/ow$a;->a:Lcom/yandex/mobile/ads/impl/ow$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ow$a;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lbc8;->a(IILkotlinx/serialization/descriptors/a;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/ow;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ow;->a:Ljava/lang/String;

    :goto_0
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ow;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ow;->c:Ljava/util/List;

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_2

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/ow;->d:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ow;->d:Ljava/lang/String;

    :goto_1
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/ow;->e:Lcom/yandex/mobile/ads/impl/my;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/ow;->f:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/ow;Lid1;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/ow;->g:[Lef5;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lid1;->r(Lkotlinx/serialization/descriptors/a;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ow;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    :goto_0
    sget-object v2, Lc0a;->a:Lc0a;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ow;->a:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lid1;->h(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ow;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v1}, Lid1;->p(Lkotlinx/serialization/descriptors/a;ILjava/lang/String;)V

    const/4 v1, 0x2

    aget-object v2, v0, v1

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ow;->c:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lid1;->q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lid1;->r(Lkotlinx/serialization/descriptors/a;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ow;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_1
    sget-object v2, Lc0a;->a:Lc0a;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ow;->d:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lid1;->h(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    :cond_3
    sget-object v1, Lcom/yandex/mobile/ads/impl/my$a;->a:Lcom/yandex/mobile/ads/impl/my$a;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ow;->e:Lcom/yandex/mobile/ads/impl/my;

    const/4 v3, 0x4

    invoke-interface {p1, p2, v3, v1, v2}, Lid1;->h(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ow;->f:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, p0}, Lid1;->q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic a()[Lef5;
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/mobile/ads/impl/ow;->g:[Lef5;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ly;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ow;->f:Ljava/util/List;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/my;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ow;->e:Lcom/yandex/mobile/ads/impl/my;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ow;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ow;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/ow;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/ow;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ow;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ow;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ow;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ow;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ow;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ow;->c:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ow;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ow;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ow;->e:Lcom/yandex/mobile/ads/impl/my;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ow;->e:Lcom/yandex/mobile/ads/impl/my;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ow;->f:Ljava/util/List;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/ow;->f:Ljava/util/List;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ny;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ow;->c:Ljava/util/List;

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ow;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ow;->b:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/yandex/mobile/ads/impl/v3;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ow;->c:Ljava/util/List;

    invoke-static {v3, v0, v2}, Lcom/yandex/mobile/ads/impl/aa;->a(Ljava/util/List;II)I

    move-result v0

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ow;->d:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ow;->e:Lcom/yandex/mobile/ads/impl/my;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/my;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ow;->f:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ow;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ow;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ow;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ow;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ow;->e:Lcom/yandex/mobile/ads/impl/my;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ow;->f:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DebugPanelAdUnitWaterfallMediation(adapter="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", networkName="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", waterfallParameters="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", networkAdUnitIdName="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", currency="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", cpmFloors="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
