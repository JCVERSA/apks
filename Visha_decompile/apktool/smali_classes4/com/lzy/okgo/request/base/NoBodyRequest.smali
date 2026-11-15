.class public abstract Lcom/lzy/okgo/request/base/NoBodyRequest;
.super Lcom/lzy/okgo/request/base/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Lcom/lzy/okgo/request/base/NoBodyRequest;",
        ">",
        "Lcom/lzy/okgo/request/base/Request<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x10a9768823f2c83cL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lzy/okgo/request/base/Request;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateRequestBody()Lokhttp3/RequestBody;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public generateRequestBuilder(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 1

    iget-object p1, p0, Lcom/lzy/okgo/request/base/Request;->baseUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    iget-object v0, v0, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-static {p1, v0}, Lut4;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->url:Ljava/lang/String;

    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    iget-object p0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-static {p1, p0}, Lut4;->a(Lokhttp3/Request$Builder;Lcom/lzy/okgo/model/HttpHeaders;)Lokhttp3/Request$Builder;

    move-result-object p0

    return-object p0
.end method
