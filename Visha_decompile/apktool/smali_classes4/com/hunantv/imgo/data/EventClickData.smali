.class public Lcom/hunantv/imgo/data/EventClickData;
.super Lcom/hunantv/imgo/data/CommonData;
.source "SourceFile"


# instance fields
.field private act:Ljava/lang/String;

.field private cpid:Ljava/lang/String;

.field private cpn:Ljava/lang/String;

.field private pos:Ljava/lang/String;

.field private rtime:I

.field private suuid:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/imgo/data/CommonData;-><init>()V

    iput-object p1, p0, Lcom/hunantv/imgo/data/EventClickData;->suuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/hunantv/imgo/data/EventClickData;->act:Ljava/lang/String;

    iput-object p3, p0, Lcom/hunantv/imgo/data/EventClickData;->pos:Ljava/lang/String;

    iput-object p4, p0, Lcom/hunantv/imgo/data/EventClickData;->value:Ljava/lang/String;

    iput-object p5, p0, Lcom/hunantv/imgo/data/EventClickData;->cpn:Ljava/lang/String;

    const-string p1, "27.5.5.5"

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/data/CommonData;->setBid(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createRequestParams()Lcom/hunantv/imgo/net/RequestParams;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/hunantv/imgo/data/CommonData;->createBaseRequestParams()Lcom/hunantv/imgo/net/RequestParams;

    move-result-object v0

    const-string v1, "cpid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/EventClickData;->cpid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cpn"

    iget-object v2, p0, Lcom/hunantv/imgo/data/EventClickData;->cpn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "act"

    iget-object v2, p0, Lcom/hunantv/imgo/data/EventClickData;->act:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pos"

    iget-object v2, p0, Lcom/hunantv/imgo/data/EventClickData;->pos:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/imgo/data/EventClickData;->value:Ljava/lang/String;

    invoke-static {p0}, Lcom/hunantv/imgo/util/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "value"

    invoke-virtual {v0, v1, p0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAct()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/EventClickData;->act:Ljava/lang/String;

    return-object p0
.end method

.method public getCpid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/EventClickData;->cpid:Ljava/lang/String;

    return-object p0
.end method

.method public getPos()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/EventClickData;->pos:Ljava/lang/String;

    return-object p0
.end method

.method public getRtime()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/EventClickData;->rtime:I

    return p0
.end method

.method public getSuuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/EventClickData;->suuid:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/EventClickData;->value:Ljava/lang/String;

    return-object p0
.end method

.method public setAct(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/EventClickData;->act:Ljava/lang/String;

    return-void
.end method

.method public setCpid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/EventClickData;->cpid:Ljava/lang/String;

    return-void
.end method

.method public setPos(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/EventClickData;->pos:Ljava/lang/String;

    return-void
.end method

.method public setRtime(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/EventClickData;->rtime:I

    return-void
.end method

.method public setSuuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/EventClickData;->suuid:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/EventClickData;->value:Ljava/lang/String;

    return-void
.end method
