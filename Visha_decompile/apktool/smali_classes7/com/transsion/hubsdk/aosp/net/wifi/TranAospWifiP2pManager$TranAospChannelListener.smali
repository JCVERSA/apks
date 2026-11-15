.class public Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager$TranAospChannelListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManagerExt$TranChannelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranAospChannelListener"
.end annotation


# instance fields
.field mChannelListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranChannelListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranChannelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager$TranAospChannelListener;->this$0:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager$TranAospChannelListener;->mChannelListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranChannelListener;

    return-void
.end method


# virtual methods
.method public onChannelDisconnected()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiP2pManager$TranAospChannelListener;->mChannelListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranChannelListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiP2pManager$TranChannelListener;->onChannelDisconnected()V

    :cond_0
    return-void
.end method
