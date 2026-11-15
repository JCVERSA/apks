.class Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$DataCenterSubscribeChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/subscribe/SubscribeManager$SubscribeCenterCountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataCenterSubscribeChangeListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final subscribeName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$DataCenterSubscribeChangeListener;->mContext:Landroid/content/Context;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$DataCenterSubscribeChangeListener;->subscribeName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$DataCenterSubscribeChangeListener;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getSubscribeCenter()Lcom/transsion/apiinvoke/ipc/APISubscribeCenter;
    .locals 1

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$DataCenterSubscribeChangeListener;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getSubscribeServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;->getSubscribeCenter()Lcom/transsion/apiinvoke/ipc/APISubscribeCenter;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public onSubscribe(Lcom/transsion/apiinvoke/subscribe/Publisher;I)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$DataCenterSubscribeChangeListener;->getSubscribeCenter()Lcom/transsion/apiinvoke/ipc/APISubscribeCenter;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "ApiInvokeRegister"

    if-nez v0, :cond_0

    :try_start_1
    const-string p0, "DataCenterSubscribeChangeListener APISubscribeCenter is Null"

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataCenterSubscribeChangeListener onSubscribe publisher "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " subscribeName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$DataCenterSubscribeChangeListener;->subscribeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " subscribeCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/apiinvoke/ipc/ParcelPublisher;

    invoke-direct {v1, p1}, Lcom/transsion/apiinvoke/ipc/ParcelPublisher;-><init>(Lcom/transsion/apiinvoke/subscribe/Publisher;)V

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$DataCenterSubscribeChangeListener;->subscribeName:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p2}, Lcom/transsion/apiinvoke/ipc/APISubscribeCenter;->onSubscribe(Lcom/transsion/apiinvoke/ipc/ParcelPublisher;Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->getInstance()Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->onSubscribeChange()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onUnSubscribe(Lcom/transsion/apiinvoke/subscribe/Publisher;I)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$DataCenterSubscribeChangeListener;->getSubscribeCenter()Lcom/transsion/apiinvoke/ipc/APISubscribeCenter;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "ApiInvokeRegister"

    if-nez v0, :cond_0

    :try_start_1
    const-string p0, "DataCenterSubscribeChangeListener APISubscribeCenter is Null"

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataCenterSubscribeChangeListener onUnSubscribe publisher "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " subscribeName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$DataCenterSubscribeChangeListener;->subscribeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " subscribeCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/apiinvoke/ipc/ParcelPublisher;

    invoke-direct {v1, p1}, Lcom/transsion/apiinvoke/ipc/ParcelPublisher;-><init>(Lcom/transsion/apiinvoke/subscribe/Publisher;)V

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$DataCenterSubscribeChangeListener;->subscribeName:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p2}, Lcom/transsion/apiinvoke/ipc/APISubscribeCenter;->onUnSubscribe(Lcom/transsion/apiinvoke/ipc/ParcelPublisher;Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->getInstance()Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->onSubscribeChange()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public refreshSubscribeCenter(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$DataCenterSubscribeChangeListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getSubscribeServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->channel:Ljava/lang/String;

    iget-object v2, p1, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->apiName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p2}, Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;->findSubscribeTypeCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "ApiInvokeRegister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataCenterSubscribeChangeListener refreshSubscribeCenter , channel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->channel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " apiName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->apiName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " matcher "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " typeCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_1

    invoke-static {p1, p2}, Lcom/transsion/apiinvoke/subscribe/Publisher;->create(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;Ljava/lang/String;)Lcom/transsion/apiinvoke/subscribe/Publisher;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$DataCenterSubscribeChangeListener;->onSubscribe(Lcom/transsion/apiinvoke/subscribe/Publisher;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
