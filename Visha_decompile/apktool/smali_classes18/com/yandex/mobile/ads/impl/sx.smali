.class public final Lcom/yandex/mobile/ads/impl/sx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/sx$a;,
        Lcom/yandex/mobile/ads/impl/sx$b;
    }
.end annotation

.annotation runtime Lld9;
.end annotation


# static fields
.field public static final Companion:Lcom/yandex/mobile/ads/impl/sx$b;

.field private static final g:[Lef5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lef5;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/xw;

.field private final b:Lcom/yandex/mobile/ads/impl/yx;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/qz0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/ax;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/u11;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/m11;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/yandex/mobile/ads/impl/sx$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/sx$b;-><init>(I)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/sx;->Companion:Lcom/yandex/mobile/ads/impl/sx$b;

    new-instance v0, Lzg;

    sget-object v2, Lcom/yandex/mobile/ads/impl/qz0$a;->a:Lcom/yandex/mobile/ads/impl/qz0$a;

    invoke-direct {v0, v2}, Lzg;-><init>(Lef5;)V

    new-instance v2, Lzg;

    sget-object v3, Lcom/yandex/mobile/ads/impl/u11$a;->a:Lcom/yandex/mobile/ads/impl/u11$a;

    invoke-direct {v2, v3}, Lzg;-><init>(Lef5;)V

    new-instance v3, Lzg;

    sget-object v4, Lcom/yandex/mobile/ads/impl/m11$a;->a:Lcom/yandex/mobile/ads/impl/m11$a;

    invoke-direct {v3, v4}, Lzg;-><init>(Lef5;)V

    const/4 v4, 0x6

    new-array v4, v4, [Lef5;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object v5, v4, v1

    const/4 v1, 0x2

    aput-object v0, v4, v1

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v2, v4, v0

    const/4 v0, 0x5

    aput-object v3, v4, v0

    sput-object v4, Lcom/yandex/mobile/ads/impl/sx;->g:[Lef5;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/yandex/mobile/ads/impl/xw;Lcom/yandex/mobile/ads/impl/yx;Ljava/util/List;Lcom/yandex/mobile/ads/impl/ax;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    and-int/lit8 v0, p1, 0x3f

    const/16 v1, 0x3f

    if-eq v1, v0, :cond_0

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/sx$a;->a:Lcom/yandex/mobile/ads/impl/sx$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/sx$a;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lbc8;->a(IILkotlinx/serialization/descriptors/a;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sx;->a:Lcom/yandex/mobile/ads/impl/xw;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/sx;->b:Lcom/yandex/mobile/ads/impl/yx;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/sx;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/sx;->d:Lcom/yandex/mobile/ads/impl/ax;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/sx;->e:Ljava/util/List;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/sx;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/xw;Lcom/yandex/mobile/ads/impl/yx;Ljava/util/List;Lcom/yandex/mobile/ads/impl/ax;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/xw;",
            "Lcom/yandex/mobile/ads/impl/yx;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/qz0;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/ax;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/u11;",
            ">;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/m11;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "appData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networksData"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentsData"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkLogs"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkLogs"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sx;->a:Lcom/yandex/mobile/ads/impl/xw;

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sx;->b:Lcom/yandex/mobile/ads/impl/yx;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/sx;->c:Ljava/util/List;

    .line 7
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/sx;->d:Lcom/yandex/mobile/ads/impl/ax;

    .line 8
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/sx;->e:Ljava/util/List;

    .line 9
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/sx;->f:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/sx;Lid1;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/sx;->g:[Lef5;

    sget-object v1, Lcom/yandex/mobile/ads/impl/xw$a;->a:Lcom/yandex/mobile/ads/impl/xw$a;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/sx;->a:Lcom/yandex/mobile/ads/impl/xw;

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lid1;->q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    sget-object v1, Lcom/yandex/mobile/ads/impl/yx$a;->a:Lcom/yandex/mobile/ads/impl/yx$a;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/sx;->b:Lcom/yandex/mobile/ads/impl/yx;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1, v2}, Lid1;->q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object v2, v0, v1

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/sx;->c:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lid1;->q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    sget-object v1, Lcom/yandex/mobile/ads/impl/ax$a;->a:Lcom/yandex/mobile/ads/impl/ax$a;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/sx;->d:Lcom/yandex/mobile/ads/impl/ax;

    const/4 v3, 0x3

    invoke-interface {p1, p2, v3, v1, v2}, Lid1;->q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    const/4 v1, 0x4

    aget-object v2, v0, v1

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/sx;->e:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lid1;->q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sx;->f:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, p0}, Lid1;->q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic a()[Lef5;
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/mobile/ads/impl/sx;->g:[Lef5;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/sx;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/sx;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sx;->a:Lcom/yandex/mobile/ads/impl/xw;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/sx;->a:Lcom/yandex/mobile/ads/impl/xw;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sx;->b:Lcom/yandex/mobile/ads/impl/yx;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/sx;->b:Lcom/yandex/mobile/ads/impl/yx;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sx;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/sx;->c:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sx;->d:Lcom/yandex/mobile/ads/impl/ax;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/sx;->d:Lcom/yandex/mobile/ads/impl/ax;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sx;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/sx;->e:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sx;->f:Ljava/util/List;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/sx;->f:Ljava/util/List;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sx;->a:Lcom/yandex/mobile/ads/impl/xw;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/xw;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/sx;->b:Lcom/yandex/mobile/ads/impl/yx;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/yx;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sx;->c:Ljava/util/List;

    invoke-static {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/aa;->a(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/sx;->d:Lcom/yandex/mobile/ads/impl/ax;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ax;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sx;->e:Ljava/util/List;

    invoke-static {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/aa;->a(Ljava/util/List;II)I

    move-result v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sx;->f:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sx;->a:Lcom/yandex/mobile/ads/impl/xw;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sx;->b:Lcom/yandex/mobile/ads/impl/yx;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/sx;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/sx;->d:Lcom/yandex/mobile/ads/impl/ax;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/sx;->e:Ljava/util/List;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sx;->f:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DebugPanelReportData(appData="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sdkData="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", networksData="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", consentsData="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sdkLogs="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", networkLogs="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
