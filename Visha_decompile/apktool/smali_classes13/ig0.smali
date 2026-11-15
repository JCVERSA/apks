.class public interface abstract Lig0;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deleteItem(Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM Bookmark WHERE uri =:url"
    .end annotation
.end method

.method public abstract deleteItemById(J)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM Bookmark WHERE id =:id"
    .end annotation
.end method

.method public abstract getAll()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM Bookmark "
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/Bookmark;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getBookmark(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/Bookmark;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM Bookmark WHERE uri=:url"
    .end annotation
.end method

.method public abstract getBookmarks(Ljava/util/List;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM Bookmark WHERE uri IN (:urls)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/Bookmark;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertItem(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract insertItems(Ljava/util/List;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/sniff/Bookmark;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateBitmap(Ljava/lang/String;[B)V
    .annotation build Landroidx/room/Query;
        value = "update Bookmark set bitmap=:bitmap where uri=:uri"
    .end annotation
.end method

.method public abstract updateImgUrl(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "update Bookmark set imageUri=:imageUri where uri=:uri"
    .end annotation
.end method

.method public abstract updateItem(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
