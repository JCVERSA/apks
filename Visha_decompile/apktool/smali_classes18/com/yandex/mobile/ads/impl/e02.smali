.class public final Lcom/yandex/mobile/ads/impl/e02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwi2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sp1;

.field private final b:Lcom/yandex/mobile/ads/impl/i20;

.field private final c:Lcom/yandex/mobile/ads/impl/w70;

.field private final d:Lcom/yandex/mobile/ads/impl/x70;

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/yandex/div2/DivData;",
            "Lcom/yandex/mobile/ads/impl/g02;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/i20;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/i20;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/w70;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/w70;-><init>()V

    .line 3
    new-instance v2, Lcom/yandex/mobile/ads/impl/x70;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/x70;-><init>()V

    .line 4
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/e02;-><init>(Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/i20;Lcom/yandex/mobile/ads/impl/w70;Lcom/yandex/mobile/ads/impl/x70;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/i20;Lcom/yandex/mobile/ads/impl/w70;Lcom/yandex/mobile/ads/impl/x70;)V
    .locals 1

    .line 5
    const-string v0, "reporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divExtensionProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensionPositionParser"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensionViewNameParser"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/e02;->a:Lcom/yandex/mobile/ads/impl/sp1;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/e02;->b:Lcom/yandex/mobile/ads/impl/i20;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/e02;->c:Lcom/yandex/mobile/ads/impl/w70;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/e02;->d:Lcom/yandex/mobile/ads/impl/x70;

    .line 11
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/e02;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivData;Lcom/yandex/mobile/ads/impl/b02;)V
    .locals 8

    const-string v0, "divData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sliderAdPrivate"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/g02;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/e02;->a:Lcom/yandex/mobile/ads/impl/sp1;

    new-instance v4, Lcom/yandex/mobile/ads/impl/i20;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/i20;-><init>()V

    new-instance v5, Lcom/yandex/mobile/ads/impl/w70;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/w70;-><init>()V

    new-instance v6, Lcom/yandex/mobile/ads/impl/r61;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/r61;-><init>()V

    new-instance v7, Lcom/yandex/mobile/ads/impl/eh;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/r61;->c(Lcom/yandex/mobile/ads/impl/q61;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/yandex/mobile/ads/impl/eh;-><init>(Ljava/util/Collection;)V

    move-object v1, v0

    move-object v2, p2

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/g02;-><init>(Lcom/yandex/mobile/ads/impl/b02;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/i20;Lcom/yandex/mobile/ads/impl/w70;Lcom/yandex/mobile/ads/impl/r61;Lcom/yandex/mobile/ads/impl/eh;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e02;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic beforeBindView(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Log2;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lwi2;->beforeBindView(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Log2;)V

    return-void
.end method

.method public final bindView(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Log2;)V
    .locals 1

    const-string v0, "div2View"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionResolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "view"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "divBase"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object p2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e02;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/g02;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p3, p4}, Lcom/yandex/mobile/ads/impl/g02;->a(Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Log2;)V

    :cond_0
    return-void
.end method

.method public final matches(Log2;)Z
    .locals 5

    const-string v0, "divBase"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e02;->b:Lcom/yandex/mobile/ads/impl/i20;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/impl/i20;->a(Log2;Ljava/lang/String;)Lcom/yandex/div2/DivExtension;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/e02;->c:Lcom/yandex/mobile/ads/impl/w70;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "divExtension"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/yandex/div2/DivExtension;->b:Lorg/json/JSONObject;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    const-string v4, "position"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v2, v3

    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e02;->d:Lcom/yandex/mobile/ads/impl/x70;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/yandex/div2/DivExtension;->b:Lorg/json/JSONObject;

    if-eqz p0, :cond_1

    :try_start_1
    const-string p1, "view_name"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    if-eqz v2, :cond_2

    const-string p0, "native_ad_view"

    invoke-static {p0, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public bridge synthetic preprocess(Log2;Loj3;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lwi2;->preprocess(Log2;Loj3;)V

    return-void
.end method

.method public final unbindView(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Log2;)V
    .locals 3

    const-string v0, "div2View"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "expressionResolver"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "view"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "divBase"

    invoke-static {p4, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e02;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/g02;

    if-eqz p0, :cond_0

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
