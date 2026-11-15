.class public final Lcom/yandex/mobile/ads/impl/x1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/q61;

.field private final b:Lcom/yandex/mobile/ads/impl/zr;

.field private final c:Lcom/yandex/mobile/ads/impl/st;

.field private final d:Lcom/yandex/mobile/ads/impl/j41;

.field private final e:Lcom/yandex/mobile/ads/impl/eh;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;)V
    .locals 6

    .line 1
    new-instance v4, Lcom/yandex/mobile/ads/impl/l41;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/l41;-><init>()V

    .line 2
    new-instance v5, Lcom/yandex/mobile/ads/impl/eh;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/eh;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/x1;-><init>(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/j41;Lcom/yandex/mobile/ads/impl/eh;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/j41;Lcom/yandex/mobile/ads/impl/eh;)V
    .locals 1

    .line 4
    const-string v0, "nativeAdPrivate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentCloseListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adEventListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdAssetViewProvider"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsNativeAdViewProviderCreator"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/x1;->a:Lcom/yandex/mobile/ads/impl/q61;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/x1;->b:Lcom/yandex/mobile/ads/impl/zr;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/x1;->c:Lcom/yandex/mobile/ads/impl/st;

    .line 9
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/x1;->d:Lcom/yandex/mobile/ads/impl/j41;

    .line 10
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/x1;->e:Lcom/yandex/mobile/ads/impl/eh;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x1;->a:Lcom/yandex/mobile/ads/impl/q61;

    instance-of v0, p0, Lcom/yandex/mobile/ads/impl/b02;

    if-eqz v0, :cond_0

    .line 9
    check-cast p0, Lcom/yandex/mobile/ads/impl/b02;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/b02;->b(Lcom/yandex/mobile/ads/impl/st;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/monetization/ads/nativeads/ExtendedNativeAdView;)Z
    .locals 2

    .line 1
    const-string v0, "nativeAdView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x1;->a:Lcom/yandex/mobile/ads/impl/q61;

    instance-of v0, v0, Lcom/yandex/mobile/ads/impl/b02;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x1;->e:Lcom/yandex/mobile/ads/impl/eh;

    .line 4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/x1;->d:Lcom/yandex/mobile/ads/impl/j41;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/eh;->a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/j41;)Lcom/yandex/mobile/ads/impl/k71;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x1;->a:Lcom/yandex/mobile/ads/impl/q61;

    check-cast v0, Lcom/yandex/mobile/ads/impl/b02;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/b02;->a(Lcom/yandex/mobile/ads/impl/k71;)V

    .line 6
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/x1;->a:Lcom/yandex/mobile/ads/impl/q61;

    check-cast p1, Lcom/yandex/mobile/ads/impl/b02;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x1;->c:Lcom/yandex/mobile/ads/impl/st;

    invoke-interface {p1, v0}, Lcom/yandex/mobile/ads/impl/b02;->b(Lcom/yandex/mobile/ads/impl/st;)V
    :try_end_0
    .catch Lcom/yandex/mobile/ads/impl/e61; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    .line 7
    :catch_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x1;->b:Lcom/yandex/mobile/ads/impl/zr;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/zr;->f()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method
