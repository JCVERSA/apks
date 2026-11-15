.class public Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;
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
    name = "VideoSeries"
.end annotation


# instance fields
.field private seasonName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "season_name"
    .end annotation
.end field

.field private seasonNo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "season_no"
    .end annotation
.end field

.field private seriesId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "series_id"
    .end annotation
.end field

.field private seriesName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "series_name"
    .end annotation
.end field

.field private videoId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSeasonName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->seasonName:Ljava/lang/String;

    return-object p0
.end method

.method public getSeasonNo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->seasonNo:Ljava/lang/String;

    return-object p0
.end method

.method public getSeriesId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->seriesId:J

    return-wide v0
.end method

.method public getSeriesName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->seriesName:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->videoId:J

    return-wide v0
.end method

.method public setSeasonNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->seasonNo:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSeries;->videoId:J

    return-void
.end method
