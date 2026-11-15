.class public Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile c:Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider;


# instance fields
.field public a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

.field public b:Lorg/proninyaroslav/libretorrent/core/storage/TagRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Lorg/proninyaroslav/libretorrent/core/storage/TagRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider;->b:Lorg/proninyaroslav/libretorrent/core/storage/TagRepository;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider;
    .locals 3

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider;->c:Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider;

    if-nez v0, :cond_1

    const-class v0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider;->c:Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider;

    if-nez v1, :cond_0

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->T(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    move-result-object v2

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/RepositoryHelper;->b(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/storage/TagRepository;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider;-><init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Lorg/proninyaroslav/libretorrent/core/storage/TagRepository;)V

    sput-object v1, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider;->c:Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider;

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
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider;->c:Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider;

    return-object p0
.end method
