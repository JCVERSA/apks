.class public Lcom/mgmi/ssp/TParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private activityId:I

.field private adParams:Ljava/lang/String;

.field private camera_id:I

.field private channellive:I

.field private chid:I

.field private ecpm:I

.field private from:Ljava/lang/String;

.field private h:I

.field private hid:I

.field private isNative:Z

.field private ispay:I

.field private ispreview:I

.field private nid:Ljava/lang/String;

.field private position:I

.field private vid:I

.field public vip:I

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgmi/ssp/TParams;->channellive:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/mgmi/ssp/TParams;->ecpm:I

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/mgmi/ssp/TParams;->w:I

    iput v0, p0, Lcom/mgmi/ssp/TParams;->h:I

    return-void
.end method


# virtual methods
.method public getActivityId()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ssp/TParams;->activityId:I

    return p0
.end method

.method public getAdParams()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/TParams;->adParams:Ljava/lang/String;

    return-object p0
.end method

.method public getCamera_id()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ssp/TParams;->camera_id:I

    return p0
.end method

.method public getChannellive()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ssp/TParams;->channellive:I

    return p0
.end method

.method public getChid()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ssp/TParams;->chid:I

    return p0
.end method

.method public getEcpm()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ssp/TParams;->ecpm:I

    return p0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/TParams;->from:Ljava/lang/String;

    return-object p0
.end method

.method public getH()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ssp/TParams;->h:I

    return p0
.end method

.method public getHid()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ssp/TParams;->hid:I

    return p0
.end method

.method public getISVip()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ssp/TParams;->vip:I

    return p0
.end method

.method public getIspay()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ssp/TParams;->ispay:I

    return p0
.end method

.method public getIspreview()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ssp/TParams;->ispreview:I

    return p0
.end method

.method public getNid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/TParams;->nid:Ljava/lang/String;

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ssp/TParams;->position:I

    return p0
.end method

.method public getVid()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ssp/TParams;->vid:I

    return p0
.end method

.method public getW()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ssp/TParams;->w:I

    return p0
.end method

.method public isNative()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/ssp/TParams;->isNative:Z

    return p0
.end method

.method public setActivityId(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ssp/TParams;->activityId:I

    return-void
.end method

.method public setAdParams(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ssp/TParams;->adParams:Ljava/lang/String;

    return-void
.end method

.method public setCamera_id(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ssp/TParams;->camera_id:I

    return-void
.end method

.method public setChannellive(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ssp/TParams;->channellive:I

    return-void
.end method

.method public setChid(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ssp/TParams;->chid:I

    return-void
.end method

.method public setEcpm(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ssp/TParams;->ecpm:I

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ssp/TParams;->from:Ljava/lang/String;

    return-void
.end method

.method public setH(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ssp/TParams;->h:I

    return-void
.end method

.method public setHid(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ssp/TParams;->hid:I

    return-void
.end method

.method public setIspay(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ssp/TParams;->ispay:I

    return-void
.end method

.method public setIsppreview(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ssp/TParams;->ispreview:I

    return-void
.end method

.method public setNative(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/ssp/TParams;->isNative:Z

    return-void
.end method

.method public setNid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ssp/TParams;->nid:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ssp/TParams;->position:I

    return-void
.end method

.method public setVid(I)Lcom/mgmi/ssp/TParams;
    .locals 0

    iput p1, p0, Lcom/mgmi/ssp/TParams;->vid:I

    return-object p0
.end method

.method public setW(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ssp/TParams;->w:I

    return-void
.end method

.method public setisVip(I)Lcom/mgmi/ssp/TParams;
    .locals 0

    iput p1, p0, Lcom/mgmi/ssp/TParams;->vip:I

    return-object p0
.end method
