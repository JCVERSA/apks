.class Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData;->retryRequest(Ljq0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData;

.field final synthetic val$call:Ljq0;


# direct methods
.method public constructor <init>(Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData;Ljq0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData$1;->this$0:Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData;

    iput-object p2, p0, Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData$1;->val$call:Ljq0;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData$1;->this$0:Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData$1;->this$0:Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData;

    iget-object v2, p0, Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData$1;->val$call:Ljq0;

    invoke-interface {v2}, Ljq0;->clone()Ljq0;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData;->c(Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData;Ljq0;)V

    iget-object v1, p0, Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData$1;->this$0:Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData;

    invoke-static {v1}, Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData;->a(Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData;)Ljq0;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData$1;->this$0:Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData;

    invoke-interface {v1, v2}, Ljq0;->enqueue(Ltq0;)V

    iget-object p0, p0, Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData$1;->this$0:Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData;->b(Lcom/transsion/retrofit/callback/RetryCallbackWithDirectData;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
