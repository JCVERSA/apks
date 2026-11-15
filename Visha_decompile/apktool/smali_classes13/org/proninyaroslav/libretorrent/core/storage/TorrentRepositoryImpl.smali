.class public Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl$FileDataModel;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;->a:Landroid/content/Context;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;->b:Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;->b:Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;->d()Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;

    move-result-object p0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;->getAllTorrents()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public b([B)V
    .locals 2

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "session"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/FileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V

    return-void
.end method

.method public c(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;->b:Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;->d()Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;->update(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/system/SystemFacadeHelper;->a(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    move-result-object v0

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;->a:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v2, "session"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public e(Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;->b:Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;->b()Lorg/proninyaroslav/libretorrent/core/storage/dao/FastResumeDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/dao/FastResumeDao;->add(Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;)V

    return-void
.end method

.method public f(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;->b:Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;->b()Lorg/proninyaroslav/libretorrent/core/storage/dao/FastResumeDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/dao/FastResumeDao;->getByTorrentId(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;

    move-result-object p0

    return-object p0
.end method

.method public g(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;->b:Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;->d()Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;->delete(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    return-void
.end method

.method public h(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;->b:Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;->d()Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;->add(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    return-void
.end method

.method public i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;->b:Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;->d()Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;->getTorrentById(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    move-result-object p0

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lxm9;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;->b:Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;->d()Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;->getTorrentByIdSingle(Ljava/lang/String;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public k(Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;

    new-instance v2, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;

    iget-wide v3, v1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;->id:J

    invoke-direct {v2, v3, v4, p1}, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/storage/TorrentRepositoryImpl;->b:Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/storage/AppDatabase;->d()Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;->replaceTags(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
