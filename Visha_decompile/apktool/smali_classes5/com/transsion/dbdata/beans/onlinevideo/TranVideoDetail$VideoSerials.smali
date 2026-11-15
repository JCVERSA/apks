.class public Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;
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
    name = "VideoSerials"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials$Definitions;
    }
.end annotation


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
            "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials$Definitions;",
            ">;"
        }
    .end annotation
.end field

.field private duration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private isIntact:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_intact"
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

.field private playStartTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_start_time"
    .end annotation
.end field

.field private serialId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serial_id"
    .end annotation
.end field

.field private serialNo:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serial_no"
    .end annotation
.end field

.field private serialTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serial_title"
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

.field private updateAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_at"
    .end annotation
.end field

.field private videoId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_id"
    .end annotation
.end field

.field private videoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_link"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoverX()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->coverX:Ljava/lang/String;

    return-object p0
.end method

.method public getCoverY()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->coverY:Ljava/lang/String;

    return-object p0
.end method

.method public getDefinitions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials$Definitions;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->definitions:Ljava/util/List;

    return-object p0
.end method

.method public getDuration()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->duration:I

    return p0
.end method

.method public getIsIntact()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->isIntact:I

    return p0
.end method

.method public getPayType()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->payType:I

    return p0
.end method

.method public getPlayLet()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->playLet:I

    return p0
.end method

.method public getSerialId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->serialId:J

    return-wide v0
.end method

.method public getSerialNo()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->serialNo:I

    return p0
.end method

.method public getSerialTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->serialTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getSeriesId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->seriesId:J

    return-wide v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->sourceId:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateAt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->updateAt:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->playStartTime:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->videoId:J

    return-wide v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->videoUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->duration:I

    return-void
.end method

.method public setIsIntact(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->isIntact:I

    return-void
.end method

.method public setPayType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->payType:I

    return-void
.end method

.method public setSerialId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->serialId:J

    return-void
.end method

.method public setSerialTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->serialTitle:Ljava/lang/String;

    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->sourceId:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->videoId:J

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->videoUrl:Ljava/lang/String;

    return-void
.end method
