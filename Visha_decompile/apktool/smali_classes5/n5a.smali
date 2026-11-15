.class public final Ln5a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm5a;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertionAdapter;

.field public final c:Landroidx/room/EntityDeletionOrUpdateAdapter;

.field public final d:Landroidx/room/SharedSQLiteStatement;

.field public final e:Landroidx/room/SharedSQLiteStatement;

.field public final f:Landroidx/room/SharedSQLiteStatement;

.field public final g:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    new-instance v0, Ln5a$a;

    invoke-direct {v0, p0, p1}, Ln5a$a;-><init>(Ln5a;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ln5a;->b:Landroidx/room/EntityInsertionAdapter;

    new-instance v0, Ln5a$b;

    invoke-direct {v0, p0, p1}, Ln5a$b;-><init>(Ln5a;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ln5a;->c:Landroidx/room/EntityDeletionOrUpdateAdapter;

    new-instance v0, Ln5a$c;

    invoke-direct {v0, p0, p1}, Ln5a$c;-><init>(Ln5a;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ln5a;->d:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Ln5a$d;

    invoke-direct {v0, p0, p1}, Ln5a$d;-><init>(Ln5a;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ln5a;->e:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Ln5a$e;

    invoke-direct {v0, p0, p1}, Ln5a$e;-><init>(Ln5a;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ln5a;->f:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Ln5a$f;

    invoke-direct {v0, p0, p1}, Ln5a$f;-><init>(Ln5a;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Ln5a;->g:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteSubtitleRecordByMediaId(I)I
    .locals 4

    iget-object v0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Ln5a;->d:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :try_start_0
    iget-object p1, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    iget-object v1, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Ln5a;->d:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object v1, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p0, p0, Ln5a;->d:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public deleteSubtitleRecordByMediaIdAndPath(ILjava/lang/String;)I
    .locals 4

    iget-object v0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Ln5a;->e:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    if-nez p2, :cond_0

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    iget-object p2, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p2, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Ln5a;->e:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object p0, p0, Ln5a;->e:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public deleteSubtitleRecordByPath(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Ln5a;->f:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    iget-object v1, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Ln5a;->f:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object v1, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object p0, p0, Ln5a;->f:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public deleteSubtitleRecordByTrackAndId(II)I
    .locals 4

    iget-object v0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Ln5a;->g:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    int-to-long v1, p2

    invoke-interface {v0, p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :try_start_0
    iget-object p1, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    iget-object p2, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p2, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Ln5a;->g:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object p0, p0, Ln5a;->g:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public getAllDataByMediaId(I)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM SubtitleRecord WHERE _id =? ORDER BY id ASC "

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    move/from16 v3, p1

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v2, v0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Ln5a;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "_id"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "sub_id"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "subtitle_path"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "sub_track"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sub_track_delay_time"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "sub_track_time"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "sub_type"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "sub_format"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "sub_inner_id"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "sub_inner_name"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "sub_local_lang_to"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/media/SubtitleRecord;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->id:I

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->_id:I

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_id:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_id:Ljava/lang/String;

    :goto_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    :goto_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track:I

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_delay_time:F

    move/from16 p1, v0

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_time:J

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_type:I

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_format:I

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_id:I

    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    :goto_3
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;

    :goto_4
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, p1

    move-object/from16 v1, v16

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_5

    :cond_4
    move-object/from16 v16, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v15

    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getAllDataByMediaIdAndTrack(II)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM SubtitleRecord WHERE _id =? AND sub_track =? ORDER BY sub_track_time DESC"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v3, 0x1

    move/from16 v4, p1

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    move/from16 v3, p2

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v2, v0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Ln5a;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "_id"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "sub_id"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "subtitle_path"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "sub_track"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sub_track_delay_time"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "sub_track_time"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "sub_type"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "sub_format"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "sub_inner_id"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "sub_inner_name"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "sub_local_lang_to"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/media/SubtitleRecord;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->id:I

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->_id:I

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_id:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_id:Ljava/lang/String;

    :goto_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    :goto_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track:I

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_delay_time:F

    move/from16 p1, v0

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_time:J

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_type:I

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_format:I

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_id:I

    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    :goto_3
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;

    :goto_4
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, p1

    move-object/from16 v1, v16

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_5

    :cond_4
    move-object/from16 v16, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v15

    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getAllDataByMediaIdAndTrackByDesc(II)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM SubtitleRecord WHERE _id =? AND sub_track =? ORDER BY sub_track_time DESC"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v3, 0x1

    move/from16 v4, p1

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    move/from16 v3, p2

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v2, v0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Ln5a;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "_id"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "sub_id"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "subtitle_path"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "sub_track"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sub_track_delay_time"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "sub_track_time"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "sub_type"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "sub_format"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "sub_inner_id"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "sub_inner_name"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "sub_local_lang_to"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/media/SubtitleRecord;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->id:I

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->_id:I

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_id:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_id:Ljava/lang/String;

    :goto_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    :goto_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track:I

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_delay_time:F

    move/from16 p1, v0

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_time:J

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_type:I

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_format:I

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_id:I

    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    :goto_3
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;

    :goto_4
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, p1

    move-object/from16 v1, v16

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_5

    :cond_4
    move-object/from16 v16, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v15

    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getAllDataByMediaPathAndTrack(Ljava/lang/String;I)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "SELECT * FROM SubtitleRecord WHERE subtitle_path =? AND sub_track =? "

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v4, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v2, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    :goto_0
    move/from16 v1, p2

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v4, v1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_0

    :goto_1
    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v1, v0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Ln5a;->a:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v0, "id"

    invoke-static {v1, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "_id"

    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "sub_id"

    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "subtitle_path"

    invoke-static {v1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "sub_track"

    invoke-static {v1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sub_track_delay_time"

    invoke-static {v1, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "sub_track_time"

    invoke-static {v1, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "sub_type"

    invoke-static {v1, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "sub_format"

    invoke-static {v1, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "sub_inner_id"

    invoke-static {v1, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "sub_inner_name"

    invoke-static {v1, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "sub_local_lang_to"

    invoke-static {v1, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/media/SubtitleRecord;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->id:I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->_id:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_id:Ljava/lang/String;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_id:Ljava/lang/String;

    :goto_3
    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-object v2, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    goto :goto_4

    :cond_2
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    :goto_4
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track:I

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    iput v2, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_delay_time:F

    move/from16 p1, v4

    move/from16 p2, v5

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_time:J

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_type:I

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_format:I

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_id:I

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iput-object v2, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    goto :goto_5

    :cond_3
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    :goto_5
    invoke-interface {v1, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    iput-object v2, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;

    goto :goto_6

    :cond_4
    const/4 v2, 0x0

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;

    :goto_6
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v2, v16

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_7

    :cond_5
    move-object/from16 v16, v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v15

    :goto_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public getAllExternalRecordByMediaIdAndTrack(II)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM SubtitleRecord WHERE _id =? AND sub_track =? AND sub_type = 0  ORDER BY sub_track_time DESC"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v3, 0x1

    move/from16 v4, p1

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    move/from16 v3, p2

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object v2, v0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Ln5a;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v4, "_id"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "sub_id"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "subtitle_path"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "sub_track"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sub_track_delay_time"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "sub_track_time"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "sub_type"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "sub_format"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "sub_inner_id"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "sub_inner_name"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "sub_local_lang_to"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/media/SubtitleRecord;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->id:I

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->_id:I

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_id:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_id:Ljava/lang/String;

    :goto_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    :goto_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track:I

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    iput v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_delay_time:F

    move/from16 p1, v0

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_time:J

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_type:I

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_format:I

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_id:I

    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    :goto_3
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;

    :goto_4
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, p1

    move-object/from16 v1, v16

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_5

    :cond_4
    move-object/from16 v16, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v15

    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public insertSubtitleRecord(Lcom/transsion/dbdata/beans/media/SubtitleRecord;)J
    .locals 2

    .line 1
    iget-object v0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Ln5a;->b:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public insertSubtitleRecord(Ljava/util/List;)[J
    .locals 1

    .line 7
    iget-object v0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 8
    iget-object v0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 9
    :try_start_0
    iget-object v0, p0, Ln5a;->b:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnIdsArray(Ljava/util/Collection;)[J

    move-result-object p1

    .line 10
    iget-object v0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 12
    throw p1
.end method

.method public queryInnerSubtitleByMediaAndTrack(II)Lcom/transsion/dbdata/beans/media/SubtitleRecord;
    .locals 13

    const-string v0, "SELECT * FROM SubtitleRecord WHERE _id =? AND sub_track =? AND sub_type = 1"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    int-to-long v3, p1

    invoke-virtual {v0, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    int-to-long p1, p2

    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object p1, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, v0, p1, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "id"

    invoke-static {p0, p1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const-string v1, "_id"

    invoke-static {p0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "sub_id"

    invoke-static {p0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "subtitle_path"

    invoke-static {p0, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "sub_track"

    invoke-static {p0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "sub_track_delay_time"

    invoke-static {p0, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "sub_track_time"

    invoke-static {p0, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "sub_type"

    invoke-static {p0, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sub_format"

    invoke-static {p0, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "sub_inner_id"

    invoke-static {p0, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "sub_inner_name"

    invoke-static {p0, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "sub_local_lang_to"

    invoke-static {p0, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_4

    new-instance v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    invoke-direct {v12}, Lcom/transsion/dbdata/beans/media/SubtitleRecord;-><init>()V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->id:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->_id:I

    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p2, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_id:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_id:Ljava/lang/String;

    :goto_0
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p2, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    :goto_1
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track:I

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    iput p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_delay_time:F

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_time:J

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_type:I

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_format:I

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_id:I

    invoke-interface {p0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object p2, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    :goto_2
    invoke-interface {p0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object p2, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;

    goto :goto_3

    :cond_3
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    move-object p2, v12

    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object p2

    :goto_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public querySubtitleByMediaAndSid(ILjava/lang/String;)Lcom/transsion/dbdata/beans/media/SubtitleRecord;
    .locals 13

    const-string v0, "SELECT * FROM SubtitleRecord WHERE _id =? AND sub_id =?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    int-to-long v3, p1

    invoke-virtual {v0, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    if-nez p2, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, v0, p1, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "id"

    invoke-static {p0, p1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const-string v1, "_id"

    invoke-static {p0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "sub_id"

    invoke-static {p0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "subtitle_path"

    invoke-static {p0, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "sub_track"

    invoke-static {p0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "sub_track_delay_time"

    invoke-static {p0, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "sub_track_time"

    invoke-static {p0, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "sub_type"

    invoke-static {p0, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sub_format"

    invoke-static {p0, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "sub_inner_id"

    invoke-static {p0, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "sub_inner_name"

    invoke-static {p0, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "sub_local_lang_to"

    invoke-static {p0, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_5

    new-instance v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    invoke-direct {v12}, Lcom/transsion/dbdata/beans/media/SubtitleRecord;-><init>()V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->id:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->_id:I

    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p2, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_id:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_id:Ljava/lang/String;

    :goto_1
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object p2, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    :goto_2
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track:I

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    iput p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_delay_time:F

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_time:J

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_type:I

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_format:I

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_id:I

    invoke-interface {p0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object p2, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    goto :goto_3

    :cond_3
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    :goto_3
    invoke-interface {p0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iput-object p2, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;

    goto :goto_4

    :cond_4
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v12, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    move-object p2, v12

    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object p2

    :goto_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public querySubtitleByMediaAndTrackAndPath(IILjava/lang/String;)Lcom/transsion/dbdata/beans/media/SubtitleRecord;
    .locals 12

    const-string v0, "SELECT * FROM SubtitleRecord WHERE _id =? AND sub_track =? AND subtitle_path =?"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    int-to-long v3, p1

    invoke-virtual {v0, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    const/4 p1, 0x2

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    if-nez p3, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, v0, p1, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "id"

    invoke-static {p0, p1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const-string p3, "_id"

    invoke-static {p0, p3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    const-string v1, "sub_id"

    invoke-static {p0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "subtitle_path"

    invoke-static {p0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "sub_track"

    invoke-static {p0, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "sub_track_delay_time"

    invoke-static {p0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "sub_track_time"

    invoke-static {p0, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "sub_type"

    invoke-static {p0, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "sub_format"

    invoke-static {p0, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sub_inner_id"

    invoke-static {p0, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "sub_inner_name"

    invoke-static {p0, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "sub_local_lang_to"

    invoke-static {p0, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    invoke-direct {v11}, Lcom/transsion/dbdata/beans/media/SubtitleRecord;-><init>()V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->id:I

    invoke-interface {p0, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->_id:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p2, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_id:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_id:Ljava/lang/String;

    :goto_1
    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object p2, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    :goto_2
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track:I

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    iput p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_delay_time:F

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_time:J

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_type:I

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_format:I

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_id:I

    invoke-interface {p0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object p2, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    goto :goto_3

    :cond_3
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    :goto_3
    invoke-interface {p0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iput-object p2, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;

    goto :goto_4

    :cond_4
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    move-object p2, v11

    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object p2

    :goto_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public querySubtitleByMediaAndTrackAndSid(IILjava/lang/String;)Lcom/transsion/dbdata/beans/media/SubtitleRecord;
    .locals 12

    const-string v0, "SELECT * FROM SubtitleRecord WHERE _id =? AND sub_track =? AND sub_id =?"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    int-to-long v3, p1

    invoke-virtual {v0, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    const/4 p1, 0x2

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    if-nez p3, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, v0, p1, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "id"

    invoke-static {p0, p1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const-string p3, "_id"

    invoke-static {p0, p3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    const-string v1, "sub_id"

    invoke-static {p0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "subtitle_path"

    invoke-static {p0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "sub_track"

    invoke-static {p0, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "sub_track_delay_time"

    invoke-static {p0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "sub_track_time"

    invoke-static {p0, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "sub_type"

    invoke-static {p0, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "sub_format"

    invoke-static {p0, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "sub_inner_id"

    invoke-static {p0, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "sub_inner_name"

    invoke-static {p0, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "sub_local_lang_to"

    invoke-static {p0, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;

    invoke-direct {v11}, Lcom/transsion/dbdata/beans/media/SubtitleRecord;-><init>()V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->id:I

    invoke-interface {p0, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->_id:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p2, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_id:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_id:Ljava/lang/String;

    :goto_1
    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object p2, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->subtitle_path:Ljava/lang/String;

    :goto_2
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track:I

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    iput p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_delay_time:F

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_track_time:J

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_type:I

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_format:I

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_id:I

    invoke-interface {p0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object p2, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    goto :goto_3

    :cond_3
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_inner_name:Ljava/lang/String;

    :goto_3
    invoke-interface {p0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iput-object p2, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;

    goto :goto_4

    :cond_4
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v11, Lcom/transsion/dbdata/beans/media/SubtitleRecord;->sub_local_lang_to:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    move-object p2, v11

    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object p2

    :goto_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public updateSubtitleRecord(Lcom/transsion/dbdata/beans/media/SubtitleRecord;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Ln5a;->c:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 4
    iget-object p1, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public updateSubtitleRecord(Ljava/util/List;)V
    .locals 1

    .line 7
    iget-object v0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 8
    iget-object v0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 9
    :try_start_0
    iget-object v0, p0, Ln5a;->c:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    .line 10
    iget-object p1, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Ln5a;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 12
    throw p1
.end method
