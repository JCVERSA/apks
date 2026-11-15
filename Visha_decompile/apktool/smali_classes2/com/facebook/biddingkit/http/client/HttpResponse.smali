.class public Lcom/facebook/biddingkit/http/client/HttpResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpResponse"


# instance fields
.field private body:[B

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private status:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/facebook/biddingkit/http/client/HttpResponse;->status:I

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/biddingkit/http/client/HttpResponse;->url:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/biddingkit/http/client/HttpResponse;->headers:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "HttpResponse"

    const-string v1, "Failed to createHttpResponse"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iput-object p2, p0, Lcom/facebook/biddingkit/http/client/HttpResponse;->body:[B

    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/http/client/HttpResponse;->body:[B

    return-object p0
.end method

.method public getBodyAsString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/facebook/biddingkit/http/client/HttpResponse;->body:[B

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/facebook/biddingkit/http/client/HttpResponse;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/facebook/biddingkit/http/client/HttpResponse;->status:I

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/http/client/HttpResponse;->url:Ljava/lang/String;

    return-object p0
.end method
