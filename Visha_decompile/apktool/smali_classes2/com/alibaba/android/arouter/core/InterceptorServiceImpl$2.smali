.class final Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/android/arouter/facade/callback/InterceptorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/arouter/core/InterceptorServiceImpl;->_execute(ILcom/alibaba/android/arouter/thread/CancelableCountDownLatch;Lcom/alibaba/android/arouter/facade/Postcard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$counter:Lcom/alibaba/android/arouter/thread/CancelableCountDownLatch;

.field final synthetic val$index:I

.field final synthetic val$postcard:Lcom/alibaba/android/arouter/facade/Postcard;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/arouter/thread/CancelableCountDownLatch;ILcom/alibaba/android/arouter/facade/Postcard;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$2;->val$counter:Lcom/alibaba/android/arouter/thread/CancelableCountDownLatch;

    iput p2, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$2;->val$index:I

    iput-object p3, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$2;->val$postcard:Lcom/alibaba/android/arouter/facade/Postcard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinue(Lcom/alibaba/android/arouter/facade/Postcard;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$2;->val$counter:Lcom/alibaba/android/arouter/thread/CancelableCountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget v0, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$2;->val$index:I

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$2;->val$counter:Lcom/alibaba/android/arouter/thread/CancelableCountDownLatch;

    invoke-static {v0, p0, p1}, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl;->access$000(ILcom/alibaba/android/arouter/thread/CancelableCountDownLatch;Lcom/alibaba/android/arouter/facade/Postcard;)V

    return-void
.end method

.method public onInterrupt(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$2;->val$postcard:Lcom/alibaba/android/arouter/facade/Postcard;

    if-nez p1, :cond_0

    new-instance p1, Lcom/alibaba/android/arouter/exception/HandlerException;

    const-string v1, "No message."

    invoke-direct {p1, v1}, Lcom/alibaba/android/arouter/exception/HandlerException;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/android/arouter/facade/Postcard;->setTag(Ljava/lang/Object;)Lcom/alibaba/android/arouter/facade/Postcard;

    iget-object p0, p0, Lcom/alibaba/android/arouter/core/InterceptorServiceImpl$2;->val$counter:Lcom/alibaba/android/arouter/thread/CancelableCountDownLatch;

    invoke-virtual {p0}, Lcom/alibaba/android/arouter/thread/CancelableCountDownLatch;->cancel()V

    return-void
.end method
