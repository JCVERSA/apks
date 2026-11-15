.class public interface abstract Lw4a;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deleteSubtitleHistory(Lcom/transsion/dbdata/beans/SubtitleHistory;)I
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract deleteSubtitleHistoryList(Ljava/util/List;)I
    .annotation build Landroidx/room/Delete;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/SubtitleHistory;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract insertSubtitleHistory(Lcom/transsion/dbdata/beans/SubtitleHistory;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract queryAllDownLoadSubtitle(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM SubtitleHistory LIMIT :limit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/SubtitleHistory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllDownLoadSubtitleLiveData()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM SubtitleHistory"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/SubtitleHistory;",
            ">;>;"
        }
    .end annotation
.end method
