.class public Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospSoftApCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranSoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranAospSoftApCallback"
.end annotation


# instance fields
.field mTranSoftApCallback:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranSoftApCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranSoftApCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospSoftApCallback;->this$0:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospSoftApCallback;->mTranSoftApCallback:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranSoftApCallback;

    return-void
.end method


# virtual methods
.method public onStateChanged(II)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospSoftApCallback;->mTranSoftApCallback:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranSoftApCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranSoftApCallback;->onStateChanged(II)V

    :cond_0
    return-void
.end method
