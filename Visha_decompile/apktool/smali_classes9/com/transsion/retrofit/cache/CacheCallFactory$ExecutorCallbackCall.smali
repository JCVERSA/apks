.class final Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/retrofit/cache/CacheCallFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExecutorCallbackCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljq0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final callbackExecutor:Ljava/util/concurrent/Executor;

.field final delegate:Ljq0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljq0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljq0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljq0<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;->delegate:Ljq0;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;->delegate:Ljq0;

    invoke-interface {p0}, Ljq0;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;->clone()Ljq0;

    move-result-object p0

    return-object p0
.end method

.method public clone()Ljq0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljq0<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;

    iget-object v1, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;->delegate:Ljq0;

    invoke-interface {p0}, Ljq0;->clone()Ljq0;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;-><init>(Ljava/util/concurrent/Executor;Ljq0;)V

    return-object v0
.end method

.method public enqueue(Ltq0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltq0;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;->delegate:Ljq0;

    invoke-interface {v0}, Ljq0;->request()Lokhttp3/Request;

    move-result-object v0

    const-string v1, "cache"

    invoke-virtual {v0, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    instance-of v1, p1, Lcom/transsion/retrofit/cache/CacheCallback;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/retrofit/cache/CacheCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/transsion/retrofit/cache/CacheCallback;->onGetCache(Ljq0;Lgu8;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;->delegate:Ljq0;

    new-instance v1, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;-><init>(Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;Ltq0;)V

    invoke-interface {v0, v1}, Ljq0;->enqueue(Ltq0;)V

    return-void
.end method

.method public execute()Lgu8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgu8<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;->delegate:Ljq0;

    invoke-interface {p0}, Ljq0;->execute()Lgu8;

    move-result-object p0

    return-object p0
.end method

.method public isCanceled()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;->delegate:Ljq0;

    invoke-interface {p0}, Ljq0;->isCanceled()Z

    move-result p0

    return p0
.end method

.method public isExecuted()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;->delegate:Ljq0;

    invoke-interface {p0}, Ljq0;->isExecuted()Z

    move-result p0

    return p0
.end method

.method public request()Lokhttp3/Request;
    .locals 0

    iget-object p0, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;->delegate:Ljq0;

    invoke-interface {p0}, Ljq0;->request()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public timeout()Lokio/Timeout;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
