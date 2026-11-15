.class public Lcom/facebook/biddingkit/http/util/RequestSender;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;I)Lcom/facebook/biddingkit/http/client/HttpResponse;
    .locals 1

    invoke-static {}, Lcom/facebook/biddingkit/http/util/NetworkUtilities;->createHttpsClient()Lcom/facebook/biddingkit/http/client/AndroidHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->setConnectionTimeout(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->get(Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/biddingkit/http/client/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static post(Ljava/lang/String;ILjava/lang/String;)Lcom/facebook/biddingkit/http/client/HttpResponse;
    .locals 1

    invoke-static {}, Lcom/facebook/biddingkit/http/util/NetworkUtilities;->createHttpsClient()Lcom/facebook/biddingkit/http/client/AndroidHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->setConnectionTimeout(I)V

    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "application/json"

    invoke-virtual {v0, p0, p2, p1}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->post(Ljava/lang/String;Ljava/lang/String;[B)Lcom/facebook/biddingkit/http/client/HttpResponse;

    move-result-object p0

    return-object p0
.end method
