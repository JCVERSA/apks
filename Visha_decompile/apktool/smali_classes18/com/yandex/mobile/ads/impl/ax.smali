.class public final Lcom/yandex/mobile/ads/impl/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ax$a;,
        Lcom/yandex/mobile/ads/impl/ax$b;
    }
.end annotation

.annotation runtime Lld9;
.end annotation


# static fields
.field public static final Companion:Lcom/yandex/mobile/ads/impl/ax$b;


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/Boolean;

.field private final c:Ljava/lang/Boolean;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/ax$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/ax$b;-><init>(I)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/ax;->Companion:Lcom/yandex/mobile/ads/impl/ax$b;

    return-void
.end method

.method public synthetic constructor <init>(IZLjava/lang/Boolean;Ljava/lang/Boolean;Z)V
    .locals 2

    and-int/lit8 v0, p1, 0xf

    const/16 v1, 0xf

    if-eq v1, v0, :cond_0

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/ax$a;->a:Lcom/yandex/mobile/ads/impl/ax$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ax$a;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lbc8;->a(IILkotlinx/serialization/descriptors/a;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/yandex/mobile/ads/impl/ax;->a:Z

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ax;->b:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ax;->c:Ljava/lang/Boolean;

    iput-boolean p5, p0, Lcom/yandex/mobile/ads/impl/ax;->d:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Boolean;Ljava/lang/Boolean;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/ax;->a:Z

    .line 4
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ax;->b:Ljava/lang/Boolean;

    .line 5
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ax;->c:Ljava/lang/Boolean;

    .line 6
    iput-boolean p4, p0, Lcom/yandex/mobile/ads/impl/ax;->d:Z

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/ax;Lid1;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ax;->a:Z

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lid1;->o(Lkotlinx/serialization/descriptors/a;IZ)V

    sget-object v0, Lbi0;->a:Lbi0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ax;->b:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lid1;->h(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ax;->c:Ljava/lang/Boolean;

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Lid1;->h(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/ax;->d:Z

    const/4 v0, 0x3

    invoke-interface {p1, p2, v0, p0}, Lid1;->o(Lkotlinx/serialization/descriptors/a;IZ)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ax;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/ax;->d:Z

    return p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/ax;->a:Z

    return p0
.end method

.method public final d()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ax;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/ax;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/ax;

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/ax;->a:Z

    iget-boolean v3, p1, Lcom/yandex/mobile/ads/impl/ax;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ax;->b:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ax;->b:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ax;->c:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ax;->c:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/ax;->d:Z

    iget-boolean p1, p1, Lcom/yandex/mobile/ads/impl/ax;->d:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ax;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ax;->b:Ljava/lang/Boolean;

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

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ax;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/ax;->d:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ax;->a:Z

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ax;->b:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ax;->c:Ljava/lang/Boolean;

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/ax;->d:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DebugPanelConsentsData(hasLocationConsent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", ageRestrictedUser="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", hasUserConsent="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", hasCmpValue="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
