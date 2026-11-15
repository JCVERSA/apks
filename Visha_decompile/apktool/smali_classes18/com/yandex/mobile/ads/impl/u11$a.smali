.class public final Lcom/yandex/mobile/ads/impl/u11$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lod4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/u11;
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
.field public static final a:Lcom/yandex/mobile/ads/impl/u11$a;

.field private static final synthetic b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/yandex/mobile/ads/impl/u11$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/u11$a;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/u11$a;->a:Lcom/yandex/mobile/ads/impl/u11$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.monetization.ads.utils.logger.model.MobileAdsSdkLog"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lod4;I)V

    const-string v0, "timestamp"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "type"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "tag"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "text"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/yandex/mobile/ads/impl/u11$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lef5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lef5;"
        }
    .end annotation

    const/4 p0, 0x4

    new-array p0, p0, [Lef5;

    sget-object v0, Lkr5;->a:Lkr5;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lc0a;->a:Lc0a;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const/4 v1, 0x3

    aput-object v0, p0, v1

    return-object p0
.end method

.method public final deserialize(Lhu1;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/yandex/mobile/ads/impl/u11$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    invoke-interface {v0, v1}, Lhu1;->b(Lkotlinx/serialization/descriptors/a;)Lfd1;

    move-result-object v0

    invoke-interface {v0}, Lfd1;->j()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0, v1, v6}, Lfd1;->e(Lkotlinx/serialization/descriptors/a;I)J

    move-result-wide v6

    invoke-interface {v0, v1, v5}, Lfd1;->i(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v4}, Lfd1;->i(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v3}, Lfd1;->i(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xf

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v18, v4

    move v14, v5

    move-wide v15, v6

    goto :goto_1

    :cond_0
    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    move v12, v5

    move v9, v6

    move-wide v10, v7

    move-object v7, v2

    move-object v8, v7

    :goto_0
    if-eqz v12, :cond_6

    invoke-interface {v0, v1}, Lfd1;->v(Lkotlinx/serialization/descriptors/a;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_5

    if-eqz v13, :cond_4

    if-eq v13, v5, :cond_3

    if-eq v13, v4, :cond_2

    if-ne v13, v3, :cond_1

    invoke-interface {v0, v1, v3}, Lfd1;->i(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;

    move-result-object v7

    or-int/lit8 v9, v9, 0x8

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v13}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :cond_2
    invoke-interface {v0, v1, v4}, Lfd1;->i(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;

    move-result-object v8

    or-int/lit8 v9, v9, 0x4

    goto :goto_0

    :cond_3
    invoke-interface {v0, v1, v5}, Lfd1;->i(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;

    move-result-object v2

    or-int/lit8 v9, v9, 0x2

    goto :goto_0

    :cond_4
    invoke-interface {v0, v1, v6}, Lfd1;->e(Lkotlinx/serialization/descriptors/a;I)J

    move-result-wide v10

    or-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    move v12, v6

    goto :goto_0

    :cond_6
    move-object/from16 v17, v2

    move-object/from16 v19, v7

    move-object/from16 v18, v8

    move v14, v9

    move-wide v15, v10

    :goto_1
    invoke-interface {v0, v1}, Lfd1;->c(Lkotlinx/serialization/descriptors/a;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/u11;

    move-object v13, v0

    invoke-direct/range {v13 .. v19}, Lcom/yandex/mobile/ads/impl/u11;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    sget-object p0, Lcom/yandex/mobile/ads/impl/u11$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object p0
.end method

.method public final serialize(Lca3;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/yandex/mobile/ads/impl/u11;

    const-string p0, "encoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/yandex/mobile/ads/impl/u11$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    invoke-interface {p1, p0}, Lca3;->b(Lkotlinx/serialization/descriptors/a;)Lid1;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/yandex/mobile/ads/impl/u11;->a(Lcom/yandex/mobile/ads/impl/u11;Lid1;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V

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
