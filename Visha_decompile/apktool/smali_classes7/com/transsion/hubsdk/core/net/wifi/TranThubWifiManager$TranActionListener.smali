.class public Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$TranActionListener;
.super Lcom/transsion/hubsdk/net/wifi/ITranActionListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranActionListener"
.end annotation


# instance fields
.field mTranActionListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$TranActionListener;->this$0:Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/net/wifi/ITranActionListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$TranActionListener;->mTranActionListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;

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

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$TranActionListener;->mTranActionListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;->onFailure(I)V

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

    iget-object p0, p0, Lcom/transsion/hubsdk/core/net/wifi/TranThubWifiManager$TranActionListener;->mTranActionListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;->onSuccess()V

    :cond_0
    return-void
.end method
