.class public abstract Lcom/amazonaws/AmazonWebServiceClient;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final k:Lcom/amazonaws/logging/Log;


# instance fields
.field protected volatile a:Ljava/net/URI;

.field private volatile b:Ljava/lang/String;

.field protected c:Lcom/amazonaws/ClientConfiguration;

.field protected d:Lcom/amazonaws/http/AmazonHttpClient;

.field protected final e:Ljava/util/List;

.field protected f:I

.field private volatile g:Lcom/amazonaws/auth/Signer;

.field private volatile h:Ljava/lang/String;

.field protected volatile i:Ljava/lang/String;

.field private volatile j:Lcom/amazonaws/regions/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/AmazonWebServiceClient;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/AmazonWebServiceClient;->k:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 5
    .line 6
    new-instance v0, Lcom/amazonaws/http/AmazonHttpClient;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    .line 12
    .line 13
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    .line 19
    .line 20
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 4

    .line 1
    const-class v0, Lcom/amazonaws/AmazonWebServiceClient;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/amazonaws/util/Classes;->childClassOf(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/amazonaws/ServiceNameFactory;->getServiceName(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    const-string v1, "JavaClient"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, -0x1

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    const-string v1, "Client"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eq v1, v2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v3, "Unrecognized suffix for the AWS http client class name "

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v1

    .line 59
    :cond_2
    :goto_0
    const-string v3, "Amazon"

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-ne v3, v2, :cond_4

    .line 66
    .line 67
    const-string v3, "AWS"

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eq v3, v2, :cond_3

    .line 74
    .line 75
    const/4 v2, 0x3

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v3, "Unrecognized prefix for the AWS http client class name "

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v1

    .line 100
    :cond_4
    const/4 v2, 0x6

    .line 101
    :goto_1
    if-ge v3, v1, :cond_5

    .line 102
    .line 103
    add-int/2addr v3, v2

    .line 104
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    return-object v0

    .line 113
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v3, "Unrecognized AWS http client class name "

    .line 121
    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v1
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/amazonaws/auth/SignerFactory;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v0, p1}, Lcom/amazonaws/auth/SignerFactory;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    instance-of v0, p1, Lcom/amazonaws/auth/RegionAwareSigner;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    move-object v0, p1

    .line 23
    check-cast v0, Lcom/amazonaws/auth/RegionAwareSigner;

    .line 24
    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    invoke-interface {v0, p3}, Lcom/amazonaws/auth/RegionAwareSigner;->c(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    if-eqz p2, :cond_2

    .line 32
    .line 33
    if-eqz p4, :cond_2

    .line 34
    .line 35
    invoke-interface {v0, p2}, Lcom/amazonaws/auth/RegionAwareSigner;->c(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_1
    monitor-enter p0

    .line 39
    :try_start_0
    invoke-static {p2}, Lcom/amazonaws/regions/Region;->f(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iput-object p2, p0, Lcom/amazonaws/AmazonWebServiceClient;->j:Lcom/amazonaws/regions/Region;

    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-object p1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p1
.end method

.method private i(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->o()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1, v0}, Lcom/amazonaws/util/AwsHostNameUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p2, "Endpoint is not set. Use setEndpoint to set an endpoint before performing any request."

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method protected static r()Z
    .locals 1

    .line 1
    const-string v0, "com.amazonaws.sdk.enableRuntimeProfiling"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method private s()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->u()Lcom/amazonaws/metrics/RequestMetricCollector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/amazonaws/metrics/RequestMetricCollector;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private x(Ljava/lang/String;)Ljava/net/URI;
    .locals 3

    .line 1
    const-string v0, "://"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/amazonaws/ClientConfiguration;->c()Lcom/amazonaws/Protocol;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/amazonaws/Protocol;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method


# virtual methods
.method protected final j(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/AmazonWebServiceClient;->k(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method protected final k(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/amazonaws/util/AWSRequestMetrics;->c()Lcom/amazonaws/util/TimingInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/amazonaws/util/TimingInfo;->c()Lcom/amazonaws/util/TimingInfo;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;->l(Lcom/amazonaws/Request;)Lcom/amazonaws/metrics/RequestMetricCollector;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p2, p3}, Lcom/amazonaws/metrics/RequestMetricCollector;->a(Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    if-eqz p4, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/amazonaws/util/AWSRequestMetrics;->e()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method protected final l(Lcom/amazonaws/Request;)Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/amazonaws/Request;->l()Lcom/amazonaws/AmazonWebServiceRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->n()Lcom/amazonaws/metrics/RequestMetricCollector;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_1
    return-object p1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/amazonaws/http/AmazonHttpClient;->f()Lcom/amazonaws/metrics/RequestMetricCollector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->h:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->h:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceClient;->g()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->h:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->h:Ljava/lang/String;

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    monitor-exit p0

    .line 23
    goto :goto_1

    .line 24
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v0

    .line 26
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->h:Ljava/lang/String;

    .line 27
    .line 28
    return-object v0
.end method

.method public p(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->b:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/AmazonWebServiceClient;->i(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final t(Lcom/amazonaws/AmazonWebServiceRequest;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/amazonaws/metrics/RequestMetricCollector;->b()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceClient;->s()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method protected u()Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/amazonaws/http/AmazonHttpClient;->f()Lcom/amazonaws/metrics/RequestMetricCollector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->x(Ljava/lang/String;)Ljava/net/URI;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->b:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/AmazonWebServiceClient;->i(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->a:Ljava/net/URI;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->g:Lcom/amazonaws/auth/Signer;

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p1
.end method

.method public w(Lcom/amazonaws/regions/Region;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->o()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p1, v2}, Lcom/amazonaws/regions/Region;->i(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Lcom/amazonaws/regions/Region;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "://"

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-ltz v4, :cond_1

    .line 26
    .line 27
    add-int/2addr v4, v1

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v3, "%s.%s.%s"

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->m()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->d()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->a()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    new-array v1, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    aput-object v4, v1, v0

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    aput-object v5, v1, v4

    .line 53
    .line 54
    const/4 v4, 0x2

    .line 55
    aput-object v6, v1, v4

    .line 56
    .line 57
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    :cond_1
    :goto_0
    invoke-direct {p0, v3}, Lcom/amazonaws/AmazonWebServiceClient;->x(Ljava/lang/String;)Ljava/net/URI;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->d()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object v3, p0, Lcom/amazonaws/AmazonWebServiceClient;->b:Ljava/lang/String;

    .line 70
    .line 71
    invoke-direct {p0, v2, p1, v3, v0}, Lcom/amazonaws/AmazonWebServiceClient;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iput-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->a:Ljava/net/URI;

    .line 77
    .line 78
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->g:Lcom/amazonaws/auth/Signer;

    .line 79
    .line 80
    monitor-exit p0

    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p1

    .line 85
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    const-string v0, "No region provided"

    .line 88
    .line 89
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1
.end method
