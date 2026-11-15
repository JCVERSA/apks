.class public Lbpb$a;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbpb;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbpb;


# direct methods
.method public constructor <init>(Lbpb;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lbpb$a;->a:Lbpb;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/beans/VideoCloudCache;)V
    .locals 4

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getId()J

    move-result-wide v0

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getFileId()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getFileId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getFileName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getSize()Ljava/lang/Long;

    move-result-object p0

    const/4 v0, 0x4

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getSize()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_2
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getDuration()Ljava/lang/Long;

    move-result-object p0

    const/4 v0, 0x5

    if-nez p0, :cond_3

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getDuration()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_3
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getHeight()Ljava/lang/Long;

    move-result-object p0

    const/4 v0, 0x6

    if-nez p0, :cond_4

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getHeight()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_4
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getWidth()Ljava/lang/Long;

    move-result-object p0

    const/4 v0, 0x7

    if-nez p0, :cond_5

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getWidth()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_5
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getWatchStatus()Ljava/lang/Integer;

    move-result-object p0

    const/16 v0, 0x8

    if-nez p0, :cond_6

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getWatchStatus()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_6
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getCreateAt()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x9

    if-nez p0, :cond_7

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getCreateAt()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_7
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getSharerNickname()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    if-nez p0, :cond_8

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_8

    :cond_8
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getSharerNickname()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_8
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getPlayDuration()Ljava/lang/Long;

    move-result-object p0

    const/16 v0, 0xb

    if-nez p0, :cond_9

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_9

    :cond_9
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getPlayDuration()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_9
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getFileCoverPath()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xc

    if-nez p0, :cond_a

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_a

    :cond_a
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getFileCoverPath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_a
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getPreviewUrl()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xd

    if-nez p0, :cond_b

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_b

    :cond_b
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getPreviewUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_b
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getParentFileId()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xe

    if-nez p0, :cond_c

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_c

    :cond_c
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getParentFileId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_c
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getIsExitLocal()Ljava/lang/Boolean;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_d

    move-object p0, v0

    goto :goto_d

    :cond_d
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getIsExitLocal()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_d
    const/16 v1, 0xf

    if-nez p0, :cond_e

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_e

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v2, p0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_e
    const/16 p0, 0x10

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getCacheTime()J

    move-result-wide v1

    invoke-interface {p1, p0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getIsRecentData()Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_f

    goto :goto_f

    :cond_f
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getIsRecentData()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_f
    const/16 p0, 0x11

    if-nez v0, :cond_10

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_10

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_10
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getDataType()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x12

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getMediaLibraryId()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x13

    if-nez p0, :cond_11

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_11

    :cond_11
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getMediaLibraryId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_11
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getCover()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x14

    if-nez p0, :cond_12

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_12

    :cond_12
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getCover()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_12
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/VideoCloudCache;

    invoke-virtual {p0, p1, p2}, Lbpb$a;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/transsion/dbdata/beans/VideoCloudCache;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `video_cloud_cache` (`mId`,`file_id`,`file_name`,`size`,`duration`,`height`,`width`,`watch_status`,`create_at`,`sharer_nickname`,`play_duration`,`file_cover_path`,`preview_url`,`parent_file_id`,`is_exit_local`,`cache_time`,`is_recent_data`,`data_type`,`mediaLibrary_id`,`cover`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0
.end method
