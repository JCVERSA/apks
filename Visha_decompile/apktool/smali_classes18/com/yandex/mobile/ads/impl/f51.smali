.class public final Lcom/yandex/mobile/ads/impl/f51;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/m41;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/m41;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/m41;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/f51;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/m41;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/m41;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAdAssetsConverter"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/f51;->a:Lcom/yandex/mobile/ads/impl/m41;

    return-void
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/gr1;)Lcom/yandex/mobile/ads/impl/o8;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/gr1;",
            ")",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "mediatedNativeAd"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "imageValues"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "responseNativeType"

    move-object/from16 v3, p3

    invoke-static {v3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;->getMediatedNativeAdAssets()Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;

    move-result-object v1

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/f51;->a:Lcom/yandex/mobile/ads/impl/m41;

    invoke-virtual {v2, v1, v0}, Lcom/yandex/mobile/ads/impl/m41;->a(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    new-instance v0, Lcom/yandex/mobile/ads/impl/g41;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v11

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/yandex/mobile/ads/impl/g41;-><init>(Lcom/yandex/mobile/ads/impl/gr1;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/t4;Lcom/yandex/mobile/ads/impl/ib0;Lcom/yandex/mobile/ads/impl/ib0;Ljava/util/List;Ljava/util/List;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/y61;

    invoke-static {v0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v16

    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v19

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v20

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v23}, Lcom/yandex/mobile/ads/impl/y61;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/mobile/ads/impl/t4;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/yx1;Lcom/yandex/mobile/ads/impl/g6;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/o8$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/o8$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/o8$a;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/o8$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o8$a;->a()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v0

    return-object v0
.end method
