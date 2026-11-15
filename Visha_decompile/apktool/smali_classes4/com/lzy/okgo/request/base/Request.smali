.class public abstract Lcom/lzy/okgo/request/base/Request;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Lcom/lzy/okgo/request/base/Request;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x638f96e7c9b0eb5cL


# instance fields
.field protected baseUrl:Ljava/lang/String;

.field protected cacheKey:Ljava/lang/String;

.field protected cacheMode:Lcom/lzy/okgo/cache/CacheMode;

.field protected transient cachePolicy:Lxp0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp0;"
        }
    .end annotation
.end field

.field protected cacheTime:J

.field protected transient call:Lkq0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkq0;"
        }
    .end annotation
.end field

.field protected transient callback:Luq0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luq0;"
        }
    .end annotation
.end field

.field protected transient client:Lokhttp3/OkHttpClient;

.field protected transient converter:Lti1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lti1;"
        }
    .end annotation
.end field

.field protected headers:Lcom/lzy/okgo/model/HttpHeaders;

.field protected transient mRequest:Lokhttp3/Request;

.field protected params:Lcom/lzy/okgo/model/HttpParams;

.field protected retryCount:I

.field protected transient tag:Ljava/lang/Object;

.field protected transient uploadInterceptor:Lcom/lzy/okgo/request/base/ProgressRequestBody$b;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    new-instance v0, Lcom/lzy/okgo/model/HttpHeaders;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->url:Ljava/lang/String;

    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->baseUrl:Ljava/lang/String;

    invoke-static {}, Lfe7;->i()Lfe7;

    move-result-object p1

    invoke-static {}, Lcom/lzy/okgo/model/HttpHeaders;->getAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Accept-Language"

    invoke-virtual {p0, v1, v0}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    :cond_0
    invoke-static {}, Lcom/lzy/okgo/model/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "User-Agent"

    invoke-virtual {p0, v1, v0}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    :cond_1
    invoke-virtual {p1}, Lfe7;->f()Lcom/lzy/okgo/model/HttpParams;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lfe7;->f()Lcom/lzy/okgo/model/HttpParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/request/base/Request;->params(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/request/base/Request;

    :cond_2
    invoke-virtual {p1}, Lfe7;->e()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lfe7;->e()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/request/base/Request;->headers(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/request/base/Request;

    :cond_3
    invoke-virtual {p1}, Lfe7;->k()I

    move-result v0

    iput v0, p0, Lcom/lzy/okgo/request/base/Request;->retryCount:I

    invoke-virtual {p1}, Lfe7;->c()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheMode:Lcom/lzy/okgo/cache/CacheMode;

    invoke-virtual {p1}, Lfe7;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheTime:J

    return-void
.end method


# virtual methods
.method public adapt(Lb8;Lmq0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lb8;",
            "Lmq0;",
            ")TE;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->call:Lkq0;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lkp0;

    invoke-direct {v0, p0}, Lkp0;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    .line 8
    :cond_0
    invoke-interface {p2, v0, p1}, Lmq0;->a(Lkq0;Lb8;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public adapt(Lmq0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lmq0;",
            ")TE;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->call:Lkq0;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lkp0;

    invoke-direct {v0, p0}, Lkp0;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    :cond_0
    const/4 p0, 0x0

    .line 5
    invoke-interface {p1, v0, p0}, Lmq0;->a(Lkq0;Lb8;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public adapt()Lkq0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkq0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->call:Lkq0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lkp0;

    invoke-direct {v0, p0}, Lkp0;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    :cond_0
    return-object v0
.end method

.method public addUrlParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpParams;->putUrlParams(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    const-string v0, "cacheKey == null"

    invoke-static {p1, v0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->cacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/CacheMode;",
            ")TR;"
        }
    .end annotation

    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->cacheMode:Lcom/lzy/okgo/cache/CacheMode;

    return-object p0
.end method

.method public cachePolicy(Lxp0;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxp0;",
            ")TR;"
        }
    .end annotation

    const-string v0, "cachePolicy == null"

    invoke-static {p1, v0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->cachePolicy:Lxp0;

    return-object p0
.end method

.method public cacheTime(J)Lcom/lzy/okgo/request/base/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/lzy/okgo/request/base/Request;->cacheTime:J

    return-object p0
.end method

.method public call(Lkq0;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkq0;",
            ")TR;"
        }
    .end annotation

    const-string v0, "call == null"

    invoke-static {p1, v0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->call:Lkq0;

    return-object p0
.end method

.method public client(Lokhttp3/OkHttpClient;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            ")TR;"
        }
    .end annotation

    const-string v0, "OkHttpClient == null"

    invoke-static {p1, v0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public converter(Lti1;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lti1;",
            ")TR;"
        }
    .end annotation

    const-string v0, "converter == null"

    invoke-static {p1, v0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public execute()Lokhttp3/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/lzy/okgo/request/base/Request;->getRawCall()Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public execute(Luq0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luq0;",
            ")V"
        }
    .end annotation

    .line 2
    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/lzy/okgo/request/base/Request;->adapt()Lkq0;

    move-result-object p0

    .line 4
    invoke-interface {p0, p1}, Lkq0;->a(Luq0;)V

    return-void
.end method

.method public abstract generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
.end method

.method public abstract generateRequestBody()Lokhttp3/RequestBody;
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lzy/okgo/request/base/Request;->baseUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lzy/okgo/request/base/Request;->cacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public getCacheMode()Lcom/lzy/okgo/cache/CacheMode;
    .locals 0

    iget-object p0, p0, Lcom/lzy/okgo/request/base/Request;->cacheMode:Lcom/lzy/okgo/cache/CacheMode;

    return-object p0
.end method

.method public getCachePolicy()Lxp0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxp0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lzy/okgo/request/base/Request;->cachePolicy:Lxp0;

    return-object p0
.end method

.method public getCacheTime()J
    .locals 2

    iget-wide v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheTime:J

    return-wide v0
.end method

.method public getConverter()Lti1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lti1;"
        }
    .end annotation

    const-string p0, "converter == null, do you forget to call Request#converter(Converter<T>) ?"

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public getFileParam(Ljava/lang/String;)Lcom/lzy/okgo/model/HttpParams$FileWrapper;
    .locals 0

    iget-object p0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    iget-object p0, p0, Lcom/lzy/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lzy/okgo/model/HttpParams$FileWrapper;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeaders()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 0

    iget-object p0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    return-object p0
.end method

.method public abstract getMethod()Lcom/lzy/okgo/model/HttpMethod;
.end method

.method public getParams()Lcom/lzy/okgo/model/HttpParams;
    .locals 0

    iget-object p0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    return-object p0
.end method

.method public getRawCall()Lokhttp3/Call;
    .locals 3

    invoke-virtual {p0}, Lcom/lzy/okgo/request/base/Request;->generateRequestBody()Lokhttp3/RequestBody;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/lzy/okgo/request/base/ProgressRequestBody;

    invoke-direct {v2, v0, v1}, Lcom/lzy/okgo/request/base/ProgressRequestBody;-><init>(Lokhttp3/RequestBody;Luq0;)V

    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->uploadInterceptor:Lcom/lzy/okgo/request/base/ProgressRequestBody$b;

    invoke-virtual {v2, v0}, Lcom/lzy/okgo/request/base/ProgressRequestBody;->e(Lcom/lzy/okgo/request/base/ProgressRequestBody$b;)V

    invoke-virtual {p0, v2}, Lcom/lzy/okgo/request/base/Request;->generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->mRequest:Lokhttp3/Request;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/lzy/okgo/request/base/Request;->generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->mRequest:Lokhttp3/Request;

    :goto_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1

    invoke-static {}, Lfe7;->i()Lfe7;

    move-result-object v0

    invoke-virtual {v0}, Lfe7;->j()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->client:Lokhttp3/OkHttpClient;

    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->client:Lokhttp3/OkHttpClient;

    iget-object p0, p0, Lcom/lzy/okgo/request/base/Request;->mRequest:Lokhttp3/Request;

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    return-object p0
.end method

.method public getRequest()Lokhttp3/Request;
    .locals 0

    iget-object p0, p0, Lcom/lzy/okgo/request/base/Request;->mRequest:Lokhttp3/Request;

    return-object p0
.end method

.method public getRetryCount()I
    .locals 0

    iget p0, p0, Lcom/lzy/okgo/request/base/Request;->retryCount:I

    return p0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/lzy/okgo/request/base/Request;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lzy/okgo/request/base/Request;->url:Ljava/lang/String;

    return-object p0
.end method

.method public getUrlParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    iget-object p0, p0, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public headers(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/HttpHeaders;",
            ")TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpHeaders;->put(Lcom/lzy/okgo/model/HttpHeaders;)V

    return-object p0
.end method

.method public headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public params(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/HttpParams;",
            ")TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpParams;->put(Lcom/lzy/okgo/model/HttpParams;)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;C[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C[Z)TR;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;C[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;D[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D[Z)TR;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;D[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;F[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F[Z)TR;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;F[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[Z)TR;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;I[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;J[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[Z)TR;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;J[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[Z)TR;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;Z[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[Z)TR;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Z[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[Z)TR;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/util/Map;[Z)V

    return-object p0
.end method

.method public removeAllHeaders()Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/HttpHeaders;->clear()V

    return-object p0
.end method

.method public removeAllParams()Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/HttpParams;->clear()V

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpHeaders;->remove(Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public removeParam(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpParams;->remove(Ljava/lang/String;)V

    return-object p0
.end method

.method public retryCount(I)Lcom/lzy/okgo/request/base/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TR;"
        }
    .end annotation

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/lzy/okgo/request/base/Request;->retryCount:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "retryCount must > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCallback(Luq0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luq0;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public uploadInterceptor(Lcom/lzy/okgo/request/base/ProgressRequestBody$b;)Lcom/lzy/okgo/request/base/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/request/base/ProgressRequestBody$b;",
            ")TR;"
        }
    .end annotation

    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->uploadInterceptor:Lcom/lzy/okgo/request/base/ProgressRequestBody$b;

    return-object p0
.end method
