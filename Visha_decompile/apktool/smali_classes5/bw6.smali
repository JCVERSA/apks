.class public interface abstract Lbw6;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract delete(Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract deleteById(I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM music_video WHERE id = :id"
    .end annotation
.end method

.method public abstract getAll()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM music_video"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllByIds(Ljava/util/List;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM music_video WHERE id IN (:userIds)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllByTitleAndIds(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM music_video WHERE title = :title AND id IN (:ids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMusicVideoById(I)Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM music_video WHERE id = :id"
    .end annotation
.end method

.method public abstract getMusicVideoByTitleOrDisplay(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM music_video WHERE title = :searchText OR displayName = :searchText"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMusicVideoListByDisplayName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM music_video WHERE displayName = :displayName"
    .end annotation
.end method

.method public abstract getMusicVideoListByPath(Ljava/lang/String;)Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM music_video WHERE data = :path"
    .end annotation
.end method

.method public abstract insertAll(Ljava/util/List;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract update(Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;)I
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
