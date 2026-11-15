.class public interface abstract Lorg/proninyaroslav/libretorrent/core/storage/dao/TagInfoDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract delete(Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract getByName(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM TagInfo WHERE name = :name"
    .end annotation
.end method

.method public abstract getByTorrentId(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM TagInfo WHERE id IN (SELECT tagId FROM TorrentTagInfo WHERE torrentId = :torrentId)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getByTorrentIdAsync(Ljava/lang/String;)Lxm9;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM TagInfo WHERE id IN (SELECT tagId FROM TorrentTagInfo WHERE torrentId = :torrentId)"
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

.method public abstract insert(Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract observeAll()Lr14;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM TagInfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr14;"
        }
    .end annotation
.end method

.method public abstract observeByTorrentId(Ljava/lang/String;)Lr14;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM TagInfo WHERE id IN (SELECT tagId FROM TorrentTagInfo WHERE torrentId = :torrentId)"
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

.method public abstract update(Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
