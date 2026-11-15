.class public Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranAospListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranAospListener"
.end annotation


# instance fields
.field mTranActionListener:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranAospListener;->this$0:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranAospListener;->mTranActionListener:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranAospListener;->mTranActionListener:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;->onFailure(I)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranAospListener;->mTranActionListener:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;->onSuccess()V

    :cond_0
    return-void
.end method
