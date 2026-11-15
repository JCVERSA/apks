.class public Lcom/transsion/kolun/oxygenbus/OxygenBusService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;,
        Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;,
        Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;,
        Lcom/transsion/kolun/oxygenbus/OxygenBusService$WaitingConnectRunnable;,
        Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenbusBroadcastReceiver;,
        Lcom/transsion/kolun/oxygenbus/OxygenBusService$RetryCacheBean;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static volatile INSTANCE:Lcom/transsion/kolun/oxygenbus/OxygenBusService; = null

.field private static final LOCK:[B

.field public static final SERVICE_OXYGEN_BUS:Ljava/lang/String; = "oxygenBusService"

.field public static final SERVICE_SUBSCRIBE:Ljava/lang/String; = "subscribeService"

.field private static final TAG:Ljava/lang/String; = "OxygenBusService"

.field private static final sDeathRetryQueue:Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;

.field private static sIsBusConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sIsSubscribeConnected:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final lifecycle:Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;

.field private final oxygenBusCall:Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;

.field private oxygenBusServerProxy:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy<",
            "Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;",
            ">;"
        }
    .end annotation
.end field

.field private final subscribeBusCall:Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;

.field private subscribeBusServerProxy:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy<",
            "Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.transsion.kolun.oxygenbus2.serviceBinder/binder"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->LOCK:[B

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->sIsBusConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->sIsSubscribeConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;-><init>(Lcom/transsion/kolun/oxygenbus/OxygenBusService$1;)V

    sput-object v0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->sDeathRetryQueue:Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;

    invoke-static {}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->threadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/transsion/kolun/oxygenbus/OxygenBusService$1;)V

    iput-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->lifecycle:Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;

    new-instance v0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;

    const-string v1, "oxygenBusService"

    invoke-direct {v0, p1, v1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->oxygenBusCall:Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;

    new-instance v0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;

    const-string v1, "subscribeService"

    invoke-direct {v0, p1, v1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->subscribeBusCall:Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;

    const-string p0, "OxygenBusService"

    const-string p1, "OxygenBusService created success "

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/OxygenBusService;
    .locals 0

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getInstance(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/OxygenBusService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/transsion/kolun/oxygenbus/OxygenBusService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->tryOxygenBusConnect()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Landroid/content/Context;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getKolunServiceBinder(Landroid/content/Context;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method private static calcTimeOutDuring()I
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x96

    goto :goto_0

    :cond_0
    const/16 v0, 0x5dc

    :goto_0
    return v0
.end method

.method private declared-synchronized currentOxygenBusServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->isOxygenBusConnected()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->sIsBusConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->oxygenBusServerProxy:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->getInterface()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->lifecycle:Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;

    invoke-static {p1, v0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->access$200(Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;I)V

    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->oxygenBusCall:Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->tryGetProvider(Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;I)Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/IOxygenBusServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->oxygenBusServerProxy:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    new-instance v1, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    invoke-direct {v1, p1, p0}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;-><init>(Landroid/os/IInterface;Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$Callback;)V

    iput-object v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->oxygenBusServerProxy:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    :cond_2
    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->oxygenBusServerProxy:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->getInterface()Landroid/os/IInterface;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;

    :cond_3
    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->lifecycle:Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;

    invoke-virtual {p1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->isConnected()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "OxygenBusService"

    const-string v1, "currentOxygenBusServer, re connected "

    invoke-static {p1, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->setReConnectSuccess()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit p0

    return-object v0

    :cond_6
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->lifecycle:Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->access$200(Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;I)V

    const-string p1, "OxygenBusService"

    const-string v1, "=============>>>> currentOxygenBusServer IBinder = null or not alive"

    invoke-static {p1, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private declared-synchronized currentSubscribeServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->subscribeBusServerProxy:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->sIsSubscribeConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->subscribeBusServerProxy:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->getInterface()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->subscribeBusCall:Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->tryGetProvider(Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;I)Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->subscribeBusServerProxy:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    new-instance v1, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    invoke-direct {v1, p1, p0}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;-><init>(Landroid/os/IInterface;Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy$Callback;)V

    iput-object v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->subscribeBusServerProxy:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    :cond_2
    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->subscribeBusServerProxy:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->getInterface()Landroid/os/IInterface;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;

    :cond_3
    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->lifecycle:Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;

    invoke-virtual {p1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->isConnected()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "OxygenBusService"

    const-string v1, "currentSubscribeServer, re connected"

    invoke-static {p1, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->setReConnectSuccess()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit p0

    return-object v0

    :cond_6
    :goto_0
    :try_start_2
    const-string p1, "OxygenBusService"

    const-string v1, "=============>>>> currentSubscribeServer IBinder = null or not alive"

    invoke-static {p1, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private static getInstance(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/OxygenBusService;
    .locals 0

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->initInstance(Landroid/content/Context;)V

    sget-object p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->INSTANCE:Lcom/transsion/kolun/oxygenbus/OxygenBusService;

    return-object p0
.end method

.method private static getKolunServiceBinder(Landroid/content/Context;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 12

    const-string v0, "getKolunServiceBinder, reset priority "

    const-string v1, "OxygenBusService"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getKolunServiceBinder, modify priority current is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p1, v2

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v3

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p0, :cond_2

    :try_start_2
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getServiceBinder(Landroid/database/Cursor;)Landroid/os/IBinder;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_1

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_1
    move-exception p1

    move-object v11, p1

    move-object p1, p0

    move-object p0, v11

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object p1, v2

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v4, :cond_4

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    return-object v2

    :catchall_3
    move-exception p0

    if-eqz v4, :cond_6

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p0
.end method

.method public static getLifeCycle(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;
    .locals 0

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getInstance(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/OxygenBusService;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->lifecycle:Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;

    return-object p0
.end method

.method public static getOxygenBusServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;
    .locals 1

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getInstance(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/OxygenBusService;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->currentOxygenBusServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;

    move-result-object p0

    return-object p0
.end method

.method private static getServiceBinder(Landroid/database/Cursor;)Landroid/os/IBinder;
    .locals 1

    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-class v0, Lcom/transsion/kolun/oxygenbus/common/BinderCursor$BinderParcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "binder"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/transsion/kolun/oxygenbus/common/BinderCursor$BinderParcelable;

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/BinderCursor$BinderParcelable;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public static getSubscribeServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;
    .locals 1

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getInstance(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/OxygenBusService;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->currentSubscribeServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/ISubscribeBusServer;

    move-result-object p0

    return-object p0
.end method

.method public static initInstance(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->INSTANCE:Lcom/transsion/kolun/oxygenbus/OxygenBusService;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->INSTANCE:Lcom/transsion/kolun/oxygenbus/OxygenBusService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/kolun/oxygenbus/OxygenBusService;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->INSTANCE:Lcom/transsion/kolun/oxygenbus/OxygenBusService;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public static declared-synchronized isOxygenBusConnected()Z
    .locals 2

    const-class v0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->INSTANCE:Lcom/transsion/kolun/oxygenbus/OxygenBusService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->INSTANCE:Lcom/transsion/kolun/oxygenbus/OxygenBusService;

    iget-object v1, v1, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->oxygenBusServerProxy:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->INSTANCE:Lcom/transsion/kolun/oxygenbus/OxygenBusService;

    iget-object v1, v1, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->oxygenBusServerProxy:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    .line 3
    invoke-virtual {v1}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->isConnected()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static isOxygenBusConnected(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getInstance(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/OxygenBusService;

    move-result-object p0

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->isOxygenBusConnectedInner()Z

    move-result p0

    return p0
.end method

.method private declared-synchronized isOxygenBusConnectedInner()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->oxygenBusServerProxy:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isOxygenbusRegister(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->isOxygenbusRegister(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isOxygenbusRegister(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getInstance(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/OxygenBusService;

    move-result-object v0

    invoke-direct {v0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->isOxygenBusConnectedInner()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->getOxygenBusServer(Landroid/content/Context;)Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5
    :cond_2
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/kolun/oxygenbus/IOxygenBusServer;->isChannelRegistered(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method private setReConnectSuccess()V
    .locals 2

    invoke-static {}, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->getInstance()Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;

    move-result-object v0

    sget-object v1, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->sDeathRetryQueue:Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->removeMonitor(Lcom/transsion/apiinvoke/monitor/InvokeMonitor;)V

    invoke-virtual {v1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;->checkRetryList()V

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->lifecycle:Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->access$200(Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;I)V

    const-string p0, "OxygenBusService"

    const-string v0, "DeathRecipient setReConnectSuccess"

    invoke-static {p0, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private tryGetProvider(Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;I)Landroid/os/IBinder;
    .locals 4

    const-string p0, "OxygenBusService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tryGetProvider start "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->access$300(Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->access$400(Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const-string p0, "OxygenBusService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tryGetProvider end "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->access$300(Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error, leastRequestErrorTime "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->access$400(Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->LOCK:[B

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->calcTimeOutDuring()I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->submit(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    if-nez p2, :cond_1

    const/16 p2, 0x12c

    invoke-static {p1, p2}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->submit(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    const-string p0, "OxygenBusService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tryGetProvider fault for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->access$300(Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " fault, check if aiService started "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p0, "OxygenBusService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tryGetProvider end "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->access$300(Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " success "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p2

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private tryOxygenBusConnect()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->oxygenBusCall:Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;

    invoke-virtual {v0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->call()Landroid/os/IBinder;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->subscribeBusCall:Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenBusCallable;->call()Landroid/os/IBinder;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "OxygenBusService"

    const-string v1, "binderDied oxygenBus service died "

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->sIsBusConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->sIsSubscribeConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->sIsBusConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->oxygenBusServerProxy:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    :cond_0
    sget-object v0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->sIsSubscribeConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->subscribeBusServerProxy:Lcom/transsion/apiinvoke/ipc/connect/ApiIInterfaceProxy;

    :cond_1
    invoke-static {v1}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->setGlobalSubscribeNotify(Lcom/transsion/apiinvoke/subscribe/SubscribeManager$SubscribeCenterCountChangeListener;)V

    invoke-static {}, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->getInstance()Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;

    move-result-object v0

    sget-object v1, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->sDeathRetryQueue:Lcom/transsion/kolun/oxygenbus/OxygenBusService$DeathRetryQueue;

    invoke-virtual {v0, v1}, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;->addMonitor(Lcom/transsion/apiinvoke/monitor/InvokeMonitor;)V

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService;->lifecycle:Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->access$200(Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;I)V

    return-void
.end method
