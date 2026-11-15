.class public Ldrb;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x5

    const-string v2, "video_download_info.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS video_download_info"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE video_download_info(_id INTEGER PRIMARY KEY AUTOINCREMENT, video_url TEXT, mime_type TEXT, download_time BIGINT, percent REAL, task_state TEXT, video_type TINYINT, cached_length BIGINT, total_length BIGINT, cached_ts INTEGER, total_ts INTEGER , completed TINYINT, file_name TEXT Default 0, file_path TEXT, cover_url TEXT, cover_path TEXT,video_title TEXT,final_name TEXT,sniff_id TEXT,group_name TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "ALTER TABLE video_download_info ADD COLUMN cover_url TEXT"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE video_download_info ADD COLUMN cover_path TEXT"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "ALTER TABLE video_download_info ADD COLUMN video_title TEXT"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "ALTER TABLE video_download_info ADD COLUMN group_name TEXT"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final g(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "ALTER TABLE video_download_info ADD COLUMN sniff_id TEXT"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-virtual {p0, p1}, Ldrb;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    invoke-virtual {p0, p1}, Ldrb;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    invoke-virtual {p0, p1}, Ldrb;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    const/4 p3, 0x3

    if-ne p2, p3, :cond_2

    invoke-virtual {p0, p1}, Ldrb;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    const/4 p3, 0x4

    if-ne p2, p3, :cond_3

    invoke-virtual {p0, p1}, Ldrb;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    return-void
.end method
