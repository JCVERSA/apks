.class public final Lcom/yandex/mobile/ads/impl/yz1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;

.field private final b:Lcom/yandex/mobile/ads/impl/ha;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ha;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ha;-><init>()V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/yz1;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/ha;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/ha;)V
    .locals 1

    .line 3
    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitNativeVisualBlockCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yz1;->a:Lcom/yandex/mobile/ads/impl/bv1;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yz1;->b:Lcom/yandex/mobile/ads/impl/ha;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/j81;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/gc0;)Lcom/yandex/mobile/ads/impl/kl;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    const-string v1, "context"

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeAdBlock"

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeCompositeAd"

    move-object/from16 v3, p3

    invoke-static {v3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeAdFactoriesProvider"

    move-object/from16 v10, p4

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "noticeForceTrackingController"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/yz1;->b:Lcom/yandex/mobile/ads/impl/ha;

    invoke-virtual {v1, v8}, Lcom/yandex/mobile/ads/impl/ha;->a(Lcom/yandex/mobile/ads/impl/s41;)Lcom/yandex/mobile/ads/impl/fc1;

    move-result-object v11

    sget v1, Lcom/yandex/mobile/ads/impl/w71;->c:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/w71$a;->a()Lcom/yandex/mobile/ads/impl/w71;

    move-result-object v12

    new-instance v13, Lcom/yandex/mobile/ads/impl/xz1;

    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/fc1;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v13, v1, v12}, Lcom/yandex/mobile/ads/impl/xz1;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/w71;)V

    sget v1, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v5

    new-instance v14, Lcom/yandex/mobile/ads/impl/c02;

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/s41;->b()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v6

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v4, v13

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/c02;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/j81;Lcom/yandex/mobile/ads/impl/xz1;Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/o8;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/d02;

    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/fc1;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/yandex/mobile/ads/impl/d02;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/ga;

    invoke-direct {v6, v9}, Lcom/yandex/mobile/ads/impl/ga;-><init>(Lcom/yandex/mobile/ads/impl/gc0;)V

    new-instance v9, Lcom/yandex/mobile/ads/impl/m71;

    invoke-direct {v9, v7, v13, v12}, Lcom/yandex/mobile/ads/impl/m71;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o41;Lcom/yandex/mobile/ads/impl/w71;)V

    new-instance v12, Lcom/yandex/mobile/ads/impl/kl;

    iget-object v13, v0, Lcom/yandex/mobile/ads/impl/yz1;->a:Lcom/yandex/mobile/ads/impl/bv1;

    sget-object v15, Lcom/yandex/mobile/ads/impl/s9;->c:Lcom/yandex/mobile/ads/impl/s9;

    const/16 v16, 0x0

    move-object v0, v12

    move-object/from16 v1, p2

    move-object v2, v14

    move-object v3, v11

    move-object/from16 v5, p4

    move-object v7, v9

    move-object v8, v13

    move-object/from16 v9, v16

    move-object v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/yandex/mobile/ads/impl/kl;-><init>(Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/f71;Lcom/yandex/mobile/ads/impl/fc1;Lcom/yandex/mobile/ads/impl/dc1;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/r81;Lcom/yandex/mobile/ads/impl/m71;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/s9;)V

    return-object v12
.end method
