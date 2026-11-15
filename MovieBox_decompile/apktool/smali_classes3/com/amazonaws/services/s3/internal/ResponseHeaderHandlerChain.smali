.class public Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;
.super Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final f:Ljava/util/List;


# direct methods
.method public varargs constructor <init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;->f:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;->e(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->e(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceResponse;->b()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;->f:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/amazonaws/services/s3/internal/HeaderHandler;

    .line 28
    .line 29
    invoke-interface {v3, v1, p1}, Lcom/amazonaws/services/s3/internal/HeaderHandler;->a(Ljava/lang/Object;Lcom/amazonaws/http/HttpResponse;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-object v0
.end method
