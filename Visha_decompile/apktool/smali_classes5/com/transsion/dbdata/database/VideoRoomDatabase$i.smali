.class public Lcom/transsion/dbdata/database/VideoRoomDatabase$i;
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
    .locals 1

    const-string p0, "CREATE TABLE IF NOT EXISTS SubtitleRecord (id INTEGER NOT NULL,_id INTEGER NOT NULL DEFAULT 0,subtitle_path TEXT,PRIMARY KEY(id))"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "VideoRoomDatabase"

    const-string v0, "MIGRATION_2_3"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CREATE TABLE temp_video (id INTEGER NOT NULL,_data TEXT,position INTEGER NOT NULL DEFAULT 0, duration INTEGER NOT NULL DEFAULT 0,isPlayCompleted INTEGER NOT NULL DEFAULT 0,isVirtualFolder INTEGER NOT NULL DEFAULT 0,virtualFolder_path TEXT,virtualFolder_matchName TEXT,bucket_id INTEGER NOT NULL DEFAULT 0,_id INTEGER NOT NULL DEFAULT 0,date_modified INTEGER NOT NULL DEFAULT 0,record_date_modified INTEGER NOT NULL DEFAULT 0,subtitle_index INTEGER NOT NULL DEFAULT -1,PRIMARY KEY(id))"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "INSERT INTO temp_video (id ,_data ,position,duration,isPlayCompleted,isVirtualFolder,virtualFolder_path,virtualFolder_matchName,bucket_id,_id,date_modified,record_date_modified) SELECT id ,_data ,position,duration,isPlayCompleted,isVirtualFolder,virtualFolder_path,virtualFolder_matchName,bucket_id,_id,date_modified,record_date_modified FROM VideoStates"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE VideoStates"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE temp_video RENAME TO VideoStates"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
