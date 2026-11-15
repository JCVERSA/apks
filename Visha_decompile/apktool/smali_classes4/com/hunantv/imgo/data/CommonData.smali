.class public Lcom/hunantv/imgo/data/CommonData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# static fields
.field public static final BID_APPLIST:Ljava/lang/String; = "27.9.1"

.field public static final BID_BUFFER:Ljava/lang/String; = "27.1.25"

.field public static final BID_CLICK:Ljava/lang/String; = "27.5.5.5"

.field public static final BID_HEARTBEAT:Ljava/lang/String; = "27.1.25"

.field public static final BID_KBB:Ljava/lang/String; = "27.1.90"

.field public static final BID_LIVE_PLAY:Ljava/lang/String; = "27.1.1.1"

.field public static final BID_PLAY:Ljava/lang/String; = "27.1.1.0"

.field public static final BID_PLAY_ERROR:Ljava/lang/String; = "27.4.2"

.field public static final BID_PV_SOURCE:Ljava/lang/String; = "27.1.2"

.field public static final BID_WIFI:Ljava/lang/String; = "27.9.2"


# instance fields
.field protected abroad:Ljava/lang/String;

.field protected aver:Ljava/lang/String;

.field protected bid:Ljava/lang/String;

.field protected ch:Ljava/lang/String;

.field protected channel:Ljava/lang/String;

.field protected did:Ljava/lang/String;

.field protected gps:Ljava/lang/String;

.field protected guid:Ljava/lang/String;

.field protected imei:Ljava/lang/String;

.field protected isdebug:I

.field protected mac:Ljava/lang/String;

.field protected mf:Ljava/lang/String;

.field protected mod:Ljava/lang/String;

.field protected net:I

.field protected p2p:I

.field protected rch:Ljava/lang/String;

.field protected rdc:Ljava/lang/String;

.field protected runsid:Ljava/lang/String;

.field protected sid:Ljava/lang/String;

.field protected src:Ljava/lang/String;

.field protected sver:Ljava/lang/String;

.field protected time:Ljava/lang/String;

.field protected uuid:Ljava/lang/String;

