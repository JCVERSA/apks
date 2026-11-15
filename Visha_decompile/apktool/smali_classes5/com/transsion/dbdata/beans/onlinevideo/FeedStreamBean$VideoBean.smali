.class public Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoBean"
.end annotation


# instance fields
.field private actors:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actors"
    .end annotation
.end field

.field private categories:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "categories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$CategoryBean;",
            ">;"
        }
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

.field private created:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created"
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

.field private displayType:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_type"
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

.field private images:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "images"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$ImageBean;",
            ">;"
        }
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

.field private likes:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "likes"
    .end annotation
.end field

.field private onlineStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "online_status"
    .end annotation
.end field

.field private onlineUpdateTime:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "online_update_time"
    .end annotation
.end field

.field private payType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pay_type"
    .end annotation
.end field

.field private playEndTime:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_end_time"
    .end annotation
.end field

.field private playStartTime:Ljava/lang/Object;
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

.field private shortDescribe:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "short_describe"
    .end annotation
.end field

.field private sourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_id"
    .end annotation
.end field

.field private sourceImage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sourceImage"
    .end annotation
.end field

.field private sourceName:Ljava/lang/Object;
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

.field private tvMark:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tv_mark"
    .end annotation
.end field

.field private videoDefinitionList:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_definition_list"
    .end annotation
.end field

.field private videoLink:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_link"
    .end annotation
.end field

.field private videoSerialList:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_serial_list"
    .end annotation
.end field

.field private views:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "views"
    .end annotation
.end field

.field private vkVideoId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vkVideoId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActors()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->actors:Ljava/lang/String;

    return-object p0
.end method

.method public getCategories()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$CategoryBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->categories:Ljava/util/List;

    return-object p0
.end method

.method public getCoverX()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->coverX:Ljava/lang/String;

    return-object p0
.end method

.method public getCoverY()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->coverY:Ljava/lang/String;

    return-object p0
.end method

.method public getCreated()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->created:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getDirectors()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->directors:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayType()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->displayType:Ljava/lang/Object;

    return-object p0
.end method

.method public getDuration()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->duration:Ljava/lang/Integer;

    return-object p0
.end method

.method public getFinishStatus()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->finishStatus:Ljava/lang/Integer;

    return-object p0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->id:Ljava/lang/Integer;

    return-object p0
.end method

.method public getImages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$ImageBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->images:Ljava/util/List;

    return-object p0
.end method

.method public getIsLive()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->isLive:Ljava/lang/Integer;

    return-object p0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->language:Ljava/lang/String;

    return-object p0
.end method

.method public getLikes()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->likes:Ljava/lang/Long;

    return-object p0
.end method

.method public getOnlineStatus()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->onlineStatus:Ljava/lang/Integer;

    return-object p0
.end method

.method public getOnlineUpdateTime()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->onlineUpdateTime:Ljava/lang/Object;

    return-object p0
.end method

.method public getPayType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->payType:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPlayEndTime()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->playEndTime:Ljava/lang/Object;

    return-object p0
.end method

.method public getPlayStartTime()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->playStartTime:Ljava/lang/Object;

    return-object p0
.end method

.method public getPrice()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->price:Ljava/lang/Integer;

    return-object p0
.end method

.method public getScores()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->scores:Ljava/lang/Double;

    return-object p0
.end method

.method public getSerialCount()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->serialCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public getShortDescribe()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->shortDescribe:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->sourceId:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceImage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->sourceImage:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceName()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->sourceName:Ljava/lang/Object;

    return-object p0
.end method

.method public getSourceType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->sourceType:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getTvMark()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->tvMark:Ljava/lang/Object;

    return-object p0
.end method

.method public getVideoDefinitionList()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->videoDefinitionList:Ljava/lang/Object;

    return-object p0
.end method

.method public getVideoLink()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->videoLink:Ljava/lang/Object;

    return-object p0
.end method

.method public getVideoSerialList()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->videoSerialList:Ljava/lang/Object;

    return-object p0
.end method

.method public getViews()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->views:Ljava/lang/Long;

    return-object p0
.end method

.method public getVkVideoId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->vkVideoId:Ljava/lang/String;

    return-object p0
.end method

.method public isVip()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->payType:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActors(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->actors:Ljava/lang/String;

    return-void
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$CategoryBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->categories:Ljava/util/List;

    return-void
.end method

.method public setCoverX(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->coverX:Ljava/lang/String;

    return-void
.end method

.method public setCoverY(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->coverY:Ljava/lang/String;

    return-void
.end method

.method public setCreated(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->created:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setDirectors(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->directors:Ljava/lang/String;

    return-void
.end method

.method public setDisplayType(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->displayType:Ljava/lang/Object;

    return-void
.end method

.method public setDuration(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->duration:Ljava/lang/Integer;

    return-void
.end method

.method public setFinishStatus(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->finishStatus:Ljava/lang/Integer;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setImages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean$ImageBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->images:Ljava/util/List;

    return-void
.end method

.method public setIsLive(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->isLive:Ljava/lang/Integer;

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->language:Ljava/lang/String;

    return-void
.end method

.method public setLikes(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->likes:Ljava/lang/Long;

    return-void
.end method

.method public setOnlineStatus(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->onlineStatus:Ljava/lang/Integer;

    return-void
.end method

.method public setOnlineUpdateTime(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->onlineUpdateTime:Ljava/lang/Object;

    return-void
.end method

.method public setPayType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->payType:Ljava/lang/Integer;

    return-void
.end method

.method public setPlayEndTime(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->playEndTime:Ljava/lang/Object;

    return-void
.end method

.method public setPlayStartTime(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->playStartTime:Ljava/lang/Object;

    return-void
.end method

.method public setPrice(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->price:Ljava/lang/Integer;

    return-void
.end method

.method public setScores(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->scores:Ljava/lang/Double;

    return-void
.end method

.method public setSerialCount(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->serialCount:Ljava/lang/Integer;

    return-void
.end method

.method public setShortDescribe(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->shortDescribe:Ljava/lang/String;

    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->sourceId:Ljava/lang/String;

    return-void
.end method

.method public setSourceImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->sourceImage:Ljava/lang/String;

    return-void
.end method

.method public setSourceName(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->sourceName:Ljava/lang/Object;

    return-void
.end method

.method public setSourceType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->sourceType:Ljava/lang/Integer;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTvMark(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->tvMark:Ljava/lang/Object;

    return-void
.end method

.method public setVideoDefinitionList(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->videoDefinitionList:Ljava/lang/Object;

    return-void
.end method

.method public setVideoLink(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->videoLink:Ljava/lang/Object;

    return-void
.end method

.method public setVideoSerialList(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->videoSerialList:Ljava/lang/Object;

    return-void
.end method

.method public setViews(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->views:Ljava/lang/Long;

    return-void
.end method

.method public setVkVideoId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->vkVideoId:Ljava/lang/String;

    return-void
.end method
