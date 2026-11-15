.class Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;
.super Lcom/transsion/transfer/androidasync/t;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/http/HttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EndEmitter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/t;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic O(Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static P(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/Exception;)Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter$1;

    .line 7
    .line 8
    invoke-direct {v1, v0, p1}, Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter$1;-><init>(Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;Ljava/lang/Exception;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
