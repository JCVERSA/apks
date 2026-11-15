.class public final Lcom/yandex/mobile/ads/impl/hk1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lod4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/hk1;
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
.field public static final a:Lcom/yandex/mobile/ads/impl/hk1$a;

.field private static final synthetic b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/yandex/mobile/ads/impl/hk1$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/hk1$a;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/hk1$a;->a:Lcom/yandex/mobile/ads/impl/hk1$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.monetization.ads.base.model.mediation.prefetch.PrefetchedMediationInfo"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lod4;I)V

    const-string v0, "adapter"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "network_winner"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "revenue"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "result"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "network_ad_info"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/yandex/mobile/ads/impl/hk1$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lef5;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lef5;"
        }
    .end annotation

    sget-object p0, Lc0a;->a:Lc0a;

    sget-object v0, Lcom/yandex/mobile/ads/impl/lk1$a;->a:Lcom/yandex/mobile/ads/impl/lk1$a;

    invoke-static {v0}, Lqn0;->t(Lef5;)Lef5;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/uk1$a;->a:Lcom/yandex/mobile/ads/impl/uk1$a;

    invoke-static {v1}, Lqn0;->t(Lef5;)Lef5;

    move-result-object v1

    invoke-static {p0}, Lqn0;->t(Lef5;)Lef5;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Lef5;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object v0, v3, p0

    const/4 p0, 0x2

    aput-object v1, v3, p0

    sget-object p0, Lcom/yandex/mobile/ads/impl/sk1$a;->a:Lcom/yandex/mobile/ads/impl/sk1$a;

    const/4 v0, 0x3

    aput-object p0, v3, v0

    const/4 p0, 0x4

    aput-object v2, v3, p0

    return-object v3
.end method

.method public final deserialize(Lhu1;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/yandex/mobile/ads/impl/hk1$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    invoke-interface {v0, v1}, Lhu1;->b(Lkotlinx/serialization/descriptors/a;)Lfd1;

    move-result-object v0

    invoke-interface {v0}, Lfd1;->j()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0, v1, v7}, Lfd1;->i(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lcom/yandex/mobile/ads/impl/lk1$a;->a:Lcom/yandex/mobile/ads/impl/lk1$a;

    invoke-interface {v0, v1, v6, v7, v8}, Lfd1;->r(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yandex/mobile/ads/impl/lk1;

    sget-object v7, Lcom/yandex/mobile/ads/impl/uk1$a;->a:Lcom/yandex/mobile/ads/impl/uk1$a;

    invoke-interface {v0, v1, v5, v7, v8}, Lfd1;->r(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/mobile/ads/impl/uk1;

    sget-object v7, Lcom/yandex/mobile/ads/impl/sk1$a;->a:Lcom/yandex/mobile/ads/impl/sk1$a;

    invoke-interface {v0, v1, v3, v7, v8}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/sk1;

    sget-object v7, Lc0a;->a:Lc0a;

    invoke-interface {v0, v1, v4, v7, v8}, Lfd1;->r(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x1f

    move-object/from16 v16, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move v15, v7

    goto/16 :goto_1

    :cond_0
    move v13, v6

    move v2, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    :goto_0
    if-eqz v13, :cond_7

    invoke-interface {v0, v1}, Lfd1;->v(Lkotlinx/serialization/descriptors/a;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_6

    if-eqz v14, :cond_5

    if-eq v14, v6, :cond_4

    if-eq v14, v5, :cond_3

    if-eq v14, v3, :cond_2

    if-ne v14, v4, :cond_1

    sget-object v14, Lc0a;->a:Lc0a;

    invoke-interface {v0, v1, v4, v14, v12}, Lfd1;->r(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    or-int/lit8 v2, v2, 0x10

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v14}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :cond_2
    sget-object v14, Lcom/yandex/mobile/ads/impl/sk1$a;->a:Lcom/yandex/mobile/ads/impl/sk1$a;

    invoke-interface {v0, v1, v3, v14, v11}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/yandex/mobile/ads/impl/sk1;

    or-int/lit8 v2, v2, 0x8

    goto :goto_0

    :cond_3
    sget-object v14, Lcom/yandex/mobile/ads/impl/uk1$a;->a:Lcom/yandex/mobile/ads/impl/uk1$a;

    invoke-interface {v0, v1, v5, v14, v10}, Lfd1;->r(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/yandex/mobile/ads/impl/uk1;

    or-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_4
    sget-object v14, Lcom/yandex/mobile/ads/impl/lk1$a;->a:Lcom/yandex/mobile/ads/impl/lk1$a;

    invoke-interface {v0, v1, v6, v14, v9}, Lfd1;->r(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/yandex/mobile/ads/impl/lk1;

    or-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_5
    invoke-interface {v0, v1, v7}, Lfd1;->i(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;

    move-result-object v8

    or-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    move v13, v7

    goto :goto_0

    :cond_7
    move v15, v2

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    :goto_1
    invoke-interface {v0, v1}, Lfd1;->c(Lkotlinx/serialization/descriptors/a;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/hk1;

    move-object v14, v0

    invoke-direct/range {v14 .. v20}, Lcom/yandex/mobile/ads/impl/hk1;-><init>(ILjava/lang/String;Lcom/yandex/mobile/ads/impl/lk1;Lcom/yandex/mobile/ads/impl/uk1;Lcom/yandex/mobile/ads/impl/sk1;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    sget-object p0, Lcom/yandex/mobile/ads/impl/hk1$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object p0
.end method

.method public final serialize(Lca3;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/yandex/mobile/ads/impl/hk1;

    const-string p0, "encoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/yandex/mobile/ads/impl/hk1$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    invoke-interface {p1, p0}, Lca3;->b(Lkotlinx/serialization/descriptors/a;)Lid1;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/yandex/mobile/ads/impl/hk1;->a(Lcom/yandex/mobile/ads/impl/hk1;Lid1;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V

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
