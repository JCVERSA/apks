.class final enum Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy$1;
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
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "Request threw uncaught throwable"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    aput-object p1, v0, v1

    .line 11
    .line 12
    const-string p1, "ZeroPoolExecutor"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/transsion/core/log/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
