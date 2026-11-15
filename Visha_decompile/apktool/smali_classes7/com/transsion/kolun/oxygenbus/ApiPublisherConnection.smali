.class public Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;,
        Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$ApiPublisherConnectionHolder;,
        Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$ScreenActionReceiver;
    }
.end annotation


# static fields
.field private static final CONNECTION_DURING:I = 0x1388

.field private static final MAX_RETRY_TIMES:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "ApiPublisherConnection"


# instance fields
.field private currentTimes:I

.field private final mActionReceiver:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$ScreenActionReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private mRetryRunning:Ljava/lang/Runnable;

.field private publisherRegister:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;

.field private final registerRemoteRunnable:Ljava/lang/Runnable;

.field private final unRegisterRemoteRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->publisherRegister:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;

    .line 4
    new-instance v1, Lzd;

    invoke-direct {v1, p0}, Lzd;-><init>(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)V

    iput-object v1, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->registerRemoteRunnable:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lae;

    invoke-direct {v1, p0}, Lae;-><init>(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)V

    iput-object v1, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->unRegisterRemoteRunnable:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->mHandler:Landroid/os/Handler;

    .line 7
    new-instance v1, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$ScreenActionReceiver;

    invoke-direct {v1, v0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$ScreenActionReceiver;-><init>(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$1;)V

    iput-object v1, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->mActionReceiver:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$ScreenActionReceiver;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->lambda$new$1()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->dispatchReceiveAction(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)I
    .locals 0

    iget p0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->currentTimes:I

    return p0
.end method

.method public static synthetic access$1102(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;I)I
    .locals 0

    iput p1, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->currentTimes:I

    return p1
.end method

.method public static synthetic access$1108(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)I
    .locals 2

    iget v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->currentTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->currentTimes:I

    return v0
.end method

.method public static synthetic access$1200(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->mRetryRunning:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$1202(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->mRetryRunning:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static synthetic access$1300(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;
    .locals 0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->publisherRegister:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->lambda$new$0()V

    return-void
.end method

.method private declared-synchronized checkPublisherRegisterState()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->publisherRegister:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->access$700(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ApiPublisherConnection"

    const-string v1, "checkPublisherRegisterState call"

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->publisherRegister:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->access$800(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private declared-synchronized checkPublisherUnRegisterState()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->publisherRegister:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->access$700(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ApiPublisherConnection"

    const-string v1, "checkPublisherUnRegisterState called"

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->publisherRegister:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->access$900(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private dispatchReceiveAction(Ljava/lang/String;)V
    .locals 2

    const-string v0, "android.intent.action.SCREEN_ON"

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->hasLocalSubscribe()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->unRegisterRemoteRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->removeWorkRunnable(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->registerRemoteRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->postWorkRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->registerRemoteRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->removeWorkRunnable(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->unRegisterRemoteRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-static {p0, v0, v1}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->postWorkRunnable(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final getInstance()Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;
    .locals 1

    invoke-static {}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$ApiPublisherConnectionHolder;->access$000()Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->checkPublisherRegisterState()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->checkPublisherUnRegisterState()V

    return-void
.end method

.method private unRegisterRemoteSubscribe(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ProcessInfo;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->publisherRegister:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->access$500(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->publisherRegister:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "unRegisterRemoteSubscribe processInfo "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " channelName "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApiPublisherConnection"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSubscribeChange()V
    .locals 3

    invoke-static {}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->hasLocalSubscribe()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscribeChange hasLocalSubscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApiPublisherConnection"

    invoke-static {v2, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->checkPublisherRegisterState()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->checkPublisherUnRegisterState()V

    :goto_0
    return-void
.end method

.method public registerRemoteSubscribeStub(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ProcessInfo;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->publisherRegister:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;-><init>(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ProcessInfo;Ljava/lang/String;Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$1;)V

    iput-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->publisherRegister:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;

    goto :goto_0

    :cond_0
    invoke-static {v0, p2, p3}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->access$300(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;Lcom/transsion/apiinvoke/common/router/ProcessInfo;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->hasLocalSubscribe()Z

    move-result p3

    if-nez p3, :cond_1

    const-string v0, "APPService"

    invoke-virtual {p2, v0}, Lcom/transsion/apiinvoke/common/router/ProcessInfo;->containChannel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->publisherRegister:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;->access$400(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$APIPublisherRegister;)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->mActionReceiver:Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$ScreenActionReceiver;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$ScreenActionReceiver;->checkRegister(Landroid/content/Context;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "registerRemoteSubscribeStub process "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " hasLocalPublish "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApiPublisherConnection"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unRegisterRemoteSubscribeStub(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ProcessInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->unRegisterRemoteSubscribe(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ProcessInfo;Ljava/lang/String;)V

    return-void
.end method
