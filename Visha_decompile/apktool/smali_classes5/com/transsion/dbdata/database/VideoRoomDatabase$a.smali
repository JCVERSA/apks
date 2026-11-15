.class public Lcom/transsion/dbdata/database/VideoRoomDatabase$a;
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

    const-string p0, "CREATE TABLE IF NOT EXISTS temp_SubtitleSetting ( video_id INTEGER PRIMARY KEY NOT NULL, text_alignment INTEGER NOT NULL DEFAULT 0, location INTEGER NOT NULL DEFAULT 2, translateY INTEGER NOT NULL DEFAULT 0,text_size INTEGER NOT NULL DEFAULT 1, text_style INTEGER NOT NULL DEFAULT 1, text_color INTEGER NOT NULL DEFAULT 0, text_background_color INTEGER NOT NULL DEFAULT 1, text_background_opacity INTEGER NOT NULL DEFAULT 30, text_drag INTEGER NOT NULL DEFAULT 0, time INTEGER NOT NULL DEFAULT 0)"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "INSERT INTO temp_SubtitleSetting (video_id, text_alignment, location, translateY, text_size, text_style, text_color, text_background_color, text_background_opacity, text_drag) SELECT video_id, text_alignment, location, translateY, text_size, text_style, text_color, text_background_color, text_background_opacity, text_drag FROM SubtitleSetting"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE SubtitleSetting"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE temp_SubtitleSetting RENAME TO SubtitleSetting"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
