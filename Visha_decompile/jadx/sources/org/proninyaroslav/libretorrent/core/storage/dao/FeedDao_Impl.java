package org.proninyaroslav.libretorrent.core.storage.dao;

import android.database.Cursor;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.EmptyResultSetException;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.RxRoom;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import defpackage.r14;
import defpackage.xm9;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import org.proninyaroslav.libretorrent.core.model.data.entity.FeedChannel;
import org.proninyaroslav.libretorrent.core.model.data.entity.FeedItem;

public final class FeedDao_Impl implements FeedDao {
    public final RoomDatabase a;
    public final EntityInsertionAdapter b;
    public final EntityInsertionAdapter c;
    public final EntityDeletionOrUpdateAdapter d;
    public final EntityDeletionOrUpdateAdapter e;
    public final SharedSQLiteStatement f;
    public final SharedSQLiteStatement g;
    public final SharedSQLiteStatement h;

    class AnonymousClass1 extends EntityInsertionAdapter<FeedChannel> {
        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, FeedChannel feedChannel) {
            supportSQLiteStatement.bindLong(1, feedChannel.id);
            String str = feedChannel.url;
            if (str == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str);
            }
            String str2 = feedChannel.name;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, str2);
            }
            supportSQLiteStatement.bindLong(4, feedChannel.lastUpdate);
            supportSQLiteStatement.bindLong(5, feedChannel.autoDownload ? 1L : 0L);
            String str3 = feedChannel.filter;
            if (str3 == null) {
                supportSQLiteStatement.bindNull(6);
            } else {
                supportSQLiteStatement.bindString(6, str3);
            }
            supportSQLiteStatement.bindLong(7, feedChannel.isRegexFilter ? 1L : 0L);
            String str4 = feedChannel.fetchError;
            if (str4 == null) {
                supportSQLiteStatement.bindNull(8);
            } else {
                supportSQLiteStatement.bindString(8, str4);
            }
        }

        @Override
        public String createQuery() {
            return "INSERT OR REPLACE INTO `FeedChannel` (`id`,`url`,`name`,`lastUpdate`,`autoDownload`,`filter`,`isRegexFilter`,`fetchError`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)";
        }
    }

    class AnonymousClass2 extends EntityInsertionAdapter<FeedItem> {
        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, FeedItem feedItem) {
            String str = feedItem.id;
            if (str == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, str);
            }
            String str2 = feedItem.title;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str2);
            }
            supportSQLiteStatement.bindLong(3, feedItem.feedId);
            String str3 = feedItem.downloadUrl;
            if (str3 == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, str3);
            }
            String str4 = feedItem.articleUrl;
            if (str4 == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindString(5, str4);
            }
            supportSQLiteStatement.bindLong(6, feedItem.pubDate);
            supportSQLiteStatement.bindLong(7, feedItem.fetchDate);
            supportSQLiteStatement.bindLong(8, feedItem.read ? 1L : 0L);
        }

        @Override
        public String createQuery() {
            return "INSERT OR IGNORE INTO `FeedItem` (`id`,`title`,`feedId`,`downloadUrl`,`articleUrl`,`pubDate`,`fetchDate`,`read`) VALUES (?,?,?,?,?,?,?,?)";
        }
    }

    class AnonymousClass3 extends EntityDeletionOrUpdateAdapter<FeedChannel> {
        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, FeedChannel feedChannel) {
            supportSQLiteStatement.bindLong(1, feedChannel.id);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM `FeedChannel` WHERE `id` = ?";
        }
    }

    class AnonymousClass4 extends EntityDeletionOrUpdateAdapter<FeedChannel> {
        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, FeedChannel feedChannel) {
            supportSQLiteStatement.bindLong(1, feedChannel.id);
            String str = feedChannel.url;
            if (str == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str);
            }
            String str2 = feedChannel.name;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, str2);
            }
            supportSQLiteStatement.bindLong(4, feedChannel.lastUpdate);
            supportSQLiteStatement.bindLong(5, feedChannel.autoDownload ? 1L : 0L);
            String str3 = feedChannel.filter;
            if (str3 == null) {
                supportSQLiteStatement.bindNull(6);
            } else {
                supportSQLiteStatement.bindString(6, str3);
            }
            supportSQLiteStatement.bindLong(7, feedChannel.isRegexFilter ? 1L : 0L);
            String str4 = feedChannel.fetchError;
            if (str4 == null) {
                supportSQLiteStatement.bindNull(8);
            } else {
                supportSQLiteStatement.bindString(8, str4);
            }
            supportSQLiteStatement.bindLong(9, feedChannel.id);
        }

        @Override
        public String createQuery() {
            return "UPDATE OR ABORT `FeedChannel` SET `id` = ?,`url` = ?,`name` = ?,`lastUpdate` = ?,`autoDownload` = ?,`filter` = ?,`isRegexFilter` = ?,`fetchError` = ? WHERE `id` = ?";
        }
    }

    class AnonymousClass5 extends SharedSQLiteStatement {
        @Override
        public String createQuery() {
            return "DELETE FROM FeedItem WHERE fetchDate < ?";
        }
    }

    class AnonymousClass6 extends SharedSQLiteStatement {
        @Override
        public String createQuery() {
            return "UPDATE FeedItem SET read = 1 WHERE id = ?";
        }
    }

    class AnonymousClass7 extends SharedSQLiteStatement {
        @Override
        public String createQuery() {
            return "UPDATE FeedItem SET read = 0 WHERE id = ?";
        }
    }

    public static List b() {
        return Collections.emptyList();
    }

    @Override
    public long addFeed(FeedChannel feedChannel) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            long jInsertAndReturnId = this.b.insertAndReturnId(feedChannel);
            this.a.setTransactionSuccessful();
            return jInsertAndReturnId;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public long[] addFeeds(List list) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            long[] jArrInsertAndReturnIdsArray = this.b.insertAndReturnIdsArray(list);
            this.a.setTransactionSuccessful();
            return jArrInsertAndReturnIdsArray;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void addItems(List list) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.c.insert((Iterable) list);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void deleteFeed(FeedChannel feedChannel) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.d.handle(feedChannel);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void deleteFeeds(List list) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.d.handleMultiple(list);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void deleteItemsOlderThan(long j) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.f.acquire();
        supportSQLiteStatementAcquire.bindLong(1, j);
        try {
            this.a.beginTransaction();
            try {
                supportSQLiteStatementAcquire.executeUpdateDelete();
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
                this.f.release(supportSQLiteStatementAcquire);
            } catch (Throwable th) {
                this.a.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.f.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public List findItemsExistingTitles(List list) {
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("SELECT title FROM FeedItem WHERE title IN (");
        int i = 1;
        int size = list == null ? 1 : list.size();
        StringUtil.appendPlaceholders(sbNewStringBuilder, size);
        sbNewStringBuilder.append(")");
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire(sbNewStringBuilder.toString(), size);
        if (list == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (str == null) {
                    roomSQLiteQueryAcquire.bindNull(i);
                } else {
                    roomSQLiteQueryAcquire.bindString(i, str);
                }
                i++;
            }
        }
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(cursorQuery.isNull(0) ? null : cursorQuery.getString(0));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getAllFeeds() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM FeedChannel", 0);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "url");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "lastUpdate");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "autoDownload");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "filter");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isRegexFilter");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "fetchError");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                FeedChannel feedChannel = new FeedChannel(cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.getInt(columnIndexOrThrow5) != 0, cursorQuery.isNull(columnIndexOrThrow6) ? null : cursorQuery.getString(columnIndexOrThrow6), cursorQuery.getInt(columnIndexOrThrow7) != 0, cursorQuery.isNull(columnIndexOrThrow8) ? null : cursorQuery.getString(columnIndexOrThrow8));
                feedChannel.id = cursorQuery.getLong(columnIndexOrThrow);
                arrayList.add(feedChannel);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public xm9 getAllFeedsSingle() {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM FeedChannel", 0);
        return RxRoom.createSingle(new Callable<List<FeedChannel>>() {
            @Override
            public List call() {
                Cursor cursorQuery = DBUtil.query(FeedDao_Impl.this.a, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "url");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "lastUpdate");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "autoDownload");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "filter");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isRegexFilter");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "fetchError");
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        FeedChannel feedChannel = new FeedChannel(cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.getInt(columnIndexOrThrow5) != 0, cursorQuery.isNull(columnIndexOrThrow6) ? null : cursorQuery.getString(columnIndexOrThrow6), cursorQuery.getInt(columnIndexOrThrow7) != 0, cursorQuery.isNull(columnIndexOrThrow8) ? null : cursorQuery.getString(columnIndexOrThrow8));
                        feedChannel.id = cursorQuery.getLong(columnIndexOrThrow);
                        arrayList.add(feedChannel);
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                }
            }

            public void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    @Override
    public FeedChannel getFeedById(long j) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM FeedChannel WHERE id = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, j);
        this.a.assertNotSuspendingTransaction();
        FeedChannel feedChannel = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "url");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "lastUpdate");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "autoDownload");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "filter");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isRegexFilter");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "fetchError");
            if (cursorQuery.moveToFirst()) {
                feedChannel = new FeedChannel(cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.getInt(columnIndexOrThrow5) != 0, cursorQuery.isNull(columnIndexOrThrow6) ? null : cursorQuery.getString(columnIndexOrThrow6), cursorQuery.getInt(columnIndexOrThrow7) != 0, cursorQuery.isNull(columnIndexOrThrow8) ? null : cursorQuery.getString(columnIndexOrThrow8));
                feedChannel.id = cursorQuery.getLong(columnIndexOrThrow);
            }
            return feedChannel;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public xm9 getFeedByIdSingle(long j) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM FeedChannel WHERE id = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, j);
        return RxRoom.createSingle(new Callable<FeedChannel>() {
            @Override
            public FeedChannel call() {
                FeedChannel feedChannel = null;
                Cursor cursorQuery = DBUtil.query(FeedDao_Impl.this.a, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "url");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "lastUpdate");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "autoDownload");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "filter");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isRegexFilter");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "fetchError");
                    if (cursorQuery.moveToFirst()) {
                        feedChannel = new FeedChannel(cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.getInt(columnIndexOrThrow5) != 0, cursorQuery.isNull(columnIndexOrThrow6) ? null : cursorQuery.getString(columnIndexOrThrow6), cursorQuery.getInt(columnIndexOrThrow7) != 0, cursorQuery.isNull(columnIndexOrThrow8) ? null : cursorQuery.getString(columnIndexOrThrow8));
                        feedChannel.id = cursorQuery.getLong(columnIndexOrThrow);
                    }
                    if (feedChannel != null) {
                        cursorQuery.close();
                        return feedChannel;
                    }
                    throw new EmptyResultSetException("Query returned empty result set: " + roomSQLiteQueryAcquire.getQuery());
                } catch (Throwable th) {
                    cursorQuery.close();
                    throw th;
                }
            }

            public void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    @Override
    public xm9 getItemsByFeedIdSingle(long j) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM FeedItem WHERE feedId = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, j);
        return RxRoom.createSingle(new Callable<List<FeedItem>>() {
            @Override
            public List call() {
                Cursor cursorQuery = DBUtil.query(FeedDao_Impl.this.a, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "title");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "feedId");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "downloadUrl");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "articleUrl");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pubDate");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "fetchDate");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "read");
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        FeedItem feedItem = new FeedItem(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow3), cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4), cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getLong(columnIndexOrThrow6));
                        feedItem.fetchDate = cursorQuery.getLong(columnIndexOrThrow7);
                        feedItem.read = cursorQuery.getInt(columnIndexOrThrow8) != 0;
                        arrayList.add(feedItem);
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                }
            }

            public void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    @Override
    public List getItemsById(String... strArr) {
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("SELECT * FROM FeedItem WHERE id IN (");
        int length = strArr == null ? 1 : strArr.length;
        StringUtil.appendPlaceholders(sbNewStringBuilder, length);
        sbNewStringBuilder.append(")");
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire(sbNewStringBuilder.toString(), length);
        if (strArr == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            int i = 1;
            for (String str : strArr) {
                if (str == null) {
                    roomSQLiteQueryAcquire.bindNull(i);
                } else {
                    roomSQLiteQueryAcquire.bindString(i, str);
                }
                i++;
            }
        }
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "title");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "feedId");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "downloadUrl");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "articleUrl");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pubDate");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "fetchDate");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "read");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                FeedItem feedItem = new FeedItem(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow3), cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4), cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getLong(columnIndexOrThrow6));
                feedItem.fetchDate = cursorQuery.getLong(columnIndexOrThrow7);
                feedItem.read = cursorQuery.getInt(columnIndexOrThrow8) != 0;
                arrayList.add(feedItem);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public List getItemsIdByFeedId(long j) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT id FROM FeedItem WHERE feedId = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, j);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(cursorQuery.isNull(0) ? null : cursorQuery.getString(0));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public void markAsRead(String str) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.g.acquire();
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(1);
        } else {
            supportSQLiteStatementAcquire.bindString(1, str);
        }
        try {
            this.a.beginTransaction();
            try {
                supportSQLiteStatementAcquire.executeUpdateDelete();
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
                this.g.release(supportSQLiteStatementAcquire);
            } catch (Throwable th) {
                this.a.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.g.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public void markAsReadByFeedId(List list) {
        this.a.assertNotSuspendingTransaction();
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("UPDATE FeedItem SET read = 1 WHERE feedId IN (");
        int i = 1;
        StringUtil.appendPlaceholders(sbNewStringBuilder, list == null ? 1 : list.size());
        sbNewStringBuilder.append(")");
        SupportSQLiteStatement supportSQLiteStatementCompileStatement = this.a.compileStatement(sbNewStringBuilder.toString());
        if (list == null) {
            supportSQLiteStatementCompileStatement.bindNull(1);
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Long l = (Long) it.next();
                if (l == null) {
                    supportSQLiteStatementCompileStatement.bindNull(i);
                } else {
                    supportSQLiteStatementCompileStatement.bindLong(i, l.longValue());
                }
                i++;
            }
        }
        this.a.beginTransaction();
        try {
            supportSQLiteStatementCompileStatement.executeUpdateDelete();
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void markAsUnread(String str) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.h.acquire();
        if (str == null) {
            supportSQLiteStatementAcquire.bindNull(1);
        } else {
            supportSQLiteStatementAcquire.bindString(1, str);
        }
        try {
            this.a.beginTransaction();
            try {
                supportSQLiteStatementAcquire.executeUpdateDelete();
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
                this.h.release(supportSQLiteStatementAcquire);
            } catch (Throwable th) {
                this.a.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.h.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public r14 observeAllFeeds() {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM FeedChannel", 0);
        return RxRoom.createFlowable(this.a, false, new String[]{"FeedChannel"}, new Callable<List<FeedChannel>>() {
            @Override
            public List call() {
                Cursor cursorQuery = DBUtil.query(FeedDao_Impl.this.a, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "url");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "lastUpdate");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "autoDownload");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "filter");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "isRegexFilter");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "fetchError");
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        FeedChannel feedChannel = new FeedChannel(cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.getInt(columnIndexOrThrow5) != 0, cursorQuery.isNull(columnIndexOrThrow6) ? null : cursorQuery.getString(columnIndexOrThrow6), cursorQuery.getInt(columnIndexOrThrow7) != 0, cursorQuery.isNull(columnIndexOrThrow8) ? null : cursorQuery.getString(columnIndexOrThrow8));
                        feedChannel.id = cursorQuery.getLong(columnIndexOrThrow);
                        arrayList.add(feedChannel);
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                }
            }

            public void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    @Override
    public r14 observeItemsByFeedId(long j) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM FeedItem WHERE feedId = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, j);
        return RxRoom.createFlowable(this.a, false, new String[]{"FeedItem"}, new Callable<List<FeedItem>>() {
            @Override
            public List call() {
                Cursor cursorQuery = DBUtil.query(FeedDao_Impl.this.a, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "title");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "feedId");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "downloadUrl");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "articleUrl");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "pubDate");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "fetchDate");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "read");
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        FeedItem feedItem = new FeedItem(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow3), cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4), cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getLong(columnIndexOrThrow6));
                        feedItem.fetchDate = cursorQuery.getLong(columnIndexOrThrow7);
                        feedItem.read = cursorQuery.getInt(columnIndexOrThrow8) != 0;
                        arrayList.add(feedItem);
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                }
            }

            public void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    @Override
    public int updateFeed(FeedChannel feedChannel) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandle = this.e.handle(feedChannel);
            this.a.setTransactionSuccessful();
            return iHandle;
        } finally {
            this.a.endTransaction();
        }
    }
}
