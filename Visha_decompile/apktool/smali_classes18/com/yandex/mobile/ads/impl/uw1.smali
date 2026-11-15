.class public final Lcom/yandex/mobile/ads/impl/uw1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/mv;

.field private final b:Lyi5;

.field private c:Ljava/security/KeyStore;

.field private d:Ljavax/net/ssl/X509TrustManager;

.field private final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/mv;)V
    .locals 1

    const-string v0, "customCertificatesProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/uw1;->a:Lcom/yandex/mobile/ads/impl/mv;

    sget-object p1, Lcom/yandex/mobile/ads/impl/uw1$a;->b:Lcom/yandex/mobile/ads/impl/uw1$a;

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/uw1;->b:Lyi5;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/uw1;->e:Ljava/lang/Object;

    return-void
.end method

.method private final a()V
    .locals 6

    .line 3
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/uw1;->b()V

    .line 4
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/uw1;->b()V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uw1;->c:Ljava/security/KeyStore;

    if-nez v0, :cond_4

    .line 6
    sget v0, Lcom/yandex/mobile/ads/impl/l72;->b:I

    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    :goto_0
    if-nez v1, :cond_0

    .line 9
    const-string v1, "SdkTrustManager"

    const-string v2, "Custom KeyStore is null, failed to add certs"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uw1;->a:Lcom/yandex/mobile/ads/impl/mv;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/mv;->a()[[B

    move-result-object v0

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 13
    invoke-static {v5}, Lcom/yandex/mobile/ads/impl/l72;->a([B)Ljava/security/cert/X509Certificate;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 14
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 16
    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/uw1;->a(Ljava/security/KeyStore;Ljava/security/cert/X509Certificate;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 17
    :goto_3
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/uw1;->c:Ljava/security/KeyStore;

    .line 18
    :cond_4
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/uw1;->b()V

    .line 19
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uw1;->d:Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_5

    .line 20
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/uw1;->b()V

    .line 21
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uw1;->c:Ljava/security/KeyStore;

    if-eqz v0, :cond_5

    .line 22
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/uw1;->b()V

    .line 23
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uw1;->c:Ljava/security/KeyStore;

    .line 24
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/l72;->a(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/uw1;->d:Ljavax/net/ssl/X509TrustManager;

    :cond_5
    return-void
.end method

.method private static a(Ljava/security/KeyStore;Ljava/security/cert/X509Certificate;)V
    .locals 3

    .line 25
    :try_start_0
    invoke-virtual {p0}, Ljava/security/KeyStore;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom_cert_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 26
    const-string p1, "SdkTrustManager"

    const-string v0, "Failed to store certificate"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private final b()V
    .locals 1

    .line 48
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uw1;->e:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Operation should be performed under lock"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uw1;->b:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/X509TrustManager;

    .line 2
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public final a([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 27
    invoke-static {}, Lcom/yandex/mobile/ads/impl/l72;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uw1;->b:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/X509TrustManager;

    .line 29
    invoke-static {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/ge;->a(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uw1;->b:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/X509TrustManager;

    .line 31
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final a([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/yandex/mobile/ads/impl/l72;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uw1;->b:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/X509TrustManager;

    .line 34
    invoke-static {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/ge;->a(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uw1;->b:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/X509TrustManager;

    .line 36
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final b([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uw1;->b:Lyi5;

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 2
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/uw1;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_1
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/uw1;->a()V

    .line 5
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/uw1;->b()V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uw1;->d:Ljavax/net/ssl/X509TrustManager;

    if-eqz p0, :cond_0

    .line 7
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 8
    sget-object p0, Lzfb;->a:Lzfb;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 9
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit v1

    :goto_1
    return-void

    .line 11
    :cond_1
    :try_start_2
    const-string p0, "SdkTrustManager"

    const-string p1, "Custom TrustManager is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :goto_2
    monitor-exit v1

    throw p0
.end method

.method public final b([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uw1;->b:Lyi5;

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 15
    invoke-static {}, Lcom/yandex/mobile/ads/impl/l72;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    invoke-static {v0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/ge;->b(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/uw1;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_1
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/uw1;->a()V

    .line 20
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/uw1;->b()V

    .line 21
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uw1;->d:Ljavax/net/ssl/X509TrustManager;

    if-eqz p0, :cond_2

    .line 22
    invoke-static {}, Lcom/yandex/mobile/ads/impl/l72;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    invoke-static {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/ge;->b(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 24
    :cond_1
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 25
    :goto_1
    sget-object p0, Lzfb;->a:Lzfb;

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_3

    .line 26
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    monitor-exit v1

    :goto_3
    return-void

    .line 28
    :cond_3
    :try_start_2
    const-string p0, "SdkTrustManager"

    const-string p1, "Custom TrustManager is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    :goto_4
    monitor-exit v1

    throw p0
.end method

.method public final b([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uw1;->b:Lyi5;

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 32
    invoke-static {}, Lcom/yandex/mobile/ads/impl/l72;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-static {v0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/ge;->b(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    .line 34
    :cond_0
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 35
    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/uw1;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_1
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/uw1;->a()V

    .line 37
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/uw1;->b()V

    .line 38
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uw1;->d:Ljavax/net/ssl/X509TrustManager;

    if-eqz p0, :cond_2

    .line 39
    invoke-static {}, Lcom/yandex/mobile/ads/impl/l72;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    invoke-static {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/ge;->b(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 41
    :cond_1
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 42
    :goto_1
    sget-object p0, Lzfb;->a:Lzfb;

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_3

    .line 43
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    monitor-exit v1

    :goto_3
    return-void

    .line 45
    :cond_3
    :try_start_2
    const-string p0, "SdkTrustManager"

    const-string p1, "Custom TrustManager is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :goto_4
    monitor-exit v1

    throw p0
.end method

.method public final c()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uw1;->b:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {p0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object p0

    const-string v0, "getAcceptedIssuers(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
