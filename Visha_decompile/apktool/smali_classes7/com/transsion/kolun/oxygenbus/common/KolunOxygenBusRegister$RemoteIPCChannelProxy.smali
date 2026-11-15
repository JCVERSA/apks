.class Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteIPCChannelProxy"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final remoteChannelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;->remoteChannelMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public clearConnection()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;->remoteChannelMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public findServiceChannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getOxygenBusServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;->findChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    move-object v0, p0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public declared-synchronized getChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;->remoteChannelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;->remoteChannelMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->getApiInterface()Lcom/transsion/apiinvoke/invoke/api/ApiInterface;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v2, "ApiInvokeRegister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteIPCChannelProxy, getChannel connectChannel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current connected "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public shouldHandle(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->access$300()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shouldHandle not support oxygenBus "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApiInvokeRegister"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$RemoteIPCChannelProxy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getOxygenBusServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;->isChannelRegistered(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method
