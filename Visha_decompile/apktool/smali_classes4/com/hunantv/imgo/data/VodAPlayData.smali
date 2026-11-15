.class public Lcom/hunantv/imgo/data/VodAPlayData;
.super Lcom/hunantv/imgo/data/CommonData;
.source "SourceFile"


# instance fields
.field private abt:Ljava/lang/String;

.field private acp:I

.field private act:Ljava/lang/String;

.field private adt:Ljava/lang/String;

.field private ap:I

.field private bdid:Ljava/lang/String;

.field private bsid:Ljava/lang/String;

.field private cdnip:Ljava/lang/String;

.field private cdtp:Ljava/lang/String;

.field private cid:Ljava/lang/String;

.field private cpn:Ljava/lang/String;

.field private ct:I

.field private datano:Ljava/lang/String;

.field private def:I

.field private et:I

.field private firstt:Ljava/lang/String;

.field private fpa:Ljava/lang/String;

.field private fpid:Ljava/lang/String;

.field private fpn:Ljava/lang/String;

.field private hsumt:Ljava/lang/String;

.field private idfa:Ljava/lang/String;

.field private idx:I

.field private isad:I

.field private isaps:Ljava/lang/String;

.field private isftm:Ljava/lang/String;

.field private isqs:Ljava/lang/String;

.field private isqst:Ljava/lang/String;

.field private istry:I

.field private lid:Ljava/lang/String;

.field private mdid:Ljava/lang/String;

.field private mp:Ljava/lang/String;

.field private p2pt:Ljava/lang/String;

.field private pay:I

.field private plid:Ljava/lang/String;

.field private pret:Ljava/lang/String;

.field private pt:I

.field private ra:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field private refmdid:Ljava/lang/String;

.field private sobody:Ljava/lang/String;

.field private sumt:Ljava/lang/String;

.field private suuid:Ljava/lang/String;

.field private td:I

.field private threet:Ljava/lang/String;

.field private tid:Ljava/lang/String;

.field private tk:Ljava/lang/String;

