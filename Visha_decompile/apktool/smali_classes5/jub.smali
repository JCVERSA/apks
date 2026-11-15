.class public interface abstract Ljub;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deleteAllPlayList()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM video_playlist"
    .end annotation
.end method

.method public abstract deletePlayList(Lcom/transsion/dbdata/database/VideoPlayList;)I
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract deletePlayListById(I)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM video_playlist WHERE id =:id"
    .end annotation
.end method

.method public abstract getPlayList(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM video_playlist  ORDER BY setup_time DESC  LIMIT :limit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/VideoPlayList;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayListList(I)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM video_playlist ORDER BY setup_time DESC LIMIT :limit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/VideoPlayList;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract insertPlayList(Lcom/transsion/dbdata/database/VideoPlayList;)J
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method

.method public abstract updatePlayList(Lcom/transsion/dbdata/database/VideoPlayList;)I
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
