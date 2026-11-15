.class public Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/http/HttpResponseHandler<",
        "Lcom/amazonaws/AmazonServiceException;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/amazonaws/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(I)Lcom/amazonaws/AmazonServiceException$ErrorType;
    .locals 1

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lcom/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazonaws/AmazonServiceException$ErrorType;

    .line 9
    .line 10
    :goto_0
    return-object p1
.end method

.method private e(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .locals 3

    .line 1
    new-instance v0, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/amazonaws/http/HttpResponse;->e()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/amazonaws/http/HttpResponse;->f()Ljava/lang/String;

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
    invoke-virtual {v0, v1}, Lcom/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->c(I)Lcom/amazonaws/AmazonServiceException$ErrorType;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string p2, "x-amz-request-id"

    .line 52
    .line 53
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, p2}, Lcom/amazonaws/AmazonServiceException;->setRequestId(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p2, "x-amz-id-2"

    .line 63
    .line 64
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setExtendedRequestId(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string p2, "X-Amz-Cf-Id"

    .line 74
    .line 75
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setCloudFrontId(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance p2, Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v1, "x-amz-bucket-region"

    .line 90
    .line 91
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setAdditionalDetails(Ljava/util/Map;)V

    .line 99
    .line 100
    .line 101
    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->d(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public d(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->b()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->f()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->e(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/amazonaws/util/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    :try_start_1
    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->d(Ljava/lang/String;)Lorg/w3c/dom/Document;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "Error/Message"

    .line 25
    .line 26
    invoke-static {v2, v1}, Lcom/amazonaws/util/XpathUtils;->b(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "Error/Code"

    .line 31
    .line 32
    invoke-static {v3, v1}, Lcom/amazonaws/util/XpathUtils;->b(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v4, "Error/RequestId"

    .line 37
    .line 38
    invoke-static {v4, v1}, Lcom/amazonaws/util/XpathUtils;->b(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const-string v5, "Error/HostId"

    .line 43
    .line 44
    invoke-static {v5, v1}, Lcom/amazonaws/util/XpathUtils;->b(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    new-instance v5, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    .line 49
    .line 50
    invoke-direct {v5, v2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->e()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v5, v2}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v2}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->c(I)Lcom/amazonaws/AmazonServiceException$ErrorType;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v5, v2}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v3}, Lcom/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v4}, Lcom/amazonaws/AmazonServiceException;->setRequestId(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setExtendedRequestId(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "X-Amz-Cf-Id"

    .line 81
    .line 82
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v5, v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setCloudFrontId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    .line 90
    .line 91
    return-object v5

    .line 92
    :catch_0
    move-exception v1

    .line 93
    sget-object v2, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a:Lcom/amazonaws/logging/Log;

    .line 94
    .line 95
    invoke-interface {v2}, Lcom/amazonaws/logging/Log;->b()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_1

    .line 100
    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v4, "Failed in parsing the response as XML: "

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-interface {v2, v3, v1}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->e(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    return-object p1

    .line 126
    :catch_1
    move-exception v0

    .line 127
    sget-object v1, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a:Lcom/amazonaws/logging/Log;

    .line 128
    .line 129
    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->b()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_2

    .line 134
    .line 135
    sget-object v1, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a:Lcom/amazonaws/logging/Log;

    .line 136
    .line 137
    const-string v2, "Failed in reading the error response"

    .line 138
    .line 139
    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->f()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->e(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    return-object p1
.end method
