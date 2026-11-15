.class public final Li6a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6a;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertionAdapter;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li6a;->a:Landroidx/room/RoomDatabase;

    new-instance v0, Li6a$a;

    invoke-direct {v0, p0, p1}, Li6a$a;-><init>(Li6a;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Li6a;->b:Landroidx/room/EntityInsertionAdapter;

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public insertSubtitleSetting(Lcom/transsion/dbdata/beans/SubtitleSettingData;)V
    .locals 1

    iget-object v0, p0, Li6a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Li6a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Li6a;->b:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Li6a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Li6a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Li6a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public queryNewestSubtitleSetting()Lcom/transsion/dbdata/beans/SubtitleSettingData;
    .locals 14

    const-string v0, "SELECT * FROM SubtitleSetting WHERE time = (SELECT MAX(time) FROM SubtitleSetting)"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p0, Li6a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Li6a;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string v1, "video_id"

    invoke-static {p0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "location"

    invoke-static {p0, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "translateY"

    invoke-static {p0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "text_alignment"

    invoke-static {p0, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "text_size"

    invoke-static {p0, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "text_style"

    invoke-static {p0, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "text_color"

    invoke-static {p0, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "text_background_color"

    invoke-static {p0, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "text_background_opacity"

    invoke-static {p0, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "text_drag"

    invoke-static {p0, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "time"

    invoke-static {p0, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_0

    new-instance v2, Lcom/transsion/dbdata/beans/SubtitleSettingData;

    invoke-direct {v2}, Lcom/transsion/dbdata/beans/SubtitleSettingData;-><init>()V

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->videoId:I

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->location:I

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->translateY:I

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textAlignment:I

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textSize:I

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textStyle:I

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textColor:I

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textBackgroundColor:I

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textBackgroundOpacity:I

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textDrag:I

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->time:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v1
.end method

.method public querySubtitleByVideoId(I)Lcom/transsion/dbdata/beans/SubtitleSettingData;
    .locals 13

    const-string v0, "SELECT * FROM SubtitleSetting WHERE video_id = ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object p1, p0, Li6a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Li6a;->a:Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "video_id"

    invoke-static {p0, p1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const-string v2, "location"

    invoke-static {p0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "translateY"

    invoke-static {p0, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "text_alignment"

    invoke-static {p0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "text_size"

    invoke-static {p0, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "text_style"

    invoke-static {p0, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "text_color"

    invoke-static {p0, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "text_background_color"

    invoke-static {p0, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "text_background_opacity"

    invoke-static {p0, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "text_drag"

    invoke-static {p0, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "time"

    invoke-static {p0, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_0

    new-instance v1, Lcom/transsion/dbdata/beans/SubtitleSettingData;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/SubtitleSettingData;-><init>()V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->videoId:I

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->location:I

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->translateY:I

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textAlignment:I

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textSize:I

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textStyle:I

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textColor:I

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textBackgroundColor:I

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textBackgroundOpacity:I

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textDrag:I

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->time:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method
