package org.proninyaroslav.libretorrent.core.storage.dao;

import android.database.Cursor;
import android.net.Uri;
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
import androidx.sqlite.db.SupportSQLiteStatement;
import com.transsion.sniffer_load.sniffservice.SniffDownloadHelper;
import defpackage.r14;
import defpackage.xm9;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import org.proninyaroslav.libretorrent.core.model.data.entity.Torrent;
import org.proninyaroslav.libretorrent.core.model.data.entity.TorrentTagInfo;
import org.proninyaroslav.libretorrent.core.storage.converter.UriConverter;

public final class TorrentDao_Impl extends TorrentDao {
    public final RoomDatabase a;
    public final EntityInsertionAdapter b;
    public final EntityInsertionAdapter c;
    public final EntityDeletionOrUpdateAdapter d;
    public final EntityDeletionOrUpdateAdapter e;
    public final EntityDeletionOrUpdateAdapter f;
    public final SharedSQLiteStatement g;

    public TorrentDao_Impl(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new EntityInsertionAdapter<Torrent>(roomDatabase) {
            @Override
            public void bind(SupportSQLiteStatement supportSQLiteStatement, Torrent torrent) {
                String str = torrent.id;
                if (str == null) {
                    supportSQLiteStatement.bindNull(1);
                } else {
                    supportSQLiteStatement.bindString(1, str);
                }
                String str2 = torrent.name;
                if (str2 == null) {
                    supportSQLiteStatement.bindNull(2);
                } else {
                    supportSQLiteStatement.bindString(2, str2);
                }
                String strFromUri = UriConverter.fromUri(torrent.downloadPath);
                if (strFromUri == null) {
                    supportSQLiteStatement.bindNull(3);
                } else {
                    supportSQLiteStatement.bindString(3, strFromUri);
                }
                supportSQLiteStatement.bindLong(4, torrent.dateAdded);
                String str3 = torrent.error;
                if (str3 == null) {
                    supportSQLiteStatement.bindNull(5);
                } else {
                    supportSQLiteStatement.bindString(5, str3);
                }
                supportSQLiteStatement.bindLong(6, torrent.manuallyPaused ? 1L : 0L);
                supportSQLiteStatement.bindLong(7, torrent.sequentialDownload ? 1L : 0L);
                if (torrent.getMagnet() == null) {
                    supportSQLiteStatement.bindNull(8);
                } else {
                    supportSQLiteStatement.bindString(8, torrent.getMagnet());
                }
                supportSQLiteStatement.bindLong(9, torrent.downloadingMetadata ? 1L : 0L);
                supportSQLiteStatement.bindLong(10, torrent.visibility);
                supportSQLiteStatement.bindLong(11, torrent.firstLastPiecePriority ? 1L : 0L);
            }

            @Override
            public String createQuery() {
                return "INSERT OR ABORT INTO `Torrent` (`id`,`name`,`downloadPath`,`dateAdded`,`error`,`manuallyPaused`,`sequentialDownload`,`magnet`,`downloadingMetadata`,`visibility`,`firstLastPiecePriority`) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
            }
        };
        this.c = new EntityInsertionAdapter<TorrentTagInfo>(roomDatabase) {
            @Override
            public void bind(SupportSQLiteStatement supportSQLiteStatement, TorrentTagInfo torrentTagInfo) {
                supportSQLiteStatement.bindLong(1, torrentTagInfo.a);
                String str = torrentTagInfo.b;
                if (str == null) {
                    supportSQLiteStatement.bindNull(2);
                } else {
                    supportSQLiteStatement.bindString(2, str);
                }
            }

            @Override
            public String createQuery() {
                return "INSERT OR ABORT INTO `TorrentTagInfo` (`tagId`,`torrentId`) VALUES (?,?)";
            }
        };
        this.d = new EntityDeletionOrUpdateAdapter<Torrent>(roomDatabase) {
            @Override
            public void bind(SupportSQLiteStatement supportSQLiteStatement, Torrent torrent) {
                String str = torrent.id;
                if (str == null) {
                    supportSQLiteStatement.bindNull(1);
                } else {
                    supportSQLiteStatement.bindString(1, str);
                }
            }

            @Override
            public String createQuery() {
                return "DELETE FROM `Torrent` WHERE `id` = ?";
            }
        };
        this.e = new EntityDeletionOrUpdateAdapter<TorrentTagInfo>(roomDatabase) {
            @Override
            public void bind(SupportSQLiteStatement supportSQLiteStatement, TorrentTagInfo torrentTagInfo) {
                supportSQLiteStatement.bindLong(1, torrentTagInfo.a);
                String str = torrentTagInfo.b;
                if (str == null) {
                    supportSQLiteStatement.bindNull(2);
                } else {
                    supportSQLiteStatement.bindString(2, str);
                }
            }

            @Override
            public String createQuery() {
                return "DELETE FROM `TorrentTagInfo` WHERE `tagId` = ? AND `torrentId` = ?";
            }
        };
        this.f = new EntityDeletionOrUpdateAdapter<Torrent>(roomDatabase) {
            @Override
            public void bind(SupportSQLiteStatement supportSQLiteStatement, Torrent torrent) {
                String str = torrent.id;
                if (str == null) {
                    supportSQLiteStatement.bindNull(1);
                } else {
                    supportSQLiteStatement.bindString(1, str);
                }
                String str2 = torrent.name;
                if (str2 == null) {
                    supportSQLiteStatement.bindNull(2);
                } else {
                    supportSQLiteStatement.bindString(2, str2);
                }
                String strFromUri = UriConverter.fromUri(torrent.downloadPath);
                if (strFromUri == null) {
                    supportSQLiteStatement.bindNull(3);
                } else {
                    supportSQLiteStatement.bindString(3, strFromUri);
                }
                supportSQLiteStatement.bindLong(4, torrent.dateAdded);
                String str3 = torrent.error;
                if (str3 == null) {
                    supportSQLiteStatement.bindNull(5);
                } else {
                    supportSQLiteStatement.bindString(5, str3);
                }
                supportSQLiteStatement.bindLong(6, torrent.manuallyPaused ? 1L : 0L);
                supportSQLiteStatement.bindLong(7, torrent.sequentialDownload ? 1L : 0L);
                if (torrent.getMagnet() == null) {
                    supportSQLiteStatement.bindNull(8);
                } else {
                    supportSQLiteStatement.bindString(8, torrent.getMagnet());
                }
                supportSQLiteStatement.bindLong(9, torrent.downloadingMetadata ? 1L : 0L);
                supportSQLiteStatement.bindLong(10, torrent.visibility);
                supportSQLiteStatement.bindLong(11, torrent.firstLastPiecePriority ? 1L : 0L);
                String str4 = torrent.id;
                if (str4 == null) {
                    supportSQLiteStatement.bindNull(12);
                } else {
                    supportSQLiteStatement.bindString(12, str4);
                }
            }

            @Override
            public String createQuery() {
                return "UPDATE OR ABORT `Torrent` SET `id` = ?,`name` = ?,`downloadPath` = ?,`dateAdded` = ?,`error` = ?,`manuallyPaused` = ?,`sequentialDownload` = ?,`magnet` = ?,`downloadingMetadata` = ?,`visibility` = ?,`firstLastPiecePriority` = ? WHERE `id` = ?";
            }
        };
        this.g = new SharedSQLiteStatement(roomDatabase) {
            @Override
            public String createQuery() {
                return "DELETE FROM TorrentTagInfo WHERE torrentId = ?";
            }
        };
    }

