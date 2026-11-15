.class public final Lcom/yandex/mobile/ads/impl/yx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/yx$a;,
        Lcom/yandex/mobile/ads/impl/yx$b;
    }
.end annotation

.annotation runtime Lld9;
.end annotation


# static fields
.field public static final Companion:Lcom/yandex/mobile/ads/impl/yx$b;

.field private static final d:[Lef5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lef5;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/yandex/mobile/ads/impl/yx$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/yx$b;-><init>(I)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/yx;->Companion:Lcom/yandex/mobile/ads/impl/yx$b;

    new-instance v0, Lzg;

    sget-object v2, Lc0a;->a:Lc0a;

    invoke-direct {v0, v2}, Lzg;-><init>(Lef5;)V

    const/4 v2, 0x3

    new-array v2, v2, [Lef5;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object v3, v2, v1

    const/4 v1, 0x2

    aput-object v0, v2, v1

    sput-object v2, Lcom/yandex/mobile/ads/impl/yx;->d:[Lef5;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZLjava/util/List;)V
    .locals 2

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x7

    if-eq v1, v0, :cond_0

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/yx$a;->a:Lcom/yandex/mobile/ads/impl/yx$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/yx$a;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lbc8;->a(IILkotlinx/serialization/descriptors/a;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yx;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/yandex/mobile/ads/impl/yx;->b:Z

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/yx;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ZLjava/util/List;)V
    .locals 2

    .line 2
    const-string v0, "version"

    const-string v1, "7.12.2"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "integrationMessages"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/yx;->a:Ljava/lang/String;

    .line 5
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/yx;->b:Z

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yx;->c:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/yx;Lid1;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/yx;->d:[Lef5;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/yx;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lid1;->p(Lkotlinx/serialization/descriptors/a;ILjava/lang/String;)V

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/yx;->b:Z

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v1}, Lid1;->o(Lkotlinx/serialization/descriptors/a;IZ)V

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yx;->c:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, p0}, Lid1;->q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic a()[Lef5;
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/mobile/ads/impl/yx;->d:[Lef5;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yx;->c:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yx;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/yx;->b:Z

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/yx;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/yx;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/yx;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/yx;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/yx;->b:Z

    iget-boolean v3, p1, Lcom/yandex/mobile/ads/impl/yx;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yx;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/yx;->c:Ljava/util/List;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yx;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/yandex/mobile/ads/impl/yx;->b:Z

    invoke-static {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/a7;->a(ZII)I

    move-result v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yx;->c:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/yx;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/yx;->b:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yx;->c:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DebugPanelSdkData(version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isIntegratedSuccess="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", integrationMessages="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
