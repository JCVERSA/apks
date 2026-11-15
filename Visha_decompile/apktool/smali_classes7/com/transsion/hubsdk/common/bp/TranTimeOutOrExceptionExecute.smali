.class public Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutRunnable;,
        Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;,
        Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranTimeOutOrExceptionExecute"

.field private static final TIMEOUT:J = 0xc8L


# instance fields
.field private mTranContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public exceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$ExceptionRunnable;->run()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    invoke-static {p0, p2, p1}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->recordException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->recordException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public recordTimeout(Ljava/lang/String;J)V
    .locals 2

    const-wide/16 v0, 0xc8

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->recordTimeout(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->recordTimeout(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    invoke-interface {p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;->run()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object v2, p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    invoke-static {v2, p2, p1}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->recordException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->recordException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, p2, v2, v3}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->recordTimeout(Ljava/lang/String;J)V

    return-object p1
.end method

.method public timeOutRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutRunnable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutRunnable;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    invoke-interface {p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutRunnable;->run()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v2, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimeOutException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, p2, v2, v3}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->recordTimeout(Ljava/lang/String;J)V

    return-object p1
.end method
