.class Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/kolun/oxygenbus/OxygenBusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitingConnectRunnable"
.end annotation


# static fields
.field private static final MAX_WAITING_TIMES:I = 0x64


# instance fields
.field private cancel:Z

.field private context:Landroid/content/Context;

.field private currentTimes:I

.field private isRunning:Z

.field private mCallback:Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->mCallback:Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;Lcom/transsion/kolun/oxygenbus/OxygenBusService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;-><init>(Landroid/content/Context;Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->recycle()V

    return-void
.end method

.method private calcWaitingDuring()I
    .locals 1

    iget p0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->currentTimes:I

    const/16 v0, 0xa

    if-gt p0, v0, :cond_0

    const/16 p0, 0x3e8

    return p0

    :cond_0
    const/16 v0, 0x1e

    if-gt p0, v0, :cond_1

    const/16 p0, 0x7d0

    return p0

    :cond_1
    const/16 p0, 0x1388

    return p0
.end method

.method private recycle()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->currentTimes:I

    iput-boolean v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->cancel:Z

    iput-boolean v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->isRunning:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->cancel:Z

    return-void
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->isRunning:Z

    return p0
.end method

.method public run()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->isRunning:Z

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->mCallback:Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;

    invoke-interface {v1, v0}, Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;->onOxygenBusServerStateChange(I)V

    :goto_0
    iget v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->currentTimes:I

    const/16 v2, 0x64

    const/4 v3, 0x2

    if-ge v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->cancel:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->isAppServiceProcessStarted(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WaitingConnectRunnable try connect isAppService Started "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " currentTimes "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->currentTimes:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->currentTimes:I

    const/4 v5, 0x5

    const-string v6, "OxygenBusService"

    if-lt v4, v5, :cond_0

    rem-int/lit8 v4, v4, 0x5

    if-nez v4, :cond_0

    invoke-static {v6, v2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {v6, v2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->access$1000(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/OxygenBusService;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->access$1100(Lcom/transsion/kolun/oxygenbus/OxygenBusService;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->recycle()V

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->mCallback:Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, v3}, Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;->onOxygenBusServerStateChange(I)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WaitingConnectRunnable connected currentTimes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->currentTimes:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->currentTimes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->currentTimes:I

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->calcWaitingDuring()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->mCallback:Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->access$1000(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/OxygenBusService;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->access$1100(Lcom/transsion/kolun/oxygenbus/OxygenBusService;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->mCallback:Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, -0x1

    :goto_2
    invoke-interface {v1, v3}, Lcom/transsion/kolun/oxygenbus/OxygenBusStateChangeListener;->onOxygenBusServerStateChange(I)V

    :cond_5
    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;->recycle()V

    return-void
.end method
