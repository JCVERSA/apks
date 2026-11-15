.class public abstract Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;,
        Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;,
        Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;,
        Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedItem;,
        Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;,
        Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;
    }
    exportSchema = false
    version = 0x9
.end annotation

.annotation build Landroidx/room/TypeConverters;
    value = {
        Lorg/proninyaroslav/libretorrent/core/storage/converter/UriConverter;
    }
.end annotation


# static fields
.field public static volatile a:Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;
    .locals 2

    const-class v0, Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    const-string v1, "libretorrent.db"

    invoke-static {p0, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/storage/DatabaseMigration;->b(Landroid/content/Context;)[Landroidx/room/migration/Migration;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;
    .locals 2

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;->a:Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    if-nez v0, :cond_1

    const-class v0, Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;->a:Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    if-nez v1, :cond_0

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;->a(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    move-result-object p0

    sput-object p0, Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;->a:Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;->a:Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    return-object p0
.end method


# virtual methods
.method public abstract b()Lorg/proninyaroslav/libretorrent/core/storage/dao/FastResumeDao;
.end method

.method public abstract d()Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;
.end method
