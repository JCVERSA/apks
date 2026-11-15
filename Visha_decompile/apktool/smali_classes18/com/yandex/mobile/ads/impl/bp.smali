.class public final Lcom/yandex/mobile/ads/impl/bp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/j3;

.field private final b:Lcom/yandex/mobile/ads/impl/wo1;

.field private final c:Lcom/yandex/mobile/ads/impl/hc0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/i3;Lcom/yandex/mobile/ads/impl/wo1;Lcom/yandex/mobile/ads/impl/hc0;)V
    .locals 1

    const-string v0, "adClickable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderedTimer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forceImpressionTrackingListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bp;->a:Lcom/yandex/mobile/ads/impl/j3;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/bp;->b:Lcom/yandex/mobile/ads/impl/wo1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/bp;->c:Lcom/yandex/mobile/ads/impl/hc0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/ap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/vr0;",
            "Lcom/yandex/mobile/ads/impl/g71;",
            "Lcom/yandex/mobile/ads/impl/ap;",
            ")V"
        }
    .end annotation

    const-string v0, "asset"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdViewAdapter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListenerConfigurable"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ig;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/cp;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/bp;->a:Lcom/yandex/mobile/ads/impl/j3;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/bp;->b:Lcom/yandex/mobile/ads/impl/wo1;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/bp;->c:Lcom/yandex/mobile/ads/impl/hc0;

    move-object v1, v0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/cp;-><init>(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/j3;Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/wo1;Lcom/yandex/mobile/ads/impl/hc0;)V

    invoke-interface {p4, p2, v0}, Lcom/yandex/mobile/ads/impl/ap;->a(Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/cp;)V

    :cond_0
    return-void
.end method
