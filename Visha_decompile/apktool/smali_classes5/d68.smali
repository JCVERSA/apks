.class public interface abstract Ld68;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deleteAllAudioPlayRecord()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM media_playList WHERE playlistFlag == 1"
    .end annotation
.end method

.method public abstract deleteAllFavoriteItemRecord()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM media_playList WHERE playlistFlag == 2"
    .end annotation
.end method

.method public abstract deleteAllPlayListMedia()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM media_playList"
    .end annotation
.end method

.method public abstract deleteAudioPlayRecordById(I)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM media_playList WHERE media_id =:media_id AND playlistFlag == 1"
    .end annotation
.end method

.method public abstract deleteAudioPlayRecordByIds([I)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM media_playList WHERE media_id IN (:media_ids) AND playlistFlag == 1"
    .end annotation
.end method

.method public abstract deleteFavoriteItemById(I)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM media_playList WHERE media_id =:media_id AND playlistFlag == 2"
    .end annotation
.end method

.method public abstract deleteFavoriteItemById([I)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM media_playList WHERE media_id IN (:media_ids) AND playlistFlag == 2"
    .end annotation
.end method

.method public abstract deletePlayListMedia(II)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM media_playList WHERE playlist_id =:playlist_id AND media_id =:media_id"
    .end annotation
.end method

.method public abstract deletePlayListMedia(I[I)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM media_playList WHERE playlist_id =:playlist_id AND media_id IN (:media_ids)"
    .end annotation
.end method

.method public abstract deletePlayListMedia(Lcom/transsion/dbdata/database/PlayListMedia;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract deletePlayListMediaById(I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM media_playList WHERE id =:id"
    .end annotation
.end method

.method public abstract deletePlayListMediaByMediaId(I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM media_playList WHERE media_id =:media_id"
    .end annotation
.end method

.method public abstract deletePlayListMediaByMediaId(Ljava/util/List;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM media_playList WHERE media_id IN (:mediaIds)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deletePlayListMediaByPlayListId(I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM media_playList WHERE playlist_id =:playlist_id"
    .end annotation
.end method

.method public abstract getAllAudioViewRecord(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playList WHERE playlistFlag == 1 ORDER BY record_time DESC  LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMedia;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllFavoriteItem(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playList WHERE playlistFlag == 2 LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMedia;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPlayListMedia()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMedia;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPlayListMediaLiveData(I)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playList WHERE playlistFlag != 1 AND playlistFlag != 2  LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMedia;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAudioPlayRecordById(I)Lcom/transsion/dbdata/database/PlayListMedia;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playList WHERE media_id = :media_id AND playlistFlag == 1"
    .end annotation
.end method

.method public abstract getAudioPlayRecordList(I)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playList WHERE playlistFlag == 1 ORDER BY record_time DESC LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMedia;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAudioPlayRecordMediaIds(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT media_id FROM media_playList WHERE playlistFlag == 1 ORDER BY record_time DESC LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFavoriteItemById(I)Lcom/transsion/dbdata/database/PlayListMedia;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playList WHERE media_id = :media_id AND playlistFlag == 2"
    .end annotation
.end method

.method public abstract getFavoriteItemList(I)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playList WHERE playlistFlag == 2 LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMedia;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getFavoriteItemMediaIds(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT media_id FROM media_playList WHERE playlistFlag == 2 LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayListMediaById(II)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playList WHERE playlist_id = :playListId LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMedia;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayListMediaByIds(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playList WHERE media_id = :mediaId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMedia;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayListMediaByIds(II)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playList WHERE playlist_id = :playListId AND media_id = :mediaId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMedia;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayListMediaByIdsInList(II)Lcom/transsion/dbdata/database/PlayListMedia;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playList WHERE playlist_id = :playListId AND media_id = :mediaId"
    .end annotation
.end method

.method public abstract getPlayListMediaCountById(I)Landroid/database/Cursor;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playList WHERE playlist_id = :playListId"
    .end annotation
.end method

.method public abstract getPlayListMediaCursor()Landroid/database/Cursor;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playList"
    .end annotation
.end method

.method public abstract getPlayListMediaIdByPlayListId(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT media_id FROM media_playList WHERE playlist_id = :playListId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayedMediaList()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_playList WHERE play_count > 0"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMedia;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertPlayListMedia(Lcom/transsion/dbdata/database/PlayListMedia;)J
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method

.method public abstract insertPlayListMedia(Ljava/util/List;)[J
    .annotation build Landroidx/room/Insert;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMedia;",
            ">;)[J"
        }
    .end annotation
.end method

.method public abstract updateAudioPlayRecord(Lcom/transsion/dbdata/database/PlayListMedia;)I
    .annotation build Landroidx/room/Update;
    .end annotation
.end method

.method public abstract updatePlayListMedia(Lcom/transsion/dbdata/database/PlayListMedia;)I
    .annotation build Landroidx/room/Update;
    .end annotation
.end method

.method public abstract updatePlayListMedias(Ljava/util/List;)I
    .annotation build Landroidx/room/Update;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayListMedia;",
            ">;)I"
        }
    .end annotation
.end method
