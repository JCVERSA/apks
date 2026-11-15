.class public Lcom/hunantv/imgo/data/BigDataHeartBeatData;
.super Lcom/hunantv/imgo/data/CommonData;
.source "SourceFile"


# instance fields
.field private act:Ljava/lang/String;

.field private activeid:Ljava/lang/String;

.field private ap:I

.field private bdid:I

.field private bsid:Ljava/lang/String;

.field private cf:I

.field private cid:Ljava/lang/String;

.field private ct:I

.field private def:I

.field private ht:I

.field private idx:I

.field private isfull:Ljava/lang/String;

.field private istry:I

.field private lid:Ljava/lang/String;

.field private pay:I

.field private plid:Ljava/lang/String;

.field private pt:I

.field private submit:Ljava/lang/String;

.field private suuid:Ljava/lang/String;

.field private switcher:Ljava/lang/String;

.field private vid:I

.field private vts:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/hunantv/imgo/data/CommonData;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->cid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->plid:Ljava/lang/String;

    const-string v0, "hb"

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->setAct(Ljava/lang/String;)V

    const-string v0, "27.1.25"

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/CommonData;->setBid(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/data/CommonData;->setCh(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/hunantv/imgo/data/CommonData;->setUuid(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAct()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->act:Ljava/lang/String;

    return-object p0
.end method

.method public getAp()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->ap:I

    return p0
.end method

.method public getBdid()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->bdid:I

    return p0
.end method

.method public getCf()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->cf:I

    return p0
.end method

.method public getCid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->cid:Ljava/lang/String;

    return-object p0
.end method

.method public getCt()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->ct:I

    return p0
.end method

.method public getDef()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->def:I

    return p0
.end method

.method public getHt()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->ht:I

    return p0
.end method

.method public getIdx()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->idx:I

    return p0
.end method

.method public getIstry()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->istry:I

    return p0
.end method

.method public getPay()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->pay:I

    return p0
.end method

.method public getPlid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->plid:Ljava/lang/String;

    return-object p0
.end method

.method public getPt()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->pt:I

    return p0
.end method

.method public getRequestParams()Lcom/hunantv/imgo/net/RequestParams;
    .locals 2

    invoke-virtual {p0}, Lcom/hunantv/imgo/data/CommonData;->createBaseRequestParams()Lcom/hunantv/imgo/net/RequestParams;

    move-result-object v0

    const-string v1, "act"

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->act:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSuuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->suuid:Ljava/lang/String;

    return-object p0
.end method

.method public getVid()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->vid:I

    return p0
.end method

.method public getVts()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->vts:I

    return p0
.end method

.method public setAct(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->act:Ljava/lang/String;

    return-void
.end method

.method public setAp(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->ap:I

    return-void
.end method

.method public setBdid(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->bdid:I

    return-void
.end method

.method public setCf(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->cf:I

    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->cid:Ljava/lang/String;

    return-void
.end method

.method public setCt(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->ct:I

    return-void
.end method

.method public setDef(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->def:I

    return-void
.end method

.method public setHt(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->ht:I

    return-void
.end method

.method public setIdx(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->idx:I

    return-void
.end method

.method public setIstry(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->istry:I

    return-void
.end method

.method public setPay(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->pay:I

    return-void
.end method

.method public setPlid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->plid:Ljava/lang/String;

    return-void
.end method

.method public setPt(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->pt:I

    return-void
.end method

.method public setSuuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->suuid:Ljava/lang/String;

    return-void
.end method

.method public setVid(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->vid:I

    return-void
.end method

.method public setVts(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataHeartBeatData;->vts:I

    return-void
.end method
