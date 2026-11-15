.class public final Lcom/yandex/mobile/ads/impl/k32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/st;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/st;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/st;)V
    .locals 1

    const-string v0, "nativeAdEventListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/k32;->a:Lcom/yandex/mobile/ads/impl/st;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 0

    return-void
.end method

.method public final closeNativeAd()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k32;->a:Lcom/yandex/mobile/ads/impl/st;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/st;->closeNativeAd()V

    return-void
.end method

.method public final onAdClicked()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k32;->a:Lcom/yandex/mobile/ads/impl/st;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/st;->onAdClicked()V

    return-void
.end method

.method public final onLeftApplication()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k32;->a:Lcom/yandex/mobile/ads/impl/st;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/st;->onLeftApplication()V

    return-void
.end method

.method public final onReturnedToApplication()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k32;->a:Lcom/yandex/mobile/ads/impl/st;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/st;->onReturnedToApplication()V

    return-void
.end method
