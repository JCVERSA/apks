.class public Lcom/hunantv/imgo/data/BigDataBufferData;
.super Lcom/hunantv/imgo/data/CommonData;
.source "SourceFile"


# instance fields
.field private act:Ljava/lang/String;

.field private ap:I

.field private bdid:I

.field private bftype:I

.field private bsid:I

.field private cf:I

.field private cid:Ljava/lang/String;

.field private cpn:I

.field private ct:I

.field private def:I

.field private idx:I

.field private istry:I

.field private pay:I

.field private plid:Ljava/lang/String;

.field private pt:I

.field private suuid:Ljava/lang/String;

.field private td:I

.field private vid:I

.field private vts:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/imgo/data/CommonData;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->cid:Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->plid:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->ap:I

    const-string p1, "buffer"

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/data/BigDataBufferData;->setAct(Ljava/lang/String;)V

    const-string p1, "27.1.25"

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/data/CommonData;->setBid(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object p1

    iget-object p1, p1, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/data/BigDataBufferData;->setSuuid(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/hunantv/imgo/data/BigDataBufferData;->setPt(I)V

    return-void
.end method


# virtual methods
.method public getAct()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->act:Ljava/lang/String;

    return-object p0
.end method

.method public getAp()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->ap:I

    return p0
.end method

.method public getBdid()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->bdid:I

    return p0
.end method

.method public getBftype()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->bftype:I

    return p0
.end method

.method public getBsid()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->bsid:I

    return p0
.end method

.method public getCf()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->cf:I

    return p0
.end method

.method public getCid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->cid:Ljava/lang/String;

    return-object p0
.end method

.method public getCpn()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->cpn:I

    return p0
.end method

.method public getCt()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->ct:I

    return p0
.end method

.method public getDef()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->def:I

    return p0
.end method

.method public getIdx()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->idx:I

    return p0
.end method

.method public getIstry()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->istry:I

    return p0
.end method

.method public getPay()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->pay:I

    return p0
.end method

.method public getPlid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->plid:Ljava/lang/String;

    return-object p0
.end method

.method public getPt()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->pt:I

    return p0
.end method

.method public getRequestParams(Landroid/content/Context;)Lcom/hunantv/imgo/net/RequestParams;
    .locals 2

    invoke-virtual {p0}, Lcom/hunantv/imgo/data/CommonData;->createBaseRequestParams()Lcom/hunantv/imgo/net/RequestParams;

    move-result-object p1

    const-string v0, "rdc"

    iget-object v1, p0, Lcom/hunantv/imgo/data/CommonData;->rdc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rch"

    iget-object v1, p0, Lcom/hunantv/imgo/data/CommonData;->rch:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pay"

    iget v1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->pay:I

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v0, "def"

    iget v1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->def:I

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v0, "act"

    iget-object v1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->act:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vid"

    iget v1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->vid:I

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v0, "plid"

    iget-object v1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->plid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ct"

    iget v1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->ct:I

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v0, "cid"

    iget-object v1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->cid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "idx"

    iget v1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->idx:I

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v0, "istry"

    iget v1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->istry:I

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v0, "pt"

    iget v1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->pt:I

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v0, "cf"

    iget v1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->cf:I

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v0, "vts"

    iget v1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->vts:I

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v0, "bdid"

    iget v1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->bdid:I

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v0, "ap"

    iget v1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->ap:I

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v0, "td"

    iget v1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->td:I

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v0, "bftype"

    iget v1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->bftype:I

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v0, "suuid"

    iget-object v1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->suuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bsid"

    iget v1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->bsid:I

    invoke-virtual {p1, v0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v0, "cpn"

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->cpn:I

    invoke-virtual {p1, v0, p0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    return-object p1
.end method

.method public getSuuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->suuid:Ljava/lang/String;

    return-object p0
.end method

.method public getTd()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->td:I

    return p0
.end method

.method public getVid()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->vid:I

    return p0
.end method

.method public getVts()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->vts:I

    return p0
.end method

.method public setAct(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->act:Ljava/lang/String;

    return-void
.end method

.method public setAp(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->ap:I

    return-void
.end method

.method public setBdid(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->bdid:I

    return-void
.end method

.method public setBftype(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->bftype:I

    return-void
.end method

.method public setBsid(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->bsid:I

    return-void
.end method

.method public setCf(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->cf:I

    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->cid:Ljava/lang/String;

    return-void
.end method

.method public setCpn(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->cpn:I

    return-void
.end method

.method public setCt(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->ct:I

    return-void
.end method

.method public setDef(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->def:I

    return-void
.end method

.method public setIdx(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->idx:I

    return-void
.end method

.method public setIstry(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->istry:I

    return-void
.end method

.method public setPay(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->pay:I

    return-void
.end method

.method public setPlid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->plid:Ljava/lang/String;

    return-void
.end method

.method public setPt(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->pt:I

    return-void
.end method

.method public setSuuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->suuid:Ljava/lang/String;

    return-void
.end method

.method public setTd(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->td:I

    return-void
.end method

.method public setVid(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->vid:I

    return-void
.end method

.method public setVts(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/BigDataBufferData;->vts:I

    return-void
.end method
