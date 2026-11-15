.class Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;->enqueue(Ltq0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltq0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;

.field final synthetic val$callback:Ltq0;


# direct methods
.method public constructor <init>(Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;Ltq0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;->this$0:Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;

    iput-object p2, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;->val$callback:Ltq0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljq0;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljq0<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;->this$0:Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;

    iget-object p1, p1, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1$2;

    invoke-direct {v0, p0, p2}, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1$2;-><init>(Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Ljq0;Lgu8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljq0<",
            "TT;>;",
            "Lgu8<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;->this$0:Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;

    iget-object p1, p1, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1$1;-><init>(Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;Lgu8;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
