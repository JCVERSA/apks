.class public Lcom/mgtv/data/aphone/core/bean/PhoneWifiListBean;
.super Lcom/mgtv/data/aphone/core/bean/BaseBean;
.source "SourceFile"


# static fields
.field public static ACT_APPLS:Ljava/lang/String; = "wifi"


# instance fields
.field public act:Ljava/lang/String;

.field public bid:Ljava/lang/String;

.field public wip:Ljava/lang/String;

.field public wls:Ljava/lang/String;

.field public wmac:Ljava/lang/String;

.field public wname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/mgtv/data/aphone/core/bean/PhoneWifiListBean;->ACT_APPLS:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PhoneWifiListBean;->act:Ljava/lang/String;

    iput-object p5, p0, Lcom/mgtv/data/aphone/core/bean/PhoneWifiListBean;->wls:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/bean/PhoneWifiListBean;->wname:Ljava/lang/String;

    iput-object p3, p0, Lcom/mgtv/data/aphone/core/bean/PhoneWifiListBean;->wmac:Ljava/lang/String;

    iput-object p4, p0, Lcom/mgtv/data/aphone/core/bean/PhoneWifiListBean;->wip:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApplsParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PhoneWifi;->ACT:Lcom/mgtv/data/aphone/core/constants/KeysContants$PhoneWifi;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PhoneWifi;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PhoneWifiListBean;->act:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PhoneWifi;->WIP:Lcom/mgtv/data/aphone/core/constants/KeysContants$PhoneWifi;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PhoneWifi;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PhoneWifiListBean;->wip:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PhoneWifi;->WNAME:Lcom/mgtv/data/aphone/core/constants/KeysContants$PhoneWifi;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PhoneWifi;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PhoneWifiListBean;->wname:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PhoneWifi;->WMAC:Lcom/mgtv/data/aphone/core/constants/KeysContants$PhoneWifi;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PhoneWifi;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PhoneWifiListBean;->wmac:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PhoneWifi;->WLS:Lcom/mgtv/data/aphone/core/constants/KeysContants$PhoneWifi;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PhoneWifi;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PhoneWifiListBean;->wls:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getCommonParams()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "###############   getApplsParams(): "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "big_data_sdk"

    invoke-static {v1, p0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
