.class public abstract Lcom/transsion/retrofit/callback/RetryCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltq0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ltq0;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RetryCallback"


# instance fields
.field private isExecuting:Z

.field private mCall:Ljq0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljq0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mCurrentRetryCount:I

.field private mRetryCount:I

.field private mRetryInterval:J

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljq0;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljq0<",
            "TT;>;IJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/transsion/retrofit/callback/RetryCallback;->timer:Ljava/util/Timer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/retrofit/callback/RetryCallback;->isExecuting:Z

    iput-object p1, p0, Lcom/transsion/retrofit/callback/RetryCallback;->mCall:Ljq0;

    iput p2, p0, Lcom/transsion/retrofit/callback/RetryCallback;->mRetryCount:I

    iput-wide p3, p0, Lcom/transsion/retrofit/callback/RetryCallback;->mRetryInterval:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/retrofit/callback/RetryCallback;)Ljq0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/retrofit/callback/RetryCallback;->mCall:Ljq0;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/retrofit/callback/RetryCallback;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/retrofit/callback/RetryCallback;->isExecuting:Z

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/retrofit/callback/RetryCallback;Ljq0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/retrofit/callback/RetryCallback;->mCall:Ljq0;

    return-void
.end method


# virtual methods
.method public cancelCall()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/retrofit/callback/RetryCallback;->isExecuting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/retrofit/callback/RetryCallback;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/retrofit/callback/RetryCallback;->mCall:Ljq0;

    invoke-interface {v0}, Ljq0;->cancel()V

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentRetryCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/retrofit/callback/RetryCallback;->mCurrentRetryCount:I

    return p0
.end method

.method public final onFailure(Ljq0;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljq0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljq0<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/retrofit/callback/RetryCallback;->isExecuting:Z

    iget v0, p0, Lcom/transsion/retrofit/callback/RetryCallback;->mCurrentRetryCount:I

    iget v1, p0, Lcom/transsion/retrofit/callback/RetryCallback;->mRetryCount:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/retrofit/callback/RetryCallback;->mCurrentRetryCount:I

    invoke-virtual {p0, p1}, Lcom/transsion/retrofit/callback/RetryCallback;->retryRequest(Ljq0;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/retrofit/callback/RetryCallback;->onRequestFail(Ljq0;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public abstract onRequestFail(Ljq0;Ljava/lang/Throwable;)V
.end method

.method public abstract onRequestResponse(Ljq0;Lgu8;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljq0<",
            "TT;>;",
            "Lgu8<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public final onResponse(Ljq0;Lgu8;)V
    .locals 2
    .param p1    # Ljq0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lgu8;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljq0<",
            "TT;>;",
            "Lgu8<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/retrofit/callback/RetryCallback;->isExecuting:Z

    invoke-virtual {p2}, Lgu8;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/transsion/retrofit/callback/RetryCallback;->mCurrentRetryCount:I

    iget v1, p0, Lcom/transsion/retrofit/callback/RetryCallback;->mRetryCount:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/retrofit/callback/RetryCallback;->mCurrentRetryCount:I

    invoke-virtual {p0, p1}, Lcom/transsion/retrofit/callback/RetryCallback;->retryRequest(Ljq0;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/retrofit/callback/RetryCallback;->mCurrentRetryCount:I

    iget v1, p0, Lcom/transsion/retrofit/callback/RetryCallback;->mRetryCount:I

    if-lt v0, v1, :cond_1

    new-instance p2, Ljava/lang/Throwable;

    const-string v0, "onResponse_but_not_successful_and_try_out_limited"

    invoke-direct {p2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/retrofit/callback/RetryCallback;->onRequestFail(Ljq0;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/retrofit/callback/RetryCallback;->onRequestResponse(Ljq0;Lgu8;)V

    :goto_0
    return-void
.end method

.method public abstract onStartRetry()V
.end method

.method public retryRequest(Ljq0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljq0<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/retrofit/callback/RetryCallback;->onStartRetry()V

    new-instance v0, Lcom/transsion/retrofit/callback/RetryCallback$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/retrofit/callback/RetryCallback$1;-><init>(Lcom/transsion/retrofit/callback/RetryCallback;Ljq0;)V

    iget-object p1, p0, Lcom/transsion/retrofit/callback/RetryCallback;->timer:Ljava/util/Timer;

    iget-wide v1, p0, Lcom/transsion/retrofit/callback/RetryCallback;->mRetryInterval:J

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
