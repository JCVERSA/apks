.class public final Lio/appmetrica/analytics/network/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/network/internal/Call;


# instance fields
.field public final a:Lio/appmetrica/analytics/network/internal/NetworkClient;

.field public final b:Lio/appmetrica/analytics/network/internal/Request;

.field public final c:Lio/appmetrica/analytics/network/impl/d;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/network/internal/NetworkClient;Lio/appmetrica/analytics/network/internal/Request;)V
    .locals 1

    .line 5
    new-instance v0, Lio/appmetrica/analytics/network/impl/d;

    invoke-direct {v0}, Lio/appmetrica/analytics/network/impl/d;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/appmetrica/analytics/network/impl/c;-><init>(Lio/appmetrica/analytics/network/internal/NetworkClient;Lio/appmetrica/analytics/network/internal/Request;Lio/appmetrica/analytics/network/impl/d;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/network/internal/NetworkClient;Lio/appmetrica/analytics/network/internal/Request;Lio/appmetrica/analytics/network/impl/d;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/network/impl/c;->a:Lio/appmetrica/analytics/network/internal/NetworkClient;

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/network/impl/c;->b:Lio/appmetrica/analytics/network/internal/Request;

    .line 4
    iput-object p3, p0, Lio/appmetrica/analytics/network/impl/c;->c:Lio/appmetrica/analytics/network/impl/d;

    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/network/impl/c;->b:Lio/appmetrica/analytics/network/internal/Request;

    invoke-virtual {v0}, Lio/appmetrica/analytics/network/internal/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/network/impl/c;->a:Lio/appmetrica/analytics/network/internal/NetworkClient;

    invoke-virtual {v0}, Lio/appmetrica/analytics/network/internal/NetworkClient;->getReadTimeout()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/network/impl/c;->a:Lio/appmetrica/analytics/network/internal/NetworkClient;

    invoke-virtual {v0}, Lio/appmetrica/analytics/network/internal/NetworkClient;->getConnectTimeout()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    :cond_2
    iget-object v0, p0, Lio/appmetrica/analytics/network/impl/c;->a:Lio/appmetrica/analytics/network/internal/NetworkClient;

    invoke-virtual {v0}, Lio/appmetrica/analytics/network/internal/NetworkClient;->getUseCaches()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    :cond_3
    iget-object v0, p0, Lio/appmetrica/analytics/network/impl/c;->a:Lio/appmetrica/analytics/network/internal/NetworkClient;

    invoke-virtual {v0}, Lio/appmetrica/analytics/network/internal/NetworkClient;->getInstanceFollowRedirects()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_4
    iget-object v0, p0, Lio/appmetrica/analytics/network/impl/c;->b:Lio/appmetrica/analytics/network/internal/Request;

    invoke-virtual {v0}, Lio/appmetrica/analytics/network/internal/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/network/impl/c;->a:Lio/appmetrica/analytics/network/internal/NetworkClient;

    invoke-virtual {p0}, Lio/appmetrica/analytics/network/internal/NetworkClient;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p1, p0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_5
    return-void
.end method

.method public final execute()Lio/appmetrica/analytics/network/internal/Response;
    .locals 14

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/network/impl/c;->c:Lio/appmetrica/analytics/network/impl/d;

    iget-object v1, p0, Lio/appmetrica/analytics/network/impl/c;->b:Lio/appmetrica/analytics/network/internal/Request;

    invoke-virtual {v1}, Lio/appmetrica/analytics/network/internal/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection created for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/network/impl/c;->b:Lio/appmetrica/analytics/network/internal/Request;

    invoke-virtual {p0}, Lio/appmetrica/analytics/network/internal/Request;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not represent https connection"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lio/appmetrica/analytics/network/internal/Response;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/network/internal/Response;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :cond_1
    const/4 v1, 0x0

    new-array v3, v1, [B

    new-array v4, v1, [B

    :try_start_1
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/network/impl/c;->a(Ljavax/net/ssl/HttpsURLConnection;)V

    iget-object v5, p0, Lio/appmetrica/analytics/network/impl/c;->b:Lio/appmetrica/analytics/network/internal/Request;

    invoke-virtual {v5}, Lio/appmetrica/analytics/network/internal/Request;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string v6, "POST"

    invoke-static {v5, v6}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v0, v6}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_2

    :try_start_3
    iget-object v7, p0, Lio/appmetrica/analytics/network/impl/c;->b:Lio/appmetrica/analytics/network/internal/Request;

    invoke-virtual {v7}, Lio/appmetrica/analytics/network/internal/Request;->getBody()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    sget-object v7, Lzfb;->a:Lzfb;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v5, v2}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v6

    :try_start_6
    invoke-static {v5, p0}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    move v5, v1

    :goto_2
    move-object v13, v2

    move-object v2, p0

    move-object p0, v13

    goto :goto_4

    :cond_2
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    iget-object v8, p0, Lio/appmetrica/analytics/network/impl/c;->a:Lio/appmetrica/analytics/network/internal/NetworkClient;

    invoke-virtual {v8}, Lio/appmetrica/analytics/network/internal/NetworkClient;->getMaxResponseSize()I

    move-result v8

    new-instance v9, Lio/appmetrica/analytics/network/impl/a;

    invoke-direct {v9, v0}, Lio/appmetrica/analytics/network/impl/a;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    invoke-static {v8, v9}, Lio/appmetrica/analytics/network/impl/e;->a(ILc74;)[B

    move-result-object v3

    iget-object p0, p0, Lio/appmetrica/analytics/network/impl/c;->a:Lio/appmetrica/analytics/network/internal/NetworkClient;

    invoke-virtual {p0}, Lio/appmetrica/analytics/network/internal/NetworkClient;->getMaxResponseSize()I

    move-result p0

    new-instance v8, Lio/appmetrica/analytics/network/impl/b;

    invoke-direct {v8, v0}, Lio/appmetrica/analytics/network/impl/b;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    invoke-static {p0, v8}, Lio/appmetrica/analytics/network/impl/e;->a(ILc74;)[B

    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object v12, v2

    move-object v9, v3

    move-object v10, v4

    move v8, v5

    move-object v11, v7

    move v7, v6

    goto :goto_5

    :catchall_3
    move-exception p0

    move-object v2, v7

    goto :goto_2

    :catchall_4
    move-exception p0

    goto :goto_2

    :catchall_5
    move-exception p0

    goto :goto_1

    :goto_4
    move-object v11, p0

    move v7, v1

    move-object v12, v2

    move-object v9, v3

    move-object v10, v4

    move v8, v5

    :goto_5
    :try_start_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    new-instance p0, Lio/appmetrica/analytics/network/internal/Response;

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lio/appmetrica/analytics/network/internal/Response;-><init>(ZI[B[BLjava/util/Map;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_7
    move-exception p0

    new-instance v0, Lio/appmetrica/analytics/network/internal/Response;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/network/internal/Response;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method
