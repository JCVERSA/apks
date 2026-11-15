.class public final Lcom/yandex/mobile/ads/impl/y81;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/x81;

.field private final b:Lcom/yandex/mobile/ads/impl/z9;

.field private final c:Lcom/yandex/mobile/ads/impl/q41;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/x81;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/x81;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/z9;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/z9;-><init>()V

    .line 3
    new-instance v2, Lcom/yandex/mobile/ads/impl/q41;

    invoke-direct {v2, p1}, Lcom/yandex/mobile/ads/impl/q41;-><init>(Lcom/yandex/mobile/ads/impl/bv1;)V

    .line 4
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/y81;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/x81;Lcom/yandex/mobile/ads/impl/z9;Lcom/yandex/mobile/ads/impl/q41;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/x81;Lcom/yandex/mobile/ads/impl/z9;Lcom/yandex/mobile/ads/impl/q41;)V
    .locals 1

    .line 5
    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeGenericAdCreatorProvider"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adUnitAdNativeVisualBlockCreator"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAdBinderConfigurationCreator"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/y81;->a:Lcom/yandex/mobile/ads/impl/x81;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/y81;->b:Lcom/yandex/mobile/ads/impl/z9;

    .line 9
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/y81;->c:Lcom/yandex/mobile/ads/impl/q41;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/gc0;Lcom/yandex/mobile/ads/impl/e51;)Ljava/util/ArrayList;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    const-string v1, "context"

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeAdBlock"

    move-object/from16 v12, p2

    invoke-static {v12, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "imageProvider"

    invoke-static {v11, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeAdFactoriesProvider"

    move-object/from16 v13, p4

    invoke-static {v13, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "forceController"

    move-object/from16 v14, p5

    invoke-static {v14, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeAdControllers"

    move-object/from16 v15, p6

    invoke-static {v15, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/s41;->c()Lcom/yandex/mobile/ads/impl/y61;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/y61;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Lcom/yandex/mobile/ads/impl/s51;->d()Lcom/yandex/mobile/ads/impl/ec1;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/yandex/mobile/ads/impl/g41;

    invoke-interface {v8, v7}, Lcom/yandex/mobile/ads/impl/ec1;->a(Lcom/yandex/mobile/ads/impl/g41;)Lcom/yandex/mobile/ads/impl/dc1;

    move-result-object v5

    new-instance v6, Lcom/yandex/mobile/ads/impl/m61;

    invoke-direct {v6, v10, v7, v11, v5}, Lcom/yandex/mobile/ads/impl/m61;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/dc1;)V

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/y81;->b:Lcom/yandex/mobile/ads/impl/z9;

    invoke-virtual {v1, v7}, Lcom/yandex/mobile/ads/impl/z9;->a(Lcom/yandex/mobile/ads/impl/g41;)Lcom/yandex/mobile/ads/impl/fc1;

    move-result-object v4

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/y81;->c:Lcom/yandex/mobile/ads/impl/q41;

    sget-object v17, Lcom/yandex/mobile/ads/impl/s9;->d:Lcom/yandex/mobile/ads/impl/s9;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v18, v6

    move-object/from16 v6, p4

    move-object/from16 v19, v7

    move-object/from16 v7, p5

    move-object/from16 v20, v8

    move-object/from16 v8, v19

    move-object v10, v9

    move-object/from16 v9, v17

    invoke-virtual/range {v1 .. v9}, Lcom/yandex/mobile/ads/impl/q41;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/fc1;Lcom/yandex/mobile/ads/impl/dc1;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/gc0;Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/s9;)Lcom/yandex/mobile/ads/impl/kl;

    move-result-object v6

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/y81;->a:Lcom/yandex/mobile/ads/impl/x81;

    invoke-virtual/range {v19 .. v19}, Lcom/yandex/mobile/ads/impl/g41;->g()Lcom/yandex/mobile/ads/impl/gr1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/x81;->a(Lcom/yandex/mobile/ads/impl/gr1;)Lcom/yandex/mobile/ads/impl/w81;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move-object/from16 v4, v18

    move-object/from16 v5, p3

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/w81;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/m61;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/kl;Lcom/yandex/mobile/ads/impl/e51;)Lcom/yandex/mobile/ads/impl/q61;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v9, v10

    move-object/from16 v8, v20

    move-object/from16 v10, p1

    goto :goto_0

    :cond_1
    move-object v10, v9

    return-object v10
.end method
