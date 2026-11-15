.class public Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranApCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranApCallback"
.end annotation


# instance fields
.field mTranSoftApCallback:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranSoftApCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranSoftApCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranApCallback;->this$0:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranApCallback;->mTranSoftApCallback:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranSoftApCallback;

    return-void
.end method


# virtual methods
.method public onStateChanged(II)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranApCallback;->mTranSoftApCallback:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranSoftApCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranSoftApCallback;->onStateChanged(II)V

    :cond_0
    return-void
.end method
