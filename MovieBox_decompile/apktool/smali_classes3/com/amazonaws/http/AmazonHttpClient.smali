.class public Lcom/amazonaws/http/AmazonHttpClient;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final e:Lcom/amazonaws/logging/Log;

.field static final f:Lcom/amazonaws/logging/Log;


# instance fields
.field final a:Lcom/amazonaws/http/HttpClient;

.field final b:Lcom/amazonaws/ClientConfiguration;

.field private final c:Lcom/amazonaws/metrics/RequestMetricCollector;

.field private final d:Lcom/amazonaws/http/HttpRequestFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "com.amazonaws.request"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->c(Ljava/lang/String;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/http/AmazonHttpClient;->e:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    const-class v0, Lcom/amazonaws/http/AmazonHttpClient;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/amazonaws/http/AmazonHttpClient;->f:Lcom/amazonaws/logging/Log;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/amazonaws/http/HttpRequestFactory;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/amazonaws/http/HttpRequestFactory;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->d:Lcom/amazonaws/http/HttpRequestFactory;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/http/HttpClient;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/metrics/RequestMetricCollector;

    .line 17
    .line 18
    return-void
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p0, " "

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "("

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, " + 15"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v1, " - 15"

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method private j(Ljava/lang/Throwable;Lcom/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->d(Lcom/amazonaws/metrics/MetricType;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0, p1}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method

.method private k(Lcom/amazonaws/http/HttpResponse;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->e()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0xc8

    .line 6
    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x12c

    .line 10
    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method private static l(Lcom/amazonaws/http/HttpResponse;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpResponse;->e()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v1, "Location"

    .line 10
    .line 11
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/String;

    .line 16
    .line 17
    const/16 v1, 0x133

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0
.end method

.method private n(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)J
    .locals 2

    .line 1
    add-int/lit8 p3, p3, -0x2

    .line 2
    .line 3
    invoke-virtual {p4}, Lcom/amazonaws/retry/RetryPolicy;->a()Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    invoke-interface {p4, p1, p2, p3}, Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;->a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    sget-object p4, Lcom/amazonaws/http/AmazonHttpClient;->f:Lcom/amazonaws/logging/Log;

    .line 12
    .line 13
    invoke-interface {p4}, Lcom/amazonaws/logging/Log;->b()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "Retriable error detected, will retry in "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, "ms, attempt number: "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-interface {p4, p3}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    return-wide p1

    .line 51
    :catch_0
    move-exception p1

    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 57
    .line 58
    .line 59
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-direct {p2, p3, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw p2
.end method

.method private r(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z
    .locals 2

    .line 1
    add-int/lit8 p4, p4, -0x1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->b()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p5}, Lcom/amazonaws/retry/RetryPolicy;->d()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p5}, Lcom/amazonaws/retry/RetryPolicy;->b()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    if-lt p4, v0, :cond_2

    .line 23
    .line 24
    return v1

    .line 25
    :cond_2
    if-eqz p2, :cond_4

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_4

    .line 32
    .line 33
    sget-object p1, Lcom/amazonaws/http/AmazonHttpClient;->f:Lcom/amazonaws/logging/Log;

    .line 34
    .line 35
    invoke-interface {p1}, Lcom/amazonaws/logging/Log;->b()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    const-string p2, "Content not repeatable"

    .line 42
    .line 43
    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    return v1

    .line 47
    :cond_4
    invoke-virtual {p5}, Lcom/amazonaws/retry/RetryPolicy;->c()Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-interface {p2, p1, p3, p4}, Lcom/amazonaws/retry/RetryPolicy$RetryCondition;->a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1
.end method


# virtual methods
.method a(Lcom/amazonaws/Request;Lcom/amazonaws/Response;Ljava/util/List;Lcom/amazonaws/AmazonClientException;)V
    .locals 1

    .line 1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/amazonaws/handlers/RequestHandler2;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2, p4}, Lcom/amazonaws/handlers/RequestHandler2;->b(Lcom/amazonaws/Request;Lcom/amazonaws/Response;Ljava/lang/Exception;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method b(Lcom/amazonaws/Request;Ljava/util/List;Lcom/amazonaws/Response;Lcom/amazonaws/util/TimingInfo;)V
    .locals 0

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    if-eqz p4, :cond_0

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    check-cast p4, Lcom/amazonaws/handlers/RequestHandler2;

    .line 16
    .line 17
    invoke-virtual {p4, p1, p3}, Lcom/amazonaws/handlers/RequestHandler2;->c(Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public d(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/amazonaws/Request;->j()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->r()Ljava/net/URI;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/amazonaws/Request;->j()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0}, Lcom/amazonaws/util/URIBuilder;->b(Ljava/net/URI;)Lcom/amazonaws/util/URIBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Lcom/amazonaws/util/URIBuilder;->c(Ljava/lang/String;)Lcom/amazonaws/util/URIBuilder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/amazonaws/util/URIBuilder;->a()Ljava/net/URI;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->s(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->f:Lcom/amazonaws/logging/Log;

    .line 52
    .line 53
    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->b()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v3, "Failed to prepend host prefix: "

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    .line 84
    .line 85
    invoke-virtual {p0, p1, p4}, Lcom/amazonaws/http/AmazonHttpClient;->o(Lcom/amazonaws/Request;Lcom/amazonaws/http/ExecutionContext;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p4}, Lcom/amazonaws/http/ExecutionContext;->a()Lcom/amazonaws/util/AWSRequestMetrics;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazonaws/http/AmazonHttpClient;->e(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    .line 94
    .line 95
    .line 96
    move-result-object p2
    :try_end_1
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_1 .. :try_end_1} :catch_2

    .line 97
    :try_start_2
    invoke-virtual {v1}, Lcom/amazonaws/util/AWSRequestMetrics;->c()Lcom/amazonaws/util/TimingInfo;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    invoke-virtual {p3}, Lcom/amazonaws/util/TimingInfo;->c()Lcom/amazonaws/util/TimingInfo;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/amazonaws/http/AmazonHttpClient;->b(Lcom/amazonaws/Request;Ljava/util/List;Lcom/amazonaws/Response;Lcom/amazonaws/util/TimingInfo;)V
    :try_end_2
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_2 .. :try_end_2} :catch_1

    .line 106
    .line 107
    .line 108
    return-object p2

    .line 109
    :catch_1
    move-exception p3

    .line 110
    goto :goto_1

    .line 111
    :catch_2
    move-exception p3

    .line 112
    const/4 p2, 0x0

    .line 113
    :goto_1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/Response;Ljava/util/List;Lcom/amazonaws/AmazonClientException;)V

    .line 114
    .line 115
    .line 116
    throw p3

    .line 117
    :cond_1
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    .line 118
    .line 119
    const-string p2, "Internal SDK Error: No execution context parameter specified."

    .line 120
    .line 121
    invoke-direct {p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p1
.end method

.method e(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    .locals 26

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p4

    .line 6
    .line 7
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/http/ExecutionContext;->a()Lcom/amazonaws/util/AWSRequestMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v10

    .line 11
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ServiceName:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 12
    .line 13
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->d()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v10, v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ServiceEndpoint:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 21
    .line 22
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->r()Ljava/net/URI;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v10, v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p0 .. p1}, Lcom/amazonaws/http/AmazonHttpClient;->q(Lcom/amazonaws/Request;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "aws-sdk-invocation-id"

    .line 41
    .line 42
    invoke-interface {v8, v1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {v11, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    new-instance v12, Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-direct {v12, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    .line 64
    .line 65
    .line 66
    move-result-object v13

    .line 67
    if-eqz v13, :cond_0

    .line 68
    .line 69
    invoke-virtual {v13}, Ljava/io/InputStream;->markSupported()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    const/4 v0, -0x1

    .line 76
    invoke-virtual {v13, v0}, Ljava/io/InputStream;->mark(I)V

    .line 77
    .line 78
    .line 79
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/auth/AWSCredentials;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    const/4 v0, 0x0

    .line 84
    const-wide/16 v1, 0x0

    .line 85
    .line 86
    move-wide v2, v1

    .line 87
    const/4 v4, 0x0

    .line 88
    const/4 v5, 0x0

    .line 89
    const/4 v6, 0x0

    .line 90
    const/16 v16, 0x0

    .line 91
    .line 92
    const/16 v17, 0x0

    .line 93
    .line 94
    move v1, v0

    .line 95
    :goto_0
    add-int/lit8 v15, v0, 0x1

    .line 96
    .line 97
    move/from16 v19, v1

    .line 98
    .line 99
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestCount:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 100
    .line 101
    move-wide/from16 v20, v2

    .line 102
    .line 103
    int-to-long v2, v15

    .line 104
    invoke-virtual {v10, v1, v2, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->f(Lcom/amazonaws/metrics/MetricType;J)V

    .line 105
    .line 106
    .line 107
    const/4 v1, 0x1

    .line 108
    if-le v15, v1, :cond_1

    .line 109
    .line 110
    invoke-interface {v8, v11}, Lcom/amazonaws/Request;->q(Ljava/util/Map;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v8, v12}, Lcom/amazonaws/Request;->i(Ljava/util/Map;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v8, v13}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 117
    .line 118
    .line 119
    :cond_1
    if-eqz v16, :cond_2

    .line 120
    .line 121
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->r()Ljava/net/URI;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    if-nez v2, :cond_2

    .line 126
    .line 127
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->p()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    if-nez v2, :cond_2

    .line 132
    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v3, "://"

    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-interface {v8, v2}, Lcom/amazonaws/Request;->s(Ljava/net/URI;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-interface {v8, v2}, Lcom/amazonaws/Request;->c(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_2
    const-string v3, "Cannot close the response content."

    .line 176
    .line 177
    if-le v15, v1, :cond_4

    .line 178
    .line 179
    :try_start_0
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 180
    .line 181
    invoke-virtual {v10, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 182
    .line 183
    .line 184
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->l()Lcom/amazonaws/AmazonWebServiceRequest;

    .line 185
    .line 186
    .line 187
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 188
    move-object/from16 v22, v6

    .line 189
    .line 190
    :try_start_2
    iget-object v6, v7, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 191
    .line 192
    invoke-virtual {v6}, Lcom/amazonaws/ClientConfiguration;->d()Lcom/amazonaws/retry/RetryPolicy;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-direct {v7, v2, v4, v15, v6}, Lcom/amazonaws/http/AmazonHttpClient;->n(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)J

    .line 197
    .line 198
    .line 199
    move-result-wide v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 200
    :try_start_3
    invoke-virtual {v10, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 201
    .line 202
    .line 203
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    if-eqz v1, :cond_3

    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-eqz v2, :cond_3

    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 216
    .line 217
    .line 218
    goto :goto_6

    .line 219
    :catchall_0
    move-exception v0

    .line 220
    move-object v2, v0

    .line 221
    move-object v9, v3

    .line 222
    :goto_1
    move/from16 v1, v19

    .line 223
    .line 224
    move-object/from16 v6, v22

    .line 225
    .line 226
    goto/16 :goto_28

    .line 227
    .line 228
    :catch_0
    move-exception v0

    .line 229
    move-object v9, v3

    .line 230
    :goto_2
    move/from16 v1, v19

    .line 231
    .line 232
    move-object/from16 v6, v22

    .line 233
    .line 234
    goto/16 :goto_23

    .line 235
    .line 236
    :catch_1
    move-exception v0

    .line 237
    move-object v9, v3

    .line 238
    :goto_3
    move/from16 v1, v19

    .line 239
    .line 240
    move-object/from16 v6, v22

    .line 241
    .line 242
    goto/16 :goto_24

    .line 243
    .line 244
    :catch_2
    move-exception v0

    .line 245
    :goto_4
    move-object v9, v3

    .line 246
    move-object/from16 v25, v5

    .line 247
    .line 248
    :goto_5
    move-object/from16 v23, v11

    .line 249
    .line 250
    goto/16 :goto_25

    .line 251
    .line 252
    :cond_3
    :goto_6
    move-wide/from16 v1, v20

    .line 253
    .line 254
    goto :goto_b

    .line 255
    :catchall_1
    move-exception v0

    .line 256
    goto :goto_7

    .line 257
    :catchall_2
    move-exception v0

    .line 258
    move-object/from16 v22, v6

    .line 259
    .line 260
    :goto_7
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 261
    .line 262
    invoke-virtual {v10, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 263
    .line 264
    .line 265
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    :catchall_3
    move-exception v0

    .line 267
    move-object/from16 v22, v6

    .line 268
    .line 269
    move-object v2, v0

    .line 270
    move-object v9, v3

    .line 271
    :goto_8
    move/from16 v1, v19

    .line 272
    .line 273
    goto/16 :goto_28

    .line 274
    .line 275
    :catch_3
    move-exception v0

    .line 276
    move-object/from16 v22, v6

    .line 277
    .line 278
    move-object v9, v3

    .line 279
    :goto_9
    move/from16 v1, v19

    .line 280
    .line 281
    goto/16 :goto_23

    .line 282
    .line 283
    :catch_4
    move-exception v0

    .line 284
    move-object/from16 v22, v6

    .line 285
    .line 286
    move-object v9, v3

    .line 287
    :goto_a
    move/from16 v1, v19

    .line 288
    .line 289
    goto/16 :goto_24

    .line 290
    .line 291
    :catch_5
    move-exception v0

    .line 292
    move-object/from16 v22, v6

    .line 293
    .line 294
    goto :goto_4

    .line 295
    :cond_4
    move-object/from16 v22, v6

    .line 296
    .line 297
    goto :goto_6

    .line 298
    :goto_b
    :try_start_4
    const-string v4, "aws-sdk-retry"

    .line 299
    .line 300
    new-instance v6, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v0, "/"

    .line 309
    .line 310
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-interface {v8, v4, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_28
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_f

    .line 321
    .line 322
    .line 323
    if-nez v5, :cond_5

    .line 324
    .line 325
    :try_start_5
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->r()Ljava/net/URI;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {v9, v0}, Lcom/amazonaws/http/ExecutionContext;->e(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;

    .line 330
    .line 331
    .line 332
    move-result-object v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 333
    :cond_5
    move-object v6, v5

    .line 334
    goto :goto_c

    .line 335
    :catch_6
    move-exception v0

    .line 336
    move-wide/from16 v20, v1

    .line 337
    .line 338
    goto :goto_4

    .line 339
    :goto_c
    if-eqz v6, :cond_6

    .line 340
    .line 341
    if-eqz v14, :cond_6

    .line 342
    .line 343
    :try_start_6
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 344
    .line 345
    invoke-virtual {v10, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 346
    .line 347
    .line 348
    :try_start_7
    invoke-interface {v6, v8, v14}, Lcom/amazonaws/auth/Signer;->b(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 349
    .line 350
    .line 351
    :try_start_8
    invoke-virtual {v10, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 352
    .line 353
    .line 354
    goto :goto_e

    .line 355
    :catch_7
    move-exception v0

    .line 356
    move-wide/from16 v20, v1

    .line 357
    .line 358
    move-object v9, v3

    .line 359
    :goto_d
    move-object/from16 v25, v6

    .line 360
    .line 361
    goto :goto_5

    .line 362
    :catchall_4
    move-exception v0

    .line 363
    move-object v4, v0

    .line 364
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 365
    .line 366
    invoke-virtual {v10, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 367
    .line 368
    .line 369
    throw v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 370
    :cond_6
    :goto_e
    :try_start_9
    sget-object v0, Lcom/amazonaws/http/AmazonHttpClient;->e:Lcom/amazonaws/logging/Log;

    .line 371
    .line 372
    invoke-interface {v0}, Lcom/amazonaws/logging/Log;->b()Z

    .line 373
    .line 374
    .line 375
    move-result v4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_f

    .line 376
    if-eqz v4, :cond_7

    .line 377
    .line 378
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .line 382
    .line 383
    const-string v5, "Sending Request: "

    .line 384
    .line 385
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    invoke-interface {v0, v4}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 400
    .line 401
    .line 402
    :cond_7
    :try_start_b
    iget-object v0, v7, Lcom/amazonaws/http/AmazonHttpClient;->d:Lcom/amazonaws/http/HttpRequestFactory;

    .line 403
    .line 404
    iget-object v4, v7, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 405
    .line 406
    invoke-virtual {v0, v8, v4, v9}, Lcom/amazonaws/http/HttpRequestFactory;->b(Lcom/amazonaws/Request;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/http/HttpRequest;

    .line 407
    .line 408
    .line 409
    move-result-object v5
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_f

    .line 410
    :try_start_c
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 411
    .line 412
    invoke-virtual {v10, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_27
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_f

    .line 413
    .line 414
    .line 415
    :try_start_d
    iget-object v4, v7, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/http/HttpClient;

    .line 416
    .line 417
    invoke-interface {v4, v5}, Lcom/amazonaws/http/HttpClient;->a(Lcom/amazonaws/http/HttpRequest;)Lcom/amazonaws/http/HttpResponse;

    .line 418
    .line 419
    .line 420
    move-result-object v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 421
    :try_start_e
    invoke-virtual {v10, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 422
    .line 423
    .line 424
    invoke-direct {v7, v4}, Lcom/amazonaws/http/AmazonHttpClient;->k(Lcom/amazonaws/http/HttpResponse;)Z

    .line 425
    .line 426
    .line 427
    move-result v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_23
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_21
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_20
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    .line 428
    if-eqz v0, :cond_9

    .line 429
    .line 430
    :try_start_f
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 431
    .line 432
    invoke-virtual {v4}, Lcom/amazonaws/http/HttpResponse;->e()I

    .line 433
    .line 434
    .line 435
    move-result v17
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 436
    move-wide/from16 v20, v1

    .line 437
    .line 438
    :try_start_10
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    invoke-virtual {v10, v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/http/HttpResponseHandler;->b()Z

    .line 446
    .line 447
    .line 448
    move-result v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 449
    move-object/from16 v2, p2

    .line 450
    .line 451
    :try_start_11
    invoke-virtual {v7, v8, v2, v4, v9}, Lcom/amazonaws/http/AmazonHttpClient;->i(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    new-instance v2, Lcom/amazonaws/Response;

    .line 456
    .line 457
    invoke-direct {v2, v0, v4}, Lcom/amazonaws/Response;-><init>(Ljava/lang/Object;Lcom/amazonaws/http/HttpResponse;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 458
    .line 459
    .line 460
    if-nez v1, :cond_8

    .line 461
    .line 462
    :try_start_12
    invoke-virtual {v4}, Lcom/amazonaws/http/HttpResponse;->d()Ljava/io/InputStream;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    if-eqz v0, :cond_8

    .line 467
    .line 468
    invoke-virtual {v4}, Lcom/amazonaws/http/HttpResponse;->d()Ljava/io/InputStream;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    .line 473
    .line 474
    .line 475
    goto :goto_f

    .line 476
    :catch_8
    move-exception v0

    .line 477
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->f:Lcom/amazonaws/logging/Log;

    .line 478
    .line 479
    invoke-interface {v1, v3, v0}, Lcom/amazonaws/logging/Log;->i(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 480
    .line 481
    .line 482
    :cond_8
    :goto_f
    return-object v2

    .line 483
    :catchall_5
    move-exception v0

    .line 484
    move-object v2, v0

    .line 485
    move-object v9, v3

    .line 486
    move-object v6, v4

    .line 487
    goto/16 :goto_28

    .line 488
    .line 489
    :catch_9
    move-exception v0

    .line 490
    move-object v9, v3

    .line 491
    move-object v6, v4

    .line 492
    goto/16 :goto_23

    .line 493
    .line 494
    :catch_a
    move-exception v0

    .line 495
    move-object v9, v3

    .line 496
    move-object v6, v4

    .line 497
    goto/16 :goto_24

    .line 498
    .line 499
    :catch_b
    move-exception v0

    .line 500
    move/from16 v19, v1

    .line 501
    .line 502
    :goto_10
    move-object v9, v3

    .line 503
    move-object/from16 v22, v4

    .line 504
    .line 505
    move-object/from16 v17, v5

    .line 506
    .line 507
    goto/16 :goto_d

    .line 508
    .line 509
    :catchall_6
    move-exception v0

    .line 510
    move-object v2, v0

    .line 511
    move-object v9, v3

    .line 512
    move-object v6, v4

    .line 513
    goto/16 :goto_8

    .line 514
    .line 515
    :catch_c
    move-exception v0

    .line 516
    move-object v9, v3

    .line 517
    move-object v6, v4

    .line 518
    goto/16 :goto_9

    .line 519
    .line 520
    :catch_d
    move-exception v0

    .line 521
    move-object v9, v3

    .line 522
    move-object v6, v4

    .line 523
    goto/16 :goto_a

    .line 524
    .line 525
    :catch_e
    move-exception v0

    .line 526
    goto :goto_10

    .line 527
    :catch_f
    move-exception v0

    .line 528
    move-wide/from16 v20, v1

    .line 529
    .line 530
    goto :goto_10

    .line 531
    :cond_9
    move-wide/from16 v20, v1

    .line 532
    .line 533
    :try_start_13
    invoke-static {v4}, Lcom/amazonaws/http/AmazonHttpClient;->l(Lcom/amazonaws/http/HttpResponse;)Z

    .line 534
    .line 535
    .line 536
    move-result v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_22
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_21
    .catch Ljava/lang/Error; {:try_start_13 .. :try_end_13} :catch_20
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    .line 537
    if-eqz v0, :cond_a

    .line 538
    .line 539
    :try_start_14
    invoke-virtual {v4}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    const-string v1, "Location"

    .line 544
    .line 545
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    check-cast v0, Ljava/lang/String;

    .line 550
    .line 551
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->f:Lcom/amazonaws/logging/Log;

    .line 552
    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_14
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_14} :catch_13
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 556
    .line 557
    .line 558
    move-object/from16 v23, v3

    .line 559
    .line 560
    :try_start_15
    const-string v3, "Redirecting to: "

    .line 561
    .line 562
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    .line 573
    .line 574
    .line 575
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 576
    .line 577
    .line 578
    move-result-object v16

    .line 579
    const/4 v1, 0x0

    .line 580
    invoke-interface {v8, v1}, Lcom/amazonaws/Request;->s(Ljava/net/URI;)V

    .line 581
    .line 582
    .line 583
    invoke-interface {v8, v1}, Lcom/amazonaws/Request;->c(Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 587
    .line 588
    invoke-virtual {v4}, Lcom/amazonaws/http/HttpResponse;->e()I

    .line 589
    .line 590
    .line 591
    move-result v2

    .line 592
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    invoke-virtual {v10, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 597
    .line 598
    .line 599
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RedirectLocation:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 600
    .line 601
    invoke-virtual {v10, v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 602
    .line 603
    .line 604
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 605
    .line 606
    const/4 v1, 0x0

    .line 607
    invoke-virtual {v10, v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_11
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_15} :catch_10
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 608
    .line 609
    .line 610
    move-object/from16 v24, v5

    .line 611
    .line 612
    move-object/from16 v25, v6

    .line 613
    .line 614
    move/from16 v1, v19

    .line 615
    .line 616
    move-object/from16 v9, v23

    .line 617
    .line 618
    const/4 v2, 0x0

    .line 619
    move-object/from16 v23, v11

    .line 620
    .line 621
    move-object v11, v4

    .line 622
    goto/16 :goto_1b

    .line 623
    .line 624
    :catchall_7
    move-exception v0

    .line 625
    :goto_11
    move-object v2, v0

    .line 626
    move-object v6, v4

    .line 627
    move/from16 v1, v19

    .line 628
    .line 629
    move-object/from16 v9, v23

    .line 630
    .line 631
    goto/16 :goto_28

    .line 632
    .line 633
    :catch_10
    move-exception v0

    .line 634
    :goto_12
    move-object v6, v4

    .line 635
    move/from16 v1, v19

    .line 636
    .line 637
    move-object/from16 v9, v23

    .line 638
    .line 639
    goto/16 :goto_23

    .line 640
    .line 641
    :catch_11
    move-exception v0

    .line 642
    :goto_13
    move-object v6, v4

    .line 643
    move/from16 v1, v19

    .line 644
    .line 645
    move-object/from16 v9, v23

    .line 646
    .line 647
    goto/16 :goto_24

    .line 648
    .line 649
    :catch_12
    move-exception v0

    .line 650
    :goto_14
    move-object/from16 v22, v4

    .line 651
    .line 652
    move-object/from16 v17, v5

    .line 653
    .line 654
    move-object/from16 v25, v6

    .line 655
    .line 656
    move-object/from16 v9, v23

    .line 657
    .line 658
    goto/16 :goto_5

    .line 659
    .line 660
    :catchall_8
    move-exception v0

    .line 661
    move-object/from16 v23, v3

    .line 662
    .line 663
    goto :goto_11

    .line 664
    :catch_13
    move-exception v0

    .line 665
    move-object/from16 v23, v3

    .line 666
    .line 667
    goto :goto_12

    .line 668
    :catch_14
    move-exception v0

    .line 669
    move-object/from16 v23, v3

    .line 670
    .line 671
    goto :goto_13

    .line 672
    :catch_15
    move-exception v0

    .line 673
    move-object/from16 v23, v3

    .line 674
    .line 675
    goto :goto_14

    .line 676
    :cond_a
    move-object/from16 v23, v3

    .line 677
    .line 678
    :try_start_16
    invoke-interface/range {p3 .. p3}, Lcom/amazonaws/http/HttpResponseHandler;->b()Z

    .line 679
    .line 680
    .line 681
    move-result v17
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1e
    .catch Ljava/lang/Error; {:try_start_16 .. :try_end_16} :catch_1d
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    .line 682
    move-object/from16 v3, p3

    .line 683
    .line 684
    :try_start_17
    invoke-virtual {v7, v8, v3, v4}, Lcom/amazonaws/http/AmazonHttpClient;->h(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 689
    .line 690
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getRequestId()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    invoke-virtual {v10, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 695
    .line 696
    .line 697
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSErrorCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 698
    .line 699
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v2

    .line 703
    invoke-virtual {v10, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 704
    .line 705
    .line 706
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 707
    .line 708
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    .line 709
    .line 710
    .line 711
    move-result v2

    .line 712
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 713
    .line 714
    .line 715
    move-result-object v2

    .line 716
    invoke-virtual {v10, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 717
    .line 718
    .line 719
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->l()Lcom/amazonaws/AmazonWebServiceRequest;

    .line 720
    .line 721
    .line 722
    move-result-object v2

    .line 723
    invoke-virtual {v5}, Lcom/amazonaws/http/HttpRequest;->a()Ljava/io/InputStream;

    .line 724
    .line 725
    .line 726
    move-result-object v19

    .line 727
    iget-object v1, v7, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 728
    .line 729
    invoke-virtual {v1}, Lcom/amazonaws/ClientConfiguration;->d()Lcom/amazonaws/retry/RetryPolicy;

    .line 730
    .line 731
    .line 732
    move-result-object v22
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_1b
    .catch Ljava/lang/Error; {:try_start_17 .. :try_end_17} :catch_1a
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 733
    move-object/from16 v1, p0

    .line 734
    .line 735
    move-object/from16 v9, v23

    .line 736
    .line 737
    move-object/from16 v3, v19

    .line 738
    .line 739
    move-object/from16 v23, v11

    .line 740
    .line 741
    move-object v11, v4

    .line 742
    move-object v4, v0

    .line 743
    move-object/from16 v24, v5

    .line 744
    .line 745
    move v5, v15

    .line 746
    move-object/from16 v25, v6

    .line 747
    .line 748
    move-object/from16 v6, v22

    .line 749
    .line 750
    :try_start_18
    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/http/AmazonHttpClient;->r(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z

    .line 751
    .line 752
    .line 753
    move-result v1

    .line 754
    if-eqz v1, :cond_d

    .line 755
    .line 756
    invoke-static {v0}, Lcom/amazonaws/retry/RetryUtils;->a(Lcom/amazonaws/AmazonServiceException;)Z

    .line 757
    .line 758
    .line 759
    move-result v1

    .line 760
    if-eqz v1, :cond_b

    .line 761
    .line 762
    invoke-virtual {v7, v11, v0}, Lcom/amazonaws/http/AmazonHttpClient;->m(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/AmazonServiceException;)I

    .line 763
    .line 764
    .line 765
    move-result v1

    .line 766
    invoke-static {v1}, Lcom/amazonaws/SDKGlobalConfiguration;->b(I)V

    .line 767
    .line 768
    .line 769
    goto :goto_1a

    .line 770
    :catchall_9
    move-exception v0

    .line 771
    :goto_15
    move-object v2, v0

    .line 772
    move-object v6, v11

    .line 773
    move/from16 v1, v17

    .line 774
    .line 775
    goto/16 :goto_28

    .line 776
    .line 777
    :catch_16
    move-exception v0

    .line 778
    :goto_16
    move-object v6, v11

    .line 779
    move/from16 v1, v17

    .line 780
    .line 781
    goto/16 :goto_23

    .line 782
    .line 783
    :catch_17
    move-exception v0

    .line 784
    :goto_17
    move-object v6, v11

    .line 785
    move/from16 v1, v17

    .line 786
    .line 787
    goto/16 :goto_24

    .line 788
    .line 789
    :catch_18
    move-exception v0

    .line 790
    :goto_18
    move-object/from16 v22, v11

    .line 791
    .line 792
    move/from16 v19, v17

    .line 793
    .line 794
    :goto_19
    move-object/from16 v17, v24

    .line 795
    .line 796
    goto/16 :goto_25

    .line 797
    .line 798
    :cond_b
    :goto_1a
    invoke-virtual {v7, v8, v0}, Lcom/amazonaws/http/AmazonHttpClient;->p(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_17
    .catch Ljava/lang/Error; {:try_start_18 .. :try_end_18} :catch_16
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    .line 799
    .line 800
    .line 801
    move-object v2, v0

    .line 802
    move/from16 v1, v17

    .line 803
    .line 804
    :goto_1b
    if-nez v1, :cond_c

    .line 805
    .line 806
    if-eqz v11, :cond_c

    .line 807
    .line 808
    :try_start_19
    invoke-virtual {v11}, Lcom/amazonaws/http/HttpResponse;->d()Ljava/io/InputStream;

    .line 809
    .line 810
    .line 811
    move-result-object v0

    .line 812
    if-eqz v0, :cond_c

    .line 813
    .line 814
    invoke-virtual {v11}, Lcom/amazonaws/http/HttpResponse;->d()Ljava/io/InputStream;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_19

    .line 819
    .line 820
    .line 821
    goto :goto_1c

    .line 822
    :catch_19
    move-exception v0

    .line 823
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->f:Lcom/amazonaws/logging/Log;

    .line 824
    .line 825
    invoke-interface {v3, v9, v0}, Lcom/amazonaws/logging/Log;->i(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 826
    .line 827
    .line 828
    :cond_c
    :goto_1c
    move-object v4, v2

    .line 829
    move-object v6, v11

    .line 830
    move-wide/from16 v2, v20

    .line 831
    .line 832
    move-object/from16 v17, v24

    .line 833
    .line 834
    move-object/from16 v5, v25

    .line 835
    .line 836
    const/4 v11, 0x0

    .line 837
    goto/16 :goto_27

    .line 838
    .line 839
    :cond_d
    :try_start_1a
    throw v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_17
    .catch Ljava/lang/Error; {:try_start_1a .. :try_end_1a} :catch_16
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    .line 840
    :catchall_a
    move-exception v0

    .line 841
    move-object v11, v4

    .line 842
    move-object/from16 v9, v23

    .line 843
    .line 844
    goto :goto_15

    .line 845
    :catch_1a
    move-exception v0

    .line 846
    move-object v11, v4

    .line 847
    move-object/from16 v9, v23

    .line 848
    .line 849
    goto :goto_16

    .line 850
    :catch_1b
    move-exception v0

    .line 851
    move-object v11, v4

    .line 852
    move-object/from16 v9, v23

    .line 853
    .line 854
    goto :goto_17

    .line 855
    :catch_1c
    move-exception v0

    .line 856
    move-object/from16 v24, v5

    .line 857
    .line 858
    move-object/from16 v25, v6

    .line 859
    .line 860
    move-object/from16 v9, v23

    .line 861
    .line 862
    move-object/from16 v23, v11

    .line 863
    .line 864
    move-object v11, v4

    .line 865
    goto :goto_18

    .line 866
    :catchall_b
    move-exception v0

    .line 867
    move-object v11, v4

    .line 868
    move-object/from16 v9, v23

    .line 869
    .line 870
    :goto_1d
    move-object v2, v0

    .line 871
    move-object v6, v11

    .line 872
    goto/16 :goto_8

    .line 873
    .line 874
    :catch_1d
    move-exception v0

    .line 875
    move-object v11, v4

    .line 876
    move-object/from16 v9, v23

    .line 877
    .line 878
    :goto_1e
    move-object v6, v11

    .line 879
    goto/16 :goto_9

    .line 880
    .line 881
    :catch_1e
    move-exception v0

    .line 882
    move-object v11, v4

    .line 883
    move-object/from16 v9, v23

    .line 884
    .line 885
    :goto_1f
    move-object v6, v11

    .line 886
    goto/16 :goto_a

    .line 887
    .line 888
    :catch_1f
    move-exception v0

    .line 889
    move-object/from16 v24, v5

    .line 890
    .line 891
    move-object/from16 v25, v6

    .line 892
    .line 893
    move-object/from16 v9, v23

    .line 894
    .line 895
    :goto_20
    move-object/from16 v23, v11

    .line 896
    .line 897
    move-object v11, v4

    .line 898
    move-object/from16 v22, v11

    .line 899
    .line 900
    goto :goto_19

    .line 901
    :catchall_c
    move-exception v0

    .line 902
    move-object v9, v3

    .line 903
    move-object v11, v4

    .line 904
    goto :goto_1d

    .line 905
    :catch_20
    move-exception v0

    .line 906
    move-object v9, v3

    .line 907
    move-object v11, v4

    .line 908
    goto :goto_1e

    .line 909
    :catch_21
    move-exception v0

    .line 910
    move-object v9, v3

    .line 911
    move-object v11, v4

    .line 912
    goto :goto_1f

    .line 913
    :catch_22
    move-exception v0

    .line 914
    :goto_21
    move-object v9, v3

    .line 915
    move-object/from16 v24, v5

    .line 916
    .line 917
    move-object/from16 v25, v6

    .line 918
    .line 919
    goto :goto_20

    .line 920
    :catch_23
    move-exception v0

    .line 921
    move-wide/from16 v20, v1

    .line 922
    .line 923
    goto :goto_21

    .line 924
    :catchall_d
    move-exception v0

    .line 925
    move-wide/from16 v20, v1

    .line 926
    .line 927
    move-object v9, v3

    .line 928
    move-object/from16 v24, v5

    .line 929
    .line 930
    move-object/from16 v25, v6

    .line 931
    .line 932
    move-object/from16 v23, v11

    .line 933
    .line 934
    :try_start_1b
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 935
    .line 936
    invoke-virtual {v10, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 937
    .line 938
    .line 939
    throw v0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_25
    .catch Ljava/lang/Error; {:try_start_1b .. :try_end_1b} :catch_24
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    .line 940
    :catchall_e
    move-exception v0

    .line 941
    :goto_22
    move-object v2, v0

    .line 942
    goto/16 :goto_1

    .line 943
    .line 944
    :catch_24
    move-exception v0

    .line 945
    goto/16 :goto_2

    .line 946
    .line 947
    :catch_25
    move-exception v0

    .line 948
    goto/16 :goto_3

    .line 949
    .line 950
    :catch_26
    move-exception v0

    .line 951
    goto/16 :goto_19

    .line 952
    .line 953
    :catchall_f
    move-exception v0

    .line 954
    move-object v9, v3

    .line 955
    goto :goto_22

    .line 956
    :catch_27
    move-exception v0

    .line 957
    move-wide/from16 v20, v1

    .line 958
    .line 959
    move-object v9, v3

    .line 960
    move-object/from16 v24, v5

    .line 961
    .line 962
    move-object/from16 v25, v6

    .line 963
    .line 964
    move-object/from16 v23, v11

    .line 965
    .line 966
    goto/16 :goto_19

    .line 967
    .line 968
    :catch_28
    move-exception v0

    .line 969
    move-wide/from16 v20, v1

    .line 970
    .line 971
    move-object v9, v3

    .line 972
    move-object/from16 v23, v11

    .line 973
    .line 974
    move-object/from16 v25, v5

    .line 975
    .line 976
    goto :goto_25

    .line 977
    :goto_23
    :try_start_1c
    invoke-direct {v7, v0, v10}, Lcom/amazonaws/http/AmazonHttpClient;->j(Ljava/lang/Throwable;Lcom/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;

    .line 978
    .line 979
    .line 980
    move-result-object v0

    .line 981
    check-cast v0, Ljava/lang/Error;

    .line 982
    .line 983
    throw v0

    .line 984
    :catchall_10
    move-exception v0

    .line 985
    move-object v2, v0

    .line 986
    goto/16 :goto_28

    .line 987
    .line 988
    :goto_24
    invoke-direct {v7, v0, v10}, Lcom/amazonaws/http/AmazonHttpClient;->j(Ljava/lang/Throwable;Lcom/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;

    .line 989
    .line 990
    .line 991
    move-result-object v0

    .line 992
    check-cast v0, Ljava/lang/RuntimeException;

    .line 993
    .line 994
    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_10

    .line 995
    :goto_25
    :try_start_1d
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->f:Lcom/amazonaws/logging/Log;

    .line 996
    .line 997
    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->b()Z

    .line 998
    .line 999
    .line 1000
    move-result v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    .line 1001
    const-string v3, "Unable to execute HTTP request: "

    .line 1002
    .line 1003
    if-eqz v2, :cond_e

    .line 1004
    .line 1005
    :try_start_1e
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v4

    .line 1017
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v2

    .line 1024
    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1025
    .line 1026
    .line 1027
    :cond_e
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 1028
    .line 1029
    invoke-virtual {v10, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->d(Lcom/amazonaws/metrics/MetricType;)V

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v10, v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 1033
    .line 1034
    .line 1035
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 1036
    .line 1037
    const/4 v11, 0x0

    .line 1038
    invoke-virtual {v10, v1, v11}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 1039
    .line 1040
    .line 1041
    new-instance v6, Lcom/amazonaws/AmazonClientException;

    .line 1042
    .line 1043
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1044
    .line 1045
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v2

    .line 1055
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v1

    .line 1062
    invoke-direct {v6, v1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1063
    .line 1064
    .line 1065
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->l()Lcom/amazonaws/AmazonWebServiceRequest;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v2

    .line 1069
    invoke-virtual/range {v17 .. v17}, Lcom/amazonaws/http/HttpRequest;->a()Ljava/io/InputStream;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v3

    .line 1073
    iget-object v1, v7, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 1074
    .line 1075
    invoke-virtual {v1}, Lcom/amazonaws/ClientConfiguration;->d()Lcom/amazonaws/retry/RetryPolicy;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v18

    .line 1079
    move-object/from16 v1, p0

    .line 1080
    .line 1081
    move-object v4, v6

    .line 1082
    move v5, v15

    .line 1083
    move-object/from16 v24, v6

    .line 1084
    .line 1085
    move-object/from16 v6, v18

    .line 1086
    .line 1087
    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/http/AmazonHttpClient;->r(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z

    .line 1088
    .line 1089
    .line 1090
    move-result v1

    .line 1091
    if-eqz v1, :cond_10

    .line 1092
    .line 1093
    invoke-virtual {v7, v8, v0}, Lcom/amazonaws/http/AmazonHttpClient;->p(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    .line 1094
    .line 1095
    .line 1096
    if-nez v19, :cond_f

    .line 1097
    .line 1098
    if-eqz v22, :cond_f

    .line 1099
    .line 1100
    :try_start_1f
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/http/HttpResponse;->d()Ljava/io/InputStream;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v0

    .line 1104
    if-eqz v0, :cond_f

    .line 1105
    .line 1106
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/http/HttpResponse;->d()Ljava/io/InputStream;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v0

    .line 1110
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_29

    .line 1111
    .line 1112
    .line 1113
    goto :goto_26

    .line 1114
    :catch_29
    move-exception v0

    .line 1115
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->f:Lcom/amazonaws/logging/Log;

    .line 1116
    .line 1117
    invoke-interface {v1, v9, v0}, Lcom/amazonaws/logging/Log;->i(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1118
    .line 1119
    .line 1120
    :cond_f
    :goto_26
    move/from16 v1, v19

    .line 1121
    .line 1122
    move-wide/from16 v2, v20

    .line 1123
    .line 1124
    move-object/from16 v6, v22

    .line 1125
    .line 1126
    move-object/from16 v4, v24

    .line 1127
    .line 1128
    move-object/from16 v5, v25

    .line 1129
    .line 1130
    :goto_27
    move-object/from16 v9, p4

    .line 1131
    .line 1132
    move v0, v15

    .line 1133
    move-object/from16 v11, v23

    .line 1134
    .line 1135
    goto/16 :goto_0

    .line 1136
    .line 1137
    :cond_10
    :try_start_20
    throw v24
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    .line 1138
    :goto_28
    if-nez v1, :cond_11

    .line 1139
    .line 1140
    if-eqz v6, :cond_11

    .line 1141
    .line 1142
    :try_start_21
    invoke-virtual {v6}, Lcom/amazonaws/http/HttpResponse;->d()Ljava/io/InputStream;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v0

    .line 1146
    if-eqz v0, :cond_11

    .line 1147
    .line 1148
    invoke-virtual {v6}, Lcom/amazonaws/http/HttpResponse;->d()Ljava/io/InputStream;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v0

    .line 1152
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_2a

    .line 1153
    .line 1154
    .line 1155
    goto :goto_29

    .line 1156
    :catch_2a
    move-exception v0

    .line 1157
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->f:Lcom/amazonaws/logging/Log;

    .line 1158
    .line 1159
    invoke-interface {v1, v9, v0}, Lcom/amazonaws/logging/Log;->i(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1160
    .line 1161
    .line 1162
    :cond_11
    :goto_29
    throw v2
.end method

.method public f()Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/metrics/RequestMetricCollector;

    .line 2
    .line 3
    return-object v0
.end method

.method protected finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/http/AmazonHttpClient;->s()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method h(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    .locals 4

    .line 1
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->e()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :try_start_0
    invoke-interface {p2, p3}, Lcom/amazonaws/http/HttpResponseHandler;->a(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lcom/amazonaws/AmazonServiceException;

    .line 10
    .line 11
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->e:Lcom/amazonaws/logging/Log;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "Received error response: "

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p2

    .line 39
    const/16 v1, 0x19d

    .line 40
    .line 41
    if-ne v0, v1, :cond_0

    .line 42
    .line 43
    new-instance p2, Lcom/amazonaws/AmazonServiceException;

    .line 44
    .line 45
    const-string p3, "Request entity too large"

    .line 46
    .line 47
    invoke-direct {p2, p3}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Lcom/amazonaws/Request;->d()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {p2, v2}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v1}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 58
    .line 59
    .line 60
    sget-object v1, Lcom/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazonaws/AmazonServiceException$ErrorType;

    .line 61
    .line 62
    invoke-virtual {p2, v1}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p3}, Lcom/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/16 v1, 0x1f7

    .line 70
    .line 71
    if-ne v0, v1, :cond_1

    .line 72
    .line 73
    const-string v2, "Service Unavailable"

    .line 74
    .line 75
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->f()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    new-instance p2, Lcom/amazonaws/AmazonServiceException;

    .line 86
    .line 87
    const-string p3, "Service unavailable"

    .line 88
    .line 89
    invoke-direct {p2, p3}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {p1}, Lcom/amazonaws/Request;->d()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {p2, v2}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v1}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 100
    .line 101
    .line 102
    sget-object v1, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    .line 103
    .line 104
    invoke-virtual {p2, v1}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p3}, Lcom/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :goto_0
    invoke-virtual {p2, v0}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 111
    .line 112
    .line 113
    invoke-interface {p1}, Lcom/amazonaws/Request;->d()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p2, p1}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 121
    .line 122
    .line 123
    return-object p2

    .line 124
    :cond_1
    instance-of p1, p2, Ljava/io/IOException;

    .line 125
    .line 126
    if-eqz p1, :cond_2

    .line 127
    .line 128
    check-cast p2, Ljava/io/IOException;

    .line 129
    .line 130
    throw p2

    .line 131
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v1, "Unable to unmarshall error response ("

    .line 137
    .line 138
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, "). Response Code: "

    .line 149
    .line 150
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v0, ", Response Text: "

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->f()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v0, ", Response Headers: "

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 174
    .line 175
    .line 176
    move-result-object p3

    .line 177
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    new-instance p3, Lcom/amazonaws/AmazonClientException;

    .line 185
    .line 186
    invoke-direct {p3, p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    .line 188
    .line 189
    throw p3
.end method

.method i(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-string p1, ", Response Text: "

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p4}, Lcom/amazonaws/http/ExecutionContext;->a()Lcom/amazonaws/util/AWSRequestMetrics;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 8
    .line 9
    invoke-virtual {p4, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :try_start_1
    invoke-interface {p2, p3}, Lcom/amazonaws/http/HttpResponseHandler;->a(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lcom/amazonaws/AmazonWebServiceResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    :try_start_2
    invoke-virtual {p4, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 19
    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    sget-object v0, Lcom/amazonaws/http/AmazonHttpClient;->e:Lcom/amazonaws/logging/Log;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/amazonaws/logging/Log;->b()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "Received successful response: "

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->e()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, ", AWS Request ID: "

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/amazonaws/AmazonWebServiceResponse;->a()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p2

    .line 69
    goto :goto_1

    .line 70
    :catch_1
    move-exception p1

    .line 71
    goto :goto_2

    .line 72
    :catch_2
    move-exception p1

    .line 73
    goto :goto_3

    .line 74
    :cond_0
    :goto_0
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/amazonaws/AmazonWebServiceResponse;->a()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p4, v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/amazonaws/AmazonWebServiceResponse;->b()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    return-object p1

    .line 88
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 89
    .line 90
    new-instance p4, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v0, "Unable to unmarshall response metadata. Response Code: "

    .line 96
    .line 97
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->e()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->f()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p4

    .line 121
    invoke-direct {p2, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p2

    .line 125
    :catchall_0
    move-exception p2

    .line 126
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 127
    .line 128
    invoke-virtual {p4, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 129
    .line 130
    .line 131
    throw p2
    :try_end_2
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 132
    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v0, "Unable to unmarshall response ("

    .line 138
    .line 139
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v0, "). Response Code: "

    .line 150
    .line 151
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->e()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->f()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    new-instance p3, Lcom/amazonaws/AmazonClientException;

    .line 176
    .line 177
    invoke-direct {p3, p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .line 179
    .line 180
    throw p3

    .line 181
    :goto_2
    throw p1

    .line 182
    :goto_3
    throw p1
.end method

.method m(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/AmazonServiceException;)I
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v1, "Date"

    .line 11
    .line 12
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/amazonaws/util/DateUtils;->i(Ljava/lang/String;)Ljava/util/Date;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception p2

    .line 34
    goto :goto_2

    .line 35
    :catch_1
    move-exception p2

    .line 36
    move-object p1, v1

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Lcom/amazonaws/AmazonServiceException;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 46
    :try_start_3
    invoke-static {p1}, Lcom/amazonaws/util/DateUtils;->g(Ljava/lang/String;)Ljava/util/Date;

    .line 47
    .line 48
    .line 49
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 50
    :goto_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 55
    .line 56
    .line 57
    move-result-wide p1

    .line 58
    sub-long/2addr v0, p1

    .line 59
    const-wide/16 p1, 0x3e8

    .line 60
    .line 61
    div-long/2addr v0, p1

    .line 62
    long-to-int p1, v0

    .line 63
    return p1

    .line 64
    :goto_2
    sget-object v0, Lcom/amazonaws/http/AmazonHttpClient;->f:Lcom/amazonaws/logging/Log;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v2, "Unable to parse clock skew offset from response: "

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-interface {v0, p1, p2}, Lcom/amazonaws/logging/Log;->i(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    const/4 p1, 0x0

    .line 87
    return p1
.end method

.method o(Lcom/amazonaws/Request;Lcom/amazonaws/http/ExecutionContext;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/amazonaws/http/ExecutionContext;->d()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/amazonaws/handlers/RequestHandler2;

    .line 27
    .line 28
    instance-of v3, v2, Lcom/amazonaws/handlers/CredentialsRequestHandler;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    move-object v3, v2

    .line 33
    check-cast v3, Lcom/amazonaws/handlers/CredentialsRequestHandler;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/amazonaws/http/ExecutionContext;->c()Lcom/amazonaws/auth/AWSCredentials;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v3, v4}, Lcom/amazonaws/handlers/CredentialsRequestHandler;->e(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {v2, p1}, Lcom/amazonaws/handlers/RequestHandler2;->d(Lcom/amazonaws/Request;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-object v0
.end method

.method p(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :try_start_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    .line 27
    .line 28
    const-string v0, "Encountered an exception and couldn\'t reset the stream to retry"

    .line 29
    .line 30
    invoke-direct {p1, v0, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    .line 35
    .line 36
    const-string v0, "Encountered an exception and stream is not resettable"

    .line 37
    .line 38
    invoke-direct {p1, v0, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method q(Lcom/amazonaws/Request;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/amazonaws/ClientConfiguration;->u:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/amazonaws/Request;->l()Lcom/amazonaws/AmazonWebServiceRequest;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object v2, Lcom/amazonaws/RequestClientOptions$Marker;->USER_AGENT:Lcom/amazonaws/RequestClientOptions$Marker;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/amazonaws/RequestClientOptions;->c(Lcom/amazonaws/RequestClientOptions$Marker;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/amazonaws/http/AmazonHttpClient;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v1, v0

    .line 29
    :goto_0
    iget-object v2, p0, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/amazonaws/ClientConfiguration;->h()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->h()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v1, v0}, Lcom/amazonaws/http/AmazonHttpClient;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->i()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->i()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :cond_2
    const-string v0, "User-Agent"

    .line 66
    .line 67
    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/http/HttpClient;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/amazonaws/http/HttpClient;->shutdown()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
