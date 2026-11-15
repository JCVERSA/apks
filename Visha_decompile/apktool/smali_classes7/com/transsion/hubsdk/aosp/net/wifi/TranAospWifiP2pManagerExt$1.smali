.class Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt;->setWifiP2pChannels(IILcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$TranChannelListener;Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$TranActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt;

.field final synthetic val$channelListener:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$TranChannelListener;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt;Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$TranChannelListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$1;->this$0:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt;

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$1;->val$channelListener:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$TranChannelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelDisconnected()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$1;->val$channelListener:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$TranChannelListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$TranChannelListener;->onChannelDisconnected()V

    :cond_0
    return-void
.end method