.field protected uvip:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/f;->b(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/data/CommonData;->time:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/imgo/data/CommonData;->isdebug:I

    invoke-static {}, Lcom/hunantv/imgo/util/b;->s()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/imgo/data/CommonData;->mf:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/imgo/data/CommonData;->mod:Ljava/lang/String;

    const-string v1, "union_app"

    iput-object v1, p0, Lcom/hunantv/imgo/data/CommonData;->channel:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/f;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/CommonData;->setTime(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/CommonData;->setGuid(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/CommonData;->setDid(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/CommonData;->setUuid(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/a/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/CommonData;->setSid(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/p;->d()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/CommonData;->setNet(I)V

    const-string v1, "TAG_D"

    invoke-static {v1, v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/CommonData;->setIsdebug(I)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/CommonData;->setMf(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/CommonData;->setMod(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/CommonData;->setSver(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/CommonData;->setAver(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/m;->a()Lcom/hunantv/imgo/util/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/util/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/CommonData;->setGps(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/CommonData;->setCh(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/CommonData;->setImei(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/CommonData;->setMac(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/data/a;->a()Lcom/hunantv/imgo/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/data/a;->b()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/CommonData;->setUvip(I)V

    invoke-static {}, Lcom/hunantv/imgo/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/CommonData;->setAbroad(Ljava/lang/String;)V

    sget-boolean v0, Lcom/hunantv/imgo/util/d;->a:Z

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/CommonData;->setP2p(I)V

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v0

    iget-object v0, v0, Lcom/hunantv/imgo/b/c;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/CommonData;->setRunsid(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/CommonData;->setSrc(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createBaseRequestParams()Lcom/hunantv/imgo/net/RequestParams;
    .locals 4

    new-instance v0, Lcom/hunantv/imgo/net/RequestParams;

    invoke-direct {v0}, Lcom/hunantv/imgo/net/RequestParams;-><init>()V

    const-string v1, "time"

    iget-object v2, p0, Lcom/hunantv/imgo/data/CommonData;->time:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uuid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/CommonData;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ch"

    iget-object v2, p0, Lcom/hunantv/imgo/data/CommonData;->ch:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "did"

    iget-object v2, p0, Lcom/hunantv/imgo/data/CommonData;->did:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mod"

    iget-object v2, p0, Lcom/hunantv/imgo/data/CommonData;->mod:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mf"

    iget-object v2, p0, Lcom/hunantv/imgo/data/CommonData;->mf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aver"

    iget-object v2, p0, Lcom/hunantv/imgo/data/CommonData;->aver:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sver"

    iget-object v2, p0, Lcom/hunantv/imgo/data/CommonData;->sver:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "imei"

    iget-object v2, p0, Lcom/hunantv/imgo/data/CommonData;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rdc"

    iget-object v2, p0, Lcom/hunantv/imgo/data/CommonData;->rdc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rch"

    iget-object v2, p0, Lcom/hunantv/imgo/data/CommonData;->rch:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/hunantv/imgo/data/CommonData;->uvip:I

    const-string v2, "uvip"

    invoke-virtual {v0, v2, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "guid"

    iget-object v3, p0, Lcom/hunantv/imgo/data/CommonData;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sid"

    iget-object v3, p0, Lcom/hunantv/imgo/data/CommonData;->sid:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "net"

    iget v3, p0, Lcom/hunantv/imgo/data/CommonData;->net:I

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "isdebug"

    iget v3, p0, Lcom/hunantv/imgo/data/CommonData;->isdebug:I

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "gps"

    iget-object v3, p0, Lcom/hunantv/imgo/data/CommonData;->gps:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mac"

    iget-object v3, p0, Lcom/hunantv/imgo/data/CommonData;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/hunantv/imgo/data/CommonData;->uvip:I

    invoke-virtual {v0, v2, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "abroad"

    invoke-static {}, Lcom/hunantv/imgo/b/a;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "runsid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/CommonData;->runsid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "p2p"

    iget v2, p0, Lcom/hunantv/imgo/data/CommonData;->p2p:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "src"

    iget-object v2, p0, Lcom/hunantv/imgo/data/CommonData;->src:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bid"

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->bid:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "oaid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "$channel"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAbroad()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->abroad:Ljava/lang/String;

    return-object p0
.end method

.method public getAver()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->aver:Ljava/lang/String;

    return-object p0
.end method

.method public getBid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->bid:Ljava/lang/String;

    return-object p0
.end method

.method public getCh()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->ch:Ljava/lang/String;

    return-object p0
.end method

.method public getDid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->did:Ljava/lang/String;

    return-object p0
.end method

.method public getGps()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->gps:Ljava/lang/String;

    return-object p0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->guid:Ljava/lang/String;

    return-object p0
.end method

.method public getImei()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->imei:Ljava/lang/String;

    return-object p0
.end method

.method public getIsdebug()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/CommonData;->isdebug:I

    return p0
.end method

.method public getMac()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->mac:Ljava/lang/String;

    return-object p0
.end method

.method public getMf()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->mf:Ljava/lang/String;

    return-object p0
.end method

.method public getMod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->mod:Ljava/lang/String;

    return-object p0
.end method

.method public getNet()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/CommonData;->net:I

    return p0
.end method

.method public getP2p()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/CommonData;->p2p:I

    return p0
.end method

.method public getRch()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->rch:Ljava/lang/String;

    return-object p0
.end method

.method public getRdc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->rdc:Ljava/lang/String;

    return-object p0
.end method

.method public getRunsid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->runsid:Ljava/lang/String;

    return-object p0
.end method

.method public getSid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->sid:Ljava/lang/String;

    return-object p0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->src:Ljava/lang/String;

    return-object p0
.end method

.method public getSver()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->sver:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->time:Ljava/lang/String;

    return-object p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/CommonData;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public getUvip()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/CommonData;->uvip:I

    return p0
.end method

.method public setAbroad(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->abroad:Ljava/lang/String;

    return-void
.end method

.method public setAver(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->aver:Ljava/lang/String;

    return-void
.end method

.method public setBid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->bid:Ljava/lang/String;

    return-void
.end method

.method public setCh(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->ch:Ljava/lang/String;

    return-void
.end method

.method public setDid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->did:Ljava/lang/String;

    return-void
.end method

.method public setGps(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->gps:Ljava/lang/String;

    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->guid:Ljava/lang/String;

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->imei:Ljava/lang/String;

    return-void
.end method

.method public setIsdebug(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/CommonData;->isdebug:I

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->mac:Ljava/lang/String;

    return-void
.end method

.method public setMf(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->mf:Ljava/lang/String;

    return-void
.end method

.method public setMod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->mod:Ljava/lang/String;

    return-void
.end method

.method public setNet(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/CommonData;->net:I

    return-void
.end method

.method public setP2p(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/CommonData;->p2p:I

    return-void
.end method

.method public setRch(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->rch:Ljava/lang/String;

    return-void
.end method

.method public setRdc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->rdc:Ljava/lang/String;

    return-void
.end method

.method public setRunsid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->runsid:Ljava/lang/String;

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->sid:Ljava/lang/String;

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->src:Ljava/lang/String;

    return-void
.end method

.method public setSver(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->sver:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->time:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/CommonData;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setUvip(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/CommonData;->uvip:I

    return-void
.end method
