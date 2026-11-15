.class public Lcom/hunantv/imgo/data/KbbData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# instance fields
.field private $channel:Ljava/lang/String;

.field private abroad:I

.field private act:Ljava/lang/String;

.field private aver:Ljava/lang/String;

.field private bid:Ljava/lang/String;

.field private ch:Ljava/lang/String;

.field private did:Ljava/lang/String;

.field private idx:Ljava/lang/String;

.field private mf:Ljava/lang/String;

.field private mod:Ljava/lang/String;

.field private net:I

.field private oaid:Ljava/lang/String;

.field private src:Ljava/lang/String;

.field private suuid:Ljava/lang/String;

.field private sver:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->idx:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/hunantv/imgo/data/KbbData;->suuid:Ljava/lang/String;

    .line 4
    const-string p1, "cp1"

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->act:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->did:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/hunantv/imgo/util/b;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->mod:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/hunantv/imgo/util/b;->s()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->mf:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/hunantv/imgo/util/b;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->aver:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/hunantv/imgo/util/b;->r()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->sver:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/hunantv/imgo/util/b;->x()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->ch:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/hunantv/imgo/util/p;->d()I

    move-result p1

    iput p1, p0, Lcom/hunantv/imgo/data/KbbData;->net:I

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/hunantv/imgo/util/f;->b(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->time:Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/hunantv/imgo/util/b;->O()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->src:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/hunantv/imgo/b/a;->a()I

    move-result p1

    iput p1, p0, Lcom/hunantv/imgo/data/KbbData;->abroad:I

    .line 15
    const-string p1, "27.1.90"

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->bid:Ljava/lang/String;

    .line 16
    invoke-static {}, Lcom/hunantv/imgo/util/b;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->$channel:Ljava/lang/String;

    .line 17
    invoke-static {}, Lcom/hunantv/imgo/util/b;->U()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->oaid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->idx:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/hunantv/imgo/data/KbbData;->suuid:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/hunantv/imgo/data/KbbData;->act:Ljava/lang/String;

    .line 22
    const-string p1, "27.1.90"

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->bid:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->did:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/hunantv/imgo/util/b;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->mod:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/hunantv/imgo/util/b;->s()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->mf:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/hunantv/imgo/util/b;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->aver:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/hunantv/imgo/util/b;->r()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->sver:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/hunantv/imgo/util/b;->x()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->ch:Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/hunantv/imgo/util/p;->d()I

    move-result p1

    iput p1, p0, Lcom/hunantv/imgo/data/KbbData;->net:I

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/hunantv/imgo/util/f;->b(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->time:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/hunantv/imgo/util/b;->O()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->src:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/hunantv/imgo/b/a;->a()I

    move-result p1

    iput p1, p0, Lcom/hunantv/imgo/data/KbbData;->abroad:I

    .line 33
    invoke-static {}, Lcom/hunantv/imgo/util/b;->U()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->oaid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAbroad()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/KbbData;->abroad:I

    return p0
.end method

.method public getAct()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/KbbData;->act:Ljava/lang/String;

    return-object p0
.end method

.method public getAver()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/KbbData;->aver:Ljava/lang/String;

    return-object p0
.end method

.method public getCh()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/KbbData;->ch:Ljava/lang/String;

    return-object p0
.end method

.method public getDid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/KbbData;->did:Ljava/lang/String;

    return-object p0
.end method

.method public getIdx()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/KbbData;->idx:Ljava/lang/String;

    return-object p0
.end method

.method public getMf()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/KbbData;->mf:Ljava/lang/String;

    return-object p0
.end method

.method public getMod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/KbbData;->mod:Ljava/lang/String;

    return-object p0
.end method

.method public getNet()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/KbbData;->net:I

    return p0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/KbbData;->src:Ljava/lang/String;

    return-object p0
.end method

.method public getSuuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/KbbData;->suuid:Ljava/lang/String;

    return-object p0
.end method

.method public getSver()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/KbbData;->sver:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/KbbData;->time:Ljava/lang/String;

    return-object p0
.end method

.method public setAbroad(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/KbbData;->abroad:I

    return-void
.end method

.method public setAct(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->act:Ljava/lang/String;

    return-void
.end method

.method public setAver(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->aver:Ljava/lang/String;

    return-void
.end method

.method public setCh(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->ch:Ljava/lang/String;

    return-void
.end method

.method public setDid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->did:Ljava/lang/String;

    return-void
.end method

.method public setIdx(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->idx:Ljava/lang/String;

    return-void
.end method

.method public setMf(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->mf:Ljava/lang/String;

    return-void
.end method

.method public setMod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->mod:Ljava/lang/String;

    return-void
.end method

.method public setNet(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/KbbData;->net:I

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->src:Ljava/lang/String;

    return-void
.end method

.method public setSuuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->suuid:Ljava/lang/String;

    return-void
.end method

.method public setSver(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->sver:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/KbbData;->time:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/hunantv/imgo/data/KbbData;

    invoke-static {p0, v0}, Lcom/mgtv/json/a;->a(Lcom/mgtv/json/JsonInterface;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
