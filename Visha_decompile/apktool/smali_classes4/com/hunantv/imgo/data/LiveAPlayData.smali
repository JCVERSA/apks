.class public Lcom/hunantv/imgo/data/LiveAPlayData;
.super Lcom/hunantv/imgo/data/CommonData;
.source "SourceFile"


# instance fields
.field private abt:Ljava/lang/String;

.field private acp:I

.field private act:Ljava/lang/String;

.field private activeid:Ljava/lang/String;

.field private ap:I

.field private cdnip:Ljava/lang/String;

.field private cid:Ljava/lang/String;

.field private cpn:Ljava/lang/String;

.field private ct:I

.field private datano:Ljava/lang/String;

.field private def:I

.field private et:I

.field private fpa:Ljava/lang/String;

.field private fpid:Ljava/lang/String;

.field private fpn:Ljava/lang/String;

.field private idfa:Ljava/lang/String;

.field private isad:I

.field private lid:Ljava/lang/String;

.field private liveId:Ljava/lang/String;

.field private mdid:Ljava/lang/String;

.field private pay:I

.field private pt:I

.field private pver:Ljava/lang/String;

.field private ra:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field private refmdid:Ljava/lang/String;

.field private suuid:Ljava/lang/String;

.field private td:I

.field private tk:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/hunantv/imgo/data/CommonData;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->cid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->suuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->cdnip:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->idfa:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v1

    iget-object v1, v1, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/LiveAPlayData;->setSuuid(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/LiveAPlayData;->setRef(Ljava/lang/String;)V

    const-string v1, "27.1.1.1"

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/LiveAPlayData;->setBid(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/LiveAPlayData;->setDatano(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/LiveAPlayData;->setRefmdid(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createBaseRequestParams()Lcom/hunantv/imgo/net/RequestParams;
    .locals 5

    invoke-super {p0}, Lcom/hunantv/imgo/data/CommonData;->createBaseRequestParams()Lcom/hunantv/imgo/net/RequestParams;

    move-result-object v0

    const-string v1, "liveId"

    iget-object v2, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->liveId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "activeid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->activeid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pay"

    iget v2, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->pay:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "def"

    iget v2, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->def:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "fpn"

    iget-object v2, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->fpn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fpid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->fpid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ap"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    iget-object v3, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cid"

    iget-object v3, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pt"

    iget v3, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->pt:I

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "cpn"

    iget-object v3, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->cpn:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "act"

    iget-object v3, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->act:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bid"

    iget-object v3, p0, Lcom/hunantv/imgo/data/CommonData;->bid:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ct"

    iget v3, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->ct:I

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "et"

    iget v3, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->et:I

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "td"

    iget v3, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->td:I

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "ra"

    iget-object v3, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->ra:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ref"

    iget-object v3, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->ref:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "suuid"

    iget-object v3, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->suuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lid"

    iget-object v3, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->lid:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cdnip"

    iget-object v3, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->cdnip:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "idfa"

    iget-object v3, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->idfa:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->isad:I

    const-string v3, "isad"

    invoke-virtual {v0, v3, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "fpa"

    iget-object v4, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->fpa:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mdid"

    iget-object v4, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->mdid:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "refmdid"

    iget-object v4, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->refmdid:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "acp"

    iget v4, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->acp:I

    invoke-virtual {v0, v1, v4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "abt"

    iget-object v4, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->abt:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tk"

    iget-object v4, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->tk:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pver"

    iget-object v4, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->pver:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "idx"

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->isad:I

    invoke-virtual {v0, v3, p0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getAbt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->abt:Ljava/lang/String;

    return-object p0
.end method

.method public getAcp()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->acp:I

    return p0
.end method

.method public getAct()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->act:Ljava/lang/String;

    return-object p0
.end method

.method public getBid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->bid:Ljava/lang/String;

    return-object p0
.end method

.method public getCdnip()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->cdnip:Ljava/lang/String;

    return-object p0
.end method

.method public getCpn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->cpn:Ljava/lang/String;

    return-object p0
.end method

.method public getCt()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->ct:I

    return p0
.end method

.method public getDatano()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->datano:Ljava/lang/String;

    return-object p0
.end method

.method public getDef()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->def:I

    return p0
.end method

.method public getEt()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->et:I

    return p0
.end method

.method public getFpa()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->fpa:Ljava/lang/String;

    return-object p0
.end method

.method public getFpid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->fpid:Ljava/lang/String;

    return-object p0
.end method

.method public getFpn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->fpn:Ljava/lang/String;

    return-object p0
.end method

.method public getIdfa()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->idfa:Ljava/lang/String;

    return-object p0
.end method

.method public getIsad()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->isad:I

    return p0
.end method

.method public getLid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->lid:Ljava/lang/String;

    return-object p0
.end method

.method public getLiveId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->liveId:Ljava/lang/String;

    return-object p0
.end method

.method public getMdid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->mdid:Ljava/lang/String;

    return-object p0
.end method

.method public getPay()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->pay:I

    return p0
.end method

.method public getPt()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->pt:I

    return p0
.end method

.method public getRa()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->ra:Ljava/lang/String;

    return-object p0
.end method

.method public getRef()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->ref:Ljava/lang/String;

    return-object p0
.end method

.method public getRefmdid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->refmdid:Ljava/lang/String;

    return-object p0
.end method

.method public getSuuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->suuid:Ljava/lang/String;

    return-object p0
.end method

.method public getTd()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->td:I

    return p0
.end method

.method public getTk()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->tk:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->url:Ljava/lang/String;

    return-object p0
.end method

.method public setAbt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->abt:Ljava/lang/String;

    return-void
.end method

.method public setAcp(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->acp:I

    return-void
.end method

.method public setAct(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->act:Ljava/lang/String;

    return-void
.end method

.method public setActiveid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->activeid:Ljava/lang/String;

    return-void
.end method

.method public setBid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->bid:Ljava/lang/String;

    return-void
.end method

.method public setCdnip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->cdnip:Ljava/lang/String;

    return-void
.end method

.method public setCpn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->cpn:Ljava/lang/String;

    return-void
.end method

.method public setCt(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->ct:I

    return-void
.end method

.method public setDatano(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->datano:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->datano:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setDef(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->def:I

    return-void
.end method

.method public setEt(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->et:I

    return-void
.end method

.method public setFpa(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->fpa:Ljava/lang/String;

    return-void
.end method

.method public setFpid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->fpid:Ljava/lang/String;

    return-void
.end method

.method public setFpn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->fpn:Ljava/lang/String;

    return-void
.end method

.method public setIdfa(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->idfa:Ljava/lang/String;

    return-void
.end method

.method public setIsad(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->isad:I

    return-void
.end method

.method public setLid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->lid:Ljava/lang/String;

    return-void
.end method

.method public setLiveId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->liveId:Ljava/lang/String;

    return-void
.end method

.method public setMdid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->mdid:Ljava/lang/String;

    return-void
.end method

.method public setPay(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->pay:I

    return-void
.end method

.method public setPt(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->pt:I

    return-void
.end method

.method public setRa(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->ra:Ljava/lang/String;

    return-void
.end method

.method public setRef(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->ref:Ljava/lang/String;

    return-void
.end method

.method public setRefmdid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->refmdid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->refmdid:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSuuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->suuid:Ljava/lang/String;

    return-void
.end method

.method public setTd(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->td:I

    return-void
.end method

.method public setTk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->tk:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/LiveAPlayData;->url:Ljava/lang/String;

    return-void
.end method
