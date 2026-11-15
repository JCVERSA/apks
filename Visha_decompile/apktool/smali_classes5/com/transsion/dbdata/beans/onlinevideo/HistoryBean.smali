.class public Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;
.super Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "online_history"
.end annotation


# static fields
.field public static final TYPE_INTACT:I = 0x1


# instance fields
.field public channelCover:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "channel_cover"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channel_cover"
    .end annotation
.end field

.field public channelName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "channel_name"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channel_name"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "video_description"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
        serialize = false
    .end annotation
.end field

.field public duration:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "duration"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field public finish_status:Ljava/lang/Integer;
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field public isIntact:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "is_intact"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_intact"
    .end annotation
.end field

.field public isTimeItem:Z
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
        serialize = false
    .end annotation
.end field

.field public lastPos:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "last_play_postion"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_play_time"
    .end annotation
.end field

.field public lastWatchTime:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "last_watch_time"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_play_time"
    .end annotation
.end field

.field public mIsYoutube:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "is_youtube"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_youtube"
    .end annotation
.end field

.field public payType:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "pay_type"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pay_type"
    .end annotation
.end field

.field public playLet:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "play_let"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playLet"
    .end annotation
.end field

.field public recommends:[Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
        serialize = false
    .end annotation
.end field

.field public recordId:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "record_id"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
        serialize = false
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public serialId:J
    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = false
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_serial_id"
    .end annotation
.end field

.field public serial_count:I
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field public seriesId:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "series_id"
    .end annotation
.end field

.field public sourceId:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "source_id"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_serial_source_id"
    .end annotation
.end field

.field public sourceType:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "1"
        name = "source_type"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_type"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
        serialize = false
    .end annotation
.end field

.field public updateProgress:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "update_progress"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
        serialize = false
    .end annotation
.end field

.field public userId:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "user_id"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field

.field public videoBeanJson:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "video_bean_json"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_bean_json"
    .end annotation
.end field

.field public videoCover:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "video_cover"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover"
    .end annotation
.end field

.field public videoFrame:[B
    .annotation build Landroidx/room/ColumnInfo;
        name = "last_frame_img"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
        serialize = false
    .end annotation
.end field

.field public videoId:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "video_id"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_id"
    .end annotation
.end field

.field public videoName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "video_name"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_name"
    .end annotation
.end field

.field public videoSerialName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "video_serial_name"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_serial_name"
    .end annotation
.end field

.field public videoUrl:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "video_link"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_link"
    .end annotation
.end field

.field public watchProgress:F
    .annotation build Landroidx/room/ColumnInfo;
        name = "watch_progress"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
        serialize = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    return-void
.end method

.method public constructor <init>(JJJLjava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation build Landroidx/room/Ignore;
    .end annotation

    move-object v0, p0

    .line 36
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    move-wide v1, p1

    .line 37
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    move-object v1, p7

    .line 38
    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    move-wide v1, p3

    .line 39
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->seriesId:J

    move-wide v1, p5

    .line 40
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    move-object v1, p8

    .line 41
    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    move-wide v1, p9

    .line 42
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    move-wide v1, p11

    .line 43
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    move-wide/from16 v1, p13

    .line 44
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    move-object/from16 v1, p15

    .line 45
    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    move-wide/from16 v1, p17

    .line 46
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    move-object/from16 v1, p16

    .line 47
    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    move/from16 v1, p19

    .line 48
    iput v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->payType:I

    move/from16 v1, p20

    .line 49
    iput v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isIntact:I

    move-object/from16 v1, p21

    .line 50
    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 51
    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    move/from16 v1, p23

    .line 52
    iput v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->playLet:I

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJJ)V
    .locals 3
    .annotation build Landroidx/room/Ignore;
    .end annotation

    move-object v0, p0

    .line 6
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    move-wide v1, p1

    .line 7
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    move-wide v1, p3

    .line 8
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    move-object v1, p5

    .line 9
    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    move-object v1, p6

    .line 10
    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    move-object v1, p7

    .line 11
    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    move-object v1, p8

    .line 12
    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    move v1, p9

    .line 13
    iput v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->mIsYoutube:I

    move-object v1, p10

    .line 14
    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    move-object v1, p11

    .line 15
    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    move-wide v1, p12

    .line 16
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    move-wide/from16 v1, p14

    .line 17
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    move-wide/from16 v1, p16

    .line 18
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    move-wide/from16 v1, p18

    .line 19
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/room/Ignore;
    .end annotation

    move-object v0, p0

    .line 20
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    move-wide v1, p1

    .line 21
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    move-wide v1, p3

    .line 22
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    move-object v1, p5

    .line 23
    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    move-object v1, p6

    .line 24
    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    move-object v1, p7

    .line 25
    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    move-object v1, p8

    .line 26
    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    move v1, p9

    .line 27
    iput v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->mIsYoutube:I

    move-object v1, p10

    .line 28
    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    move-object v1, p11

    .line 29
    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    move-wide v1, p12

    .line 30
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    move-wide/from16 v1, p14

    .line 31
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    move-wide/from16 v1, p16

    .line 32
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    move-wide/from16 v1, p18

    .line 33
    iput-wide v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    move-object/from16 v1, p20

    .line 34
    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 35
    iput-object v1, v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;)V
    .locals 0
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recommends:[Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;

    return-void
.end method


# virtual methods
.method public getChannelCover()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    return-object p0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    return-object p0
.end method

.method public getRecommends()[Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recommends:[Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;

    return-object p0
.end method

.method public getmIsYoutube()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->mIsYoutube:I

    return p0
.end method

.method public isShortVideo()Z
    .locals 2

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->playLet:I

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

.method public setRecommends([Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recommends:[Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HistoryBean{serialId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sourceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", videoName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", seriesId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->seriesId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lastPos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", videoCover=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lastWatchTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", videoFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", watchProgress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->watchProgress:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", updateProgress=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", recordId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recordId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", videoSerialName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sourceType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", payType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->payType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isIntact="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isIntact:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsYoutube="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->mIsYoutube:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", channelName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", channelCover=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isTimeItem="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isTimeItem:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", recommends="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recommends:[Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->title:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public videoIsTact()Z
    .locals 1

    iget p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isIntact:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
