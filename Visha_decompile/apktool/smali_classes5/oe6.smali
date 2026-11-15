.class public interface abstract Loe6;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deleteByMediaId(I)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM media_data_missing WHERE media_id = :mediaId"
    .end annotation
.end method

.method public abstract deleteByMediaIds(Ljava/util/List;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM media_data_missing WHERE media_id IN (:mediaIds)"
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

.method public abstract deleteByMediaPath(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM media_data_missing WHERE _data = :mediaPath"
    .end annotation
.end method

.method public abstract deleteMultiple(Ljava/util/List;)I
    .annotation build Landroidx/room/Delete;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/MediaDataMissingItem;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract deleteSingle(Lcom/transsion/dbdata/database/MediaDataMissingItem;)I
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract getAllByMediaType(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_data_missing WHERE media_type = :mediaType"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/MediaDataMissingItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllMissingData()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_data_missing"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/MediaDataMissingItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllMissingDataLiveData()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_data_missing"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/MediaDataMissingItem;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getByMediaId(I)Lcom/transsion/dbdata/database/MediaDataMissingItem;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_data_missing WHERE media_id = :mediaId LIMIT 1"
    .end annotation
.end method

.method public abstract getByMediaPath(Ljava/lang/String;)Lcom/transsion/dbdata/database/MediaDataMissingItem;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM media_data_missing WHERE _data = :mediaPath LIMIT 1"
    .end annotation
.end method

.method public abstract upsertMultiple(Ljava/util/List;)Ljava/util/List;
    .annotation build Landroidx/room/Upsert;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/MediaDataMissingItem;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract upsertSingle(Lcom/transsion/dbdata/database/MediaDataMissingItem;)J
    .annotation build Landroidx/room/Upsert;
    .end annotation
.end method
