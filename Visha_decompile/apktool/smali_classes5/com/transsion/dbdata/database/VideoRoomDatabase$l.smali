.class public Lcom/transsion/dbdata/database/VideoRoomDatabase$l;
.super Landroidx/room/migration/Migration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/database/VideoRoomDatabase;
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
    .locals 0

    const-string p0, "CREATE TABLE temp_SubtitleRecord (id INTEGER NOT NULL,_id INTEGER NOT NULL DEFAULT 0,subtitle_path TEXT, sub_id TEXT, sub_track INTEGER NOT NULL DEFAULT 0, sub_track_delay_time REAL NOT NULL DEFAULT 0, sub_track_time INTEGER NOT NULL DEFAULT 0, PRIMARY KEY(id))"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "INSERT INTO temp_SubtitleRecord (id,_id,subtitle_path) SELECT id,_id,subtitle_path FROM SubtitleRecord"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE SubtitleRecord"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE temp_SubtitleRecord RENAME TO SubtitleRecord"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS SubtitleSetting ( video_id INTEGER PRIMARY KEY NOT NULL, text_alignment INTEGER NOT NULL DEFAULT 0, location INTEGER NOT NULL DEFAULT 2, translateY INTEGER NOT NULL DEFAULT 0,text_size INTEGER NOT NULL DEFAULT 1, text_style INTEGER NOT NULL DEFAULT 1, text_color INTEGER NOT NULL DEFAULT 0, text_background_color INTEGER NOT NULL DEFAULT 1, text_background_opacity INTEGER NOT NULL DEFAULT 30, text_drag INTEGER NOT NULL DEFAULT 0)"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS SubtitleHistory ( sub_id TEXT PRIMARY KEY NOT NULL, sub_name TEXT , sub_path TEXT , sub_language TEXT , sub_language_id TEXT , sub_size INTEGER NOT NULL DEFAULT 0, state INTEGER NOT NULL DEFAULT 2)"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
