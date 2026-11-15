.class public final Lcom/yandex/mobile/ads/impl/vw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/tw1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/uw1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/iu1;)V
    .locals 1

    const-string v0, "customCertificatesProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/uw1;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/uw1;-><init>(Lcom/yandex/mobile/ads/impl/mv;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/vw1;->a:Lcom/yandex/mobile/ads/impl/uw1;

    return-void
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vw1;->a:Lcom/yandex/mobile/ads/impl/uw1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/uw1;->a([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vw1;->a:Lcom/yandex/mobile/ads/impl/uw1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/uw1;->b([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vw1;->a:Lcom/yandex/mobile/ads/impl/uw1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/uw1;->c()[Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method
