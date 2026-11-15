.class public final Lcom/yandex/mobile/ads/impl/sx$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lod4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/sx;
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
.field public static final a:Lcom/yandex/mobile/ads/impl/sx$a;

.field private static final synthetic b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/yandex/mobile/ads/impl/sx$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/sx$a;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/sx$a;->a:Lcom/yandex/mobile/ads/impl/sx$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.yandex.mobile.ads.features.debugpanel.data.model.DebugPanelReportData"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lod4;I)V

    const-string v0, "app_data"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "sdk_data"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "adapters_data"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "consents_data"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "sdk_logs"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "network_logs"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/yandex/mobile/ads/impl/sx$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lef5;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lef5;"
        }
    .end annotation

    invoke-static {}, Lcom/yandex/mobile/ads/impl/sx;->a()[Lef5;

    move-result-object p0

    const/4 v0, 0x2

    aget-object v1, p0, v0

    const/4 v2, 0x4

    aget-object v3, p0, v2

    const/4 v4, 0x5

    aget-object p0, p0, v4

    const/4 v5, 0x6

    new-array v5, v5, [Lef5;

    sget-object v6, Lcom/yandex/mobile/ads/impl/xw$a;->a:Lcom/yandex/mobile/ads/impl/xw$a;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/yandex/mobile/ads/impl/yx$a;->a:Lcom/yandex/mobile/ads/impl/yx$a;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    aput-object v1, v5, v0

    sget-object v0, Lcom/yandex/mobile/ads/impl/ax$a;->a:Lcom/yandex/mobile/ads/impl/ax$a;

    const/4 v1, 0x3

    aput-object v0, v5, v1

    aput-object v3, v5, v2

    aput-object p0, v5, v4

    return-object v5
.end method

.method public final deserialize(Lhu1;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/yandex/mobile/ads/impl/sx$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    invoke-interface {v0, v1}, Lhu1;->b(Lkotlinx/serialization/descriptors/a;)Lfd1;

    move-result-object v0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/sx;->a()[Lef5;

    move-result-object v2

    invoke-interface {v0}, Lfd1;->j()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Lcom/yandex/mobile/ads/impl/xw$a;->a:Lcom/yandex/mobile/ads/impl/xw$a;

    invoke-interface {v0, v1, v9, v3, v10}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/xw;

    sget-object v9, Lcom/yandex/mobile/ads/impl/yx$a;->a:Lcom/yandex/mobile/ads/impl/yx$a;

    invoke-interface {v0, v1, v8, v9, v10}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yandex/mobile/ads/impl/yx;

    aget-object v9, v2, v7

    invoke-interface {v0, v1, v7, v9, v10}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    sget-object v9, Lcom/yandex/mobile/ads/impl/ax$a;->a:Lcom/yandex/mobile/ads/impl/ax$a;

    invoke-interface {v0, v1, v4, v9, v10}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/ax;

    aget-object v9, v2, v6

    invoke-interface {v0, v1, v6, v9, v10}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    aget-object v2, v2, v5

    invoke-interface {v0, v1, v5, v2, v10}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/16 v5, 0x3f

    move-object/from16 v24, v2

    move-object/from16 v19, v3

    move-object/from16 v22, v4

    move/from16 v18, v5

    move-object/from16 v23, v6

    move-object/from16 v21, v7

    move-object/from16 v20, v8

    goto/16 :goto_3

    :cond_0
    move/from16 v16, v8

    move v3, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    :goto_0
    if-eqz v16, :cond_1

    invoke-interface {v0, v1}, Lfd1;->v(Lkotlinx/serialization/descriptors/a;)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v9}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    aget-object v9, v2, v5

    invoke-interface {v0, v1, v5, v9, v15}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    :pswitch_1
    aget-object v9, v2, v6

    invoke-interface {v0, v1, v6, v9, v14}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Ljava/util/List;

    or-int/lit8 v3, v3, 0x10

    goto :goto_1

    :pswitch_2
    sget-object v9, Lcom/yandex/mobile/ads/impl/ax$a;->a:Lcom/yandex/mobile/ads/impl/ax$a;

    invoke-interface {v0, v1, v4, v9, v13}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Lcom/yandex/mobile/ads/impl/ax;

    or-int/lit8 v3, v3, 0x8

    goto :goto_1

    :pswitch_3
    aget-object v9, v2, v7

    invoke-interface {v0, v1, v7, v9, v12}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    goto :goto_1

    :pswitch_4
    sget-object v9, Lcom/yandex/mobile/ads/impl/yx$a;->a:Lcom/yandex/mobile/ads/impl/yx$a;

    invoke-interface {v0, v1, v8, v9, v11}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/yandex/mobile/ads/impl/yx;

    or-int/lit8 v3, v3, 0x2

    goto :goto_1

    :pswitch_5
    sget-object v9, Lcom/yandex/mobile/ads/impl/xw$a;->a:Lcom/yandex/mobile/ads/impl/xw$a;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4, v9, v10}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/yandex/mobile/ads/impl/xw;

    or-int/lit8 v3, v3, 0x1

    move v9, v4

    :goto_2
    const/4 v4, 0x3

    goto :goto_0

    :pswitch_6
    const/4 v4, 0x0

    move v9, v4

    move/from16 v16, v9

    goto :goto_2

    :cond_1
    move/from16 v18, v3

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    :goto_3
    invoke-interface {v0, v1}, Lfd1;->c(Lkotlinx/serialization/descriptors/a;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/sx;

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v24}, Lcom/yandex/mobile/ads/impl/sx;-><init>(ILcom/yandex/mobile/ads/impl/xw;Lcom/yandex/mobile/ads/impl/yx;Ljava/util/List;Lcom/yandex/mobile/ads/impl/ax;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    sget-object p0, Lcom/yandex/mobile/ads/impl/sx$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object p0
.end method

.method public final serialize(Lca3;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/yandex/mobile/ads/impl/sx;

    const-string p0, "encoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/yandex/mobile/ads/impl/sx$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    invoke-interface {p1, p0}, Lca3;->b(Lkotlinx/serialization/descriptors/a;)Lid1;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/yandex/mobile/ads/impl/sx;->a(Lcom/yandex/mobile/ads/impl/sx;Lid1;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V

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
