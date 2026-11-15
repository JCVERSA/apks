.class public final Lcom/yandex/mobile/ads/impl/ja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/yg2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/g71;

.field private final b:Lcom/yandex/mobile/ads/impl/bp;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/bp;)V
    .locals 1

    const-string v0, "nativeAdViewAdapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListenerConfigurator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ja;->a:Lcom/yandex/mobile/ads/impl/g71;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ja;->b:Lcom/yandex/mobile/ads/impl/bp;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/yandex/mobile/ads/impl/ig;)V
    .locals 0

    .line 4
    const-string p0, "asset"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/ap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/ap;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "asset"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListenerConfigurable"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ig;->a()Lcom/yandex/mobile/ads/impl/vr0;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ja;->b:Lcom/yandex/mobile/ads/impl/bp;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ja;->a:Lcom/yandex/mobile/ads/impl/g71;

    invoke-virtual {v1, p1, v0, p0, p2}, Lcom/yandex/mobile/ads/impl/bp;->a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/ap;)V

    return-void
.end method
