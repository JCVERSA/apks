.class final enum Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy$2;
.super Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;-><init>(Ljava/lang/String;ILcom/transsion/core/pool/TranssionPoolExecutor$a;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method protected handle(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;->handle(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 8
    .line 9
    const-string v1, "Request threw uncaught throwable"

    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method
