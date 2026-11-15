.class public final Lcom/yandex/mobile/ads/impl/h61;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/u61;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/p61;Lcom/yandex/mobile/ads/impl/g5;)Lcom/yandex/mobile/ads/impl/g61;
    .locals 18

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    const-string v0, "context"

    move-object/from16 v8, p0

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestData"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdOnLoadListener"

    move-object/from16 v10, p4

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadingPhasesManager"

    move-object/from16 v11, p5

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lcom/yandex/mobile/ads/impl/g61;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/qu;->a()Lkotlinx/coroutines/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v13

    new-instance v14, Lcom/yandex/mobile/ads/impl/a71;

    invoke-direct {v14, v6, v7}, Lcom/yandex/mobile/ads/impl/a71;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;)V

    new-instance v15, Lcom/yandex/mobile/ads/impl/d71;

    invoke-direct {v15, v7}, Lcom/yandex/mobile/ads/impl/d71;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    sget v0, Lcom/yandex/mobile/ads/impl/j32;->d:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/j32$a;->a()Lcom/yandex/mobile/ads/impl/j32;

    move-result-object v16

    new-instance v17, Lcom/yandex/mobile/ads/impl/i51;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/i51;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lnk1;)V

    move-object v0, v12

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    invoke-direct/range {v0 .. v11}, Lcom/yandex/mobile/ads/impl/g61;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/u61;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/p61;Lcom/yandex/mobile/ads/impl/g5;Lnk1;Lcom/yandex/mobile/ads/impl/a71;Lcom/yandex/mobile/ads/impl/d71;Lcom/yandex/mobile/ads/impl/j32;Lcom/yandex/mobile/ads/impl/i51;)V

    return-object v12
.end method
