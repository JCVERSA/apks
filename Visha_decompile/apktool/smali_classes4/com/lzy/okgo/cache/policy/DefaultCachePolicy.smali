.class public Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;
.super Lp90;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/request/base/Request;)V
    .locals 0

    invoke-direct {p0, p1}, Lp90;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/lzy/okgo/cache/CacheEntity;Luq0;)V
    .locals 0

    new-instance p1, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$5;

    invoke-direct {p1, p0}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$5;-><init>(Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;)V

    invoke-virtual {p0, p1}, Lp90;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/lzy/okgo/cache/CacheEntity;)Lhu8;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lp90;->d()Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lp90;->e()Lhu8;

    move-result-object v0

    invoke-virtual {v0}, Lhu8;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lhu8;->b()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lp90;->e:Lokhttp3/Call;

    invoke-virtual {v0}, Lhu8;->e()Lokhttp3/Response;

    move-result-object v0

    iget-object p0, p0, Lp90;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {p0}, Lcom/lzy/okgo/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lzy/okgo/exception/CacheException;->NON_AND_304(Ljava/lang/String;)Lcom/lzy/okgo/exception/CacheException;

    move-result-object p0

    invoke-static {v1, p1, v0, p0}, Lhu8;->c(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lhu8;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lp90;->e:Lokhttp3/Call;

    invoke-virtual {v0}, Lhu8;->e()Lokhttp3/Response;

    move-result-object v0

    invoke-static {v1, p1, p0, v0}, Lhu8;->m(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lhu8;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lp90;->e:Lokhttp3/Call;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1, p0, v0, p1}, Lhu8;->c(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lhu8;

    move-result-object p0

    return-object p0
.end method
