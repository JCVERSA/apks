.class public final Lcom/yandex/mobile/ads/impl/yj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/xj2;


# instance fields
.field private final a:Lyi5;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/yandex/mobile/ads/impl/yj2$a;->b:Lcom/yandex/mobile/ads/impl/yj2$a;

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/yj2;->a:Lyi5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/net/http/SslError;)Z
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sslError"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ju1;->l0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/http/SslCertificate;->getX509Certificate()Ljava/security/cert/X509Certificate;

    move-result-object p2

    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/iu1;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/iu1;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/pr0;->a(Lcom/yandex/mobile/ads/impl/iu1;)Lcom/yandex/mobile/ads/impl/tw1;

    move-result-object p0

    :try_start_0
    filled-new-array {p2}, [Ljava/security/cert/X509Certificate;

    move-result-object p1

    const-string p2, "RSA"

    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    new-array p0, v1, [Ljava/lang/Object;

    sget p1, Lcom/yandex/mobile/ads/impl/sp0;->b:I

    const-string p1, "args"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v1
.end method
