.class Lcom/cloud/hisavana/net/CommonOkHttpClient$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/net/CommonOkHttpClient;->n(Lokhttp3/Request;Lcom/cloud/hisavana/net/impl/IHttpCallback;)Lokhttp3/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/net/impl/IHttpCallback;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/net/impl/IHttpCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$2;->a:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    .line 1
    const/16 p1, 0x1e0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$2;->a:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    instance-of v2, p2, Ljava/net/SocketTimeoutException;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    const/16 v2, 0x1e1

    .line 14
    .line 15
    invoke-interface {v1, v2, v0, p2}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    instance-of v2, p2, Ljava/net/UnknownHostException;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    const/16 v2, 0x1e4

    .line 26
    .line 27
    invoke-interface {v1, v2, v0, p2}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    instance-of v2, p2, Ljava/net/NoRouteToHostException;

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    const/16 v2, 0x1e5

    .line 36
    .line 37
    invoke-interface {v1, v2, v0, p2}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    instance-of v2, p2, Ljava/net/ProtocolException;

    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    const/16 v2, 0x1e6

    .line 46
    .line 47
    invoke-interface {v1, v2, v0, p2}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    instance-of v2, p2, Ljava/net/ConnectException;

    .line 52
    .line 53
    if-eqz v2, :cond_5

    .line 54
    .line 55
    const/16 v2, 0x1e3

    .line 56
    .line 57
    invoke-interface {v1, v2, v0, p2}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    instance-of v2, p2, Lorg/chromium/net/QuicException;

    .line 62
    .line 63
    if-eqz v2, :cond_6

    .line 64
    .line 65
    const/16 v2, 0x1e7

    .line 66
    .line 67
    invoke-interface {v1, v2, v0, p2}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_6
    instance-of v2, p2, Lorg/chromium/net/NetworkException;

    .line 72
    .line 73
    if-eqz v2, :cond_7

    .line 74
    .line 75
    move-object v1, p2

    .line 76
    check-cast v1, Lorg/chromium/net/NetworkException;

    .line 77
    .line 78
    invoke-virtual {v1}, Lorg/chromium/net/NetworkException;->getErrorCode()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v1}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->c(I)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    iget-object v2, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$2;->a:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    .line 87
    .line 88
    invoke-interface {v2, v1, v0, p2}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_7
    invoke-interface {v1, p1, v0, p2}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$2;->a:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    .line 97
    .line 98
    if-eqz v2, :cond_8

    .line 99
    .line 100
    invoke-interface {v2, p1, v0, p2}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    :cond_8
    invoke-static {v1}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->d(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :goto_1
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$2;->a:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    if-eqz p2, :cond_2

    .line 8
    .line 9
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    new-array v0, v0, [B

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$2;->a:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    .line 26
    .line 27
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v1, v2, v0, v3}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->f(I[BLokhttp3/Headers;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    invoke-static {}, Lcom/cloud/hisavana/net/CommonOkHttpClient;->e()Ljava/lang/Exception;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/16 v2, 0x403

    .line 44
    .line 45
    invoke-interface {v0, v2, p1, v1}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :goto_1
    if-eqz p2, :cond_3

    .line 50
    .line 51
    iget-object v1, p0, Lcom/cloud/hisavana/net/CommonOkHttpClient$2;->a:Lcom/cloud/hisavana/net/impl/IHttpCallback;

    .line 52
    .line 53
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-interface {v1, p2, p1, v0}, Lcom/cloud/hisavana/net/impl/IHttpCallback;->d(I[BLjava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_2
    return-void
.end method
