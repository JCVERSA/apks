.class public Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/net/wifi/ITranWifiP2pManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager$TranAospChannelListener;,
        Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager$TranAospActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospWifiP2pManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWifiP2pExt:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt;

    invoke-direct {v1, v0}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager;->mWifiP2pExt:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt;

    return-void
.end method


# virtual methods
.method public deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager;->mContext:Landroid/content/Context;

    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    const-class v3, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    filled-new-array {v3, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "deletePersistentGroup"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setWifiP2pChannels(IILcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranChannelListener;Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    new-instance v1, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager$TranAospChannelListener;

    invoke-direct {v1, p0, p3}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager$TranAospChannelListener;-><init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranChannelListener;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p4, :cond_1

    new-instance v0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager$TranAospActionListener;

    invoke-direct {v0, p0, p4}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager$TranAospActionListener;-><init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager;->mWifiP2pExt:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt;

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt;->setWifiP2pChannels(IILcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$TranChannelListener;Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$TranActionListener;)V

    return-void
.end method
