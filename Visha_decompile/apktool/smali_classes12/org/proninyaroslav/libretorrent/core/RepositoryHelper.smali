.class public Lorg/proninyaroslav/libretorrent/core/RepositoryHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;

.field public static b:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;

.field public static c:Lorg/proninyaroslav/libretorrent/core/storage/TagRepository;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;
    .locals 2

    const-class v0, Lorg/proninyaroslav/libretorrent/core/RepositoryHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/proninyaroslav/libretorrent/core/RepositoryHelper;->b:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;

    if-nez v1, :cond_0

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;

    invoke-direct {v1, p0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/proninyaroslav/libretorrent/core/RepositoryHelper;->b:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/RepositoryHelper;->b:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepositoryImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/storage/TagRepository;
    .locals 2

    const-class v0, Lorg/proninyaroslav/libretorrent/core/RepositoryHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/proninyaroslav/libretorrent/core/RepositoryHelper;->c:Lorg/proninyaroslav/libretorrent/core/storage/TagRepository;

    if-nez v1, :cond_0

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/storage/TagRepositoryImpl;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;->c(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/proninyaroslav/libretorrent/core/storage/TagRepositoryImpl;-><init>(Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;)V

    sput-object v1, Lorg/proninyaroslav/libretorrent/core/RepositoryHelper;->c:Lorg/proninyaroslav/libretorrent/core/storage/TagRepository;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/RepositoryHelper;->c:Lorg/proninyaroslav/libretorrent/core/storage/TagRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;
    .locals 3

    const-class v0, Lorg/proninyaroslav/libretorrent/core/RepositoryHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/proninyaroslav/libretorrent/core/RepositoryHelper;->a:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;

    if-nez v1, :cond_0

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;->c(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;-><init>(Landroid/content/Context;Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;)V

    sput-object v1, Lorg/proninyaroslav/libretorrent/core/RepositoryHelper;->a:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/RepositoryHelper;->a:Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
