.class public final Lcom/yandex/mobile/ads/impl/mj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/lj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/lj<",
            "Lcom/monetization/ads/nativeads/ExtendedNativeAdView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/lj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/lj<",
            "Lcom/monetization/ads/nativeads/ExtendedNativeAdView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "layoutDesignsController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mj;->a:Lcom/yandex/mobile/ads/impl/lj;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mj;->a:Lcom/yandex/mobile/ads/impl/lj;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/lj;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/dj;)V
    .locals 1

    .line 2
    const-string v0, "attachEventListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mj;->a:Lcom/yandex/mobile/ads/impl/lj;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/lj;->a(Lcom/yandex/mobile/ads/impl/gz1;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/dj;->a()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->i()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/yandex/mobile/ads/impl/dj;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    :goto_0
    return-void
.end method
