.class public abstract Lcom/transsion/dbdata/database/MusicVideoDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;
    }
    exportSchema = false
    version = 0x1
.end annotation


# static fields
.field public static c:Landroid/content/Context;

.field public static volatile d:Lcom/transsion/dbdata/database/MusicVideoDatabase;


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/transsion/dbdata/database/MusicVideoDatabase;
    .locals 4

    sget-object v0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->d:Lcom/transsion/dbdata/database/MusicVideoDatabase;

    if-nez v0, :cond_2

    const-class v0, Lcom/transsion/dbdata/database/SniffScriptDatabase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->d:Lcom/transsion/dbdata/database/MusicVideoDatabase;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->c:Landroid/content/Context;

    :goto_0
    const-class v2, Lcom/transsion/dbdata/database/MusicVideoDatabase;

    const-string v3, "music_video_info2.db"

    invoke-static {v1, v2, v3}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/database/MusicVideoDatabase;

    sput-object v1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->d:Lcom/transsion/dbdata/database/MusicVideoDatabase;

    :cond_1
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_2
    sget-object v0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->d:Lcom/transsion/dbdata/database/MusicVideoDatabase;

    return-object v0
.end method


# virtual methods
.method public abstract b()Lbw6;
.end method
