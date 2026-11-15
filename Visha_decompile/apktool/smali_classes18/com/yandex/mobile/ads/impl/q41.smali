.class public final Lcom/yandex/mobile/ads/impl/q41;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;)V
    .locals 1

    const-string v0, "mSdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q41;->a:Lcom/yandex/mobile/ads/impl/bv1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/fc1;Lcom/yandex/mobile/ads/impl/dc1;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/gc0;Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/s9;)Lcom/yandex/mobile/ads/impl/kl;
    .locals 14

    move-object v0, p1

    move-object/from16 v1, p6

    const-string v2, "context"

    invoke-static {p1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "nativeAdBlock"

    move-object/from16 v4, p2

    invoke-static {v4, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "nativeVisualBlock"

    move-object/from16 v6, p3

    invoke-static {v6, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "viewRenderer"

    move-object/from16 v7, p4

    invoke-static {v7, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "nativeAdFactoriesProvider"

    move-object/from16 v8, p5

    invoke-static {v8, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "noticeForceTrackingController"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "nativeAd"

    move-object/from16 v12, p7

    invoke-static {v12, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adStructureType"

    move-object/from16 v13, p8

    invoke-static {v13, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/yandex/mobile/ads/impl/w71;->c:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/w71$a;->a()Lcom/yandex/mobile/ads/impl/w71;

    move-result-object v2

    new-instance v3, Lcom/yandex/mobile/ads/impl/o41;

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/fc1;->b()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Lcom/yandex/mobile/ads/impl/o41;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/w71;)V

    new-instance v5, Lcom/yandex/mobile/ads/impl/f71;

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/s41;->b()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v9

    invoke-direct {v5, p1, v3, v9}, Lcom/yandex/mobile/ads/impl/f71;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o41;Lcom/yandex/mobile/ads/impl/o8;)V

    new-instance v9, Lcom/yandex/mobile/ads/impl/k5;

    invoke-direct {v9, v1}, Lcom/yandex/mobile/ads/impl/k5;-><init>(Lcom/yandex/mobile/ads/impl/hc0;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/m71;

    invoke-direct {v10, p1, v3, v2}, Lcom/yandex/mobile/ads/impl/m71;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o41;Lcom/yandex/mobile/ads/impl/w71;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/kl;

    move-object v1, p0

    iget-object v11, v1, Lcom/yandex/mobile/ads/impl/q41;->a:Lcom/yandex/mobile/ads/impl/bv1;

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Lcom/yandex/mobile/ads/impl/kl;-><init>(Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/f71;Lcom/yandex/mobile/ads/impl/fc1;Lcom/yandex/mobile/ads/impl/dc1;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/r81;Lcom/yandex/mobile/ads/impl/m71;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/s9;)V

    return-object v0
.end method
