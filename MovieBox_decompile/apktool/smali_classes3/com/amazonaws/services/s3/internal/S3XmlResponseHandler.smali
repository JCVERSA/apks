.class public Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;
.super Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final e:Lcom/amazonaws/logging/Log;


# instance fields
.field private c:Lcom/amazonaws/transform/Unmarshaller;

.field private d:Ljava/util/Map;


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
    sput-object v0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->e:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/transform/Unmarshaller;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->c:Lcom/amazonaws/transform/Unmarshaller;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->e(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/AbstractS3ResponseHandler;->c(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->c()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->d:Ljava/util/Map;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->c:Lcom/amazonaws/transform/Unmarshaller;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object v1, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->e:Lcom/amazonaws/logging/Log;

    .line 16
    .line 17
    const-string v2, "Beginning to parse service response XML"

    .line 18
    .line 19
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->k(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->c:Lcom/amazonaws/transform/Unmarshaller;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->b()Ljava/io/InputStream;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {v2, p1}, Lcom/amazonaws/transform/Unmarshaller;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v2, "Done parsing service response XML"

    .line 33
    .line 34
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->k(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/amazonaws/AmazonWebServiceResponse;->d(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-object v0
.end method
