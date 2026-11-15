.class public Lcom/mgmi/model/ClipBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# instance fields
.field public clipId:J

.field public clipName:Ljava/lang/String;

.field public imgurl2:Ljava/lang/String;

.field public yearShow:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClipId()J
    .locals 2

    iget-wide v0, p0, Lcom/mgmi/model/ClipBean;->clipId:J

    return-wide v0
.end method

.method public getClipName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/ClipBean;->clipName:Ljava/lang/String;

    return-object p0
.end method

.method public getImgurl2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/ClipBean;->imgurl2:Ljava/lang/String;

    return-object p0
.end method

.method public getYearShow()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/ClipBean;->yearShow:Ljava/lang/String;

    return-object p0
.end method

.method public setClipId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mgmi/model/ClipBean;->clipId:J

    return-void
.end method

.method public setClipName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/ClipBean;->clipName:Ljava/lang/String;

    return-void
.end method

.method public setImgurl2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/ClipBean;->imgurl2:Ljava/lang/String;

    return-void
.end method

.method public setYearShow(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/ClipBean;->yearShow:Ljava/lang/String;

    return-void
.end method
