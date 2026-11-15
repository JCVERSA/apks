.class public Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;
.super Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Results"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results$ChannelInfo;
    }
.end annotation


# instance fields
.field private channelInfo:Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results$ChannelInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channel_info"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private lengthText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "length_text"
    .end annotation
.end field

.field private publishedTimeText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "published_time_text"
    .end annotation
.end field

.field private sourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_id"
    .end annotation
.end field

.field private sourceType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_type"
    .end annotation
.end field

.field private thumbnails:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thumbnails"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/Thumbnails;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private viewCountText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "view_count_text"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelInfo()Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results$ChannelInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->channelInfo:Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results$ChannelInfo;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getLengthText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->lengthText:Ljava/lang/String;

    return-object p0
.end method

.method public getPublishedTimeText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->publishedTimeText:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->sourceId:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->sourceType:Ljava/lang/Integer;

    return-object p0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/Thumbnails;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->thumbnails:Ljava/util/List;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getViewCountText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->viewCountText:Ljava/lang/String;

    return-object p0
.end method

.method public setChannelInfo(Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results$ChannelInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->channelInfo:Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results$ChannelInfo;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->description:Ljava/lang/String;

    return-void
.end method

.method public setLengthText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->lengthText:Ljava/lang/String;

    return-void
.end method

.method public setPublishedTimeText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->publishedTimeText:Ljava/lang/String;

    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->sourceId:Ljava/lang/String;

    return-void
.end method

.method public setSourceType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->sourceType:Ljava/lang/Integer;

    return-void
.end method

.method public setThumbnails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/Thumbnails;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->thumbnails:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->title:Ljava/lang/String;

    return-void
.end method

.method public setViewCountText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;->viewCountText:Ljava/lang/String;

    return-void
.end method
