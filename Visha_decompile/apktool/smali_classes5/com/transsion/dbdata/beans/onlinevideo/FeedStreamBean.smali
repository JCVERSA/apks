.class public Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;
.super Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;
    }
.end annotation


# instance fields
.field private channelConver:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channel_cover"
    .end annotation
.end field

.field private channelName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channel_name"
    .end annotation
.end field

.field private endTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end_time"
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

.field private startTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_time"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private video:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video"
    .end annotation
.end field

.field private videoId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_id"
    .end annotation
.end field

.field private videoSerialId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_serial_id"
    .end annotation
.end field

.field private videoSerialSourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_serial_source_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelConver()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->channelConver:Ljava/lang/String;

    return-object p0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->channelName:Ljava/lang/String;

    return-object p0
.end method

.method public getEndTime()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->endTime:Ljava/lang/Integer;

    return-object p0
.end method

.method public getShortDescribe()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->shortDescribe:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->sourceId:Ljava/lang/String;

    return-object p0
.end method

.method public getStartTime()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->startTime:Ljava/lang/Integer;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->video:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    return-object p0
.end method

.method public getVideoId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->videoId:Ljava/lang/Integer;

    return-object p0
.end method

.method public getVideoSerialId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->videoSerialId:Ljava/lang/Integer;

    return-object p0
.end method

.method public getVideoSerialSourceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->videoSerialSourceId:Ljava/lang/String;

    return-object p0
.end method

.method public setChannelName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->channelName:Ljava/lang/String;

    return-void
.end method

.method public setEndTime(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->endTime:Ljava/lang/Integer;

    return-void
.end method

.method public setShortDescribe(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->shortDescribe:Ljava/lang/String;

    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->sourceId:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->startTime:Ljava/lang/Integer;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setVideo(Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->video:Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    return-void
.end method

.method public setVideoId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->videoId:Ljava/lang/Integer;

    return-void
.end method

.method public setVideoSerialId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->videoSerialId:Ljava/lang/Integer;

    return-void
.end method

.method public setVideoSerialSourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->videoSerialSourceId:Ljava/lang/String;

    return-void
.end method
