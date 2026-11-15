.class public final Lcom/yandex/mobile/ads/impl/b81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/st;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/aj;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/aj;)V
    .locals 1

    const-string v0, "adViewController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/b81;->a:Lcom/yandex/mobile/ads/impl/aj;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b81;->a:Lcom/yandex/mobile/ads/impl/aj;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/aj;->a(Lcom/yandex/mobile/ads/impl/t4;)V

    return-void
.end method

.method public final closeNativeAd()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b81;->a:Lcom/yandex/mobile/ads/impl/aj;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/aj;->A()V

    return-void
.end method

.method public final onAdClicked()V
    .locals 0

    return-void
.end method

.method public final onLeftApplication()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b81;->a:Lcom/yandex/mobile/ads/impl/aj;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/aj;->onLeftApplication()V

    return-void
.end method

.method public final onReturnedToApplication()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b81;->a:Lcom/yandex/mobile/ads/impl/aj;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/aj;->onReturnedToApplication()V

    return-void
.end method
