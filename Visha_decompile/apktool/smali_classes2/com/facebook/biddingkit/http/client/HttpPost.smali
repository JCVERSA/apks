.class public Lcom/facebook/biddingkit/http/client/HttpPost;
.super Lcom/facebook/biddingkit/http/client/HttpRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/facebook/biddingkit/http/client/HttpRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sget-object p1, Lcom/facebook/biddingkit/http/client/HttpMethod;->POST:Lcom/facebook/biddingkit/http/client/HttpMethod;

    iput-object p1, p0, Lcom/facebook/biddingkit/http/client/HttpRequest;->httpMethod:Lcom/facebook/biddingkit/http/client/HttpMethod;

    iput-object p3, p0, Lcom/facebook/biddingkit/http/client/HttpRequest;->contentType:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/biddingkit/http/client/HttpRequest;->content:[B

    return-void
.end method
