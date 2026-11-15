.class public Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager$TranChannelListener;
.super Lcom/transsion/hubsdk/net/wifi/ITranChannelListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranChannelListener"
.end annotation


# instance fields
.field mTranChannelListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranChannelListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranChannelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager$TranChannelListener;->this$0:Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/net/wifi/ITranChannelListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager$TranChannelListener;->mTranChannelListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranChannelListener;

    return-void
.end method


# virtual methods
.method public onChannelDisconnected()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager$TranChannelListener;->mTranChannelListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranChannelListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranChannelListener;->onChannelDisconnected()V

    :cond_0
    return-void
.end method