    public static List c() {
        return Collections.emptyList();
    }

    @Override
    public void add(Torrent torrent) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.b.insert(torrent);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void addTag(TorrentTagInfo torrentTagInfo) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.c.insert(torrentTagInfo);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void addTags(List list) {
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
    public void delete(Torrent torrent) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.d.handle(torrent);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void deleteTag(TorrentTagInfo torrentTagInfo) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.e.handle(torrentTagInfo);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void deleteTagsByTorrentId(String str) {
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
    public List getAllTorrents() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM Torrent", 0);
        this.a.assertNotSuspendingTransaction();
        String str = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "downloadPath");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "dateAdded");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "error");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "manuallyPaused");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sequentialDownload");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, SniffDownloadHelper.MAGNET_PREFIX);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "downloadingMetadata");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "visibility");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "firstLastPiecePriority");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                String string = cursorQuery.isNull(columnIndexOrThrow) ? str : cursorQuery.getString(columnIndexOrThrow);
                String string2 = cursorQuery.isNull(columnIndexOrThrow2) ? str : cursorQuery.getString(columnIndexOrThrow2);
                Uri uri = UriConverter.toUri(cursorQuery.isNull(columnIndexOrThrow3) ? str : cursorQuery.getString(columnIndexOrThrow3));
                long j = cursorQuery.getLong(columnIndexOrThrow4);
                Torrent torrent = new Torrent(string, cursorQuery.isNull(columnIndexOrThrow8) ? str : cursorQuery.getString(columnIndexOrThrow8), uri, string2, cursorQuery.getInt(columnIndexOrThrow6) != 0, j, cursorQuery.getInt(columnIndexOrThrow7) != 0, cursorQuery.getInt(columnIndexOrThrow11) != 0);
                if (cursorQuery.isNull(columnIndexOrThrow5)) {
                    torrent.error = str;
                } else {
                    torrent.error = cursorQuery.getString(columnIndexOrThrow5);
                }
                torrent.downloadingMetadata = cursorQuery.getInt(columnIndexOrThrow9) != 0;
                torrent.visibility = cursorQuery.getInt(columnIndexOrThrow10);
                arrayList.add(torrent);
                str = null;
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public Torrent getTorrentById(String str) {
        boolean z = true;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM Torrent WHERE id = ?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.a.assertNotSuspendingTransaction();
        Torrent torrent = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "downloadPath");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "dateAdded");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "error");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "manuallyPaused");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sequentialDownload");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, SniffDownloadHelper.MAGNET_PREFIX);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "downloadingMetadata");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "visibility");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "firstLastPiecePriority");
            if (cursorQuery.moveToFirst()) {
                String string = cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow);
                String string2 = cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2);
                Torrent torrent2 = new Torrent(string, cursorQuery.isNull(columnIndexOrThrow8) ? null : cursorQuery.getString(columnIndexOrThrow8), UriConverter.toUri(cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3)), string2, cursorQuery.getInt(columnIndexOrThrow6) != 0, cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.getInt(columnIndexOrThrow7) != 0, cursorQuery.getInt(columnIndexOrThrow11) != 0);
                if (cursorQuery.isNull(columnIndexOrThrow5)) {
                    torrent2.error = null;
                } else {
                    torrent2.error = cursorQuery.getString(columnIndexOrThrow5);
                }
                if (cursorQuery.getInt(columnIndexOrThrow9) == 0) {
                    z = false;
                }
                torrent2.downloadingMetadata = z;
                torrent2.visibility = cursorQuery.getInt(columnIndexOrThrow10);
                torrent = torrent2;
            }
            return torrent;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public xm9 getTorrentByIdSingle(String str) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM Torrent WHERE id = ?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        return RxRoom.createSingle(new Callable<Torrent>() {
            @Override
            public Torrent call() {
                Torrent torrent = null;
                Cursor cursorQuery = DBUtil.query(TorrentDao_Impl.this.a, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "downloadPath");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "dateAdded");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "error");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "manuallyPaused");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sequentialDownload");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, SniffDownloadHelper.MAGNET_PREFIX);
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "downloadingMetadata");
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "visibility");
                    int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "firstLastPiecePriority");
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow);
                        String string2 = cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2);
                        Torrent torrent2 = new Torrent(string, cursorQuery.isNull(columnIndexOrThrow8) ? null : cursorQuery.getString(columnIndexOrThrow8), UriConverter.toUri(cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3)), string2, cursorQuery.getInt(columnIndexOrThrow6) != 0, cursorQuery.getLong(columnIndexOrThrow4), cursorQuery.getInt(columnIndexOrThrow7) != 0, cursorQuery.getInt(columnIndexOrThrow11) != 0);
                        if (cursorQuery.isNull(columnIndexOrThrow5)) {
                            torrent2.error = null;
                        } else {
                            torrent2.error = cursorQuery.getString(columnIndexOrThrow5);
                        }
                        torrent2.downloadingMetadata = cursorQuery.getInt(columnIndexOrThrow9) != 0;
                        torrent2.visibility = cursorQuery.getInt(columnIndexOrThrow10);
                        torrent = torrent2;
                    }
                    if (torrent != null) {
                        cursorQuery.close();
                        return torrent;
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
    public r14 observeTorrentById(String str) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM Torrent WHERE id = ?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        return RxRoom.createFlowable(this.a, false, new String[]{"Torrent"}, new Callable<Torrent>() {
            @Override
            public Torrent call() {
                Torrent torrent = null;
                Cursor cursorQuery = DBUtil.query(TorrentDao_Impl.this.a, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "downloadPath");
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "dateAdded");
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "error");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "manuallyPaused");
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sequentialDownload");
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, SniffDownloadHelper.MAGNET_PREFIX);
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "downloadingMetadata");
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "visibility");
                    int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "firstLastPiecePriority");
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow);
                        String string2 = cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2);
                        Uri uri = UriConverter.toUri(cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3));
                        long j = cursorQuery.getLong(columnIndexOrThrow4);
                        Torrent torrent2 = new Torrent(string, cursorQuery.isNull(columnIndexOrThrow8) ? null : cursorQuery.getString(columnIndexOrThrow8), uri, string2, cursorQuery.getInt(columnIndexOrThrow6) != 0, j, cursorQuery.getInt(columnIndexOrThrow7) != 0, cursorQuery.getInt(columnIndexOrThrow11) != 0);
                        if (cursorQuery.isNull(columnIndexOrThrow5)) {
                            torrent2.error = null;
                        } else {
                            torrent2.error = cursorQuery.getString(columnIndexOrThrow5);
                        }
                        torrent2.downloadingMetadata = cursorQuery.getInt(columnIndexOrThrow9) != 0;
                        torrent2.visibility = cursorQuery.getInt(columnIndexOrThrow10);
                        torrent = torrent2;
                    }
                    return torrent;
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
    public void replaceTags(String str, List list) {
        this.a.beginTransaction();
        try {
            super.replaceTags(str, list);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void update(Torrent torrent) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.f.handle(torrent);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }
}
