.class public Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager$TranActionListener;
.super Lcom/transsion/hubsdk/net/wifi/ITranActionListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranActionListener"
.end annotation


# instance fields
.field mTranActionListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager$TranActionListener;->this$0:Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/net/wifi/ITranActionListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager$TranActionListener;->mTranActionListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager$TranActionListener;->mTranActionListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;->onFailure(I)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiP2pManager$TranActionListener;->mTranActionListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;->onSuccess()V

    :cond_0
    return-void
.end method
