.class public Lcom/facebook/biddingkit/http/client/HttpGet;
.super Lcom/facebook/biddingkit/http/client/HttpRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/facebook/biddingkit/http/client/HttpRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sget-object p1, Lcom/facebook/biddingkit/http/client/HttpMethod;->GET:Lcom/facebook/biddingkit/http/client/HttpMethod;

    iput-object p1, p0, Lcom/facebook/biddingkit/http/client/HttpRequest;->httpMethod:Lcom/facebook/biddingkit/http/client/HttpMethod;

    return-void
.end method
