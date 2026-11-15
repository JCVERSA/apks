.class public final Lcom/yandex/mobile/ads/impl/n81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/g51;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/z91$b;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/z91$b;)V
    .locals 1

    const-string v0, "responseCreationListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/n81;->a:Lcom/yandex/mobile/ads/impl/z91$b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/k81;)V
    .locals 1

    .line 7
    const-string v0, "sliderAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n81;->a:Lcom/yandex/mobile/ads/impl/z91$b;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/z91$b;->a(Lcom/yandex/mobile/ads/impl/q61;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/q61;)V
    .locals 1

    .line 3
    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n81;->a:Lcom/yandex/mobile/ads/impl/z91$b;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/z91$b;->a(Lcom/yandex/mobile/ads/impl/q61;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 1

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n81;->a:Lcom/yandex/mobile/ads/impl/z91$b;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/z91$b;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1

    .line 5
    const-string v0, "nativeAds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n81;->a:Lcom/yandex/mobile/ads/impl/z91$b;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->x()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/z91$b;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    return-void
.end method
