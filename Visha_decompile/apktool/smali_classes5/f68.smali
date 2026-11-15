.class public interface abstract Lf68;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf68$a;
    }
.end annotation


# virtual methods
.method public abstract a(I)Landroidx/lifecycle/LiveData;
.end method

.method public abstract b(JII)Landroidx/lifecycle/LiveData;
.end method

.method public abstract c(I)Landroidx/lifecycle/LiveData;
.end method

.method public abstract deleteByMediaId(I)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM media_playlist_item WHERE media_id =:mediaId"
    .end annotation
.end method

.method public abstract deleteByMediaIds(Ljava/util/List;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM media_playlist_item WHERE media_id IN (:mediaIds)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract deleteByPlayListId(II)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM media_playlist_item WHERE playlist_id =:playlistId AND media_id =:mediaId"
    .end annotation
.end method

.method public abstract deleteByPlayListIds(ILjava/util/List;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM media_playlist_item WHERE playlist_id =:playlistId AND media_id IN (:mediaIds)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract deleteMultiple(Ljava/util/List;)I
    .annotation build Landroidx/room/Delete;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMediaItem;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract deleteSingle(Lcom/transsion/dbdata/database/PlayListMediaItem;)I
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract getByIds(II)Lcom/transsion/dbdata/database/PlayListMediaItem;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playlist_item WHERE playlist_id = :playListId AND media_id = :mediaId"
    .end annotation
.end method

.method public abstract getByMediaId(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playlist_item WHERE media_id = :mediaId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMediaItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getByMediaIds(Ljava/util/List;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playlist_item WHERE media_id IN (:mediaIds)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMediaItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getByPlayListId(J)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT media_id FROM media_playlist_item WHERE playlist_id = :playListId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getByPlaylistId(II)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playlist_item WHERE playlist_id = :playlistId LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMediaItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getByPlaylistIds(Ljava/util/List;I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playlist_item WHERE playlist_id IN (:playlistIds) LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMediaItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFavoriteAudioMediaPathsGroup()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "\n        SELECT \n            m.playlist_id, \n            m.media_id AS id, \n            m._data AS mediaPath \n        FROM \n            media_playlist_item m \n        INNER JOIN \n            playlist_item p \n        ON \n            m.playlist_id = p.id \n        WHERE \n            p.category = 2 AND p.create_type = 1\n        "
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lhp3;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFavoriteVideoMediaPathsGroup()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "\n        SELECT \n            m.playlist_id, \n            m.media_id AS id, \n            m._data AS mediaPath \n        FROM \n            media_playlist_item m \n        INNER JOIN \n            playlist_item p \n        ON \n            m.playlist_id = p.id \n        WHERE \n            p.category = 2 AND p.create_type = 2\n        "
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lhp3;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNonFavoritePlayListsWithLiveData(II)Landroidx/lifecycle/LiveData;
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x7fffffffffffffffL
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT p.id, p.name, COUNT(m.id) as count,p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON p.id = m.playlist_id WHERE p.create_type = :createType AND p.category != 2 GROUP BY p.id ORDER BY CASE p.category WHEN 1 THEN 0 ELSE 2 END, p.create_time DESC LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListFolderItem;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getPlayListElementByCombine(JLjava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playlist_item WHERE playlist_id = :playListId AND _data = :data "
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMediaItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayListFolderSetConditional(IZZ)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT p.id, p.name, COUNT(m.id) as count, p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON p.id = m.playlist_id WHERE p.create_type = :createType AND (:includeRecent = 1 OR p.category != 1) AND (:includeFavorite = 1 OR p.category != 2) GROUP BY p.id, p.name ORDER BY CASE WHEN p.category = 1 THEN 0 WHEN p.category = 2 THEN 1 ELSE 2 END, p.create_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListFolderItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayListFolderSetConditionalWithLiveData(IZZ)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT p.id, p.name, COUNT(m.id) as count, p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON p.id = m.playlist_id WHERE p.create_type = :createType AND (:includeRecent = 1 OR p.category != 1) AND (:includeFavorite = 1 OR p.category != 2) GROUP BY p.id, p.name ORDER BY CASE WHEN p.category = 1 THEN 0 WHEN p.category = 2 THEN 1 ELSE 2 END, p.create_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListFolderItem;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getPlayListFolderSetWithLiveData(I)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT p.id, p.name, COUNT(m.id) as count, p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON p.id = m.playlist_id WHERE p.create_type = :createType GROUP BY p.id, p.name ORDER BY CASE WHEN p.category = 1 THEN 0 WHEN p.category = 2 THEN 1 ELSE 2 END, p.create_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListFolderItem;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getPlayListFolderSetWithLiveData(II)Landroidx/lifecycle/LiveData;
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x7fffffffffffffffL
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT p.id, p.name, COUNT(m.id) as count, p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON m.playlist_id = p.id WHERE p.create_type = :createType GROUP BY p.id ORDER BY (CASE p.category WHEN 1 THEN 0 WHEN 2 THEN 1 ELSE 2 END), p.create_time DESC LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListFolderItem;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getPlayListFolderWithLiveData(IJ)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT p.id, p.name, COUNT(m.id) as count, p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON p.id = m.playlist_id WHERE p.id = :playListId AND p.create_type = :createType GROUP BY p.id"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/transsion/dbdata/database/PlayListFolderItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayListMediaItemsLiveData(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;I)Landroidx/lifecycle/LiveData;
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x7fffffffffffffffL
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT m.* FROM media_playlist_item m INNER JOIN playlist_item p ON m.playlist_id = p.id WHERE (:createType IS NULL OR p.create_type = :createType) AND (:playListId IS NULL OR p.id = :playListId) AND (:isFavorite IS NULL OR (p.category = 2) = :isFavorite) ORDER BY m.record_time DESC LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            "I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMediaItem;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getPlayListWithCount(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT p.id, p.name, COUNT(m.id) as count, p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON p.id = m.playlist_id WHERE p.create_type = :createType GROUP BY p.id, p.name ORDER BY CASE WHEN p.category = 1 THEN 0 WHEN p.category = 2 THEN 1 ELSE 2 END, p.create_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListFolderItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertMultiple(Ljava/util/List;)Ljava/util/List;
    .annotation build Landroidx/room/Insert;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMediaItem;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertSingle(Lcom/transsion/dbdata/database/PlayListMediaItem;)J
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method

.method public abstract updateMultiple(Ljava/util/List;)I
    .annotation build Landroidx/room/Update;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMediaItem;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract updatePath(ILjava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE media_playlist_item SET media_id = :mediaId WHERE _data = :dataPath"
    .end annotation
.end method

.method public abstract updateSingle(Lcom/transsion/dbdata/database/PlayListMediaItem;)I
    .annotation build Landroidx/room/Update;
        onConflict = 0x1
    .end annotation
.end method
