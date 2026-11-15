.class public interface abstract Lorg/proninyaroslav/libretorrent/core/storage/dao/FeedDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract addFeed(Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;)J
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract addFeeds(Ljava/util/List;)[J
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;",
            ">;)[J"
        }
    .end annotation
.end method

.method public abstract addItems(Ljava/util/List;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteFeed(Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract deleteFeeds(Ljava/util/List;)V
    .annotation build Landroidx/room/Delete;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteItemsOlderThan(J)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM FeedItem WHERE fetchDate < :keepDateBorderTime"
    .end annotation
.end method

.method public abstract findItemsExistingTitles(Ljava/util/List;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT title FROM FeedItem WHERE title IN (:titles)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllFeeds()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM FeedChannel"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllFeedsSingle()Lxm9;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM FeedChannel"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxm9;"
        }
    .end annotation
.end method

.method public abstract getFeedById(J)Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM FeedChannel WHERE id = :id"
    .end annotation
.end method

.method public abstract getFeedByIdSingle(J)Lxm9;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM FeedChannel WHERE id = :id"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lxm9;"
        }
    .end annotation
.end method

.method public abstract getItemsByFeedIdSingle(J)Lxm9;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM FeedItem WHERE feedId = :feedId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lxm9;"
        }
    .end annotation
.end method

.method public varargs abstract getItemsById([Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM FeedItem WHERE id IN (:itemsId)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getItemsIdByFeedId(J)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT id FROM FeedItem WHERE feedId = :feedId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract markAsRead(Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE FeedItem SET read = 1 WHERE id = :itemId"
    .end annotation
.end method

.method public abstract markAsReadByFeedId(Ljava/util/List;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE FeedItem SET read = 1 WHERE feedId IN (:feedId)"
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

.method public abstract markAsUnread(Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE FeedItem SET read = 0 WHERE id = :itemId"
    .end annotation
.end method

.method public abstract observeAllFeeds()Lr14;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM FeedChannel"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr14;"
        }
    .end annotation
.end method

.method public abstract observeItemsByFeedId(J)Lr14;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM FeedItem WHERE feedId = :feedId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lr14;"
        }
    .end annotation
.end method

.method public abstract updateFeed(Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;)I
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
