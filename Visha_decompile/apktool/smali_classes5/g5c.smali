.class public interface abstract Lg5c;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public batchUpdatePlayCounts(Ljava/util/Map;)V
    .locals 2
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v1, v0}, Lg5c;->updatePlayCountByPath(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract deleteAllVideoRecord()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM VideoStates"
    .end annotation
.end method

.method public abstract deleteBatchVideoRecordsByMediaIds(Ljava/util/List;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM VideoStates WHERE _id IN (:mediaIds)"
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

.method public abstract deleteVideoRecordByData(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM VideoStates WHERE _data =:data"
    .end annotation
.end method

.method public abstract deleteVideoRecordByMediaId(I)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM VideoStates WHERE _id =:media_id"
    .end annotation
.end method

.method public abstract deleteVideoRecordByMediaIdAndData(Ljava/lang/String;I)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM VideoStates WHERE _id =:media_id AND _data =:data"
    .end annotation
.end method

.method public abstract getAllRecordOrderRecordDate()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM VideoStates ORDER BY record_date_modified DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/VideoRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllVideoPlayCounts()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT _data, play_count FROM VideoStates WHERE play_count > 0 AND _data IS NOT NULL AND _data != \'\'"
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

.method public abstract getAllVideoRecordList(I)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM VideoStates ORDER BY record_date_modified DESC LIMIT :limit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/VideoRecord;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getRecordListForBucketList(IILjava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM VideoStates WHERE bucket_id = :bucket_id AND isVirtualFolder =:isVirtualFolder AND virtualFolder_matchName =:virtualFolderMatchName ORDER BY id DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/VideoRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecordMediaIdsOrderRecordDate(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT _id FROM VideoStates ORDER BY record_date_modified DESC LIMIT:limit"
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

.method public abstract getTheVideoRecordMediaCountByData(Ljava/lang/String;)Lcom/transsion/dbdata/database/VideoRecord;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM VideoStates WHERE _data =:data"
    .end annotation
.end method

.method public abstract getTheVideoRecordMediaCountById(I)Lcom/transsion/dbdata/database/VideoRecord;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM VideoStates WHERE _id = :mediaId ORDER BY record_date_modified DESC"
    .end annotation
.end method

.method public abstract getVideoRecordByMediaIdAndBuickId(II)Landroid/database/Cursor;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM VideoStates WHERE _id = :mediaId AND bucket_id =:bucketId"
    .end annotation
.end method

.method public abstract getVideoRecordListByMediaIdAndBuickId(II)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM VideoStates WHERE _id = :mediaId AND bucket_id =:bucketId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/VideoRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoRecordMediaCountById(I)Landroid/database/Cursor;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM VideoStates WHERE _id = :mediaId"
    .end annotation
.end method

.method public abstract getVideoRecordSubtitleIndexByMediaId(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT subtitle_index FROM VideoStates WHERE _id = :mediaId"
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

.method public abstract incrementPlayCountByMediaId(JJ)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE VideoStates SET play_count = play_count + 1, record_date_modified = :currentTime WHERE _id = :mediaId"
    .end annotation
.end method

.method public abstract incrementPlayCountByPath(Ljava/lang/String;J)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE VideoStates SET play_count = play_count + 1, record_date_modified = :currentTime WHERE _data = :filePath"
    .end annotation
.end method

.method public abstract insertVideoRecord(Lcom/transsion/dbdata/database/VideoRecord;)J
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method

.method public abstract insertVideoRecord(Ljava/util/List;)[J
    .annotation build Landroidx/room/Insert;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/VideoRecord;",
            ">;)[J"
        }
    .end annotation
.end method

.method public abstract observePlayHistory()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT _data, play_count FROM VideoStates WHERE play_count > 0 AND _data IS NOT NULL AND _data != \'\'"
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

.method public abstract updatePlayCountByPath(Ljava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE VideoStates SET play_count = :playCount WHERE _data = :filePath"
    .end annotation
.end method

.method public abstract updateVideoRecord(Lcom/transsion/dbdata/database/VideoRecord;)I
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
