.class public Lcom/hunantv/imgo/data/BigDataWifiData;
.super Lcom/hunantv/imgo/data/CommonData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/data/BigDataWifiData$Wls;
    }
.end annotation


# instance fields
.field private act:Ljava/lang/String;

.field protected bdsv:Ljava/lang/String;

.field protected wip:Ljava/lang/String;

.field protected wls:Ljava/lang/String;

.field protected wmac:Ljava/lang/String;

.field protected wname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/hunantv/imgo/data/CommonData;-><init>()V

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/BigDataWifiData;->setAct(Ljava/lang/String;)V

    const-string v0, "27.9.2"

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/CommonData;->setBid(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/BigDataWifiData;->setWmac(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/BigDataWifiData;->setWname(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/BigDataWifiData;->setWip(Ljava/lang/String;)V

    new-instance v0, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;

    invoke-direct {v0, p0}, Lcom/hunantv/imgo/data/BigDataWifiData$Wls;-><init>(Lcom/hunantv/imgo/data/BigDataWifiData;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/BigDataWifiData;->setWls(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAct()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataWifiData;->act:Ljava/lang/String;

    return-object p0
.end method

.method public getBdsv()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataWifiData;->bdsv:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestParams()Lcom/hunantv/imgo/net/RequestParams;
    .locals 3

    invoke-virtual {p0}, Lcom/hunantv/imgo/data/CommonData;->createBaseRequestParams()Lcom/hunantv/imgo/net/RequestParams;

    move-result-object v0

    const-string v1, "wmac"

    iget-object v2, p0, Lcom/hunantv/imgo/data/BigDataWifiData;->bdsv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "wname"

    iget-object v2, p0, Lcom/hunantv/imgo/data/BigDataWifiData;->bdsv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "wip"

    iget-object v2, p0, Lcom/hunantv/imgo/data/BigDataWifiData;->bdsv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bdsv"

    iget-object v2, p0, Lcom/hunantv/imgo/data/BigDataWifiData;->bdsv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "wls"

    iget-object v2, p0, Lcom/hunantv/imgo/data/BigDataWifiData;->wls:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "act"

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataWifiData;->act:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getWip()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataWifiData;->wip:Ljava/lang/String;

    return-object p0
.end method

.method public getWls()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataWifiData;->wls:Ljava/lang/String;

    return-object p0
.end method

.method public getWmac()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataWifiData;->wmac:Ljava/lang/String;

    return-object p0
.end method

.method public getWname()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataWifiData;->wname:Ljava/lang/String;

    return-object p0
.end method

.method public setAct(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataWifiData;->act:Ljava/lang/String;

    return-void
.end method

.method public setBdsv(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataWifiData;->bdsv:Ljava/lang/String;

    return-void
.end method

.method public setWip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataWifiData;->wip:Ljava/lang/String;

    return-void
.end method

.method public setWls(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataWifiData;->wls:Ljava/lang/String;

    return-void
.end method

.method public setWmac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataWifiData;->wmac:Ljava/lang/String;

    return-void
.end method

.method public setWname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataWifiData;->wname:Ljava/lang/String;

    return-void
.end method
