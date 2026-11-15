.class public final Lcom/transsion/vishatransfer/manager/WifiTransferManager$receiverDevices$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/manager/WifiTransferManager;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001d\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "com/transsion/vishatransfer/manager/WifiTransferManager$receiverDevices$1",
        "Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;",
        "",
        "Landroid/net/wifi/p2p/WifiP2pDevice;",
        "devices",
        "Lzfb;",
        "onPeersAvailable",
        "(Ljava/util/List;)V",
        "vishatransferlib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;


# direct methods
.method public constructor <init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$receiverDevices$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$receiverDevices$1;->onPeersAvailable$lambda$1(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    return-void
.end method

.method private static final onPeersAvailable$lambda$1(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 1

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "getDeviceList(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMListeners$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;->onPeersAvailable(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onConnectionChanged(Landroid/net/NetworkInfo;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;->onConnectionChanged(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Landroid/net/NetworkInfo;I)V

    return-void
.end method

.method public onConversationMessage(Lcom/transsion/vishatransfer/data/Conversation;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;->onConversationMessage(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Lcom/transsion/vishatransfer/data/Conversation;)V

    return-void
.end method

.method public onError(Lcom/transsion/vishatransfer/data/WifiModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;->onError(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Lcom/transsion/vishatransfer/data/WifiModel;)V

    return-void
.end method

.method public onFileTranslated(Lcom/transsion/vishatransfer/data/FileData;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;->onFileTranslated(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Lcom/transsion/vishatransfer/data/FileData;I)V

    return-void
.end method

.method public onPeersAvailable(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;)V"
        }
    .end annotation

    const-string v0, "devices"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$receiverDevices$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getContext$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->checkPermission(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$receiverDevices$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$checkCreateP2pAndChannel(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$receiverDevices$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getP2p$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$receiverDevices$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getChannel$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$receiverDevices$1;->this$0:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    new-instance v1, Lgmc;

    invoke-direct {v1, p0}, Lgmc;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    :cond_1
    return-void
.end method

.method public onProgress(JJII)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;->onProgress(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;JJII)V

    return-void
.end method

.method public onTransferState(Lcom/transsion/vishatransfer/data/ConnectedState;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener$DefaultImpls;->onTransferState(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;Lcom/transsion/vishatransfer/data/ConnectedState;)V

    return-void
.end method
