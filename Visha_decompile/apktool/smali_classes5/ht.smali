.class public interface abstract Lht;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lht$a;
    }
.end annotation


# virtual methods
.method public abstract deleteAll()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM audio_play_history"
    .end annotation
.end method

.method public abstract deleteByMediaId(J)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM audio_play_history WHERE media_id = :mediaId"
    .end annotation
.end method

.method public abstract deleteByMediaIds(Ljava/util/List;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM audio_play_history WHERE media_id IN (:mediaIds)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract deleteByPath(J)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM audio_play_history WHERE _data = :path"
    .end annotation
.end method

.method public abstract deleteByPaths(Ljava/util/List;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM audio_play_history WHERE media_id IN (:paths)"
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
            "Lcom/transsion/dbdata/database/AudioPlayHistory;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract deleteSingle(Lcom/transsion/dbdata/database/AudioPlayHistory;)I
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract getAllAudioPlayCounts()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT _data, play_count FROM audio_play_history WHERE play_count > 0 AND _data IS NOT NULL AND _data != \'\'"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/MediaPlayCount;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllByPlayCount()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM audio_play_history ORDER BY play_count DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/AudioPlayHistory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllByUpdateTime()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM audio_play_history ORDER BY update_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/AudioPlayHistory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPlayRecordMediaIdSet(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT DISTINCT media_id FROM audio_play_history WHERE play_count >= 0 ORDER BY update_time DESC LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPlayRecordMediaIds(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM audio_play_history WHERE play_count >= 0 ORDER BY update_time DESC LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/AudioPlayHistory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getByMediaId(J)Lcom/transsion/dbdata/database/AudioPlayHistory;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM audio_play_history WHERE media_id = :mediaId"
    .end annotation
.end method

.method public abstract getByMediaIds(Ljava/util/List;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM audio_play_history WHERE media_id IN (:mediaIds)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/AudioPlayHistory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getByPath(Ljava/lang/String;)Lcom/transsion/dbdata/database/AudioPlayHistory;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM audio_play_history WHERE _data = :path"
    .end annotation
.end method

.method public abstract getByPaths(Ljava/util/List;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM audio_play_history WHERE media_id IN (:paths)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/AudioPlayHistory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFrequentPlayedMediaIds(II)Ljava/util/List;
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x7fffffffffffffffL
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM audio_play_history WHERE play_count >= :minPlayCount ORDER BY play_count DESC, update_time DESC LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/AudioPlayHistory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayCountByMediaId(J)Ljava/lang/Integer;
    .annotation build Landroidx/room/Query;
        value = "SELECT play_count FROM audio_play_history WHERE media_id = :mediaId"
    .end annotation
.end method

.method public abstract getPlayCountByPath(Ljava/lang/String;)Ljava/lang/Integer;
    .annotation build Landroidx/room/Query;
        value = "SELECT play_count FROM audio_play_history WHERE _data = :path"
    .end annotation
.end method

.method public abstract incrementPlayCountByMediaId(JJ)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE audio_play_history SET play_count = play_count + 1, update_time = :currentTime WHERE media_id = :mediaId"
    .end annotation
.end method

.method public abstract incrementPlayCountByPath(Ljava/lang/String;J)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE audio_play_history SET play_count = play_count + 1, update_time = :currentTime WHERE _data = :path"
    .end annotation
.end method

.method public abstract observePlayHistory()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT _data, play_count FROM audio_play_history WHERE play_count > 0 AND _data IS NOT NULL AND _data != \'\'"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/MediaPlayCount;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract resetPlayCount(JJ)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE audio_play_history SET play_count = 0 , update_time = :currentTime WHERE media_id = :mediaId "
    .end annotation
.end method

.method public abstract upsertMultiple(Ljava/util/List;)Ljava/util/List;
    .annotation build Landroidx/room/Upsert;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/AudioPlayHistory;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract upsertSingle(Lcom/transsion/dbdata/database/AudioPlayHistory;)J
    .annotation build Landroidx/room/Upsert;
    .end annotation
.end method
