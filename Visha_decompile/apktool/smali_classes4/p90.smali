.class public abstract Lp90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxp0;


# instance fields
.field public a:Lcom/lzy/okgo/request/base/Request;

.field public volatile b:Z

.field public volatile c:I

.field public d:Z

.field public e:Lokhttp3/Call;

.field public f:Lcom/lzy/okgo/cache/CacheEntity;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/request/base/Request;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lp90;->c:I

    iput-object p1, p0, Lp90;->a:Lcom/lzy/okgo/request/base/Request;

    return-void
.end method


# virtual methods
.method public a()Lcom/lzy/okgo/cache/CacheEntity;
    .locals 7

    iget-object v0, p0, Lp90;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lp90;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lp90;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v2}, Lcom/lzy/okgo/request/base/Request;->getParams()Lcom/lzy/okgo/model/HttpParams;

    move-result-object v2

    iget-object v2, v2, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Lut4;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/base/Request;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    :cond_0
    iget-object v0, p0, Lp90;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCacheMode()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lp90;->a:Lcom/lzy/okgo/request/base/Request;

    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/base/Request;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    :cond_1
    iget-object v0, p0, Lp90;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCacheMode()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v2

    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    if-eq v2, v0, :cond_2

    invoke-static {}, Lup0;->p()Lup0;

    move-result-object v0

    iget-object v1, p0, Lp90;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v1}, Lcom/lzy/okgo/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lup0;->n(Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v0

    iput-object v0, p0, Lp90;->f:Lcom/lzy/okgo/cache/CacheEntity;

    iget-object v1, p0, Lp90;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-static {v1, v0, v2}, Lso4;->a(Lcom/lzy/okgo/request/base/Request;Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/cache/CacheMode;)V

    iget-object v1, p0, Lp90;->f:Lcom/lzy/okgo/cache/CacheEntity;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lp90;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCacheTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/lzy/okgo/cache/CacheEntity;->checkExpire(Lcom/lzy/okgo/cache/CacheMode;JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lp90;->f:Lcom/lzy/okgo/cache/CacheEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/cache/CacheEntity;->setExpire(Z)V

    :cond_2
    iget-object v0, p0, Lp90;->f:Lcom/lzy/okgo/cache/CacheEntity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/CacheEntity;->isExpire()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lp90;->f:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lp90;->f:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/CacheEntity;->getResponseHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lp90;->f:Lcom/lzy/okgo/cache/CacheEntity;

    :cond_4
    iget-object p0, p0, Lp90;->f:Lcom/lzy/okgo/cache/CacheEntity;

    return-object p0
.end method

.method public declared-synchronized d()Lokhttp3/Call;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lp90;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp90;->d:Z

    iget-object v0, p0, Lp90;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getRawCall()Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lp90;->e:Lokhttp3/Call;

    iget-boolean v0, p0, Lp90;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp90;->e:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lp90;->e:Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    const-string v0, "Already executed!"

    invoke-static {v0}, Lcom/lzy/okgo/exception/HttpException;->COMMON(Ljava/lang/String;)Lcom/lzy/okgo/exception/HttpException;

    move-result-object v0

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()Lhu8;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lp90;->e:Lokhttp3/Call;

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v4, 0x194

    if-eq v3, v4, :cond_1

    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lp90;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v2}, Lcom/lzy/okgo/request/base/Request;->getConverter()Lti1;

    throw v1

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v3, p0, Lp90;->e:Lokhttp3/Call;

    invoke-static {}, Lcom/lzy/okgo/exception/HttpException;->NET_ERROR()Lcom/lzy/okgo/exception/HttpException;

    move-result-object v4

    invoke-static {v0, v3, v2, v4}, Lhu8;->c(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lhu8;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_1
    instance-of v3, v2, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_3

    iget v3, p0, Lp90;->c:I

    iget-object v4, p0, Lp90;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v4}, Lcom/lzy/okgo/request/base/Request;->getRetryCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget v3, p0, Lp90;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lp90;->c:I

    iget-object v3, p0, Lp90;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v3}, Lcom/lzy/okgo/request/base/Request;->getRawCall()Lokhttp3/Call;

    move-result-object v3

    iput-object v3, p0, Lp90;->e:Lokhttp3/Call;

    iget-boolean v3, p0, Lp90;->b:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lp90;->e:Lokhttp3/Call;

    invoke-interface {v3}, Lokhttp3/Call;->cancel()V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lp90;->e()Lhu8;

    :cond_3
    :goto_2
    iget-object p0, p0, Lp90;->e:Lokhttp3/Call;

    invoke-static {v0, p0, v1, v2}, Lhu8;->c(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lhu8;

    move-result-object p0

    return-object p0
.end method

.method public f(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {}, Lfe7;->i()Lfe7;

    move-result-object p0

    invoke-virtual {p0}, Lfe7;->h()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
