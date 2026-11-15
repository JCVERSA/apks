.class public Lkp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkq0;


# instance fields
.field public a:Lxp0;

.field public b:Lcom/lzy/okgo/request/base/Request;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/request/base/Request;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkp0;->a:Lxp0;

    iput-object p1, p0, Lkp0;->b:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {p0}, Lkp0;->c()Lxp0;

    move-result-object p1

    iput-object p1, p0, Lkp0;->a:Lxp0;

    return-void
.end method


# virtual methods
.method public a(Luq0;)V
    .locals 1

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lkp0;->a:Lxp0;

    invoke-interface {v0}, Lxp0;->a()Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v0

    iget-object p0, p0, Lkp0;->a:Lxp0;

    invoke-interface {p0, v0, p1}, Lxp0;->b(Lcom/lzy/okgo/cache/CacheEntity;Luq0;)V

    return-void
.end method

.method public b()Lkq0;
    .locals 1

    new-instance v0, Lkp0;

    iget-object p0, p0, Lkp0;->b:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, p0}, Lkp0;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    return-object v0
.end method

.method public final c()Lxp0;
    .locals 2

    sget-object v0, Lkp0$a;->a:[I

    iget-object v1, p0, Lkp0;->b:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v1}, Lcom/lzy/okgo/request/base/Request;->getCacheMode()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;

    iget-object v1, p0, Lkp0;->b:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    iput-object v0, p0, Lkp0;->a:Lxp0;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    iget-object v1, p0, Lkp0;->b:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    iput-object v0, p0, Lkp0;->a:Lxp0;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

    iget-object v1, p0, Lkp0;->b:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    iput-object v0, p0, Lkp0;->a:Lxp0;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/lzy/okgo/cache/policy/NoCachePolicy;

    iget-object v1, p0, Lkp0;->b:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/policy/NoCachePolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    iput-object v0, p0, Lkp0;->a:Lxp0;

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;

    iget-object v1, p0, Lkp0;->b:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    iput-object v0, p0, Lkp0;->a:Lxp0;

    :goto_0
    iget-object v0, p0, Lkp0;->b:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCachePolicy()Lxp0;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lkp0;->b:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCachePolicy()Lxp0;

    move-result-object v0

    iput-object v0, p0, Lkp0;->a:Lxp0;

    :cond_5
    iget-object v0, p0, Lkp0;->a:Lxp0;

    const-string v1, "policy == null"

    invoke-static {v0, v1}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lkp0;->a:Lxp0;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkp0;->b()Lkq0;

    move-result-object p0

    return-object p0
.end method

.method public execute()Lhu8;
    .locals 1

    iget-object v0, p0, Lkp0;->a:Lxp0;

    invoke-interface {v0}, Lxp0;->a()Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v0

    iget-object p0, p0, Lkp0;->a:Lxp0;

    invoke-interface {p0, v0}, Lxp0;->c(Lcom/lzy/okgo/cache/CacheEntity;)Lhu8;

    move-result-object p0

    return-object p0
.end method
