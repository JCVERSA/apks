.class public Lcom/transsion/dbdata/database/VideoRoomDatabase$c;
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

    const-string p0, "CREATE TABLE temp_SubtitleRecord (id INTEGER NOT NULL,_id INTEGER NOT NULL DEFAULT 0,subtitle_path TEXT, sub_id TEXT, sub_track INTEGER NOT NULL DEFAULT 0, sub_track_delay_time REAL NOT NULL DEFAULT 0,sub_track_time INTEGER NOT NULL DEFAULT 0, sub_type INTEGER NOT NULL DEFAULT 0, sub_format INTEGER NOT NULL DEFAULT 1,sub_inner_id INTEGER NOT NULL DEFAULT -1,sub_inner_name TEXT,sub_local_lang_to TEXT DEFAULT \'none\',PRIMARY KEY(id))"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "INSERT INTO temp_SubtitleRecord (id,_id,subtitle_path,sub_id,sub_track,sub_track_delay_time,sub_track_time,sub_type,sub_format,sub_inner_id,sub_inner_name) SELECT id,_id,subtitle_path,sub_id,sub_track,sub_track_delay_time,sub_track_time,sub_type,sub_format,sub_inner_id,sub_inner_name FROM SubtitleRecord"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE SubtitleRecord"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE temp_SubtitleRecord RENAME TO SubtitleRecord"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
