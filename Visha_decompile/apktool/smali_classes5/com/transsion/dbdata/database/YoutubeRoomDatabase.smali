.class public abstract Lcom/transsion/dbdata/database/YoutubeRoomDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/transsion/dbdata/beans/YoutubeData;
    }
    exportSchema = false
    version = 0x1
.end annotation


# static fields
.field public static volatile a:Lcom/transsion/dbdata/database/YoutubeRoomDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static a()Lcom/transsion/dbdata/database/YoutubeRoomDatabase;
    .locals 4

    sget-object v0, Lcom/transsion/dbdata/database/YoutubeRoomDatabase;->a:Lcom/transsion/dbdata/database/YoutubeRoomDatabase;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/dbdata/database/SniffScriptDatabase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/dbdata/database/YoutubeRoomDatabase;->a:Lcom/transsion/dbdata/database/YoutubeRoomDatabase;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/transsion/dbdata/database/YoutubeRoomDatabase;

    const-string v3, "youtube_url_info.db"

    invoke-static {v1, v2, v3}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/database/YoutubeRoomDatabase;

    sput-object v1, Lcom/transsion/dbdata/database/YoutubeRoomDatabase;->a:Lcom/transsion/dbdata/database/YoutubeRoomDatabase;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/dbdata/database/YoutubeRoomDatabase;->a:Lcom/transsion/dbdata/database/YoutubeRoomDatabase;

    return-object v0
.end method


# virtual methods
.method public abstract b()Ltuc;
.end method
