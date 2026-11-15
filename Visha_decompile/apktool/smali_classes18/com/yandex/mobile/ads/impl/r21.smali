.class public final Lcom/yandex/mobile/ads/impl/r21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dh0;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/m21;

.field private final b:Lcom/yandex/mobile/ads/impl/dh0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/m21;Lcom/yandex/mobile/ads/impl/dh0;)V
    .locals 1

    const-string v0, "mraidController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "htmlWebViewListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/r21;->a:Lcom/yandex/mobile/ads/impl/m21;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/r21;->b:Lcom/yandex/mobile/ads/impl/dh0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r21;->a:Lcom/yandex/mobile/ads/impl/m21;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/m21;->c()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 1

    .line 1
    const-string v0, "adFetchRequestError"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r21;->b:Lcom/yandex/mobile/ads/impl/dh0;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/dh0;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/yf1;Ljava/util/Map;)V
    .locals 1

    .line 3
    const-string v0, "webView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingParameters"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r21;->a:Lcom/yandex/mobile/ads/impl/m21;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/m21;->a(Lcom/yandex/mobile/ads/impl/yf1;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 5
    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r21;->a:Lcom/yandex/mobile/ads/impl/m21;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/m21;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r21;->a:Lcom/yandex/mobile/ads/impl/m21;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/m21;->a(Z)V

    return-void
.end method
