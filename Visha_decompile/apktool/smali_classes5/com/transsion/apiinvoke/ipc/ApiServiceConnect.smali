.class public Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/ipc/ApiServiceConnect$ApiServiceConnectHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApiServiceConnect"


# instance fields
.field private final connectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->connectionMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/apiinvoke/ipc/ApiServiceConnect$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;
    .locals 1

    invoke-static {}, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect$ApiServiceConnectHolder;->access$000()Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;

    move-result-object v0

    return-object v0
.end method

.method private isRemoteConnect(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->getServiceInterface(Ljava/lang/Object;)Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public connect(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->connectionMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/transsion/apiinvoke/ipc/connect/ApiRemoteConnection;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->connectRemote(Landroid/content/Context;Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection;)Z

    move-result p0

    return p0
.end method

.method public connectRemote(Landroid/content/Context;Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p2}, Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection;->remoteDesc()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->connectionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v1, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect component:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->connectionMap:Ljava/util/Map;

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection;->bindRemoteSync(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public disConnect(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disConnect remote:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->connectionMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection;->unbindRemote(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public getServiceInterface(Ljava/lang/Object;)Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->connectionMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0}, Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection;->getServiceInterface()Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceGet;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    invoke-interface {p0}, Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceGet;->getInterface()Lcom/transsion/apiinvoke/ipc/ICommonServiceInterface;

    move-result-object p0

    return-object p0
.end method

.method public isConnect(Landroid/content/ComponentName;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->isRemoteConnect(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isConnect(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->isRemoteConnect(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isConnecting(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/ApiServiceConnect;->connectionMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/apiinvoke/ipc/connect/IRemoteConnection;->isConnecting()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
