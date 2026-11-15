.class public Lcom/transsion/dbdata/database/OnlineVideoDatabase$e;
.super Landroidx/room/migration/Migration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/database/OnlineVideoDatabase;
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

    const-string p0, "ALTER TABLE online_history ADD COLUMN record_id INTEGER NOT NULL DEFAULT 0"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE online_history ADD COLUMN user_id INTEGER  NOT NULL  DEFAULT 0"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE online_history ADD COLUMN video_serial_name TEXT"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `online_user_history` (`serialId` INTEGER NOT NULL, `source_id` TEXT, `video_id` INTEGER NOT NULL, `video_name` TEXT, `series_id` INTEGER NOT NULL, `video_description` TEXT, `last_play_postion` INTEGER NOT NULL, `duration` INTEGER NOT NULL, `video_cover` TEXT, `last_watch_time` INTEGER NOT NULL, `last_frame_img` BLOB, `watch_progress` REAL NOT NULL, `update_progress` TEXT, `record_id` INTEGER NOT NULL, `user_id` INTEGER NOT NULL, `video_serial_name` TEXT, `is_uploaded` INTEGER NOT NULL,  PRIMARY KEY(`serialId`))"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
