.class public interface abstract Lgi1;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deleteAllConvertAudio()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM convert_audio"
    .end annotation
.end method

.method public abstract deleteAudioByMediaId(I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM convert_audio WHERE mediaId =:media_id"
    .end annotation
.end method

.method public abstract deleteConvertAudioById(I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM convert_audio WHERE mediaId =:id"
    .end annotation
.end method

.method public abstract getAll(I)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM convert_audio ORDER BY convert_time DESC LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/ConvertAudio;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllConvertAudio(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM convert_audio ORDER BY convert_time DESC  LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/ConvertAudio;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConvertAudioByData(Ljava/lang/String;)Lcom/transsion/dbdata/database/ConvertAudio;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM convert_audio WHERE data=:data"
    .end annotation
.end method

.method public abstract getConvertAudioByMediaId(I)Lcom/transsion/dbdata/database/ConvertAudio;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM convert_audio WHERE mediaId=:mediaId"
    .end annotation
.end method

.method public abstract getConvertMediaIdsOrderTime(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT mediaId FROM convert_audio ORDER BY convert_time DESC LIMIT :limitCount"
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

.method public abstract getConvertPathListOrderTime()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT data FROM convert_audio ORDER BY convert_time DESC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lcom/transsion/dbdata/database/ConvertAudio;)J
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract updateConvertAudio(Lcom/transsion/dbdata/database/ConvertAudio;)I
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
