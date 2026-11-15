.class Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$ConnectPoolManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectPoolManager"
.end annotation


# static fields
.field private static apiConnect:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$ConnectPoolManager;->apiConnect:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$ConnectPoolManager;->cacheConnect(Ljava/lang/String;Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;)V

    return-void
.end method

.method public static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$ConnectPoolManager;->removeConnect(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;
    .locals 0

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$ConnectPoolManager;->getChannelConnect(Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;

    move-result-object p0

    return-object p0
.end method

.method private static cacheConnect(Ljava/lang/String;Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;)V
    .locals 3

    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$ConnectPoolManager;->apiConnect:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$ConnectPoolManager;->apiConnect:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getChannelConnect(Ljava/lang/String;)Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;
    .locals 1

    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$ConnectPoolManager;->apiConnect:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/SoftReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static removeConnect(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$ConnectPoolManager;->apiConnect:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$ConnectPoolManager;->apiConnect:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;

    invoke-virtual {v1}, Lcom/transsion/apiinvoke/ipc/connect/RealApiInterface;->onDestroy()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$ConnectPoolManager;->apiConnect:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "RealRemoteConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeConnect channelName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
