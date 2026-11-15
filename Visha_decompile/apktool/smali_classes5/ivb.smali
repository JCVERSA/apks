.class public interface abstract Livb;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deleteAllPlayListMedia()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM video_media_playList"
    .end annotation
.end method

.method public abstract deleteFavoriteListMedia(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM video_media_playList WHERE playlistFlag = 2 AND _data =:data"
    .end annotation
.end method

.method public abstract deletePlayListMedia(II)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM video_media_playList WHERE playlist_id =:playlist_id AND media_id =:media_id"
    .end annotation
.end method

.method public abstract deletePlayListMedia(Lcom/transsion/dbdata/database/VideoPlayListMedia;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract deletePlayListMediaById(I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM video_media_playList WHERE id =:id"
    .end annotation
.end method

.method public abstract deletePlayListMediaByMediaId(I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM video_media_playList WHERE media_id =:media_id"
    .end annotation
.end method

.method public abstract deletePlayListMediaByMediaId(Ljava/util/List;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM video_media_playList WHERE media_id IN (:mediaIds)"
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
        value = "DELETE FROM video_media_playList WHERE playlist_id =:playlist_id"
    .end annotation
.end method

.method public abstract getAllPlayListMedia()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM video_media_playList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/VideoPlayListMedia;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllVideoPlayListMedia(I)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM video_media_playList LIMIT :limit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/VideoPlayListMedia;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getFavoriteItem(Ljava/lang/String;)Lcom/transsion/dbdata/database/VideoPlayListMedia;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM video_media_playList WHERE playlistFlag = 2 AND _data = :data "
    .end annotation
.end method

.method public abstract getFavoriteItemList(I)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM video_media_playList WHERE playlistFlag = 2 LIMIT :limit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/VideoPlayListMedia;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getPlayListMediaById(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM video_media_playList WHERE playlist_id = :playListId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/VideoPlayListMedia;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayListMediaByIds(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM video_media_playList WHERE media_id = :mediaId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/VideoPlayListMedia;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayListMediaByIds(II)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM video_media_playList WHERE playlist_id = :playListId AND media_id = :mediaId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/VideoPlayListMedia;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayListMediaByPlaylistFlag(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM video_media_playList WHERE playlistFlag = :playListFlag"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/VideoPlayListMedia;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayListMediaCountById(I)Landroid/database/Cursor;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM video_media_playList WHERE playlist_id = :playListId"
    .end annotation
.end method

.method public abstract getPlayListMediaCursor()Landroid/database/Cursor;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM video_media_playList"
    .end annotation
.end method

.method public abstract getPlayListMediaIdByPlayListFlag(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT media_id FROM video_media_playList WHERE playlistFlag = :playListFlag"
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

.method public abstract getPlayListMediaIdByPlayListId(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT media_id FROM video_media_playList WHERE playlist_id = :playListId"
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

.method public abstract insertPlayListMedia(Lcom/transsion/dbdata/database/VideoPlayListMedia;)J
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
            "Lcom/transsion/dbdata/database/VideoPlayListMedia;",
            ">;)[J"
        }
    .end annotation
.end method

.method public abstract updatePlayListMedia(Lcom/transsion/dbdata/database/VideoPlayListMedia;)I
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
            "Lcom/transsion/dbdata/database/VideoPlayListMedia;",
            ">;)I"
        }
    .end annotation
.end method
