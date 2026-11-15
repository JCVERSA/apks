.class public Lcom/transsion/dbdata/beans/VideoIndex;
.super Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;
.source "SourceFile"


# instance fields
.field pos:I

.field videoID:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    iput p1, p0, Lcom/transsion/dbdata/beans/VideoIndex;->pos:I

    iput-wide p2, p0, Lcom/transsion/dbdata/beans/VideoIndex;->videoID:J

    return-void
.end method


# virtual methods
.method public getPos()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/VideoIndex;->pos:I

    return p0
.end method

.method public getVideoID()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/VideoIndex;->videoID:J

    return-wide v0
.end method

.method public setPos(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/VideoIndex;->pos:I

    return-void
.end method

.method public setVideoID(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/VideoIndex;->videoID:J

    return-void
.end method
