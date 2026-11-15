.class public Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;
.super Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;
.source "SourceFile"


# instance fields
.field private actors:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actors"
    .end annotation
.end field

.field private coverX:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_x"
    .end annotation
.end field

.field private coverY:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_y"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private directors:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "directors"
    .end annotation
.end field

.field private duration:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private finishStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "finish_status"
    .end annotation
.end field

.field private id:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private isLive:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_live"
    .end annotation
.end field

.field private keyword:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "keyword"
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field

.field private onlineStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "online_status"
    .end annotation
.end field

.field private onlineUpdateTime:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "online_update_time"
    .end annotation
.end field

.field private payType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pay_type"
    .end annotation
.end field

.field private playEndTime:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_end_time"
    .end annotation
.end field

.field private playStartTime:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_start_time"
    .end annotation
.end field

.field private price:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price"
    .end annotation
.end field

.field private scores:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scores"
    .end annotation
.end field

.field private serialCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serial_count"
    .end annotation
.end field

.field private sourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_id"
    .end annotation
.end field

.field private sourceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_name"
    .end annotation
.end field

.field private sourceType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_type"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private tvMark:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tv_mark"
    .end annotation
.end field

.field private videoDefinitionList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_definition_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private videoLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_link"
    .end annotation
.end field

.field private videoSerialList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_serial_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getActors()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->actors:Ljava/lang/String;

    return-object p0
.end method

.method public getCoverX()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->coverX:Ljava/lang/String;

    return-object p0
.end method

.method public getCoverY()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->coverY:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getDirectors()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->directors:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->duration:Ljava/lang/Integer;

    return-object p0
.end method

.method public getFinishStatus()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->finishStatus:Ljava/lang/Integer;

    return-object p0
.end method

.method public getFirstWebcastSerialBean()Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->videoSerialList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->videoSerialList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->id:Ljava/lang/Integer;

    return-object p0
.end method

.method public getIsLive()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->isLive:Ljava/lang/Integer;

    return-object p0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->language:Ljava/lang/String;

    return-object p0
.end method

.method public getOnlineStatus()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->onlineStatus:Ljava/lang/Integer;

    return-object p0
.end method

.method public getOnlineUpdateTime()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->onlineUpdateTime:Ljava/lang/Long;

    return-object p0
.end method

.method public getPayType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->payType:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPlayEndTime()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->playEndTime:Ljava/lang/Long;

    return-object p0
.end method

.method public getPlayStartTime()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->playStartTime:Ljava/lang/Long;

    return-object p0
.end method

.method public getPrice()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->price:Ljava/lang/Integer;

    return-object p0
.end method

.method public getScores()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->scores:Ljava/lang/Double;

    return-object p0
.end method

.method public getSerialCount()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->serialCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->sourceId:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->sourceName:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->sourceType:Ljava/lang/Integer;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getTvMark()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->tvMark:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoDefinitionList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->videoDefinitionList:Ljava/util/List;

    return-object p0
.end method

.method public getVideoLink()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->videoLink:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoSerialList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->videoSerialList:Ljava/util/List;

    return-object p0
.end method

.method public setActors(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->actors:Ljava/lang/String;

    return-void
.end method

.method public setCoverX(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->coverX:Ljava/lang/String;

    return-void
.end method

.method public setCoverY(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->coverY:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setDirectors(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->directors:Ljava/lang/String;

    return-void
.end method

.method public setDuration(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->duration:Ljava/lang/Integer;

    return-void
.end method

.method public setFinishStatus(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->finishStatus:Ljava/lang/Integer;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIsLive(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->isLive:Ljava/lang/Integer;

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->language:Ljava/lang/String;

    return-void
.end method

.method public setOnlineStatus(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->onlineStatus:Ljava/lang/Integer;

    return-void
.end method

.method public setOnlineUpdateTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->onlineUpdateTime:Ljava/lang/Long;

    return-void
.end method

.method public setPayType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->payType:Ljava/lang/Integer;

    return-void
.end method

.method public setPlayEndTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->playEndTime:Ljava/lang/Long;

    return-void
.end method

.method public setPlayStartTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->playStartTime:Ljava/lang/Long;

    return-void
.end method

.method public setPrice(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->price:Ljava/lang/Integer;

    return-void
.end method

.method public setScores(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->scores:Ljava/lang/Double;

    return-void
.end method

.method public setSerialCount(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->serialCount:Ljava/lang/Integer;

    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->sourceId:Ljava/lang/String;

    return-void
.end method

.method public setSourceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->sourceName:Ljava/lang/String;

    return-void
.end method

.method public setSourceType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->sourceType:Ljava/lang/Integer;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTvMark(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->tvMark:Ljava/lang/String;

    return-void
.end method

.method public setVideoDefinitionList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->videoDefinitionList:Ljava/util/List;

    return-void
.end method

.method public setVideoLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->videoLink:Ljava/lang/String;

    return-void
.end method

.method public setVideoSerialList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->videoSerialList:Ljava/util/List;

    return-void
.end method
