.class public Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiP2pManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager$TranActionListener;,
        Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager$TranChannelListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubWifiP2pManager"


# instance fields
.field private mManager:Lcom/transsion/hubsdk/net/wifi/TranWifiP2pManager;

.field private mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiP2pManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "wifi_p2p_manager"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/net/wifi/ITranWifiP2pManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/net/wifi/ITranWifiP2pManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiP2pManager;

    return-void
.end method

.method private getTranWifiP2pManagerImpl()Lcom/transsion/hubsdk/net/wifi/TranWifiP2pManager;
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;->mManager:Lcom/transsion/hubsdk/net/wifi/TranWifiP2pManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/net/wifi/TranWifiP2pManager;

    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/net/wifi/TranWifiP2pManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;->mManager:Lcom/transsion/hubsdk/net/wifi/TranWifiP2pManager;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;->mManager:Lcom/transsion/hubsdk/net/wifi/TranWifiP2pManager;

    return-object p0
.end method


# virtual methods
.method public deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;->getTranWifiP2pManagerImpl()Lcom/transsion/hubsdk/net/wifi/TranWifiP2pManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/net/wifi/TranWifiP2pManager;->deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method public setWifiP2pChannels(IILcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranChannelListener;Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;)V
    .locals 1

    new-instance v0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager$TranActionListener;

    invoke-direct {v0, p0, p4}, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager$TranActionListener;-><init>(Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;)V

    new-instance p4, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager$TranChannelListener;

    invoke-direct {p4, p0, p3}, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager$TranChannelListener;-><init>(Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranChannelListener;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;->mService:Lcom/transsion/hubsdk/net/wifi/ITranWifiP2pManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p4, v0}, Lcom/transsion/hubsdk/net/wifi/ITranWifiP2pManager;->setWifiP2pChannels(IILcom/transsion/hubsdk/net/wifi/ITranChannelListener;Lcom/transsion/hubsdk/net/wifi/ITranActionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "forget fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
