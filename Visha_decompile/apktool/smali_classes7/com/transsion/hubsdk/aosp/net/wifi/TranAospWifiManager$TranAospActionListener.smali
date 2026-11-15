.class public Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospActionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManagerExt$TranActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranAospActionListener"
.end annotation


# instance fields
.field mTranActionListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospActionListener;->this$0:Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospActionListener;->mTranActionListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospActionListener;->mTranActionListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;->onFailure(I)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/net/wifi/TranAospWifiManager$TranAospActionListener;->mTranActionListener:Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/net/wifi/TranWifiManager$TranActionListener;->onSuccess()V

    :cond_0
    return-void
.end method
