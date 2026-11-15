.class public Lcom/facebook/biddingkit/http/client/HttpRequestException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x217eef64b70b44c1L


# instance fields
.field private httpResponse:Lcom/facebook/biddingkit/http/client/HttpResponse;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Lcom/facebook/biddingkit/http/client/HttpResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/facebook/biddingkit/http/client/HttpRequestException;->httpResponse:Lcom/facebook/biddingkit/http/client/HttpResponse;

    return-void
.end method


# virtual methods
.method public getHttpResponse()Lcom/facebook/biddingkit/http/client/HttpResponse;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/http/client/HttpRequestException;->httpResponse:Lcom/facebook/biddingkit/http/client/HttpResponse;

    return-object p0
.end method
