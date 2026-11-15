.class public Lcom/hunantv/imgo/data/PlayErrorData;
.super Lcom/hunantv/imgo/data/CommonData;
.source "SourceFile"


# instance fields
.field private cpn:Ljava/lang/String;

.field private isqs:Ljava/lang/String;

.field private lob:Ljava/lang/String;

.field private logtype:Ljava/lang/String;

.field private spec:Ljava/lang/String;

.field private sptype:Ljava/lang/String;

.field private suuid:Ljava/lang/String;

.field private vid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/imgo/data/CommonData;-><init>()V

    const-string v0, "27.4.2"

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/CommonData;->setBid(Ljava/lang/String;)V

    const-string v0, "sperr"

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/PlayErrorData;->setLogtype(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/b/c;->a(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/PlayErrorData;->setCpn(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCpn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/PlayErrorData;->cpn:Ljava/lang/String;

    return-object p0
.end method

.method public getIsqs()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/PlayErrorData;->isqs:Ljava/lang/String;

    return-object p0
.end method

.method public getLob()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/PlayErrorData;->lob:Ljava/lang/String;

    return-object p0
.end method

.method public getLogtype()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/PlayErrorData;->logtype:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestParams()Lcom/hunantv/imgo/net/RequestParams;
    .locals 3

    invoke-virtual {p0}, Lcom/hunantv/imgo/data/CommonData;->createBaseRequestParams()Lcom/hunantv/imgo/net/RequestParams;

    move-result-object v0

    const-string v1, "logtype"

    iget-object v2, p0, Lcom/hunantv/imgo/data/PlayErrorData;->logtype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cpn"

    iget-object v2, p0, Lcom/hunantv/imgo/data/PlayErrorData;->cpn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sptype"

    iget-object v2, p0, Lcom/hunantv/imgo/data/PlayErrorData;->sptype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/PlayErrorData;->vid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isqs"

    iget-object v2, p0, Lcom/hunantv/imgo/data/PlayErrorData;->isqs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "spec"

    iget-object v2, p0, Lcom/hunantv/imgo/data/PlayErrorData;->spec:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lob"

    iget-object v2, p0, Lcom/hunantv/imgo/data/PlayErrorData;->lob:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "suuid"

    iget-object p0, p0, Lcom/hunantv/imgo/data/PlayErrorData;->suuid:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSpec()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/PlayErrorData;->spec:Ljava/lang/String;

    return-object p0
.end method

.method public getSptype()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/PlayErrorData;->sptype:Ljava/lang/String;

    return-object p0
.end method

.method public getSuuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/PlayErrorData;->suuid:Ljava/lang/String;

    return-object p0
.end method

.method public getVid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/PlayErrorData;->vid:Ljava/lang/String;

    return-object p0
.end method

.method public setCpn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/PlayErrorData;->cpn:Ljava/lang/String;

    return-void
.end method

.method public setIsqs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/PlayErrorData;->isqs:Ljava/lang/String;

    return-void
.end method

.method public setLob(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/PlayErrorData;->lob:Ljava/lang/String;

    return-void
.end method

.method public setLogtype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/PlayErrorData;->logtype:Ljava/lang/String;

    return-void
.end method

.method public setSpec(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/PlayErrorData;->spec:Ljava/lang/String;

    return-void
.end method

.method public setSptype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/PlayErrorData;->sptype:Ljava/lang/String;

    return-void
.end method

.method public setSuuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/PlayErrorData;->suuid:Ljava/lang/String;

    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/PlayErrorData;->vid:Ljava/lang/String;

    return-void
.end method
