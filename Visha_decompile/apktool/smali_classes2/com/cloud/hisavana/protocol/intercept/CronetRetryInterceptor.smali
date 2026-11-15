.class public final Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;
    }
.end annotation


# instance fields
.field public final b:Lll1;

.field public final c:Lwx2;

.field public final d:Ljava/util/Map;

.field public e:Lwq6;

.field public f:Lzx2;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->c()Lll1;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->b:Lll1;

    .line 4
    invoke-virtual {p1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->d()Lwx2;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->c:Lwx2;

    .line 5
    invoke-virtual {p1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->g()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->d:Ljava/util/Map;

    .line 6
    invoke-virtual {p1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->f()Lwq6;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->e:Lwq6;

    .line 7
    invoke-virtual {p1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;->e()Lzx2;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->f:Lzx2;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;-><init>(Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$a;)V

    return-void
.end method

.method public static final synthetic a(Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;)Lwq6;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->e:Lwq6;

    return-object p0
.end method


# virtual methods
.method public final b(Lokhttp3/Request;)Lokhttp3/Request;
    .locals 2

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->d:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    :cond_1
    return-object p1
.end method

.method public final c(Lokhttp3/Response;ILokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1

    invoke-static {p1}, Lgz6;->a(Lokhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->h()V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p3, p2}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->f(Lokhttp3/Interceptor$Chain;I)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final d(Lokhttp3/Response;Lokhttp3/Interceptor$Chain;ILzx2;)Lokhttp3/Response;
    .locals 1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p4, p3}, Lzx2;->a(I)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->h()V

    invoke-virtual {p0, p2, p3}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->f(Lokhttp3/Interceptor$Chain;I)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public final e(Lokhttp3/Interceptor$Chain;I)Lokhttp3/Response;
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->h()V

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->f(Lokhttp3/Interceptor$Chain;I)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lokhttp3/Interceptor$Chain;I)Lokhttp3/Response;
    .locals 2

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    const-string v1, "request(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->b(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object p0

    sget-object v0, Lxq6;->a:Lxq6;

    invoke-virtual {v0, p1, p0, p2}, Lxq6;->a(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;I)V

    invoke-interface {p1, p0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    const-string p1, "proceed(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final g()V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->c:Lwx2;

    invoke-virtual {p0}, Lwx2;->b()V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->c:Lwx2;

    new-instance v1, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$triggerDownCount$1;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor$triggerDownCount$1;-><init>(Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;)V

    invoke-virtual {v0, v1}, Lwx2;->c(Lc74;)V

    return-void
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4

    const-string v0, "chain"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->c:Lwx2;

    invoke-virtual {v0}, Lwx2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request downgrade, cause failed count exceed limit, failed url is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lja1;->netLog(Ljava/lang/String;)V

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    const-string v1, "request(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->b(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object p0

    invoke-interface {p1, p0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    const-string p1, "proceed(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->b:Lll1;

    invoke-virtual {v0, p1}, Lll1;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->g()V

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request downgrade, cause domain failed1, failed url is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lja1;->netLog(Ljava/lang/String;)V

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v0}, Lgz6;->c(Lokhttp3/Response;)I

    move-result v1

    iget-object v2, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->f:Lzx2;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->d(Lokhttp3/Response;Lokhttp3/Interceptor$Chain;ILzx2;)Lokhttp3/Response;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v1, p1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->c(Lokhttp3/Response;ILokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :goto_1
    invoke-static {v0}, Lgz6;->b(Ljava/lang/Exception;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request downgrade, cause domain failed, failed url is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lja1;->netLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->f:Lzx2;

    if-eqz v2, :cond_4

    invoke-interface {v2, v1}, Lzx2;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1, v1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->e(Lokhttp3/Interceptor$Chain;I)Lokhttp3/Response;

    move-result-object p0

    goto :goto_2

    :cond_3
    throw v0

    :cond_4
    invoke-virtual {p0, p1, v1}, Lcom/cloud/hisavana/protocol/intercept/CronetRetryInterceptor;->e(Lokhttp3/Interceptor$Chain;I)Lokhttp3/Response;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_5
    throw v0
.end method
