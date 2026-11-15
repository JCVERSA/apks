.class public Lcom/transsion/kolun/oxygenbus/common/ApiAsyncUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "KolunIPCChannel"

.field private static final executorService:Ljava/util/concurrent/ExecutorService;

.field private static requestCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/transsion/kolun/oxygenbus/common/ApiAsyncUtils;->executorService:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    sput v0, Lcom/transsion/kolun/oxygenbus/common/ApiAsyncUtils;->requestCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static submit(Lcom/transsion/kolun/oxygenbus/common/ApiAyncRunnable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/kolun/oxygenbus/common/ApiAyncRunnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    sget v0, Lcom/transsion/kolun/oxygenbus/common/ApiAsyncUtils;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/transsion/kolun/oxygenbus/common/ApiAsyncUtils;->requestCount:I

    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/ApiAsyncUtils;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApiAsyncUtils called in main:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/kolun/oxygenbus/common/ApiAyncRunnable;->isMainThreadCall:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/transsion/kolun/oxygenbus/common/ApiAsyncUtils;->requestCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "KolunIPCChannel"

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
