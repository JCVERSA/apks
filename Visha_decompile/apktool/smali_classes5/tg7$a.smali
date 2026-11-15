.class public Ltg7$a;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltg7;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ltg7;


# direct methods
.method public constructor <init>(Ltg7;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Ltg7$a;->a:Ltg7;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;)V
    .locals 2

    iget p0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->isUploaded:I

    int-to-long v0, p0

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p0, 0x2

    iget-wide v0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serialId:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceId:Ljava/lang/String;

    const/4 v0, 0x3

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p0, 0x4

    iget-wide v0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    const/4 v0, 0x5

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 p0, 0x6

    iget-wide v0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->seriesId:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->description:Ljava/lang/String;

    const/4 v0, 0x7

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    const/16 p0, 0x8

    iget-wide v0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x9

    iget-wide v0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    const/16 v0, 0xa

    if-nez p0, :cond_3

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_3
    const/16 p0, 0xb

    iget-wide v0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoFrame:[B

    const/16 v0, 0xc

    if-nez p0, :cond_4

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    :goto_4
    iget p0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->watchProgress:F

    float-to-double v0, p0

    const/16 p0, 0xd

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    iget-object p0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->updateProgress:Ljava/lang/String;

    const/16 v0, 0xe

    if-nez p0, :cond_5

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_5
    const/16 p0, 0xf

    iget-wide v0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recordId:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x10

    iget-wide v0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->userId:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoSerialName:Ljava/lang/String;

    const/16 v0, 0x11

    if-nez p0, :cond_6

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    :cond_6
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_6
    iget-object p0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoUrl:Ljava/lang/String;

    const/16 v0, 0x12

    if-nez p0, :cond_7

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    :cond_7
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_7
    iget-object p0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->sourceType:Ljava/lang/String;

    const/16 v0, 0x13

    if-nez p0, :cond_8

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_8

    :cond_8
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_8
    iget p0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->payType:I

    int-to-long v0, p0

    const/16 p0, 0x14

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isIntact:I

    int-to-long v0, p0

    const/16 p0, 0x15

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget p0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->mIsYoutube:I

    int-to-long v0, p0

    const/16 p0, 0x16

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelName:Ljava/lang/String;

    const/16 v0, 0x17

    if-nez p0, :cond_9

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_9

    :cond_9
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_9
    iget-object p0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->channelCover:Ljava/lang/String;

    const/16 v0, 0x18

    if-nez p0, :cond_a

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_a

    :cond_a
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_a
    iget-object p0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoBeanJson:Ljava/lang/String;

    const/16 v0, 0x19

    if-nez p0, :cond_b

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_b

    :cond_b
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_b
    iget p0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->playLet:I

    int-to-long v0, p0

    const/16 p0, 0x1a

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    invoke-virtual {p0, p1, p2}, Ltg7$a;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `online_user_history` (`is_uploaded`,`serialId`,`source_id`,`video_id`,`video_name`,`series_id`,`video_description`,`last_play_postion`,`duration`,`video_cover`,`last_watch_time`,`last_frame_img`,`watch_progress`,`update_progress`,`record_id`,`user_id`,`video_serial_name`,`video_link`,`source_type`,`pay_type`,`is_intact`,`is_youtube`,`channel_name`,`channel_cover`,`video_bean_json`,`play_let`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0
.end method
