.class public interface abstract Ldv8;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addReviewHistory(Lcom/transsion/sniffer_load/data/ReviewHistory;)J
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method

.method public addReviewHistoryWithLimit(Lcom/transsion/sniffer_load/data/ReviewHistory;)J
    .locals 2
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-interface {p0, p1}, Ldv8;->addReviewHistory(Lcom/transsion/sniffer_load/data/ReviewHistory;)J

    move-result-wide v0

    invoke-interface {p0}, Ldv8;->trimExcessHistory()V

    return-wide v0
.end method

.method public abstract deleteAll()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM ReviewHistory"
    .end annotation
.end method

.method public abstract deleteByIds(Ljava/util/List;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM ReviewHistory WHERE id IN (:ids)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteItem(J)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM ReviewHistory WHERE id =:id"
    .end annotation
.end method

.method public abstract getAllByDESC()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT id, name, url, date, imageUri FROM ReviewHistory ORDER BY date DESC LIMIT 200"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/sniffer_load/data/ReviewHistory;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllForLiveData()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "select * FROM ReviewHistory"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/transsion/sniffer_load/data/ReviewHistory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBitmapById(J)[B
    .annotation build Landroidx/room/Query;
        value = "SELECT bitmap FROM ReviewHistory WHERE id = :id LIMIT 1"
    .end annotation
.end method

.method public abstract getCount()I
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(*) FROM ReviewHistory"
    .end annotation
.end method

.method public abstract getOldestIds(I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT id FROM ReviewHistory ORDER BY date ASC LIMIT :count"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public trimExcessHistory()V
    .locals 2
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-interface {p0}, Ldv8;->getCount()I

    move-result v0

    add-int/lit16 v0, v0, -0xc8

    if-lez v0, :cond_0

    invoke-interface {p0, v0}, Ldv8;->getOldestIds(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0, v0}, Ldv8;->deleteByIds(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public abstract updateBitmap(Ljava/lang/String;[B)V
    .annotation build Landroidx/room/Query;
        value = "update ReviewHistory set bitmap=:bitmap where url=:url"
    .end annotation
.end method

.method public abstract updateImgUrl(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "update ReviewHistory set imageUri=:imageUri where url=:url"
    .end annotation
.end method
