.class public Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranChannelListener;,
        Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranWifiP2pManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager;

.field private mThubService:Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiP2pManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiP2pManagerAdapter;->deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiP2pManagerAdapter;
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager;->mThubService:Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager;->mThubService:Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;

    :cond_0
    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager;->mAospService:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager;->mAospService:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager;

    :cond_2
    return-object p1
.end method

.method public setWifiP2pChannels(IILcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranChannelListener;Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiP2pManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiP2pManagerAdapter;->setWifiP2pChannels(IILcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranChannelListener;Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;)V

    return-void
.end method
