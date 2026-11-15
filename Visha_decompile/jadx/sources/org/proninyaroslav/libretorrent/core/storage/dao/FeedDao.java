package org.proninyaroslav.libretorrent.core.storage.dao;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import defpackage.r14;
import defpackage.xm9;
import java.util.List;
import org.proninyaroslav.libretorrent.core.model.data.entity.FeedChannel;
import org.proninyaroslav.libretorrent.core.model.data.entity.FeedItem;

@Dao
public interface FeedDao {
    @Insert(onConflict = 1)
    long addFeed(FeedChannel feedChannel);

    @Insert(onConflict = 1)
    long[] addFeeds(List<FeedChannel> list);

    @Insert(onConflict = 5)
    void addItems(List<FeedItem> list);

    @Delete
    void deleteFeed(FeedChannel feedChannel);

    @Delete
    void deleteFeeds(List<FeedChannel> list);

    @Query("DELETE FROM FeedItem WHERE fetchDate < :keepDateBorderTime")
    void deleteItemsOlderThan(long j);

    @Query("SELECT title FROM FeedItem WHERE title IN (:titles)")
    List<String> findItemsExistingTitles(List<String> list);

    @Query("SELECT * FROM FeedChannel")
    List<FeedChannel> getAllFeeds();

    @Query("SELECT * FROM FeedChannel")
    xm9 getAllFeedsSingle();

    @Query("SELECT * FROM FeedChannel WHERE id = :id")
    FeedChannel getFeedById(long j);

    @Query("SELECT * FROM FeedChannel WHERE id = :id")
    xm9 getFeedByIdSingle(long j);

    @Query("SELECT * FROM FeedItem WHERE feedId = :feedId")
    xm9 getItemsByFeedIdSingle(long j);

    @Query("SELECT * FROM FeedItem WHERE id IN (:itemsId)")
    List<FeedItem> getItemsById(String... strArr);

    @Query("SELECT id FROM FeedItem WHERE feedId = :feedId")
    List<String> getItemsIdByFeedId(long j);

    @Query("UPDATE FeedItem SET read = 1 WHERE id = :itemId")
    void markAsRead(String str);

    @Query("UPDATE FeedItem SET read = 1 WHERE feedId IN (:feedId)")
    void markAsReadByFeedId(List<Long> list);

    @Query("UPDATE FeedItem SET read = 0 WHERE id = :itemId")
    void markAsUnread(String str);

    @Query("SELECT * FROM FeedChannel")
    r14 observeAllFeeds();

    @Query("SELECT * FROM FeedItem WHERE feedId = :feedId")
    r14 observeItemsByFeedId(long j);

    @Update
    int updateFeed(FeedChannel feedChannel);
}
