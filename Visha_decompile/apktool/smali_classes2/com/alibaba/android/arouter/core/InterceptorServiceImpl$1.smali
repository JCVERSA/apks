.class Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/arouter/core/InterceptorServiceImpl;->doInterceptions(Lcom/alibaba/android/arouter/facade/Postcard;Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/arouter/core/InterceptorServiceImpl;

.field final synthetic val$callback:Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;

.field final synthetic val$postcard:Lcom/alibaba/android/arouter/facade/Postcard;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/arouter/core/InterceptorServiceImpl;Lcom/alibaba/android/arouter/facade/Postcard;Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$1;->this$0:Lcom/alibaba/android/arouter/core/InterceptorServiceImpl;

    iput-object p2, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$1;->val$postcard:Lcom/alibaba/android/arouter/facade/Postcard;

    iput-object p3, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$1;->val$callback:Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/alibaba/android/arouter/thread/CancelableCountDownLatch;

    sget-object v1, Lcom/alibaba/android/arouter/core/Warehouse;->interceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/arouter/thread/CancelableCountDownLatch;-><init>(I)V

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$1;->val$postcard:Lcom/alibaba/android/arouter/facade/Postcard;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl;->access$000(ILcom/alibaba/android/arouter/thread/CancelableCountDownLatch;Lcom/alibaba/android/arouter/facade/Postcard;)V

    iget-object v1, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$1;->val$postcard:Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/Postcard;->getTimeout()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$1;->val$callback:Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;

    new-instance v1, Lcom/alibaba/android/arouter/exception/HandlerException;

    const-string v2, "The interceptor processing timed out."

    invoke-direct {v1, v2}, Lcom/alibaba/android/arouter/exception/HandlerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;->onInterrupt(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$1;->val$postcard:Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$1;->val$callback:Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;

    iget-object v1, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$1;->val$postcard:Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-virtual {v1}, Lcom/alibaba/android/arouter/facade/Postcard;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;->onInterrupt(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$1;->val$callback:Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;

    iget-object v1, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$1;->val$postcard:Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-interface {v0, v1}, Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;->onContinue(Lcom/alibaba/android/arouter/facade/Postcard;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    iget-object p0, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$1;->val$callback:Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;

    invoke-interface {p0, v0}, Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;->onInterrupt(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
