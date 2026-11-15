.class public final Lcom/yandex/mobile/ads/impl/qs1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/d10;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ms1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/j1;Lcom/yandex/mobile/ads/impl/ms1;)V
    .locals 1

    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adActivityListener"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rewardedDivKitDesignCreatorProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/qs1;->a:Lcom/yandex/mobile/ads/impl/ms1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/dw;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/ks1;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/l20;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/m6;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/q61;",
            "Lcom/yandex/mobile/ads/impl/zr;",
            "Lcom/yandex/mobile/ads/impl/st;",
            "Lcom/yandex/mobile/ads/impl/e1;",
            "Lcom/yandex/mobile/ads/impl/dw;",
            "Lcom/yandex/mobile/ads/impl/k3;",
            "Lcom/yandex/mobile/ads/impl/ks1;",
            "Lcom/yandex/mobile/ads/impl/f52;",
            "Lcom/yandex/mobile/ads/impl/l20;",
            "Lcom/yandex/mobile/ads/impl/b30;",
            "Lcom/yandex/mobile/ads/impl/m6;",
            ")",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ee0;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    move-object v3, p2

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdPrivate"

    move-object v4, p3

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentCloseListener"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdEventListener"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventController"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugEventsReporter"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adCompleteListener"

    move-object/from16 v6, p8

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeVerificationController"

    move-object/from16 v7, p9

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeProviderContainer"

    move-object/from16 v8, p10

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divKitActionHandlerDelegate"

    move-object/from16 v9, p11

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/qs1;->a:Lcom/yandex/mobile/ads/impl/ms1;

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    invoke-virtual/range {v1 .. v11}, Lcom/yandex/mobile/ads/impl/ms1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/e1;Lcom/yandex/mobile/ads/impl/k3;Lcom/yandex/mobile/ads/impl/ks1;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/l20;Lcom/yandex/mobile/ads/impl/b30;Lcom/yandex/mobile/ads/impl/m6;)Lcom/yandex/mobile/ads/impl/f30;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
