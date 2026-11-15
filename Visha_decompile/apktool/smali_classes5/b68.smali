.class public interface abstract Lb68;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deleteById(J)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM playlist_item WHERE id = :playListId"
    .end annotation
.end method

.method public abstract getAllFavorites()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM playlist_item WHERE category = 2"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getByCreateTime(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM playlist_item ORDER BY create_time DESC LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getByCreateType(II)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM playlist_item WHERE create_type = :createType ORDER BY CASE WHEN category = 1 THEN 0 WHEN category = 2 THEN 1 ELSE 2 END,create_time DESC LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getByPlayListID(J)Lcom/transsion/dbdata/database/PlayListItem;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM playlist_item WHERE id = :playListId"
    .end annotation
.end method

.method public abstract getFavoritePlaylist(I)Lcom/transsion/dbdata/database/PlayListItem;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM playlist_item WHERE category = 2 AND create_type = :createType"
    .end annotation
.end method

.method public abstract getFavoritePlaylistId(I)J
    .annotation build Landroidx/room/Query;
        value = "SELECT id FROM playlist_item WHERE category = 2 AND create_type = :createType"
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
        value = "SELECT * FROM playlist_item WHERE create_type = :createType AND category != 2 LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListItem;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getPlayListById(J)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM playlist_item WHERE id = :playListId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/transsion/dbdata/database/PlayListItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayListsWithLiveData(II)Landroidx/lifecycle/LiveData;
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x7fffffffffffffffL
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM playlist_item WHERE create_type = :createType LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListItem;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getRecentPlayListId(I)J
    .annotation build Landroidx/room/Query;
        value = "SELECT id FROM playlist_item WHERE category = 1 AND create_type = :createType"
    .end annotation
.end method

.method public abstract insertMultiple(Ljava/util/List;)Ljava/util/List;
    .annotation build Landroidx/room/Insert;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListItem;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertSingle(Lcom/transsion/dbdata/database/PlayListItem;)J
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method

.method public abstract renamePlaylist(JLjava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE playlist_item SET name = :newName WHERE id = :playlistId"
    .end annotation
.end method

.method public abstract updatePlayList(Lcom/transsion/dbdata/database/PlayListItem;)I
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
