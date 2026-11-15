.class public Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection;
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection$ServiceInterfaceGet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection<",
        "Landroid/content/ComponentName;",
        ">;",
        "Landroid/content/ServiceConnection;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# static fields
.field private static final CONNECT_WAIT_TIME:J = 0xc8L

.field private static final MAX_RETRY_TIMES:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ApiRemoteConnection"


# instance fields
.field private final isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mComponent:Landroid/content/ComponentName;

.field private mServiceInterface:Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceGet;

.field private mSessionClient:Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;

.field private final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mComponent:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->packageName:Ljava/lang/String;

    return-void
.end method

.method private checkConnect()Z
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindServiceAsync already connected component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method


# virtual methods
.method public bindRemoteService(Landroid/content/Context;)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindServiceAsync start component = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindServiceAsync end component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " success "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public bindRemoteSync(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->bindServiceAsync(Landroid/content/Context;II)Z

    move-result p0

    return p0
.end method

.method public bindServiceAsync(Landroid/content/Context;II)Z
    .locals 7

    const/4 v0, 0x0

    if-lt p2, p3, :cond_0

    iget-object p1, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p1, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bindServiceAsync timeout component = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->bindRemoteService(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->checkConnect()Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v2

    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v1, v3, :cond_3

    int-to-long v3, p2

    const-wide/16 v5, 0xc8

    mul-long/2addr v3, v5

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_3
    int-to-long v3, p2

    const-wide/16 v5, 0x190

    mul-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    add-int/2addr p2, v2

    goto :goto_3

    :goto_1
    throw p0

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :goto_3
    sget-object v1, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindServiceAsync component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "currentTimes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isMainLooper "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_4

    move v4, v2

    goto :goto_4

    :cond_4
    move v4, v0

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object p1, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bindServiceAsync isConnected component "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " currentTimes = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->bindServiceAsync(Landroid/content/Context;II)Z

    move-result p0

    return p0
.end method

.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mServiceInterface:Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceGet;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceGet;->getInterface()Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method public getCommonApiService()Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;
    .locals 2

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mServiceInterface:Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceGet;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceGet;->getInterface()Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getServiceInterface()Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceGet;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mServiceInterface:Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceGet;

    return-object p0
.end method

.method public getSession()Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mSessionClient:Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;

    return-object p0
.end method

.method public isConnected()Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->getCommonApiService()Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isConnecting()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    sget-object v0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected channel >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " binder != null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p2}, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;

    move-result-object v1

    invoke-interface {p2, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p2, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mServiceInterface:Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceGet;

    if-nez p2, :cond_1

    new-instance p2, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection$ServiceInterfaceGet;

    invoke-direct {p2, v1}, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection$ServiceInterfaceGet;-><init>(Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;)V

    iput-object p2, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mServiceInterface:Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceGet;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_1
    instance-of v3, p2, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection$ServiceInterfaceGet;

    if-eqz v3, :cond_2

    check-cast p2, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection$ServiceInterfaceGet;

    invoke-virtual {p2, v1}, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection$ServiceInterfaceGet;->updateServiceInterface(Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;)V

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;

    iget-object v4, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;->getSession(Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/IServiceSession;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->packageName:Ljava/lang/String;

    invoke-direct {v3, v1, p2, v4}, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;-><init>(Lcom/transsion/apiinvoke/ipc/IServiceSession;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mSessionClient:Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected, CREATE SESSION:: packageName "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4

    :goto_3
    :try_start_1
    sget-object v0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected, call connected error "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_4
    return-void

    :goto_5
    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mServiceInterface:Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceGet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceDisconnected channel >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mServiceInterface:Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceGet;

    :cond_0
    iget-object p1, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mSessionClient:Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;->release()V

    iput-object v1, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mSessionClient:Lcom/transsion/apiinvoke/ipc/session/client/SessionClient;

    :cond_1
    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public remoteDesc()Landroid/content/ComponentName;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public bridge synthetic remoteDesc()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->remoteDesc()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public unbindRemote(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p1, p0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method
