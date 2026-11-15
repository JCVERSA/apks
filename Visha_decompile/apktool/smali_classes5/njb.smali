.class public interface abstract Lnjb;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deleteByMediaId(I)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM user_behavior WHERE media_id =:mediaId"
    .end annotation
.end method

.method public abstract deleteByMediaIds(Ljava/util/List;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM user_behavior WHERE media_id IN (:mediaIds)"
    .end annotation

    .annotation build Landroidx/room/Transaction;
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

.method public abstract deleteMultiple(Ljava/util/List;)I
    .annotation build Landroidx/room/Delete;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/UserBehaviorItem;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract deleteSingle(Lcom/transsion/dbdata/database/UserBehaviorItem;)I
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract getByMediaId(I)Lcom/transsion/dbdata/database/UserBehaviorItem;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM user_behavior WHERE media_id = :mediaId"
    .end annotation
.end method

.method public abstract getByMediaPath(Ljava/lang/String;)Lcom/transsion/dbdata/database/UserBehaviorItem;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM user_behavior WHERE _data = :data"
    .end annotation
.end method

.method public abstract getCollectedItemsByMediaType(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM user_behavior WHERE is_collected = 1 AND media_type = :mediaType"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/UserBehaviorItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConvertedAudioPathsOrderByTime(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT _data FROM user_behavior WHERE is_video_to_audio = 1 ORDER BY video_to_audio_convert_time DESC LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
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
            "Lcom/transsion/dbdata/database/UserBehaviorItem;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertSingle(Lcom/transsion/dbdata/database/UserBehaviorItem;)J
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method

.method public abstract updateCoverPath(ILjava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE user_behavior SET custom_cover = :coverPath WHERE media_id = :mediaId"
    .end annotation
.end method

.method public abstract updateFilterStatus(IZ)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE user_behavior SET is_filter = :filter WHERE media_id = :mediaId"
    .end annotation
.end method

.method public abstract updateFilterStatus(Ljava/util/List;Z)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE user_behavior SET is_filter = :filter WHERE media_id IN (:mediaIds)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation
.end method

.method public abstract updateHideStatus(IZ)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE user_behavior SET is_hide = :hide WHERE media_id = :mediaId"
    .end annotation
.end method

.method public abstract updateHideStatus(Ljava/util/List;Z)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE user_behavior SET is_hide = :hide WHERE media_id IN (:mediaIds)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation
.end method

.method public abstract updateMediaIdAndPath(IILjava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE user_behavior SET media_id = :newMediaId, _data = :newData WHERE media_id = :oldMediaId"
    .end annotation
.end method

.method public abstract updateMediaIdAndPath(Ljava/lang/String;ILjava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE user_behavior SET media_id = :newMediaId, _data = :newData WHERE _data = :oldPath"
    .end annotation
.end method
