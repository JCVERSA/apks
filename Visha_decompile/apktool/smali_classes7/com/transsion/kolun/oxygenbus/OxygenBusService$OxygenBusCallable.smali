.class Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/kolun/oxygenbus/OxygenBusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OxygenBusCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/os/IBinder;",
        ">;"
    }
.end annotation


# instance fields
.field private leastRequestErrorTime:J

.field private mContext:Landroid/content/Context;

.field private mServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$300(Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->serviceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->leastRequestErrorTime:J

    return-wide v0
.end method

.method private serviceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->mServiceName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public call()Landroid/os/IBinder;
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OxygenBusCallable call start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OxygenBusService"

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->isAppServiceProcessStarted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->mServiceName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->access$500(Landroid/content/Context;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AIService not started please check AIService process ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->leastRequestErrorTime:J

    .line 7
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OxygenBusCallable call end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " success "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    :goto_2
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->call()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method
