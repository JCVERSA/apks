.class public Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$TranChannelListener;,
        Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$TranActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospWifiP2pManagerExt"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public setWifiP2pChannels(IILcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$TranChannelListener;Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$TranActionListener;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "TranAospWifiP2pManagerExt"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiP2pChannels listeningChannel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",operatingChannel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt;->mContext:Landroid/content/Context;

    const-string v2, "wifip2p"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$1;

    invoke-direct {v4, p0, p3}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$1;-><init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt;Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$TranChannelListener;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p3

    new-instance v2, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$2;

    invoke-direct {v2, p0, p4}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$2;-><init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt;Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$TranActionListener;)V

    invoke-virtual {v1, p3, p1, p2, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "setWifiP2pChannels fail"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
