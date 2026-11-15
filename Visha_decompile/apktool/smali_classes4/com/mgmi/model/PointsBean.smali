.class public Lcom/mgmi/model/PointsBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# instance fields
.field private confVal:F

.field private playTime:I

.field private time:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfVal()F
    .locals 0

    iget p0, p0, Lcom/mgmi/model/PointsBean;->confVal:F

    return p0
.end method

.method public getPlayTime()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/PointsBean;->playTime:I

    return p0
.end method

.method public getTime()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/PointsBean;->time:I

    return p0
.end method

.method public setConfVal(F)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/PointsBean;->confVal:F

    return-void
.end method

.method public setPlayTime(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/PointsBean;->playTime:I

    return-void
.end method

.method public setTime(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/PointsBean;->time:I

    return-void
.end method
