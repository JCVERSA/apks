.class public final Lcom/yandex/mobile/ads/impl/ft1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/et1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/pw1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/pw1;)V
    .locals 1

    const-string v0, "sdkSettings"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ft1;->a:Lcom/yandex/mobile/ads/impl/pw1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    const-string v0, "TLSv1.2"

    const-string v1, "context"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ft1;->a:Lcom/yandex/mobile/ads/impl/pw1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object p0

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/iu1;

    invoke-direct {v1, p1}, Lcom/yandex/mobile/ads/impl/iu1;-><init>(Landroid/content/Context;)V

    const-string p1, "getSocketFactory(...)"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ju1;->l0()Z

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const-string p0, "customCertificatesProvider"

    invoke-static {v1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/pr0;->a(Lcom/yandex/mobile/ads/impl/iu1;)Lcom/yandex/mobile/ads/impl/tw1;

    move-result-object p0

    const-string v0, "trustManager"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/ct1;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/ct1;-><init>(Lcom/yandex/mobile/ads/impl/tw1;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ct1;->a()Ljavax/net/ssl/SSLContext;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const/16 p0, 0x15

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/pa;->a(I)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    sget p0, Lcom/yandex/mobile/ads/impl/yj1;->b:I

    :try_start_0
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :goto_0
    new-instance v2, Lcom/yandex/mobile/ads/impl/yj1;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p0}, Lcom/yandex/mobile/ads/impl/yj1;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    move-object p0, v2

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :cond_1
    move-object p0, v1

    :goto_2
    return-object p0
.end method
