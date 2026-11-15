.class public interface abstract Lsl;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract delete(Lcom/transsion/dbdata/database/AudioAlbum;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract getAll(I)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM AudioAlbum LIMIT :limitCount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/AudioAlbum;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllAudioAlbum()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM AudioAlbum"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/AudioAlbum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAudioAlbum(I)Lcom/transsion/dbdata/database/AudioAlbum;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM AudioAlbum WHERE id=:id"
    .end annotation
.end method

.method public abstract insert(Lcom/transsion/dbdata/database/AudioAlbum;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method
