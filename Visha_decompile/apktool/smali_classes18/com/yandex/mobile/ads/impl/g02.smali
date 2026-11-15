.class public final Lcom/yandex/mobile/ads/impl/g02;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/b02;

.field private final b:Lcom/yandex/mobile/ads/impl/sp1;

.field private final c:Lcom/yandex/mobile/ads/impl/i20;

.field private final d:Lcom/yandex/mobile/ads/impl/w70;

.field private final e:Lcom/yandex/mobile/ads/impl/eh;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/b02;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/i20;Lcom/yandex/mobile/ads/impl/w70;Lcom/yandex/mobile/ads/impl/r61;Lcom/yandex/mobile/ads/impl/eh;)V
    .locals 1

    const-string v0, "sliderAdPrivate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divExtensionProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensionPositionParser"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetNamesProvider"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "assetsNativeAdViewProviderCreator"

    invoke-static {p6, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/g02;->a:Lcom/yandex/mobile/ads/impl/b02;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/g02;->b:Lcom/yandex/mobile/ads/impl/sp1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/g02;->c:Lcom/yandex/mobile/ads/impl/i20;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/g02;->d:Lcom/yandex/mobile/ads/impl/w70;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/g02;->e:Lcom/yandex/mobile/ads/impl/eh;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Log2;)V
    .locals 3

    const-string v0, "div2View"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "divBase"

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/g02;->c:Lcom/yandex/mobile/ads/impl/i20;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, v0}, Lcom/yandex/mobile/ads/impl/i20;->a(Log2;Ljava/lang/String;)Lcom/yandex/div2/DivExtension;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g02;->d:Lcom/yandex/mobile/ads/impl/w70;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "divExtension"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p3, Lcom/yandex/div2/DivExtension;->b:Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    :try_start_0
    const-string v0, "position"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g02;->a:Lcom/yandex/mobile/ads/impl/b02;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/b02;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/q61;

    new-instance v1, Lcom/yandex/mobile/ads/impl/yd1;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/impl/yd1;-><init>(I)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/g02;->e:Lcom/yandex/mobile/ads/impl/eh;

    invoke-virtual {v2, p2, v1}, Lcom/yandex/mobile/ads/impl/eh;->a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/j41;)Lcom/yandex/mobile/ads/impl/k71;

    move-result-object v1

    :try_start_1
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/u10;->a(Lcom/yandex/div/core/view2/Div2View;)Lcom/yandex/mobile/ads/impl/ay1;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/yandex/mobile/ads/impl/ay1;->a(I)Lcom/yandex/mobile/ads/impl/uo;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/q61;->b(Lcom/yandex/mobile/ads/impl/k71;Lcom/yandex/mobile/ads/impl/uo;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Lcom/yandex/mobile/ads/impl/e61; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g02;->b:Lcom/yandex/mobile/ads/impl/sp1;

    const-string p2, "Failed to bind DivKit Slider Inner Ad"

    invoke-interface {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/sp1;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
