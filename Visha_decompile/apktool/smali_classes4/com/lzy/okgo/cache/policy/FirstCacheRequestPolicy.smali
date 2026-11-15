.class public Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;
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

    new-instance p2, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;

    invoke-direct {p2, p0, p1}, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;-><init>(Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;Lcom/lzy/okgo/cache/CacheEntity;)V

    invoke-virtual {p0, p2}, Lp90;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/lzy/okgo/cache/CacheEntity;)Lhu8;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lp90;->d()Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lp90;->e:Lokhttp3/Call;

    invoke-static {v1, v2, v3, v0}, Lhu8;->m(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lhu8;

    :cond_0
    invoke-virtual {p0}, Lp90;->e()Lhu8;

    move-result-object v0

    invoke-virtual {v0}, Lhu8;->f()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lp90;->e:Lokhttp3/Call;

    invoke-virtual {v0}, Lhu8;->e()Lokhttp3/Response;

    move-result-object v0

    invoke-static {v1, p1, p0, v0}, Lhu8;->m(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lhu8;

    move-result-object v0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    const/4 v1, 0x0

    iget-object p0, p0, Lp90;->e:Lokhttp3/Call;

    invoke-static {v1, p0, v0, p1}, Lhu8;->c(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lhu8;

    move-result-object p0

    return-object p0
.end method
