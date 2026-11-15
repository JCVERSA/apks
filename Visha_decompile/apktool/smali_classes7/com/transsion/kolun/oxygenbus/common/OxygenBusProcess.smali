.class Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$Callback;,
        Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$TimeTickBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final MAX_RETRY_TIMES:I = 0x3

.field private static final RETRY_CALL_DURING:I = 0x3e8

.field private static RETRY_TIMES:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OxygenBusProcess"

.field private static volatile clientInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

.field private static volatile serverInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;


# instance fields
.field private appContext:Landroid/content/Context;

.field private callback:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$Callback;

.field private final isClientRunnable:Z

.field private mReceiver:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$TimeTickBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->appContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->isClientRunnable:Z

    return-void
.end method

.method public static synthetic access$100()Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;
    .locals 1

    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->clientInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    return-object v0
.end method

.method public static synthetic access$200()Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;
    .locals 1

    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->serverInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    return-object v0
.end method

.method public static synthetic access$302(I)I
    .locals 0

    sput p0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->RETRY_TIMES:I

    return p0
.end method

.method public static synthetic access$400(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->postServerInstance(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$500(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->postClientInstance(Landroid/content/Context;)V

    return-void
.end method

.method public static postClient(Landroid/content/Context;Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$Callback;)V
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "OxygenBusProcess"

    const-string p1, "postClient error for context is null"

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->clientInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    if-nez v0, :cond_2

    const-class v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->clientInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    if-nez v1, :cond_1

    new-instance v1, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->clientInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->clientInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    invoke-direct {v0, p1}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->updateCallback(Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$Callback;)V

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->postClientInstance(Landroid/content/Context;)V

    return-void
.end method

.method private static postClientInstance(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->serverInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    if-eqz v0, :cond_0

    const-string p0, "OxygenBusProcess"

    const-string v0, "OxygenBusProcess postClient waiting service callback"

    invoke-static {p0, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->clientInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->removeWorkRunnable(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->clientInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->clientInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    iput-object p0, v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->appContext:Landroid/content/Context;

    sget-object p0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->clientInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    const-wide/16 v0, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->postWorkRunnable(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public static postServer(Landroid/content/Context;Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$Callback;)V
    .locals 3

    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->serverInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->serverInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->serverInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

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
    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->serverInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    invoke-direct {v0, p1}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->updateCallback(Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$Callback;)V

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->postServerInstance(Landroid/content/Context;)V

    return-void
.end method

.method private static postServerInstance(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->clientInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->clientInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->removeWorkRunnable(Ljava/lang/Runnable;)V

    const-string v0, "OxygenBusProcess"

    const-string v1, "OxygenBusProcess postServer remove clientInstance "

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->serverInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    if-nez v0, :cond_2

    const-class v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->serverInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    if-nez v1, :cond_1

    new-instance v1, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->serverInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    sget-object p0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->serverInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->removeWorkRunnable(Ljava/lang/Runnable;)V

    :goto_2
    sget-object p0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->serverInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    const-wide/16 v0, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->postWorkRunnable(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private recycle(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->callback:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$Callback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {v0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$Callback;->onOxygenProcessStart()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->appContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->isClientRunnable:Z

    if-eqz v0, :cond_1

    sput-object p1, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->clientInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    goto :goto_0

    :cond_1
    sput-object p1, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->serverInstance:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    :goto_0
    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->callback:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$Callback;

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$Callback;->onOxygenProcessFault()V

    :goto_1
    return-void
.end method

.method private registerTimeTickBroadcast()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->mReceiver:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$TimeTickBroadcastReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$TimeTickBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$TimeTickBroadcastReceiver;-><init>(Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$1;)V

    iput-object v0, p0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->mReceiver:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$TimeTickBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->appContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->mReceiver:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$TimeTickBroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private unRegisterTimeTickBroadcast()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->mReceiver:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$TimeTickBroadcastReceiver;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method private updateCallback(Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->callback:Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "OxygenBusProcess run start "

    const-string v1, "OxygenBusProcess"

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->isAppServiceProcessStarted(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "OxygenBusProcess onAPPServiceStart "

    invoke-static {v1, v0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->recycle(Z)V

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->unRegisterTimeTickBroadcast()V

    return-void

    :cond_0
    sget v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->RETRY_TIMES:I

    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->recycle(Z)V

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->removeRunnable(Ljava/lang/Runnable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OxygenBusProcess onAPPServiceFault reTryTimes "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->RETRY_TIMES:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    add-int/2addr v0, v2

    sput v0, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->RETRY_TIMES:I

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->registerTimeTickBroadcast()V

    const-wide/16 v0, 0x7d0

    invoke-static {p0, v0, v1}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->postWorkRunnable(Ljava/lang/Runnable;J)V

    return-void
.end method
