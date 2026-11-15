.class public interface abstract Lqj1;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deleteAllConvertFailedVideo(I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM converting_video WHERE converted_status =:converted_status"
    .end annotation
.end method

.method public abstract deleteAllConvertingVideo()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM converting_video"
    .end annotation
.end method

.method public abstract deleteConvertingVideoById(I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM converting_video WHERE mediaId =:id"
    .end annotation
.end method

.method public abstract deleteVideoByMediaId(I)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM converting_video WHERE mediaId =:media_id"
    .end annotation
.end method

.method public abstract getAll(I)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM converting_video ORDER BY add_time DESC LIMIT :limit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/ConvertingVideo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllConvertingVideo(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM converting_video ORDER BY add_time DESC LIMIT :limit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/ConvertingVideo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConvertMediaIdsOrderTime(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT mediaId FROM converting_video ORDER BY add_time DESC LIMIT :limit"
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

.method public abstract getConvertingVideoByMediaId(I)Lcom/transsion/dbdata/database/ConvertingVideo;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM converting_video WHERE mediaId=:mediaId"
    .end annotation
.end method

.method public abstract insert(Lcom/transsion/dbdata/database/ConvertingVideo;)J
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract insertVideos(Ljava/util/List;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/ConvertingVideo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateConvertingVideo(Lcom/transsion/dbdata/database/ConvertingVideo;)I
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
