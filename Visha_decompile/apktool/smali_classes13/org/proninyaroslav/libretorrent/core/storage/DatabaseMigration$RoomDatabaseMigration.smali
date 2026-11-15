.class Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration;
.super Landroidx/room/migration/Migration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoomDatabaseMigration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration$OldDataModel;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;[B)V
    .locals 0

    const-string p0, "INSERT INTO `FastResume` (`torrentId`, `data`) VALUES(?, ?) "

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration;->g()V

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration;->d(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public final c(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration;->a:Landroid/content/Context;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/system/SystemFacadeHelper;->a(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    move-result-object p0

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->j()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "LibreTorrent_backup"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, v0}, Lorg/apache/commons/io/FileUtils;->copyFileToDirectory(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public d(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 6

    const-string v0, "torrent"

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration;->f(Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/File;

    const-string v5, "fastresume"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration;->c(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_2
    :try_start_3
    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v4

    invoke-virtual {p0, p1, v2, v4}, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration;->a(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_1
    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration;->c(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :goto_2
    :try_start_5
    invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    :try_start_6
    throw p0

    :cond_3
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    return-void

    :goto_3
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    throw p0
.end method

.method public final e(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/system/SystemFacadeHelper;->a(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    move-result-object v0

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration;->a:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final f(Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "SELECT `id` from `Torrent`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0
.end method

.method public final g()V
    .locals 2

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "session"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/system/SystemFacadeHelper;->a(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->k()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS `Torrent` (`id` TEXT NOT NULL, `name` TEXT NOT NULL, `downloadPath` TEXT NOT NULL, `dateAdded` INTEGER NOT NULL, `error` TEXT, `manuallyPaused` INTEGER NOT NULL, `magnet` TEXT, `downloadingMetadata` INTEGER NOT NULL, PRIMARY KEY(`id`))"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `FastResume` (`torrentId` TEXT NOT NULL, `data` BLOB NOT NULL, PRIMARY KEY(`torrentId`), FOREIGN KEY(`torrentId`) REFERENCES `Torrent`(`id`) ON UPDATE NO ACTION ON DELETE CASCADE )"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `FeedChannel` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `name` TEXT, `lastUpdate` INTEGER NOT NULL, `autoDownload` INTEGER NOT NULL, `filter` TEXT, `isRegexFilter` INTEGER NOT NULL, `fetchError` TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `FeedItem` (`id` TEXT NOT NULL, `title` TEXT NOT NULL, `feedId` INTEGER NOT NULL, `downloadUrl` TEXT, `articleUrl` TEXT, `pubDate` INTEGER NOT NULL, `fetchDate` INTEGER NOT NULL, `read` INTEGER NOT NULL, PRIMARY KEY(`id`), FOREIGN KEY(`feedId`) REFERENCES `FeedChannel`(`id`) ON UPDATE NO ACTION ON DELETE CASCADE )"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX `index_FeedItem_feedId` ON `FeedItem` (`feedId`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX `index_FastResume_torrentId` ON `FastResume` (`torrentId`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'9a928af8203fc8a72546bb3719135e08\')"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE torrents RENAME TO torrents_old;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO `Torrent` (`id`, `name`, `downloadPath`, `manuallyPaused`, `downloadingMetadata`, `magnet`, `dateAdded`, `error`) SELECT torrent_id, name, \'file://\' || path_to_download, 0, downloading_metadata, CASE WHEN downloading_metadata THEN path_to_torrent ELSE NULL END path_to_torrent, datetime, error FROM torrents_old;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE torrents_old;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE feeds RENAME TO feeds_old;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO `FeedChannel` (`url`, `name`, `lastUpdate`, `autoDownload`, `filter`, `isRegexFilter`, `fetchError`) SELECT url, name, last_update, auto_download, filter, is_regex_filter, fetch_error FROM feeds_old;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE feeds_old;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE feed_items;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    :try_start_1
    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration$RoomDatabaseMigration;->b(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    throw p0
.end method
