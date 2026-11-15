.class public Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;
    }
.end annotation


# instance fields
.field duration:D

.field resolution:Ljava/lang/String;

.field size:J

.field type:Ljava/lang/String;

.field url:Ljava/lang/String;

.field videoHeight:I

.field videoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()D
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->duration:D

    return-wide v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->resolution:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->size:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->type:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->type:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->url:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->url:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->type:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->type:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v3, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->type:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->type:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->type:Ljava/lang/String;

    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->type:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->type:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->type:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MP4"

    iput-object v0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->type:Ljava/lang/String;

    :cond_3
    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->type:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->url:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->videoHeight:I

    return p0
.end method

.method public getVideoResolution()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_SD:Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->value:Ljava/lang/String;

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->videoHeight:I

    const/16 v1, 0x438

    if-lt p0, v1, :cond_0

    sget-object p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_1080P:Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->value:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v1, 0x2d0

    if-lt p0, v1, :cond_1

    sget-object p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_720P:Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->value:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e0

    if-lt p0, v1, :cond_2

    sget-object p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_480P:Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    iget-object v0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->value:Ljava/lang/String;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getVideoWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->videoWidth:I

    return p0
.end method

.method public setDuration(J)V
    .locals 0

    long-to-double p1, p1

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->duration:D

    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->resolution:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->size:J

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->url:Ljava/lang/String;

    return-void
.end method

.method public setVideoHeight(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->videoHeight:I

    return-void
.end method

.method public setVideoWidth(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->videoWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoFileInfo{videoWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->videoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->videoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->duration:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->getVideoResolution()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;->type:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
