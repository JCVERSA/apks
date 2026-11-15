.class public final synthetic Lgmc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# instance fields
.field public final synthetic a:Lcom/transsion/vishatransfer/manager/WifiTransferManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgmc;->a:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    return-void
.end method


# virtual methods
.method public final onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 0

    iget-object p0, p0, Lgmc;->a:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$receiverDevices$1;->a(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    return-void
.end method
