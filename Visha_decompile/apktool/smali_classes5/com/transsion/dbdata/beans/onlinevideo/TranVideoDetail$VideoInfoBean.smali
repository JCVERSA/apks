.class public Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoInfoBean"
.end annotation


# instance fields
.field private actors:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actors"
    .end annotation
.end field

.field private category:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category"
    .end annotation
.end field

.field private channels:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channels"
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

.field private directors:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "directors"
    .end annotation
.end field

.field private duration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private isLive:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_live"
    .end annotation
.end field

.field private keyword:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "keyword"
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kind"
    .end annotation
.end field

.field private payType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pay_type"
    .end annotation
.end field

.field private playLet:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playLet"
    .end annotation
.end field

.field private scores:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scores"
    .end annotation
.end field

.field private serialCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serial_count"
    .end annotation
.end field

.field private serialCover:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serial_cover"
    .end annotation
.end field

.field private serialId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serial_id"
    .end annotation
.end field

.field private seriesId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "series_id"
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

.field private sourceType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_type"
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tags"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private topics:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "topics"
    .end annotation
.end field

.field private updateSerialNo:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_serial_no"
    .end annotation
.end field

.field private updateTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_at"
    .end annotation
.end field

.field private videoDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_description"
    .end annotation
.end field

.field private videoId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_id"
    .end annotation
.end field

.field private videoTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_title"
    .end annotation
.end field

.field private videoType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_type"
    .end annotation
.end field

.field private videoTypeName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_type_name"
    .end annotation
.end field

.field private year:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "year"
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
    .locals 3

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->actors:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->actors:Ljava/lang/String;

    const-string v1, ","

    const-string v2, " , "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->actors:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->actors:Ljava/lang/String;

    return-object p0
.end method

.method public getCategory()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->category:I

    return p0
.end method

.method public getChannels()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->channels:Ljava/lang/String;

    return-object p0
.end method

.method public getCoverX()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->coverX:Ljava/lang/String;

    return-object p0
.end method

.method public getCoverY()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->coverY:Ljava/lang/String;

    return-object p0
.end method

.method public getDirectors()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->directors:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->directors:Ljava/lang/String;

    const-string v1, ","

    const-string v2, " , "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->directors:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->directors:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->duration:I

    return p0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method public getKind()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public getPayType()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->payType:I

    return p0
.end method

.method public getPlayLet()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->playLet:I

    return p0
.end method

.method public getScores()F
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->scores:F

    return p0
.end method

.method public getSerialCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->serialCount:I

    return p0
.end method

.method public getSerialCover()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->serialCover:I

    return p0
.end method

.method public getSerialId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->serialId:J

    return-wide v0
.end method

.method public getSeriesId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->seriesId:J

    return-wide v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->sourceId:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->sourceName:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->sourceType:Ljava/lang/String;

    return-object p0
.end method

.method public getTags()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/Tag;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->tags:Ljava/util/List;

    return-object p0
.end method

.method public getTopics()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->topics:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateSerialNo()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->updateSerialNo:I

    return p0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->updateTime:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->videoDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->videoId:J

    return-wide v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->videoTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoType()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->videoType:I

    return p0
.end method

.method public getVideoTypeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->videoTypeName:Ljava/lang/String;

    return-object p0
.end method

.method public getYear()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->year:Ljava/lang/String;

    return-object p0
.end method

.method public hasActors()Z
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getActors()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasDirectors()Z
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getDirectors()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLive()Z
    .locals 1

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->isLive:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPortraitShortVideo()Z
    .locals 1

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->playLet:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShortVideo()Z
    .locals 2

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->playLet:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public setActors(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->actors:Ljava/lang/String;

    return-void
.end method

.method public setDirectors(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->directors:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->duration:I

    return-void
.end method

.method public setScores(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->scores:F

    return-void
.end method

.method public setSerialId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->serialId:J

    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->sourceId:Ljava/lang/String;

    return-void
.end method

.method public setSourceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->sourceName:Ljava/lang/String;

    return-void
.end method

.method public setSourceType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->sourceType:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->videoId:J

    return-void
.end method

.method public setVideoTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->videoTitle:Ljava/lang/String;

    return-void
.end method
