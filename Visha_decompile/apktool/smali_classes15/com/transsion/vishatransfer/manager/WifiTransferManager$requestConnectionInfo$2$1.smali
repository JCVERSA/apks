.class final Lcom/transsion/vishatransfer/manager/WifiTransferManager$requestConnectionInfo$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/manager/WifiTransferManager;->requestConnectionInfo(Lwh1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $continuation:Lcr0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcr0;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;


# direct methods
.method public constructor <init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcr0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/vishatransfer/manager/WifiTransferManager;",
            "Lcr0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$requestConnectionInfo$2$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    iput-object p2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$requestConnectionInfo$2$1;->$continuation:Lcr0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 10

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$requestConnectionInfo$2$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    invoke-virtual {v0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->setIpAddress(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$requestConnectionInfo$2$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->getIpAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$requestConnectionInfo$2$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getConnectLock$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$requestConnectionInfo$2$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    monitor-enter p1

    :try_start_0
    const-string v1, "socket_debug"

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiTransferManager_requestConnectionInfo_ipAddress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->isConnected()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getConnectLock$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    sget-object v0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_2
    :goto_0
    new-instance p1, Lcom/transsion/vishatransfer/data/WifiModel;

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/transsion/vishatransfer/data/WifiModel;-><init>(Ljava/lang/String;ZIFLjava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$requestConnectionInfo$2$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/vishatransfer/data/WifiModel;->setServiceIP(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$requestConnectionInfo$2$1;->$continuation:Lcr0;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
