.class Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;->onResponse(Ljq0;Lgu8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;

.field final synthetic val$response:Lgu8;


# direct methods
.method public constructor <init>(Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;Lgu8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1$1;->this$1:Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;

    iput-object p2, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1$1;->val$response:Lgu8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1$1;->this$1:Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;

    iget-object v0, v0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;->this$0:Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;

    iget-object v0, v0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;->delegate:Ljq0;

    invoke-interface {v0}, Ljq0;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1$1;->this$1:Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;

    iget-object v0, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;->val$callback:Ltq0;

    iget-object p0, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;->this$0:Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Ltq0;->onFailure(Ljq0;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1$1;->this$1:Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;

    iget-object v1, v0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;->val$callback:Ltq0;

    iget-object v0, v0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;->this$0:Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;

    iget-object p0, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1$1;->val$response:Lgu8;

    invoke-interface {v1, v0, p0}, Ltq0;->onResponse(Ljq0;Lgu8;)V

    :goto_0
    return-void
.end method
