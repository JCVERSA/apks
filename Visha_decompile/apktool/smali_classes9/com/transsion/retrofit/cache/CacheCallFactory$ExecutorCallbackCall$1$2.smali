.class Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;->onFailure(Ljq0;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1$2;->this$1:Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;

    iput-object p2, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1$2;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1$2;->this$1:Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;

    iget-object v1, v0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;->val$callback:Ltq0;

    iget-object v0, v0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1;->this$0:Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;

    iget-object p0, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall$1$2;->val$t:Ljava/lang/Throwable;

    invoke-interface {v1, v0, p0}, Ltq0;->onFailure(Ljq0;Ljava/lang/Throwable;)V

    return-void
.end method
