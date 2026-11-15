.class Lcom/transsion/cloudcore/db/CloudTaskDatabase$1;
.super Landroidx/room/migration/Migration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/cloudcore/db/CloudTaskDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string p0, "Starting migration from version 1 to 2"

    const-string v0, "CloudTaskDatabase"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    const-string p0, "DROP TABLE IF EXISTS video_cloud_cache"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE video_cloud_cache (mId INTEGER NOT NULL, file_id TEXT NOT NULL PRIMARY KEY, file_name TEXT, size INTEGER, duration INTEGER, height INTEGER, width INTEGER, watch_status INTEGER, create_at TEXT, sharer_nickname TEXT, play_duration INTEGER, file_cover_path TEXT, preview_url TEXT, parent_file_id TEXT, is_exit_local INTEGER, cache_time INTEGER NOT NULL, is_recent_data INTEGER, data_type INTEGER DEFAULT 0, mediaLibrary_id TEXT DEFAULT \'\', cover TEXT DEFAULT \'\')"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS mi_media_library_cache (media_library_id TEXT NOT NULL PRIMARY KEY, media_library_name TEXT, media_library_collect_flag INTEGER, virtual_person_name TEXT, virtual_person_photo TEXT, media_library_status INTEGER, video_list_json TEXT, cache_time INTEGER NOT NULL)"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "Migration from version 1 to 2 completed successfully"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    return-void
.end method