.field private twot:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private vid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/hunantv/imgo/data/CommonData;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->cid:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->idx:I

    iput-object v0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->suuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->plid:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->cdnip:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->idfa:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v1

    iget-object v1, v1, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setSuuid(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/VodAPlayData;->setRef(Ljava/lang/String;)V

    const-string v1, "27.1.1.0"

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/VodAPlayData;->setBid(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/VodAPlayData;->setDatano(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/VodAPlayData;->setRefmdid(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createBaseRequestParams()Lcom/hunantv/imgo/net/RequestParams;
    .locals 3

    invoke-super {p0}, Lcom/hunantv/imgo/data/CommonData;->createBaseRequestParams()Lcom/hunantv/imgo/net/RequestParams;

    move-result-object v0

    const-string v1, "pay"

    iget v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->pay:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "def"

    iget v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->def:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "fpn"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->fpn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fpid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->fpid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ap"

    iget v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->ap:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "url"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pt"

    iget v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->pt:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "bdid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->bdid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bsid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->bsid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cpn"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->cpn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "act"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->act:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/CommonData;->bid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "idx"

    iget v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->idx:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "ct"

    iget v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->ct:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "et"

    iget v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->et:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "td"

    iget v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->td:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "ra"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->ra:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ref"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->ref:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "suuid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->suuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->vid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "plid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->plid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->tid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->lid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "istry"

    iget v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->istry:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "cdnip"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->cdnip:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "idfa"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->idfa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isad"

    iget v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->isad:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "fpa"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->fpa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mdid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->mdid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "refmdid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->refmdid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "acp"

    iget v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->acp:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "abt"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->abt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tk"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->tk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sobody"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->sobody:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sumt"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->sumt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "firstt"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->firstt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "adt"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->adt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "twot"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->twot:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "threet"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->threet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pret"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->pret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isftm"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->isftm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isqs"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->isqs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isqst"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->isqst:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cdtp"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->cdtp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isaps"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->isaps:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "p2pt"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->p2pt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hsumt"

    iget-object v2, p0, Lcom/hunantv/imgo/data/VodAPlayData;->hsumt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mp"

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->mp:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAbt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->abt:Ljava/lang/String;

    return-object p0
.end method

.method public getAcp()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->acp:I

    return p0
.end method

.method public getAct()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->act:Ljava/lang/String;

    return-object p0
.end method

.method public getAp()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->ap:I

    return p0
.end method

.method public getBdid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->bdid:Ljava/lang/String;

    return-object p0
.end method

.method public getBid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->bid:Ljava/lang/String;

    return-object p0
.end method

.method public getBsid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->bsid:Ljava/lang/String;

    return-object p0
.end method

.method public getCdnip()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->cdnip:Ljava/lang/String;

    return-object p0
.end method

.method public getCid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->cid:Ljava/lang/String;

    return-object p0
.end method

.method public getCpn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->cpn:Ljava/lang/String;

    return-object p0
.end method

.method public getCt()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->ct:I

    return p0
.end method

.method public getDatano()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->datano:Ljava/lang/String;

    return-object p0
.end method

.method public getDef()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->def:I

    return p0
.end method

.method public getEt()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->et:I

    return p0
.end method

.method public getFpa()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->fpa:Ljava/lang/String;

    return-object p0
.end method

.method public getFpid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->fpid:Ljava/lang/String;

    return-object p0
.end method

.method public getFpn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->fpn:Ljava/lang/String;

    return-object p0
.end method

.method public getHsumt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->hsumt:Ljava/lang/String;

    return-object p0
.end method

.method public getIdfa()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->idfa:Ljava/lang/String;

    return-object p0
.end method

.method public getIdx()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->idx:I

    return p0
.end method

.method public getIsad()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->isad:I

    return p0
.end method

.method public getIstry()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->istry:I

    return p0
.end method

.method public getLid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->lid:Ljava/lang/String;

    return-object p0
.end method

.method public getMdid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->mdid:Ljava/lang/String;

    return-object p0
.end method

.method public getPay()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->pay:I

    return p0
.end method

.method public getPlid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->plid:Ljava/lang/String;

    return-object p0
.end method

.method public getPt()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->pt:I

    return p0
.end method

.method public getRa()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->ra:Ljava/lang/String;

    return-object p0
.end method

.method public getRef()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->ref:Ljava/lang/String;

    return-object p0
.end method

.method public getRefmdid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->refmdid:Ljava/lang/String;

    return-object p0
.end method

.method public getSobody()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->sobody:Ljava/lang/String;

    return-object p0
.end method

.method public getSumt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->sumt:Ljava/lang/String;

    return-object p0
.end method

.method public getSuuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->suuid:Ljava/lang/String;

    return-object p0
.end method

.method public getTd()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->td:I

    return p0
.end method

.method public getTid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->tid:Ljava/lang/String;

    return-object p0
.end method

.method public getTk()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->tk:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->url:Ljava/lang/String;

    return-object p0
.end method

.method public getVid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/VodAPlayData;->vid:Ljava/lang/String;

    return-object p0
.end method

.method public setAbt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->abt:Ljava/lang/String;

    return-void
.end method

.method public setAcp(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->acp:I

    return-void
.end method

.method public setAct(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->act:Ljava/lang/String;

    return-void
.end method

.method public setAdt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->adt:Ljava/lang/String;

    return-void
.end method

.method public setAp(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->ap:I

    return-void
.end method

.method public setBdid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->bdid:Ljava/lang/String;

    return-void
.end method

.method public setBid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->bid:Ljava/lang/String;

    return-void
.end method

.method public setBsid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->bsid:Ljava/lang/String;

    return-void
.end method

.method public setCdnip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->cdnip:Ljava/lang/String;

    return-void
.end method

.method public setCdtp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->cdtp:Ljava/lang/String;

    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->cid:Ljava/lang/String;

    return-void
.end method

.method public setCpn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->cpn:Ljava/lang/String;

    return-void
.end method

.method public setCt(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->ct:I

    return-void
.end method

.method public setDatano(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->datano:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->datano:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setDef(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->def:I

    return-void
.end method

.method public setEt(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->et:I

    return-void
.end method

.method public setFirstt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->firstt:Ljava/lang/String;

    return-void
.end method

.method public setFpa(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->fpa:Ljava/lang/String;

    return-void
.end method

.method public setFpid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->fpid:Ljava/lang/String;

    return-void
.end method

.method public setFpn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->fpn:Ljava/lang/String;

    return-void
.end method

.method public setHsumt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->hsumt:Ljava/lang/String;

    return-void
.end method

.method public setIdfa(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->idfa:Ljava/lang/String;

    return-void
.end method

.method public setIdx(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->idx:I

    return-void
.end method

.method public setIsad(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->isad:I

    return-void
.end method

.method public setIsaps(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->isaps:Ljava/lang/String;

    return-void
.end method

.method public setIsftm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->isftm:Ljava/lang/String;

    return-void
.end method

.method public setIsqs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->isqs:Ljava/lang/String;

    return-void
.end method

.method public setIsqst(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->isqst:Ljava/lang/String;

    return-void
.end method

.method public setIstry(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->istry:I

    return-void
.end method

.method public setLid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->lid:Ljava/lang/String;

    return-void
.end method

.method public setMdid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->mdid:Ljava/lang/String;

    return-void
.end method

.method public setMp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->mp:Ljava/lang/String;

    return-void
.end method

.method public setP2pt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->p2pt:Ljava/lang/String;

    return-void
.end method

.method public setPay(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->pay:I

    return-void
.end method

.method public setPlid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->plid:Ljava/lang/String;

    return-void
.end method

.method public setPret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->pret:Ljava/lang/String;

    return-void
.end method

.method public setPt(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->pt:I

    return-void
.end method

.method public setRa(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->ra:Ljava/lang/String;

    return-void
.end method

.method public setRef(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->ref:Ljava/lang/String;

    return-void
.end method

.method public setRefmdid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->refmdid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->refmdid:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSobody(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->sobody:Ljava/lang/String;

    return-void
.end method

.method public setSumt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->sumt:Ljava/lang/String;

    return-void
.end method

.method public setSuuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->suuid:Ljava/lang/String;

    return-void
.end method

.method public setTd(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->td:I

    return-void
.end method

.method public setThreet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->threet:Ljava/lang/String;

    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->tid:Ljava/lang/String;

    return-void
.end method

.method public setTk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->tk:Ljava/lang/String;

    return-void
.end method

.method public setTwot(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->twot:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->url:Ljava/lang/String;

    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/VodAPlayData;->vid:Ljava/lang/String;

    return-void
.end method
