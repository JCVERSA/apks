.class public interface abstract Lm5a;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deleteSubtitleRecordByMediaId(I)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM SubtitleRecord WHERE _id =:media_id"
    .end annotation
.end method

.method public abstract deleteSubtitleRecordByMediaIdAndPath(ILjava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM SubtitleRecord WHERE _id =:media_id AND subtitle_path =:path"
    .end annotation
.end method

.method public abstract deleteSubtitleRecordByPath(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM SubtitleRecord WHERE subtitle_path =:path"
    .end annotation
.end method

.method public abstract deleteSubtitleRecordByTrackAndId(II)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM SubtitleRecord WHERE _id =:media_id AND sub_track =:trackValue"
    .end annotation
.end method

.method public abstract getAllDataByMediaId(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM SubtitleRecord WHERE _id =:media_id ORDER BY id ASC "
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllDataByMediaIdAndTrack(II)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM SubtitleRecord WHERE _id =:media_id AND sub_track =:trackValue ORDER BY sub_track_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllDataByMediaIdAndTrackByDesc(II)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM SubtitleRecord WHERE _id =:media_id AND sub_track =:trackValue ORDER BY sub_track_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllDataByMediaPathAndTrack(Ljava/lang/String;I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM SubtitleRecord WHERE subtitle_path =:path AND sub_track =:trackValue "
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllExternalRecordByMediaIdAndTrack(II)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM SubtitleRecord WHERE _id =:media_id AND sub_track =:trackValue AND sub_type = 0  ORDER BY sub_track_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertSubtitleRecord(Lcom/transsion/dbdata/beans/media/SubtitleRecord;)J
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method

.method public abstract insertSubtitleRecord(Ljava/util/List;)[J
    .annotation build Landroidx/room/Insert;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleRecord;",
            ">;)[J"
        }
    .end annotation
.end method

.method public abstract queryInnerSubtitleByMediaAndTrack(II)Lcom/transsion/dbdata/beans/media/SubtitleRecord;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM SubtitleRecord WHERE _id =:media_id AND sub_track =:trackValue AND sub_type = 1"
    .end annotation
.end method

.method public abstract querySubtitleByMediaAndSid(ILjava/lang/String;)Lcom/transsion/dbdata/beans/media/SubtitleRecord;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM SubtitleRecord WHERE _id =:media_id AND sub_id =:sid"
    .end annotation
.end method

.method public abstract querySubtitleByMediaAndTrackAndPath(IILjava/lang/String;)Lcom/transsion/dbdata/beans/media/SubtitleRecord;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM SubtitleRecord WHERE _id =:media_id AND sub_track =:trackValue AND subtitle_path =:path"
    .end annotation
.end method

.method public abstract querySubtitleByMediaAndTrackAndSid(IILjava/lang/String;)Lcom/transsion/dbdata/beans/media/SubtitleRecord;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM SubtitleRecord WHERE _id =:media_id AND sub_track =:trackValue AND sub_id =:sid"
    .end annotation
.end method

.method public abstract updateSubtitleRecord(Lcom/transsion/dbdata/beans/media/SubtitleRecord;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method

.method public abstract updateSubtitleRecord(Ljava/util/List;)V
    .annotation build Landroidx/room/Update;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/SubtitleRecord;",
            ">;)V"
        }
    .end annotation
.end method
