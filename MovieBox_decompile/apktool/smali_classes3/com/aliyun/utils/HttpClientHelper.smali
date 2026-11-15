.class public Lcom/aliyun/utils/HttpClientHelper;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "HttpClientHelper"

.field private static sThreadCachePool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mCustomHeaders:[Ljava/lang/String;

.field private mHttpProxy:Ljava/lang/String;

.field private mNetworkTimeout:I

.field private mReferer:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;

.field private urlConnection:Ljava/net/URLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/aliyun/utils/HttpClientHelper;->sThreadCachePool:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mReferer:Ljava/lang/String;

    .line 8
    .line 9
    const/16 v1, 0x2710

    .line 10
    .line 11
    iput v1, p0, Lcom/aliyun/utils/HttpClientHelper;->mNetworkTimeout:I

    .line 12
    .line 13
    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mUserAgent:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mCustomHeaders:[Ljava/lang/String;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/aliyun/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/utils/HttpClientHelper;)Ljava/net/URLConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/aliyun/utils/HttpClientHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private getErrorStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    .line 2
    .line 3
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v1, v0, Ljava/net/HttpURLConnection;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0
.end method

.method private getHttpUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    :try_start_1
    new-instance v1, Ljava/net/URL;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/aliyun/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-direct {v2, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/net/Proxy;

    .line 27
    .line 28
    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 29
    .line 30
    invoke-direct {v1, v3, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    :cond_0
    move-object v1, v0

    .line 35
    :goto_0
    :try_start_2
    new-instance v2, Ljava/net/URL;

    .line 36
    .line 37
    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/net/URLConnection;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Ljava/net/URLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 62
    .line 63
    :goto_1
    :try_start_3
    instance-of v1, p1, Ljava/net/HttpURLConnection;

    .line 64
    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_2
    move-object v0, p1

    .line 69
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 70
    .line 71
    const-string v1, "GET"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget v1, p0, Lcom/aliyun/utils/HttpClientHelper;->mNetworkTimeout:I

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 79
    .line 80
    .line 81
    iget v1, p0, Lcom/aliyun/utils/HttpClientHelper;->mNetworkTimeout:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catch_1
    move-object v0, p1

    .line 88
    :catch_2
    move-object p1, v0

    .line 89
    :goto_2
    return-object p1
.end method

.method private getHttpsUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    :try_start_1
    new-instance v1, Ljava/net/URL;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/aliyun/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-direct {v2, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/net/Proxy;

    .line 27
    .line 28
    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 29
    .line 30
    invoke-direct {v1, v3, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    :cond_0
    move-object v1, v0

    .line 35
    :goto_0
    :try_start_2
    new-instance v2, Ljava/net/URL;

    .line 36
    .line 37
    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/net/URLConnection;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Ljava/net/URLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 62
    .line 63
    :goto_1
    :try_start_3
    instance-of v1, p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 64
    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_2
    move-object v0, p1

    .line 69
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 70
    .line 71
    const-string v1, "GET"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget v1, p0, Lcom/aliyun/utils/HttpClientHelper;->mNetworkTimeout:I

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 79
    .line 80
    .line 81
    iget v1, p0, Lcom/aliyun/utils/HttpClientHelper;->mNetworkTimeout:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catch_1
    move-object v0, p1

    .line 88
    :catch_2
    move-object p1, v0

    .line 89
    :goto_2
    return-object p1
.end method

.method private getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    .line 2
    .line 3
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v1, v0, Ljava/net/HttpURLConnection;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public static post(Ljava/lang/String;[B)[B
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .line 3
    .line 4
    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 16
    .line 17
    :try_start_1
    move-object v1, p0

    .line 18
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    const-string v2, "POST"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    move v4, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v4, v2

    .line 32
    :goto_0
    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 36
    .line 37
    .line 38
    const/16 v3, 0x2710

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 44
    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    array-length v3, p1

    .line 49
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    move-object v3, v0

    .line 68
    goto/16 :goto_5

    .line 69
    .line 70
    :catch_0
    move-object p1, v0

    .line 71
    :goto_1
    move-object v3, p1

    .line 72
    goto/16 :goto_6

    .line 73
    .line 74
    :cond_1
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 75
    .line 76
    .line 77
    :goto_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const/16 v3, 0xc8

    .line 82
    .line 83
    if-ne p1, v3, :cond_4

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 86
    .line 87
    .line 88
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    const/16 v1, 0x1000

    .line 90
    .line 91
    :try_start_2
    new-array v1, v1, [B

    .line 92
    .line 93
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 94
    .line 95
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 96
    .line 97
    .line 98
    :goto_3
    :try_start_3
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    const/4 v5, -0x1

    .line 103
    if-eq v4, v5, :cond_2

    .line 104
    .line 105
    invoke-virtual {v3, v1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :catchall_1
    move-exception v0

    .line 110
    move-object v6, v0

    .line 111
    move-object v0, p1

    .line 112
    move-object p1, v6

    .line 113
    goto :goto_5

    .line 114
    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 115
    .line 116
    .line 117
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 122
    .line 123
    .line 124
    :catch_1
    if-eqz p0, :cond_3

    .line 125
    .line 126
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 129
    .line 130
    .line 131
    :cond_3
    return-object v0

    .line 132
    :catchall_2
    move-exception v1

    .line 133
    move-object v3, v0

    .line 134
    move-object v0, p1

    .line 135
    move-object p1, v1

    .line 136
    goto :goto_5

    .line 137
    :catch_2
    move-object v3, v0

    .line 138
    goto :goto_6

    .line 139
    :cond_4
    if-eqz p0, :cond_a

    .line 140
    .line 141
    :goto_4
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 144
    .line 145
    .line 146
    goto :goto_7

    .line 147
    :catchall_3
    move-exception p1

    .line 148
    move-object p0, v0

    .line 149
    move-object v3, p0

    .line 150
    goto :goto_5

    .line 151
    :catch_3
    move-object p0, v0

    .line 152
    move-object p1, p0

    .line 153
    goto :goto_1

    .line 154
    :goto_5
    if-eqz v0, :cond_5

    .line 155
    .line 156
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 157
    .line 158
    .line 159
    :cond_5
    if-eqz v3, :cond_6

    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 162
    .line 163
    .line 164
    :catch_4
    :cond_6
    if-eqz p0, :cond_7

    .line 165
    .line 166
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 167
    .line 168
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 169
    .line 170
    .line 171
    :cond_7
    throw p1

    .line 172
    :catch_5
    :goto_6
    if-eqz p1, :cond_8

    .line 173
    .line 174
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 175
    .line 176
    .line 177
    :cond_8
    if-eqz v3, :cond_9

    .line 178
    .line 179
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 180
    .line 181
    .line 182
    :catch_6
    :cond_9
    if-eqz p0, :cond_a

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_a
    :goto_7
    return-object v0
.end method


# virtual methods
.method public doGet()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "https://"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/aliyun/utils/HttpClientHelper;->getHttpsUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "http://"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mUrl:Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {p0, v0}, Lcom/aliyun/utils/HttpClientHelper;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iput-object v1, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    .line 41
    .line 42
    :goto_0
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_2
    iget-object v2, p0, Lcom/aliyun/utils/HttpClientHelper;->mReferer:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    const-string v3, "Referer"

    .line 52
    .line 53
    invoke-virtual {v0, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mUserAgent:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    iget-object v2, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    .line 61
    .line 62
    const-string v3, "User-Agent"

    .line 63
    .line 64
    invoke-virtual {v2, v3, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->mCustomHeaders:[Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    array-length v2, v0

    .line 72
    const/4 v3, 0x0

    .line 73
    move v4, v3

    .line 74
    :goto_1
    if-ge v4, v2, :cond_6

    .line 75
    .line 76
    aget-object v5, v0, v4

    .line 77
    .line 78
    if-eqz v5, :cond_5

    .line 79
    .line 80
    const-string v6, ":"

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    array-length v6, v5

    .line 87
    const/4 v7, 0x2

    .line 88
    if-ne v6, v7, :cond_5

    .line 89
    .line 90
    iget-object v6, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    .line 91
    .line 92
    aget-object v7, v5, v3

    .line 93
    .line 94
    const/4 v8, 0x1

    .line 95
    aget-object v5, v5, v8

    .line 96
    .line 97
    invoke-virtual {v6, v7, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/aliyun/utils/HttpClientHelper;->getResponseCode()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    const/16 v2, 0xc8

    .line 108
    .line 109
    if-ne v0, v2, :cond_b

    .line 110
    .line 111
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 114
    .line 115
    .line 116
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 117
    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    .line 118
    .line 119
    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 120
    .line 121
    .line 122
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    .line 123
    .line 124
    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    .line 126
    .line 127
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    if-eqz v5, :cond_7

    .line 137
    .line 138
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :catchall_0
    move-exception v1

    .line 143
    move-object v4, v3

    .line 144
    :goto_3
    move-object v3, v2

    .line 145
    :goto_4
    move-object v2, v0

    .line 146
    goto/16 :goto_e

    .line 147
    .line 148
    :catch_0
    move-exception v4

    .line 149
    goto/16 :goto_c

    .line 150
    .line 151
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    if-eqz v0, :cond_8

    .line 156
    .line 157
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 158
    .line 159
    .line 160
    :cond_8
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 164
    .line 165
    .line 166
    :catch_1
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    .line 167
    .line 168
    if-eqz v0, :cond_a

    .line 169
    .line 170
    instance-of v2, v0, Ljava/net/HttpURLConnection;

    .line 171
    .line 172
    if-eqz v2, :cond_9

    .line 173
    .line 174
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_9
    instance-of v2, v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 181
    .line 182
    if-eqz v2, :cond_a

    .line 183
    .line 184
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 187
    .line 188
    .line 189
    :cond_a
    :goto_5
    return-object v1

    .line 190
    :catchall_1
    move-exception v3

    .line 191
    move-object v4, v1

    .line 192
    move-object v1, v3

    .line 193
    goto :goto_3

    .line 194
    :catch_2
    move-exception v4

    .line 195
    :goto_6
    move-object v3, v1

    .line 196
    goto/16 :goto_c

    .line 197
    .line 198
    :catchall_2
    move-exception v2

    .line 199
    move-object v3, v1

    .line 200
    move-object v4, v3

    .line 201
    move-object v1, v2

    .line 202
    goto :goto_4

    .line 203
    :catch_3
    move-exception v4

    .line 204
    move-object v2, v1

    .line 205
    :goto_7
    move-object v3, v2

    .line 206
    goto/16 :goto_c

    .line 207
    .line 208
    :catchall_3
    move-exception v0

    .line 209
    move-object v2, v1

    .line 210
    move-object v3, v2

    .line 211
    :goto_8
    move-object v4, v3

    .line 212
    :goto_9
    move-object v1, v0

    .line 213
    goto/16 :goto_e

    .line 214
    .line 215
    :catch_4
    move-exception v4

    .line 216
    move-object v0, v1

    .line 217
    move-object v2, v0

    .line 218
    goto :goto_7

    .line 219
    :cond_b
    :try_start_5
    invoke-direct {p0}, Lcom/aliyun/utils/HttpClientHelper;->getErrorStream()Ljava/io/InputStream;

    .line 220
    .line 221
    .line 222
    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 223
    :try_start_6
    new-instance v3, Ljava/io/InputStreamReader;

    .line 224
    .line 225
    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 226
    .line 227
    .line 228
    :try_start_7
    new-instance v4, Ljava/io/BufferedReader;

    .line 229
    .line 230
    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 231
    .line 232
    .line 233
    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    :goto_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    if-eqz v6, :cond_c

    .line 243
    .line 244
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    goto :goto_a

    .line 248
    :catchall_4
    move-exception v1

    .line 249
    goto/16 :goto_e

    .line 250
    .line 251
    :catch_5
    move-exception v0

    .line 252
    move-object v9, v4

    .line 253
    move-object v4, v0

    .line 254
    move-object v0, v2

    .line 255
    move-object v2, v3

    .line 256
    move-object v3, v9

    .line 257
    goto :goto_c

    .line 258
    :cond_c
    new-instance v6, Lorg/json/JSONObject;

    .line 259
    .line 260
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 261
    .line 262
    .line 263
    const-string v7, "StatusCode"

    .line 264
    .line 265
    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 266
    .line 267
    .line 268
    const-string v0, "ResponseStr"

    .line 269
    .line 270
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 281
    if-eqz v2, :cond_d

    .line 282
    .line 283
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 284
    .line 285
    .line 286
    :cond_d
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 290
    .line 291
    .line 292
    :catch_6
    iget-object v1, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    .line 293
    .line 294
    if-eqz v1, :cond_f

    .line 295
    .line 296
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    .line 297
    .line 298
    if-eqz v2, :cond_e

    .line 299
    .line 300
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 301
    .line 302
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 303
    .line 304
    .line 305
    goto :goto_b

    .line 306
    :cond_e
    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 307
    .line 308
    if-eqz v2, :cond_f

    .line 309
    .line 310
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 311
    .line 312
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 313
    .line 314
    .line 315
    :cond_f
    :goto_b
    return-object v0

    .line 316
    :catchall_5
    move-exception v0

    .line 317
    move-object v4, v1

    .line 318
    goto :goto_9

    .line 319
    :catch_7
    move-exception v4

    .line 320
    move-object v0, v2

    .line 321
    move-object v2, v3

    .line 322
    goto :goto_6

    .line 323
    :catchall_6
    move-exception v0

    .line 324
    move-object v3, v1

    .line 325
    goto :goto_8

    .line 326
    :catch_8
    move-exception v4

    .line 327
    move-object v3, v1

    .line 328
    move-object v0, v2

    .line 329
    move-object v2, v3

    .line 330
    :goto_c
    :try_start_a
    const-string v5, "HttpClientUtil"

    .line 331
    .line 332
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    invoke-static {v5, v4}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 337
    .line 338
    .line 339
    if-eqz v0, :cond_10

    .line 340
    .line 341
    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 342
    .line 343
    .line 344
    :cond_10
    if-eqz v2, :cond_11

    .line 345
    .line 346
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 347
    .line 348
    .line 349
    :cond_11
    if-eqz v3, :cond_12

    .line 350
    .line 351
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 352
    .line 353
    .line 354
    :catch_9
    :cond_12
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    .line 355
    .line 356
    if-eqz v0, :cond_14

    .line 357
    .line 358
    instance-of v2, v0, Ljava/net/HttpURLConnection;

    .line 359
    .line 360
    if-eqz v2, :cond_13

    .line 361
    .line 362
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 363
    .line 364
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 365
    .line 366
    .line 367
    goto :goto_d

    .line 368
    :cond_13
    instance-of v2, v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 369
    .line 370
    if-eqz v2, :cond_14

    .line 371
    .line 372
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 373
    .line 374
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 375
    .line 376
    .line 377
    :cond_14
    :goto_d
    return-object v1

    .line 378
    :goto_e
    if-eqz v2, :cond_15

    .line 379
    .line 380
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 381
    .line 382
    .line 383
    :cond_15
    if-eqz v3, :cond_16

    .line 384
    .line 385
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 386
    .line 387
    .line 388
    :cond_16
    if-eqz v4, :cond_17

    .line 389
    .line 390
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 391
    .line 392
    .line 393
    :catch_a
    :cond_17
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    .line 394
    .line 395
    if-eqz v0, :cond_19

    .line 396
    .line 397
    instance-of v2, v0, Ljava/net/HttpURLConnection;

    .line 398
    .line 399
    if-nez v2, :cond_18

    .line 400
    .line 401
    instance-of v2, v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 402
    .line 403
    if-eqz v2, :cond_19

    .line 404
    .line 405
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 406
    .line 407
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 408
    .line 409
    .line 410
    goto :goto_f

    .line 411
    :cond_18
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 412
    .line 413
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 414
    .line 415
    .line 416
    :cond_19
    :goto_f
    throw v1
.end method

.method public setCustomHeaders([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/utils/HttpClientHelper;->mCustomHeaders:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/utils/HttpClientHelper;->mHttpProxy:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRefer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/utils/HttpClientHelper;->mReferer:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/aliyun/utils/HttpClientHelper;->mNetworkTimeout:I

    .line 2
    .line 3
    return-void
.end method

.method public setUerAgent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/utils/HttpClientHelper;->mUserAgent:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    sget-object v0, Lcom/aliyun/utils/HttpClientHelper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "HttpClientHelper stop().... urlConnection = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper;->urlConnection:Ljava/net/URLConnection;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    sget-object v0, Lcom/aliyun/utils/HttpClientHelper;->sThreadCachePool:Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    new-instance v1, Lcom/aliyun/utils/HttpClientHelper$1;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/aliyun/utils/HttpClientHelper$1;-><init>(Lcom/aliyun/utils/HttpClientHelper;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
