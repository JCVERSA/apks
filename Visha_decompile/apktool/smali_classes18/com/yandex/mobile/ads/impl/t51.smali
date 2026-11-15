.class public final Lcom/yandex/mobile/ads/impl/t51;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/x81;

.field private final b:Lcom/yandex/mobile/ads/impl/q41;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/x81;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/x81;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/q41;

    invoke-direct {v1, p1}, Lcom/yandex/mobile/ads/impl/q41;-><init>(Lcom/yandex/mobile/ads/impl/bv1;)V

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/t51;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/x81;Lcom/yandex/mobile/ads/impl/q41;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/x81;Lcom/yandex/mobile/ads/impl/q41;)V
    .locals 1

    .line 4
    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeGenericAdCreatorProvider"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAdBinderConfigurationCreator"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/t51;->a:Lcom/yandex/mobile/ads/impl/x81;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/t51;->b:Lcom/yandex/mobile/ads/impl/q41;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/r41;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/e51;Lcom/yandex/mobile/ads/impl/g41;)Lcom/yandex/mobile/ads/impl/q61;
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p3

    move-object/from16 v1, p4

    move-object/from16 v11, p7

    const-string v3, "context"

    invoke-static {v9, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "nativeAdBlock"

    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "imageProvider"

    invoke-static {v10, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "nativeAdBinderFactory"

    invoke-static {v1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "nativeAdFactoriesProvider"

    move-object/from16 v5, p5

    invoke-static {v5, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "nativeAdControllers"

    move-object/from16 v12, p6

    invoke-static {v12, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v11, :cond_0

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/t51;->a:Lcom/yandex/mobile/ads/impl/x81;

    invoke-virtual/range {p7 .. p7}, Lcom/yandex/mobile/ads/impl/g41;->g()Lcom/yandex/mobile/ads/impl/gr1;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/impl/x81;->a(Lcom/yandex/mobile/ads/impl/gr1;)Lcom/yandex/mobile/ads/impl/w81;

    move-result-object v13

    invoke-virtual/range {p5 .. p5}, Lcom/yandex/mobile/ads/impl/s51;->d()Lcom/yandex/mobile/ads/impl/ec1;

    move-result-object v3

    invoke-interface {v3, v11}, Lcom/yandex/mobile/ads/impl/ec1;->a(Lcom/yandex/mobile/ads/impl/g41;)Lcom/yandex/mobile/ads/impl/dc1;

    move-result-object v14

    new-instance v6, Lcom/yandex/mobile/ads/impl/gc0;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/gc0;-><init>()V

    invoke-virtual {v1, v2, v11}, Lcom/yandex/mobile/ads/impl/r41;->a(Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/g41;)Lcom/yandex/mobile/ads/impl/fc1;

    move-result-object v3

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/t51;->b:Lcom/yandex/mobile/ads/impl/q41;

    sget-object v8, Lcom/yandex/mobile/ads/impl/s9;->b:Lcom/yandex/mobile/ads/impl/s9;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v14

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/q41;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/fc1;Lcom/yandex/mobile/ads/impl/dc1;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/gc0;Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/s9;)Lcom/yandex/mobile/ads/impl/kl;

    move-result-object v5

    new-instance v3, Lcom/yandex/mobile/ads/impl/m61;

    invoke-direct {v3, v9, v11, v10, v14}, Lcom/yandex/mobile/ads/impl/m61;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/dc1;)V

    move-object v0, v13

    move-object/from16 v2, p7

    move-object/from16 v4, p3

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/w81;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/m61;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/kl;Lcom/yandex/mobile/ads/impl/e51;)Lcom/yandex/mobile/ads/impl/q61;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
