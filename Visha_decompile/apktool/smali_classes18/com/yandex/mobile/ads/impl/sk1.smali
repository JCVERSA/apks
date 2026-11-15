.class public final Lcom/yandex/mobile/ads/impl/sk1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/sk1$a;,
        Lcom/yandex/mobile/ads/impl/sk1$b;
    }
.end annotation

.annotation runtime Lld9;
.end annotation


# static fields
.field public static final Companion:Lcom/yandex/mobile/ads/impl/sk1$b;

.field private static final d:[Lef5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lef5;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/tk1;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/mobile/ads/impl/sk1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/sk1$b;-><init>(I)V

    sput-object v0, Lcom/yandex/mobile/ads/impl/sk1;->Companion:Lcom/yandex/mobile/ads/impl/sk1$b;

    sget-object v0, Lcom/yandex/mobile/ads/impl/tk1;->Companion:Lcom/yandex/mobile/ads/impl/tk1$b;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tk1$b;->serializer()Lef5;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Lef5;

    aput-object v0, v2, v1

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const/4 v1, 0x2

    aput-object v0, v2, v1

    sput-object v2, Lcom/yandex/mobile/ads/impl/sk1;->d:[Lef5;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/yandex/mobile/ads/impl/tk1;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x7

    if-eq v1, v0, :cond_0

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/sk1$a;->a:Lcom/yandex/mobile/ads/impl/sk1$a;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/sk1$a;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lbc8;->a(IILkotlinx/serialization/descriptors/a;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sk1;->a:Lcom/yandex/mobile/ads/impl/tk1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/sk1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/sk1;->c:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/tk1;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 2
    const-string v0, "status"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sk1;->a:Lcom/yandex/mobile/ads/impl/tk1;

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sk1;->b:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/sk1;->c:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/sk1;Lid1;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/yandex/mobile/ads/impl/sk1;->d:[Lef5;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/sk1;->a:Lcom/yandex/mobile/ads/impl/tk1;

    invoke-interface {p1, p2, v1, v0, v2}, Lid1;->q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    sget-object v0, Lc0a;->a:Lc0a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sk1;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lid1;->h(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    sget-object v0, Lv15;->a:Lv15;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sk1;->c:Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-interface {p1, p2, v1, v0, p0}, Lid1;->h(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic a()[Lef5;
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/mobile/ads/impl/sk1;->d:[Lef5;

    return-object v0
.end method
