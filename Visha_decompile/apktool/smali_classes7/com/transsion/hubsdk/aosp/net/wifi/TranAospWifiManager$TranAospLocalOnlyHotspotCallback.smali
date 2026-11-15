.class Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospLocalOnlyHotspotCallback;
.super Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranAospLocalOnlyHotspotCallback"
.end annotation


# instance fields
.field private final mLocalOnlyHotspotCallback:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospLocalOnlyHotspotCallback;->this$0:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospLocalOnlyHotspotCallback;->mLocalOnlyHotspotCallback:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onFailed(I)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospLocalOnlyHotspotCallback;->mLocalOnlyHotspotCallback:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;->onFailed(I)V

    :cond_0
    return-void
.end method

.method public onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospLocalOnlyHotspotCallback;->mLocalOnlyHotspotCallback:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;->onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    :cond_0
    return-void
.end method

.method public onStopped()V
    .locals 0

    invoke-super {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStopped()V

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospLocalOnlyHotspotCallback;->mLocalOnlyHotspotCallback:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranLocalOnlyHotspotCallback;->onStopped()V

    :cond_0
    return-void
.end method
