.class public interface abstract Lapb;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deleteAllCaches()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM video_cloud_cache"
    .end annotation
.end method

.method public abstract deleteByFileId(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM video_cloud_cache WHERE file_id = :fileId"
    .end annotation
.end method

.method public abstract deleteByFileIds(Ljava/util/List;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM video_cloud_cache WHERE file_id IN (:fileIds)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract deleteCommonData()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM video_cloud_cache WHERE is_recent_data = 0"
    .end annotation
.end method

.method public abstract deleteRecentData()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM video_cloud_cache WHERE is_recent_data = 1"
    .end annotation
.end method

.method public abstract getVideoCloud()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM video_cloud_cache"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/VideoCloudCache;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoCloudDataByPage(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM video_cloud_cache WHERE (:dataType = 0 OR (CASE :dataType WHEN 1 THEN is_recent_data = 1 WHEN 2 THEN is_recent_data = 0 END)) ORDER BY CASE WHEN :sortOrder = \'DESC\' THEN CASE :sortField WHEN \'createAt\' THEN create_at WHEN \'duration\' THEN duration WHEN \'size\' THEN size ELSE create_at END END DESC, CASE WHEN :sortOrder = \'ASC\' THEN CASE :sortField WHEN \'createAt\' THEN create_at WHEN \'duration\' THEN duration WHEN \'size\' THEN size ELSE create_at END END ASC LIMIT :pageSize OFFSET (:pageNo - 1) * :pageSize"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/VideoCloudCache;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoCloudLiveData()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM video_cloud_cache"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/VideoCloudCache;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract insertCache(Lcom/transsion/dbdata/beans/VideoCloudCache;)J
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract insertCaches(Ljava/util/List;)Ljava/util/List;
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/VideoCloudCache;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateCache(Lcom/transsion/dbdata/beans/VideoCloudCache;)I
    .annotation build Landroidx/room/Update;
    .end annotation
.end method

.method public abstract updateFileNameByFileId(Ljava/lang/String;Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "UPDATE video_cloud_cache SET file_name = :fileName WHERE file_id = :fileId"
    .end annotation
.end method
