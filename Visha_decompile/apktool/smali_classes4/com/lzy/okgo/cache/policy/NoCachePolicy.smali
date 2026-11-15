.class public Lcom/lzy/okgo/cache/policy/NoCachePolicy;
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

    new-instance p1, Lcom/lzy/okgo/cache/policy/NoCachePolicy$3;

    invoke-direct {p1, p0}, Lcom/lzy/okgo/cache/policy/NoCachePolicy$3;-><init>(Lcom/lzy/okgo/cache/policy/NoCachePolicy;)V

    invoke-virtual {p0, p1}, Lp90;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/lzy/okgo/cache/CacheEntity;)Lhu8;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lp90;->d()Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lp90;->e()Lhu8;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lp90;->e:Lokhttp3/Call;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1, p0, v0, p1}, Lhu8;->c(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lhu8;

    move-result-object p0

    return-object p0
.end method
