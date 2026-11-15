.class public final Lcom/yandex/mobile/ads/impl/hk1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/hk1$a;,
        Lcom/yandex/mobile/ads/impl/hk1$b;
    }
.end annotation

.annotation runtime Lld9;
.end annotation


# static fields
.field public static final Companion:Lcom/yandex/mobile/ads/impl/hk1$b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/mobile/ads/impl/lk1;

.field private final c:Lcom/yandex/mobile/ads/impl/uk1;

.field private final d:Lcom/yandex/mobile/ads/impl/sk1;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/hk1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/hk1$b;-><init>(I)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/hk1;->Companion:Lcom/yandex/mobile/ads/impl/hk1$b;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/yandex/mobile/ads/impl/lk1;Lcom/yandex/mobile/ads/impl/uk1;Lcom/yandex/mobile/ads/impl/sk1;Ljava/lang/String;)V
    .locals 2

    and-int/lit8 v0, p1, 0x1f

    const/16 v1, 0x1f

    if-eq v1, v0, :cond_0

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/hk1$a;->a:Lcom/yandex/mobile/ads/impl/hk1$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/hk1$a;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lbc8;->a(IILkotlinx/serialization/descriptors/a;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hk1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/hk1;->b:Lcom/yandex/mobile/ads/impl/lk1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/hk1;->c:Lcom/yandex/mobile/ads/impl/uk1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/hk1;->d:Lcom/yandex/mobile/ads/impl/sk1;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/hk1;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/lk1;Lcom/yandex/mobile/ads/impl/uk1;Lcom/yandex/mobile/ads/impl/sk1;Ljava/lang/String;)V
    .locals 1

    .line 2
    const-string v0, "adapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hk1;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hk1;->b:Lcom/yandex/mobile/ads/impl/lk1;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/hk1;->c:Lcom/yandex/mobile/ads/impl/uk1;

    .line 7
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/hk1;->d:Lcom/yandex/mobile/ads/impl/sk1;

    .line 8
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/hk1;->e:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/hk1;Lid1;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hk1;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lid1;->p(Lkotlinx/serialization/descriptors/a;ILjava/lang/String;)V

    sget-object v0, Lcom/yandex/mobile/ads/impl/lk1$a;->a:Lcom/yandex/mobile/ads/impl/lk1$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hk1;->b:Lcom/yandex/mobile/ads/impl/lk1;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lid1;->h(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    sget-object v0, Lcom/yandex/mobile/ads/impl/uk1$a;->a:Lcom/yandex/mobile/ads/impl/uk1$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hk1;->c:Lcom/yandex/mobile/ads/impl/uk1;

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Lid1;->h(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    sget-object v0, Lcom/yandex/mobile/ads/impl/sk1$a;->a:Lcom/yandex/mobile/ads/impl/sk1$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hk1;->d:Lcom/yandex/mobile/ads/impl/sk1;

    const/4 v2, 0x3

    invoke-interface {p1, p2, v2, v0, v1}, Lid1;->q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    sget-object v0, Lc0a;->a:Lc0a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hk1;->e:Ljava/lang/String;

    const/4 v1, 0x4

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
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/hk1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/hk1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hk1;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/hk1;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hk1;->b:Lcom/yandex/mobile/ads/impl/lk1;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/hk1;->b:Lcom/yandex/mobile/ads/impl/lk1;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hk1;->c:Lcom/yandex/mobile/ads/impl/uk1;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/hk1;->c:Lcom/yandex/mobile/ads/impl/uk1;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hk1;->d:Lcom/yandex/mobile/ads/impl/sk1;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/hk1;->d:Lcom/yandex/mobile/ads/impl/sk1;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hk1;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/hk1;->e:Ljava/lang/String;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hk1;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hk1;->b:Lcom/yandex/mobile/ads/impl/lk1;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/lk1;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hk1;->c:Lcom/yandex/mobile/ads/impl/uk1;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/uk1;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hk1;->d:Lcom/yandex/mobile/ads/impl/sk1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hk1;->e:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hk1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hk1;->b:Lcom/yandex/mobile/ads/impl/lk1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hk1;->c:Lcom/yandex/mobile/ads/impl/uk1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/hk1;->d:Lcom/yandex/mobile/ads/impl/sk1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hk1;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PrefetchedMediationInfo(adapter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", networkWinner="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", revenue="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", result="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", networkAdInfo="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
