.class public final Lcom/yandex/mobile/ads/impl/m41;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/fj0;

.field private final b:Lcom/yandex/mobile/ads/impl/av0;

.field private final c:Lcom/yandex/mobile/ads/impl/rg;

.field private final d:Lcom/yandex/mobile/ads/impl/xg;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    new-instance v2, Lcom/yandex/mobile/ads/impl/vj0;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/vj0;-><init>()V

    .line 2
    new-instance v3, Lcom/yandex/mobile/ads/impl/fj0;

    invoke-direct {v3, p1, v2}, Lcom/yandex/mobile/ads/impl/fj0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/vj0;)V

    .line 3
    new-instance v4, Lcom/yandex/mobile/ads/impl/av0;

    invoke-direct {v4, v3}, Lcom/yandex/mobile/ads/impl/av0;-><init>(Lcom/yandex/mobile/ads/impl/fj0;)V

    .line 4
    new-instance v5, Lcom/yandex/mobile/ads/impl/rg;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/rg;-><init>()V

    .line 5
    new-instance v6, Lcom/yandex/mobile/ads/impl/xg;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/xg;-><init>()V

    move-object v0, p0

    move-object v1, p1

    .line 6
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/m41;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/vj0;Lcom/yandex/mobile/ads/impl/fj0;Lcom/yandex/mobile/ads/impl/av0;Lcom/yandex/mobile/ads/impl/rg;Lcom/yandex/mobile/ads/impl/xg;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/vj0;Lcom/yandex/mobile/ads/impl/fj0;Lcom/yandex/mobile/ads/impl/av0;Lcom/yandex/mobile/ads/impl/rg;Lcom/yandex/mobile/ads/impl/xg;)V
    .locals 1

    .line 7
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageSizeValidator"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageAssetConverter"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaAssetConverter"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "assetCreatorProvider"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "assetValueValidatorProvider"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/m41;->a:Lcom/yandex/mobile/ads/impl/fj0;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/m41;->b:Lcom/yandex/mobile/ads/impl/av0;

    .line 11
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/m41;->c:Lcom/yandex/mobile/ads/impl/rg;

    .line 12
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/m41;->d:Lcom/yandex/mobile/ads/impl/xg;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;
    .locals 8

    .line 21
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m41;->d:Lcom/yandex/mobile/ads/impl/xg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    const-string v0, "name"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x400e3dec

    const-string v3, "favicon"

    const-string v4, "feedback"

    const-string v5, "icon"

    const-string v6, "media"

    if-eq v1, v2, :cond_4

    const v2, -0xb6a147b

    if-eq v1, v2, :cond_3

    const v2, 0x313c79

    if-eq v1, v2, :cond_2

    const v2, 0x62f6fe4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    new-instance v1, Lcom/yandex/mobile/ads/impl/dv0;

    .line 25
    new-instance v2, Lcom/yandex/mobile/ads/impl/gj0;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/gj0;-><init>()V

    .line 26
    new-instance v7, Lcom/yandex/mobile/ads/impl/dx0;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/dx0;-><init>()V

    .line 27
    invoke-direct {v1, v2, v7}, Lcom/yandex/mobile/ads/impl/dv0;-><init>(Lcom/yandex/mobile/ads/impl/gj0;Lcom/yandex/mobile/ads/impl/dx0;)V

    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 29
    :goto_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/c32;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/c32;-><init>()V

    goto :goto_1

    .line 30
    :cond_5
    new-instance v1, Lcom/yandex/mobile/ads/impl/gj0;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/gj0;-><init>()V

    :goto_1
    if-eqz p1, :cond_b

    .line 31
    invoke-interface {v1, p1}, Lcom/yandex/mobile/ads/impl/wg;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 32
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m41;->c:Lcom/yandex/mobile/ads/impl/rg;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_2

    .line 35
    :cond_6
    new-instance p0, Lcom/yandex/mobile/ads/impl/bv0;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/bv0;-><init>()V

    goto :goto_3

    .line 36
    :sswitch_1
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_2

    :sswitch_2
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    .line 37
    :cond_7
    new-instance p0, Lcom/yandex/mobile/ads/impl/ab0;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ab0;-><init>()V

    goto :goto_3

    .line 38
    :sswitch_3
    const-string p0, "review_count"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :sswitch_4
    const-string p0, "rating"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    .line 39
    :cond_8
    new-instance p0, Lcom/yandex/mobile/ads/impl/wd1;

    .line 40
    new-instance v0, Lcom/yandex/mobile/ads/impl/rr1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/rr1;-><init>()V

    .line 41
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/wd1;-><init>(Lcom/yandex/mobile/ads/impl/rr1;)V

    goto :goto_3

    .line 42
    :sswitch_5
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_2

    .line 43
    :cond_9
    new-instance p0, Lcom/yandex/mobile/ads/impl/yj0;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/yj0;-><init>()V

    goto :goto_3

    .line 44
    :sswitch_6
    const-string p0, "close_button"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    .line 45
    :goto_2
    new-instance p0, Lcom/yandex/mobile/ads/impl/b32;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/b32;-><init>()V

    goto :goto_3

    .line 46
    :cond_a
    new-instance p0, Lcom/yandex/mobile/ads/impl/pp;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/pp;-><init>()V

    .line 47
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/qg;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6412e0a7 -> :sswitch_6
        -0x400e3dec -> :sswitch_5
        -0x37ea4e63 -> :sswitch_4
        -0x301e3698 -> :sswitch_3
        -0xb6a147b -> :sswitch_2
        0x313c79 -> :sswitch_1
        0x62f6fe4 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;Ljava/util/Map;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    const-string v2, "nativeAdAssets"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "imageValues"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;->getAge()Ljava/lang/String;

    move-result-object v2

    const-string v4, "age"

    invoke-direct {v0, v2, v4}, Lcom/yandex/mobile/ads/impl/m41;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v5

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;->getBody()Ljava/lang/String;

    move-result-object v2

    const-string v4, "body"

    invoke-direct {v0, v2, v4}, Lcom/yandex/mobile/ads/impl/m41;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v6

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;->getCallToAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "call_to_action"

    invoke-direct {v0, v2, v4}, Lcom/yandex/mobile/ads/impl/m41;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v7

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;->getDomain()Ljava/lang/String;

    move-result-object v2

    const-string v4, "domain"

    invoke-direct {v0, v2, v4}, Lcom/yandex/mobile/ads/impl/m41;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v8

    .line 6
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/m41;->a:Lcom/yandex/mobile/ads/impl/fj0;

    invoke-virtual/range {p1 .. p1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;->getFavicon()Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/yandex/mobile/ads/impl/fj0;->a(Ljava/util/Map;Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;)Lcom/yandex/mobile/ads/impl/xj0;

    move-result-object v2

    .line 7
    const-string v4, "favicon"

    invoke-direct {v0, v2, v4}, Lcom/yandex/mobile/ads/impl/m41;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v9

    .line 8
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/m41;->a:Lcom/yandex/mobile/ads/impl/fj0;

    invoke-virtual/range {p1 .. p1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;->getIcon()Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/yandex/mobile/ads/impl/fj0;->a(Ljava/util/Map;Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;)Lcom/yandex/mobile/ads/impl/xj0;

    move-result-object v2

    const-string v4, "icon"

    invoke-direct {v0, v2, v4}, Lcom/yandex/mobile/ads/impl/m41;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v10

    .line 9
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/m41;->b:Lcom/yandex/mobile/ads/impl/av0;

    invoke-virtual/range {p1 .. p1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;->getImage()Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;->getMedia()Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdMedia;

    move-result-object v11

    invoke-virtual {v2, v1, v4, v11}, Lcom/yandex/mobile/ads/impl/av0;->a(Ljava/util/Map;Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdMedia;)Lcom/yandex/mobile/ads/impl/ex0;

    move-result-object v2

    .line 10
    const-string v4, "media"

    invoke-direct {v0, v2, v4}, Lcom/yandex/mobile/ads/impl/m41;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v11

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;->getPrice()Ljava/lang/String;

    move-result-object v2

    const-string v4, "price"

    invoke-direct {v0, v2, v4}, Lcom/yandex/mobile/ads/impl/m41;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v12

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;->getRating()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "rating"

    invoke-direct {v0, v2, v4}, Lcom/yandex/mobile/ads/impl/m41;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v13

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;->getReviewCount()Ljava/lang/String;

    move-result-object v2

    const-string v4, "review_count"

    invoke-direct {v0, v2, v4}, Lcom/yandex/mobile/ads/impl/m41;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v14

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;->getSponsored()Ljava/lang/String;

    move-result-object v2

    const-string v4, "sponsored"

    invoke-direct {v0, v2, v4}, Lcom/yandex/mobile/ads/impl/m41;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v15

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v4, "title"

    invoke-direct {v0, v2, v4}, Lcom/yandex/mobile/ads/impl/m41;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v16

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;->getWarning()Ljava/lang/String;

    move-result-object v2

    const-string v4, "warning"

    invoke-direct {v0, v2, v4}, Lcom/yandex/mobile/ads/impl/m41;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v17

    .line 17
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/m41;->a:Lcom/yandex/mobile/ads/impl/fj0;

    invoke-virtual/range {p1 .. p1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;->getFeedback()Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/yandex/mobile/ads/impl/fj0;->a(Ljava/util/Map;Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;)Lcom/yandex/mobile/ads/impl/xj0;

    move-result-object v1

    .line 18
    const-string v2, "feedback"

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/m41;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v18

    filled-new-array/range {v5 .. v18}, [Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v0

    .line 19
    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 20
    invoke-static {v0}, Li81;->l0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
