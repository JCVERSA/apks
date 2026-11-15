.class public Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private playPosition:I

.field private videoInfo:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_info"
    .end annotation
.end field

.field private videoSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_serial"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->playPosition:I

    return-void
.end method

.method public static fromTranVideoDetail(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;)Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;
    .locals 10

    new-instance v0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSerialId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    invoke-virtual {v0, v3}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->setVideoSerial(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)V

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->getVideoSerial()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerialsNotIntact()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSerialId()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->setVideoSerial(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)V

    :cond_3
    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->setVideoInfo(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;)V

    return-object v0
.end method


# virtual methods
.method public getPlayPosition()I
    .locals 0

    iget p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->playPosition:I

    return p0
.end method

.method public getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->videoInfo:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    return-object p0
.end method

.method public getVideoSerial()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->videoSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    return-object p0
.end method

.method public setPlayPosition(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->playPosition:I

    return-void
.end method

.method public setVideoInfo(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->videoInfo:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    return-void
.end method

.method public setVideoSerial(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortVideoDetail;->videoSerial:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    return-void
.end method
