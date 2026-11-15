.class public Lcom/facebook/biddingkit/http/client/AndroidHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidHttpClient"


# instance fields
.field protected UTF8:Ljava/lang/String;

.field protected connectionTimeout:I

.field private mIsConnected:Z

.field private mMaxRetries:I

.field private pinnedCertificates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pinnedPublicKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected readTimeout:I

.field private requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->connectionTimeout:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->readTimeout:I

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->UTF8:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->mMaxRetries:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->mIsConnected:Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->requestHeaders:Ljava/util/Map;

    return-void
.end method

.method private appendRequestHeaders(Ljava/net/HttpURLConnection;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Accept-Charset"

    iget-object p0, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->UTF8:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fib(I)I
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->fib(I)I

    move-result v0

    add-int/lit8 p1, p1, -0x2

    invoke-direct {p0, p1}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->fib(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    :cond_1
    :goto_0
    return p1
.end method

.method private readStream(Ljava/io/InputStream;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x4000

    new-array p0, p0, [B

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/biddingkit/http/client/AndroidHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public doHttpMethod(Ljava/lang/String;Lcom/facebook/biddingkit/http/client/HttpMethod;Ljava/lang/String;[B)Lcom/facebook/biddingkit/http/client/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/biddingkit/http/client/HttpRequestException;
        }
    .end annotation

    const-string v0, "AndroidHttpClient"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->mIsConnected:Z

    invoke-virtual {p0, p1}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->prepareConnection(Ljava/net/HttpURLConnection;Lcom/facebook/biddingkit/http/client/HttpMethod;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->appendRequestHeaders(Ljava/net/HttpURLConnection;)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->mIsConnected:Z

    iget-object p3, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->pinnedCertificates:Ljava/util/Set;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    move p3, p2

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, p1

    goto/16 :goto_4

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_0
    move p3, v1

    :goto_0
    iget-object v3, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->pinnedPublicKeys:Ljava/util/Set;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, p2

    :cond_1
    instance-of p2, p1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    if-nez p3, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    :try_start_2
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    iget-object p3, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->pinnedCertificates:Ljava/util/Set;

    iget-object v1, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->pinnedPublicKeys:Ljava/util/Set;

    invoke-static {p2, p3, v1}, Lcom/facebook/biddingkit/http/client/KeyPinningValidator;->validatePinning(Ljavax/net/ssl/HttpsURLConnection;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p2

    :try_start_3
    const-string p3, "Unable to validate SSL certificates: "

    invoke-static {v0, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p4, :cond_4

    invoke-virtual {p0, p1, p4}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->writeOutputStream(Ljava/net/HttpURLConnection;[B)I

    :cond_4
    invoke-virtual {p1}, Ljava/net/URLConnection;->getDoInput()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->readInputStream(Ljava/net/HttpURLConnection;)Lcom/facebook/biddingkit/http/client/HttpResponse;

    move-result-object p0

    goto :goto_2

    :cond_5
    new-instance p2, Lcom/facebook/biddingkit/http/client/HttpResponse;

    invoke-direct {p2, p1, v2}, Lcom/facebook/biddingkit/http/client/HttpResponse;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object p0, p2

    :goto_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p2

    move-object p1, v2

    :goto_3
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->readErrorStream(Ljava/net/HttpURLConnection;)Lcom/facebook/biddingkit/http/client/HttpResponse;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p0, :cond_7

    :try_start_5
    invoke-virtual {p0}, Lcom/facebook/biddingkit/http/client/HttpResponse;->getStatus()I

    move-result p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-lez p3, :cond_7

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-object p0

    :cond_7
    :try_start_6
    new-instance p3, Lcom/facebook/biddingkit/http/client/HttpRequestException;

    invoke-direct {p3, p2, p0}, Lcom/facebook/biddingkit/http/client/HttpRequestException;-><init>(Ljava/lang/Exception;Lcom/facebook/biddingkit/http/client/HttpResponse;)V

    throw p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_3
    :try_start_7
    const-string p0, "Failed http method: "

    invoke-static {v0, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    new-instance p0, Lcom/facebook/biddingkit/http/client/HttpRequestException;

    invoke-direct {p0, p2, v2}, Lcom/facebook/biddingkit/http/client/HttpRequestException;-><init>(Ljava/lang/Exception;Lcom/facebook/biddingkit/http/client/HttpResponse;)V

    throw p0

    :catchall_2
    new-instance p0, Lcom/facebook/biddingkit/http/client/HttpRequestException;

    invoke-direct {p0, p2, v2}, Lcom/facebook/biddingkit/http/client/HttpRequestException;-><init>(Ljava/lang/Exception;Lcom/facebook/biddingkit/http/client/HttpResponse;)V

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_4
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw p0
.end method

.method public execute(Lcom/facebook/biddingkit/http/client/HttpRequest;)Lcom/facebook/biddingkit/http/client/HttpResponse;
    .locals 2

    const-string v0, "AndroidHttpClient"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->tryMany(Lcom/facebook/biddingkit/http/client/HttpRequest;)Lcom/facebook/biddingkit/http/client/HttpResponse;

    move-result-object v1
    :try_end_0
    .catch Lcom/facebook/biddingkit/http/client/HttpRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/facebook/biddingkit/http/client/HttpRequestException;

    invoke-direct {p1, p0, v1}, Lcom/facebook/biddingkit/http/client/HttpRequestException;-><init>(Ljava/lang/Exception;Lcom/facebook/biddingkit/http/client/HttpResponse;)V

    const-string p0, "Unable to send request and got a RuntimeException: "

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "Unable to send request and got a HttpRequestException: "

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/biddingkit/http/client/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/biddingkit/http/client/HttpResponse;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/biddingkit/http/client/HttpGet;

    invoke-direct {v0, p1, p2}, Lcom/facebook/biddingkit/http/client/HttpGet;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->execute(Lcom/facebook/biddingkit/http/client/HttpRequest;)Lcom/facebook/biddingkit/http/client/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public getNextTimeout(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->fib(I)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->requestHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public isRecoverable(Lcom/facebook/biddingkit/http/client/HttpRequestException;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/facebook/biddingkit/http/client/HttpRequestException;->getHttpResponse()Lcom/facebook/biddingkit/http/client/HttpResponse;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/biddingkit/http/client/HttpResponse;->getStatus()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTimeoutException(Ljava/lang/Throwable;J)Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    const-wide/16 p1, 0xa

    add-long/2addr v0, p1

    iget-boolean p1, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->mIsConnected:Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->readTimeout:I

    int-to-long p0, p0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    move p2, p3

    :cond_0
    return p2

    :cond_1
    iget p0, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->connectionTimeout:I

    int-to-long p0, p0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_2

    move p2, p3

    :cond_2
    return p2
.end method

.method public openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid URL"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;[B)Lcom/facebook/biddingkit/http/client/HttpResponse;
    .locals 2

    new-instance v0, Lcom/facebook/biddingkit/http/client/HttpPost;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/facebook/biddingkit/http/client/HttpPost;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[B)V

    invoke-virtual {p0, v0}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->execute(Lcom/facebook/biddingkit/http/client/HttpRequest;)Lcom/facebook/biddingkit/http/client/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public prepareConnection(Ljava/net/HttpURLConnection;Lcom/facebook/biddingkit/http/client/HttpMethod;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->connectionTimeout:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget p0, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->readTimeout:I

    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {p2}, Lcom/facebook/biddingkit/http/client/HttpMethod;->getMethodName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/biddingkit/http/client/HttpMethod;->getDoOutput()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {p2}, Lcom/facebook/biddingkit/http/client/HttpMethod;->getDoInput()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->setDoInput(Z)V

    if-eqz p3, :cond_0

    const-string p0, "Content-Type"

    invoke-virtual {p1, p0, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public readErrorStream(Ljava/net/HttpURLConnection;)Lcom/facebook/biddingkit/http/client/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-direct {p0, v1}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->readStream(Ljava/io/InputStream;)[B

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p0, Lcom/facebook/biddingkit/http/client/HttpResponse;

    invoke-direct {p0, p1, v0}, Lcom/facebook/biddingkit/http/client/HttpResponse;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object p0

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_2
    throw p0
.end method

.method public readInputStream(Ljava/net/HttpURLConnection;)Lcom/facebook/biddingkit/http/client/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-direct {p0, v1}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->readStream(Ljava/io/InputStream;)[B

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p0, Lcom/facebook/biddingkit/http/client/HttpResponse;

    invoke-direct {p0, p1, v0}, Lcom/facebook/biddingkit/http/client/HttpResponse;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object p0

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_2
    throw p0
.end method

.method public setConnectionTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->connectionTimeout:I

    return-void
.end method

.method public setMaxRetries(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->mMaxRetries:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Maximum retries must be between 1 and 18"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPinnedCertificates(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->pinnedCertificates:Ljava/util/Set;

    return-void
.end method

.method public setPinnedPublicKeys(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->pinnedPublicKeys:Ljava/util/Set;

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->readTimeout:I

    return-void
.end method

.method public tryMany(Lcom/facebook/biddingkit/http/client/HttpRequest;)Lcom/facebook/biddingkit/http/client/HttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/biddingkit/http/client/HttpRequestException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->mMaxRetries:I

    if-ge v2, v4, :cond_3

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->getNextTimeout(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->setConnectionTimeout(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/biddingkit/http/client/HttpRequest;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/biddingkit/http/client/HttpRequest;->getHttpMethod()Lcom/facebook/biddingkit/http/client/HttpMethod;

    move-result-object v5

    invoke-virtual {p1}, Lcom/facebook/biddingkit/http/client/HttpRequest;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/facebook/biddingkit/http/client/HttpRequest;->getContent()[B

    move-result-object v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->doHttpMethod(Ljava/lang/String;Lcom/facebook/biddingkit/http/client/HttpMethod;Ljava/lang/String;[B)Lcom/facebook/biddingkit/http/client/HttpResponse;

    move-result-object v3
    :try_end_0
    .catch Lcom/facebook/biddingkit/http/client/HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    return-object v3

    :catch_0
    move-exception v4

    invoke-virtual {p0, v4, v0, v1}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->isTimeoutException(Ljava/lang/Throwable;J)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->mMaxRetries:I

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->isRecoverable(Lcom/facebook/biddingkit/http/client/HttpRequestException;)Z

    move-result v5

    const-string v6, "AndroidHttpClient"

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->mMaxRetries:I

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_2

    :try_start_1
    iget v4, p0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->connectionTimeout:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "App is stopping: "

    invoke-static {v6, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    const-string p0, "Unable to send request: "

    invoke-static {v6, p0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-object v3
.end method

.method public writeOutputStream(Ljava/net/HttpURLConnection;[B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return p1

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_2
    throw p1
.end method
