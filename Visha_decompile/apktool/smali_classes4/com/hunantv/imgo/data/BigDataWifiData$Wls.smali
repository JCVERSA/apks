.class Lcom/hunantv/imgo/data/BigDataWifiData$Wls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/data/BigDataWifiData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Wls"
.end annotation


# instance fields
.field public bssid:Ljava/lang/String;

.field public capa:Ljava/lang/String;

.field public freq:Ljava/lang/String;

.field public issv:Ljava/lang/String;

.field public level:Ljava/lang/String;

.field public seen:Ljava/lang/String;

.field public ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/hunantv/imgo/data/BigDataWifiData;


# direct methods
.method public constructor <init>(Lcom/hunantv/imgo/data/BigDataWifiData;)V
    .locals 1

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->this$0:Lcom/hunantv/imgo/data/BigDataWifiData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->w()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->ssid:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->v()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->bssid:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hunantv/imgo/util/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->level:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hunantv/imgo/util/p;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->freq:Ljava/lang/String;

    const-string p1, "pref_scan_wifi_time"

    invoke-static {p1}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->seen:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-static {}, Lcom/hunantv/imgo/net/c;->c()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->issv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->bssid:Ljava/lang/String;

    return-object p0
.end method

.method public getCapa()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->capa:Ljava/lang/String;

    return-object p0
.end method

.method public getFreq()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->freq:Ljava/lang/String;

    return-object p0
.end method

.method public getIssv()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->issv:Ljava/lang/String;

    return-object p0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->level:Ljava/lang/String;

    return-object p0
.end method

.method public getSeen()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->seen:Ljava/lang/String;

    return-object p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->ssid:Ljava/lang/String;

    return-object p0
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->bssid:Ljava/lang/String;

    return-void
.end method

.method public setCapa(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->capa:Ljava/lang/String;

    return-void
.end method

.method public setFreq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->freq:Ljava/lang/String;

    return-void
.end method

.method public setIssv(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->issv:Ljava/lang/String;

    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->level:Ljava/lang/String;

    return-void
.end method

.method public setSeen(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->seen:Ljava/lang/String;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;->ssid:Ljava/lang/String;

    return-void
.end method
