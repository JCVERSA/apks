.class public Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager$TranAospActionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$TranActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranAospActionListener"
.end annotation


# instance fields
.field mTranActionListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager$TranAospActionListener;->this$0:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager$TranAospActionListener;->mTranActionListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager$TranAospActionListener;->mTranActionListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;->onFailure(I)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager$TranAospActionListener;->mTranActionListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranActionListener;->onSuccess()V

    :cond_0
    return-void
.end method
