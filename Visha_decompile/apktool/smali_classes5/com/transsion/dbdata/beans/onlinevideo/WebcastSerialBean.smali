.class public Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;
.super Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;
.source "SourceFile"


# instance fields
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

.field private definitions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "definitions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field private duration:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private isIntact:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_intact"
    .end annotation
.end field

.field private payType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pay_type"
    .end annotation
.end field

.field private playStartTime:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_start_time"
    .end annotation
.end field

.field private serialId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serial_id"
    .end annotation
.end field

.field private serialNo:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serial_no"
    .end annotation
.end field

.field private serialTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serial_title"
    .end annotation
.end field

.field private seriesId:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "series_id"
    .end annotation
.end field

.field private sourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_id"
    .end annotation
.end field

.field private updateAt:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_at"
    .end annotation
.end field

.field private videoId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_id"
    .end annotation
.end field

.field private videoLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_link"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoverX()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->coverX:Ljava/lang/String;

    return-object p0
.end method

.method public getCoverY()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->coverY:Ljava/lang/String;

    return-object p0
.end method

.method public getDefinitions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->definitions:Ljava/util/List;

    return-object p0
.end method

.method public getDuration()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->duration:Ljava/lang/Integer;

    return-object p0
.end method

.method public getIsIntact()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->isIntact:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPayType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->payType:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPlayStartTime()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->playStartTime:Ljava/lang/Object;

    return-object p0
.end method

.method public getSerialId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->serialId:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSerialNo()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->serialNo:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSerialTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->serialTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getSeriesId()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->seriesId:Ljava/lang/Object;

    return-object p0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->sourceId:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateAt()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->updateAt:Ljava/lang/Object;

    return-object p0
.end method

.method public getVideoId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->videoId:J

    return-wide v0
.end method

.method public getVideoLink()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->videoLink:Ljava/lang/String;

    return-object p0
.end method

.method public isVip()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->payType:Ljava/lang/Integer;

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

.method public setCoverX(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->coverX:Ljava/lang/String;

    return-void
.end method

.method public setCoverY(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->coverY:Ljava/lang/String;

    return-void
.end method

.method public setDefinitions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->definitions:Ljava/util/List;

    return-void
.end method

.method public setDuration(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->duration:Ljava/lang/Integer;

    return-void
.end method

.method public setIsIntact(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->isIntact:Ljava/lang/Integer;

    return-void
.end method

.method public setPayType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->payType:Ljava/lang/Integer;

    return-void
.end method

.method public setPlayStartTime(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->playStartTime:Ljava/lang/Object;

    return-void
.end method

.method public setSerialId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->serialId:Ljava/lang/Integer;

    return-void
.end method

.method public setSerialNo(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->serialNo:Ljava/lang/Integer;

    return-void
.end method

.method public setSerialTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->serialTitle:Ljava/lang/String;

    return-void
.end method

.method public setSeriesId(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->seriesId:Ljava/lang/Object;

    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->sourceId:Ljava/lang/String;

    return-void
.end method

.method public setUpdateAt(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->updateAt:Ljava/lang/Object;

    return-void
.end method

.method public setVideoId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->videoId:J

    return-void
.end method

.method public setVideoLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->videoLink:Ljava/lang/String;

    return-void
.end method
