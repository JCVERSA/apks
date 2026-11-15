.class public final Lcom/yandex/mobile/ads/impl/m11$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lod4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/m11;
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
.field public static final a:Lcom/yandex/mobile/ads/impl/m11$a;

.field private static final synthetic b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/yandex/mobile/ads/impl/m11$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/m11$a;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/m11$a;->a:Lcom/yandex/mobile/ads/impl/m11$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.monetization.ads.utils.logger.model.MobileAdsNetworkLog"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lod4;I)V

    const-string v0, "request"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "response"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/yandex/mobile/ads/impl/m11$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

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

    sget-object p0, Lcom/yandex/mobile/ads/impl/p11$a;->a:Lcom/yandex/mobile/ads/impl/p11$a;

    invoke-static {p0}, Lqn0;->t(Lef5;)Lef5;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Lef5;

    sget-object v1, Lcom/yandex/mobile/ads/impl/o11$a;->a:Lcom/yandex/mobile/ads/impl/o11$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    return-object v0
.end method

.method public final deserialize(Lhu1;)Ljava/lang/Object;
    .locals 8

    const-string p0, "decoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/yandex/mobile/ads/impl/m11$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    invoke-interface {p1, p0}, Lhu1;->b(Lkotlinx/serialization/descriptors/a;)Lfd1;

    move-result-object p1

    invoke-interface {p1}, Lfd1;->j()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yandex/mobile/ads/impl/o11$a;->a:Lcom/yandex/mobile/ads/impl/o11$a;

    invoke-interface {p1, p0, v2, v0, v3}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/o11;

    sget-object v2, Lcom/yandex/mobile/ads/impl/p11$a;->a:Lcom/yandex/mobile/ads/impl/p11$a;

    invoke-interface {p1, p0, v1, v2, v3}, Lfd1;->r(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/p11;

    const/4 v2, 0x3

    goto :goto_1

    :cond_0
    move v5, v1

    move v0, v2

    move-object v4, v3

    :goto_0
    if-eqz v5, :cond_4

    invoke-interface {p1, p0}, Lfd1;->v(Lkotlinx/serialization/descriptors/a;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    if-eqz v6, :cond_2

    if-ne v6, v1, :cond_1

    sget-object v6, Lcom/yandex/mobile/ads/impl/p11$a;->a:Lcom/yandex/mobile/ads/impl/p11$a;

    invoke-interface {p1, p0, v1, v6, v4}, Lfd1;->r(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/p11;

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p0, v6}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw p0

    :cond_2
    sget-object v6, Lcom/yandex/mobile/ads/impl/o11$a;->a:Lcom/yandex/mobile/ads/impl/o11$a;

    invoke-interface {p1, p0, v2, v6, v3}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/o11;

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v5, v2

    goto :goto_0

    :cond_4
    move v2, v0

    move-object v0, v3

    move-object v1, v4

    :goto_1
    invoke-interface {p1, p0}, Lfd1;->c(Lkotlinx/serialization/descriptors/a;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/m11;

    invoke-direct {p0, v2, v0, v1}, Lcom/yandex/mobile/ads/impl/m11;-><init>(ILcom/yandex/mobile/ads/impl/o11;Lcom/yandex/mobile/ads/impl/p11;)V

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    sget-object p0, Lcom/yandex/mobile/ads/impl/m11$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object p0
.end method

.method public final serialize(Lca3;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/yandex/mobile/ads/impl/m11;

    const-string p0, "encoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/yandex/mobile/ads/impl/m11$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    invoke-interface {p1, p0}, Lca3;->b(Lkotlinx/serialization/descriptors/a;)Lid1;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/yandex/mobile/ads/impl/m11;->a(Lcom/yandex/mobile/ads/impl/m11;Lid1;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V

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
