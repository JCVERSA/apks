.class public final Lcom/yandex/mobile/ads/impl/qz0$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lod4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/qz0$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lod4;"
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/mobile/ads/impl/qz0$c$a;

.field private static final synthetic b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/yandex/mobile/ads/impl/qz0$c$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/qz0$c$a;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/qz0$c$a;->a:Lcom/yandex/mobile/ads/impl/qz0$c$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.monetization.ads.core.initializer.validation.adapters.MediationNetworkData.MediationAdapterData"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lod4;I)V

    const-string v0, "format"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "version"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isIntegrated"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/yandex/mobile/ads/impl/qz0$c$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lef5;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lef5;"
        }
    .end annotation

    sget-object p0, Lc0a;->a:Lc0a;

    invoke-static {p0}, Lqn0;->t(Lef5;)Lef5;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lef5;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object v0, v1, p0

    sget-object p0, Lbi0;->a:Lbi0;

    const/4 v0, 0x2

    aput-object p0, v1, v0

    return-object v1
.end method

.method public final deserialize(Lhu1;)Ljava/lang/Object;
    .locals 10

    const-string p0, "decoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/yandex/mobile/ads/impl/qz0$c$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    invoke-interface {p1, p0}, Lhu1;->b(Lkotlinx/serialization/descriptors/a;)Lfd1;

    move-result-object p1

    invoke-interface {p1}, Lfd1;->j()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0, v3}, Lfd1;->i(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lc0a;->a:Lc0a;

    invoke-interface {p1, p0, v2, v3, v4}, Lfd1;->r(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Lfd1;->D(Lkotlinx/serialization/descriptors/a;I)Z

    move-result v1

    const/4 v3, 0x7

    goto :goto_1

    :cond_0
    move v7, v2

    move v0, v3

    move-object v5, v4

    move-object v6, v5

    move v4, v0

    :goto_0
    if-eqz v7, :cond_5

    invoke-interface {p1, p0}, Lfd1;->v(Lkotlinx/serialization/descriptors/a;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    if-eqz v8, :cond_3

    if-eq v8, v2, :cond_2

    if-ne v8, v1, :cond_1

    invoke-interface {p1, p0, v1}, Lfd1;->D(Lkotlinx/serialization/descriptors/a;I)Z

    move-result v0

    or-int/lit8 v4, v4, 0x4

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p0, v8}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw p0

    :cond_2
    sget-object v8, Lc0a;->a:Lc0a;

    invoke-interface {p1, p0, v2, v8, v6}, Lfd1;->r(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    or-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_3
    invoke-interface {p1, p0, v3}, Lfd1;->i(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;

    move-result-object v5

    or-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move v7, v3

    goto :goto_0

    :cond_5
    move v1, v0

    move v3, v4

    move-object v0, v5

    move-object v2, v6

    :goto_1
    invoke-interface {p1, p0}, Lfd1;->c(Lkotlinx/serialization/descriptors/a;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/qz0$c;

    invoke-direct {p0, v3, v0, v2, v1}, Lcom/yandex/mobile/ads/impl/qz0$c;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    sget-object p0, Lcom/yandex/mobile/ads/impl/qz0$c$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object p0
.end method

.method public final serialize(Lca3;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/yandex/mobile/ads/impl/qz0$c;

    const-string p0, "encoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/yandex/mobile/ads/impl/qz0$c$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    invoke-interface {p1, p0}, Lca3;->b(Lkotlinx/serialization/descriptors/a;)Lid1;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/yandex/mobile/ads/impl/qz0$c;->a(Lcom/yandex/mobile/ads/impl/qz0$c;Lid1;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V

    invoke-interface {p1, p0}, Lid1;->c(Lkotlinx/serialization/descriptors/a;)V

    return-void
.end method

.method public final typeParametersSerializers()[Lef5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lef5;"
        }
    .end annotation

    invoke-static {p0}, Lod4$a;->a(Lod4;)[Lef5;

    move-result-object p0

    return-object p0
.end method
