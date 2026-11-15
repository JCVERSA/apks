.class public abstract Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method

.method public abstract addTag(Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;)V
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method

.method public abstract addTags(Ljava/util/List;)V
    .annotation build Landroidx/room/Insert;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract delete(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract deleteTag(Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract deleteTagsByTorrentId(Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM TorrentTagInfo WHERE torrentId = :torrentId"
    .end annotation
.end method

.method public abstract getAllTorrents()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM Torrent"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTorrentById(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM Torrent WHERE id = :id"
    .end annotation
.end method

.method public abstract getTorrentByIdSingle(Ljava/lang/String;)Lxm9;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM Torrent WHERE id = :id"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lxm9;"
        }
    .end annotation
.end method

.method public abstract observeTorrentById(Ljava/lang/String;)Lr14;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM Torrent WHERE id = :id"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lr14;"
        }
    .end annotation
.end method

.method public replaceTags(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;->deleteTagsByTorrentId(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/proninyaroslav/libretorrent/core/storage/dao/TorrentDao;->addTags(Ljava/util/List;)V

    return-void
.end method

.method public abstract update(Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
