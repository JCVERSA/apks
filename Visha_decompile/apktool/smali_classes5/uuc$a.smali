.class public Luuc$a;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luuc;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Luuc;


# direct methods
.method public constructor <init>(Luuc;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Luuc$a;->a:Luuc;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/beans/YoutubeData;)V
    .locals 3

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getId()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getStreamType()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getStreamType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getTextualUploadDate()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    if-nez p0, :cond_3

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getTextualUploadDate()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_3
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    if-nez p0, :cond_4

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_4
    const/4 p0, 0x6

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getDuration()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getAgeLimit()I

    move-result p0

    int-to-long v0, p0

    const/4 p0, 0x7

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getDescription()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x8

    if-nez p0, :cond_5

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_5
    const/16 p0, 0x9

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getViewCount()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xa

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getLikeCount()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xb

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getDislikeCount()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getUploaderName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xc

    if-nez p0, :cond_6

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getUploaderName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_6
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getUploaderUrl()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xd

    if-nez p0, :cond_7

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getUploaderUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_7
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getUploaderAvatarUrl()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xe

    if-nez p0, :cond_8

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_8

    :cond_8
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getUploaderAvatarUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_8
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->isUploaderVerified()Z

    move-result p0

    const/16 v0, 0xf

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0x10

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getUploaderSubscriberCount()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getSubChannelName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x11

    if-nez p0, :cond_9

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_9

    :cond_9
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getSubChannelName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_9
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getSubChannelUrl()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x12

    if-nez p0, :cond_a

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_a

    :cond_a
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getSubChannelUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_a
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getSubChannelAvatarUrl()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x13

    if-nez p0, :cond_b

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_b

    :cond_b
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getSubChannelAvatarUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_b
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getVideoStream()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x14

    if-nez p0, :cond_c

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_c

    :cond_c
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getVideoStream()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_c
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getWidth()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x15

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getHeight()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x16

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getDashMpdUrl()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x17

    if-nez p0, :cond_d

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_d

    :cond_d
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getDashMpdUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_d
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getHlsUrl()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x18

    if-nez p0, :cond_e

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_e

    :cond_e
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getHlsUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_e
    const/16 p0, 0x19

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getStartPosition()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getHost()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1a

    if-nez p0, :cond_f

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_f

    :cond_f
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_f
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getCategory()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1b

    if-nez p0, :cond_10

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_10

    :cond_10
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getCategory()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_10
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getLicence()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1c

    if-nez p0, :cond_11

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_11

    :cond_11
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getLicence()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_11
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getSupportInfo()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1d

    if-nez p0, :cond_12

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_12

    :cond_12
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getSupportInfo()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_12
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1e

    if-nez p0, :cond_13

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_13

    :cond_13
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_13
    const/16 p0, 0x1f

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getDateModified()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getOriginUrl()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x20

    if-nez p0, :cond_14

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_14

    :cond_14
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/YoutubeData;->getOriginUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_14
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/YoutubeData;

    invoke-virtual {p0, p1, p2}, Luuc$a;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/beans/YoutubeData;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `youtube_video` (`id`,`stream_type`,`name`,`textual_upload_date`,`thumbnail_url`,`duration`,`age_limit`,`description`,`view_count`,`like_count`,`dislike_count`,`uploader_name`,`uploader_url`,`uploader_avatar_url`,`uploader_verified`,`uploader_subscriber_count`,`sub_channel_name`,`sub_channel_url`,`sub_channel_avatar`,`video_stream`,`width`,`height`,`dash_mpd_url`,`hls_url`,`start_position`,`host`,`category`,`licence`,`support_info`,`language`,`date_modified`,`origin_url`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0
.end method
