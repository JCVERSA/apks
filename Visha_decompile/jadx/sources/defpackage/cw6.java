package defpackage;

import android.database.Cursor;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.musicvideo.MusicVideoDataBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class cw6 implements bw6 {
    public final RoomDatabase a;
    public final EntityInsertionAdapter b;
    public final EntityDeletionOrUpdateAdapter c;
    public final EntityDeletionOrUpdateAdapter d;
    public final SharedSQLiteStatement e;

    public class a extends EntityInsertionAdapter {
        public a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, MusicVideoDataBean musicVideoDataBean) {
            supportSQLiteStatement.bindLong(1, musicVideoDataBean.id);
            String str = musicVideoDataBean.parentPath;
            if (str == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str);
            }
            supportSQLiteStatement.bindLong(3, musicVideoDataBean.bucketId);
            String str2 = musicVideoDataBean.title;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, str2);
            }
            String str3 = musicVideoDataBean.displayName;
            if (str3 == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindString(5, str3);
            }
            supportSQLiteStatement.bindLong(6, musicVideoDataBean.year);
            String str4 = musicVideoDataBean.mineType;
            if (str4 == null) {
                supportSQLiteStatement.bindNull(7);
            } else {
                supportSQLiteStatement.bindString(7, str4);
            }
            supportSQLiteStatement.bindLong(8, musicVideoDataBean.duration);
            String str5 = musicVideoDataBean.data;
            if (str5 == null) {
                supportSQLiteStatement.bindNull(9);
            } else {
                supportSQLiteStatement.bindString(9, str5);
            }
            supportSQLiteStatement.bindLong(10, musicVideoDataBean.dateAdd);
            supportSQLiteStatement.bindLong(11, musicVideoDataBean.dateModified);
            supportSQLiteStatement.bindLong(12, musicVideoDataBean.albumId);
            String str6 = musicVideoDataBean.albumName;
            if (str6 == null) {
                supportSQLiteStatement.bindNull(13);
            } else {
                supportSQLiteStatement.bindString(13, str6);
            }
            supportSQLiteStatement.bindLong(14, musicVideoDataBean.artistId);
            String str7 = musicVideoDataBean.artistName;
            if (str7 == null) {
                supportSQLiteStatement.bindNull(15);
            } else {
                supportSQLiteStatement.bindString(15, str7);
            }
            supportSQLiteStatement.bindLong(16, musicVideoDataBean.size);
            String str8 = musicVideoDataBean.uri;
            if (str8 == null) {
                supportSQLiteStatement.bindNull(17);
            } else {
                supportSQLiteStatement.bindString(17, str8);
            }
            String str9 = musicVideoDataBean.bucketDisplayName;
            if (str9 == null) {
                supportSQLiteStatement.bindNull(18);
            } else {
                supportSQLiteStatement.bindString(18, str9);
            }
        }

        @Override
        public String createQuery() {
            return "INSERT OR REPLACE INTO `music_video` (`id`,`parentPath`,`bucketId`,`title`,`displayName`,`year`,`mineType`,`duration`,`data`,`dateAdd`,`dateModified`,`albumId`,`albumName`,`artistId`,`artistName`,`size`,`uri`,`bucketDisplayName`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }
    }

    public class b extends EntityDeletionOrUpdateAdapter {
        public b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, MusicVideoDataBean musicVideoDataBean) {
            supportSQLiteStatement.bindLong(1, musicVideoDataBean.id);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM `music_video` WHERE `id` = ?";
        }
    }

    public class c extends EntityDeletionOrUpdateAdapter {
        public c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, MusicVideoDataBean musicVideoDataBean) {
            supportSQLiteStatement.bindLong(1, musicVideoDataBean.id);
            String str = musicVideoDataBean.parentPath;
            if (str == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str);
            }
            supportSQLiteStatement.bindLong(3, musicVideoDataBean.bucketId);
            String str2 = musicVideoDataBean.title;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, str2);
            }
            String str3 = musicVideoDataBean.displayName;
            if (str3 == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindString(5, str3);
            }
            supportSQLiteStatement.bindLong(6, musicVideoDataBean.year);
            String str4 = musicVideoDataBean.mineType;
            if (str4 == null) {
                supportSQLiteStatement.bindNull(7);
            } else {
                supportSQLiteStatement.bindString(7, str4);
            }
            supportSQLiteStatement.bindLong(8, musicVideoDataBean.duration);
            String str5 = musicVideoDataBean.data;
            if (str5 == null) {
                supportSQLiteStatement.bindNull(9);
            } else {
                supportSQLiteStatement.bindString(9, str5);
            }
            supportSQLiteStatement.bindLong(10, musicVideoDataBean.dateAdd);
            supportSQLiteStatement.bindLong(11, musicVideoDataBean.dateModified);
            supportSQLiteStatement.bindLong(12, musicVideoDataBean.albumId);
            String str6 = musicVideoDataBean.albumName;
            if (str6 == null) {
                supportSQLiteStatement.bindNull(13);
            } else {
                supportSQLiteStatement.bindString(13, str6);
            }
            supportSQLiteStatement.bindLong(14, musicVideoDataBean.artistId);
            String str7 = musicVideoDataBean.artistName;
            if (str7 == null) {
                supportSQLiteStatement.bindNull(15);
            } else {
                supportSQLiteStatement.bindString(15, str7);
            }
            supportSQLiteStatement.bindLong(16, musicVideoDataBean.size);
            String str8 = musicVideoDataBean.uri;
            if (str8 == null) {
                supportSQLiteStatement.bindNull(17);
            } else {
                supportSQLiteStatement.bindString(17, str8);
            }
            String str9 = musicVideoDataBean.bucketDisplayName;
            if (str9 == null) {
                supportSQLiteStatement.bindNull(18);
            } else {
                supportSQLiteStatement.bindString(18, str9);
            }
            supportSQLiteStatement.bindLong(19, musicVideoDataBean.id);
        }

        @Override
        public String createQuery() {
            return "UPDATE OR ABORT `music_video` SET `id` = ?,`parentPath` = ?,`bucketId` = ?,`title` = ?,`displayName` = ?,`year` = ?,`mineType` = ?,`duration` = ?,`data` = ?,`dateAdd` = ?,`dateModified` = ?,`albumId` = ?,`albumName` = ?,`artistId` = ?,`artistName` = ?,`size` = ?,`uri` = ?,`bucketDisplayName` = ? WHERE `id` = ?";
        }
    }

    public class d extends SharedSQLiteStatement {
        public d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM music_video WHERE id = ?";
        }
    }

    public cw6(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new a(roomDatabase);
        this.c = new b(roomDatabase);
        this.d = new c(roomDatabase);
        this.e = new d(roomDatabase);
    }

    public static List a() {
        return Collections.emptyList();
    }

    @Override
    public void delete(MusicVideoDataBean musicVideoDataBean) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.c.handle(musicVideoDataBean);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void deleteById(int i) {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.e.acquire();
        supportSQLiteStatementAcquire.bindLong(1, i);
        try {
            this.a.beginTransaction();
            try {
                supportSQLiteStatementAcquire.executeUpdateDelete();
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
                this.e.release(supportSQLiteStatementAcquire);
            } catch (Throwable th) {
                this.a.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            this.e.release(supportSQLiteStatementAcquire);
            throw th2;
        }
    }

    @Override
    public List getAll() throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM music_video", 0);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayAudioData.TAG_PARENT_PATH);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "bucketId");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "title");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayName");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "year");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mineType");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "data");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "dateAdd");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "dateModified");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "albumId");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "albumName");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "artistId");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "artistName");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayAudioData.TAG_SIZE);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "uri");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "bucketDisplayName");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    int i2 = cursorQuery.getInt(columnIndexOrThrow);
                    String string = cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2);
                    long j = cursorQuery.getLong(columnIndexOrThrow3);
                    String string2 = cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4);
                    String string3 = cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5);
                    int i3 = cursorQuery.getInt(columnIndexOrThrow6);
                    String string4 = cursorQuery.isNull(columnIndexOrThrow7) ? null : cursorQuery.getString(columnIndexOrThrow7);
                    long j2 = cursorQuery.getLong(columnIndexOrThrow8);
                    String string5 = cursorQuery.isNull(columnIndexOrThrow9) ? null : cursorQuery.getString(columnIndexOrThrow9);
                    long j3 = cursorQuery.getLong(columnIndexOrThrow10);
                    long j4 = cursorQuery.getLong(columnIndexOrThrow11);
                    int i4 = cursorQuery.getInt(columnIndexOrThrow12);
                    String string6 = cursorQuery.isNull(columnIndexOrThrow13) ? null : cursorQuery.getString(columnIndexOrThrow13);
                    int i5 = cursorQuery.getInt(i);
                    int i6 = columnIndexOrThrow;
                    columnIndexOrThrow15 = columnIndexOrThrow15;
                    String string7 = cursorQuery.isNull(columnIndexOrThrow15) ? null : cursorQuery.getString(columnIndexOrThrow15);
                    long j5 = cursorQuery.getLong(columnIndexOrThrow16);
                    columnIndexOrThrow16 = columnIndexOrThrow16;
                    columnIndexOrThrow17 = columnIndexOrThrow17;
                    arrayList.add(new MusicVideoDataBean(i2, string, j, string2, string3, i3, string4, j2, string5, j3, j4, i4, string6, i5, string7, j5, cursorQuery.isNull(columnIndexOrThrow17) ? null : cursorQuery.getString(columnIndexOrThrow17), cursorQuery.isNull(columnIndexOrThrow18) ? null : cursorQuery.getString(columnIndexOrThrow18)));
                    columnIndexOrThrow = i6;
                    i = i;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public List getAllByIds(List list) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("SELECT * FROM music_video WHERE id IN (");
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
                Integer num = (Integer) it.next();
                if (num == null) {
                    roomSQLiteQueryAcquire.bindNull(i);
                } else {
                    roomSQLiteQueryAcquire.bindLong(i, num.intValue());
                }
                i++;
            }
        }
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayAudioData.TAG_PARENT_PATH);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "bucketId");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "title");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayName");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "year");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mineType");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "data");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "dateAdd");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "dateModified");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "albumId");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "albumName");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "artistId");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "artistName");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayAudioData.TAG_SIZE);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "uri");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "bucketDisplayName");
                int i2 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    int i3 = cursorQuery.getInt(columnIndexOrThrow);
                    String string = cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2);
                    long j = cursorQuery.getLong(columnIndexOrThrow3);
                    String string2 = cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4);
                    String string3 = cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5);
                    int i4 = cursorQuery.getInt(columnIndexOrThrow6);
                    String string4 = cursorQuery.isNull(columnIndexOrThrow7) ? null : cursorQuery.getString(columnIndexOrThrow7);
                    long j2 = cursorQuery.getLong(columnIndexOrThrow8);
                    String string5 = cursorQuery.isNull(columnIndexOrThrow9) ? null : cursorQuery.getString(columnIndexOrThrow9);
                    long j3 = cursorQuery.getLong(columnIndexOrThrow10);
                    long j4 = cursorQuery.getLong(columnIndexOrThrow11);
                    int i5 = cursorQuery.getInt(columnIndexOrThrow12);
                    String string6 = cursorQuery.isNull(columnIndexOrThrow13) ? null : cursorQuery.getString(columnIndexOrThrow13);
                    int i6 = cursorQuery.getInt(i2);
                    int i7 = columnIndexOrThrow;
                    columnIndexOrThrow15 = columnIndexOrThrow15;
                    String string7 = cursorQuery.isNull(columnIndexOrThrow15) ? null : cursorQuery.getString(columnIndexOrThrow15);
                    long j5 = cursorQuery.getLong(columnIndexOrThrow16);
                    columnIndexOrThrow16 = columnIndexOrThrow16;
                    columnIndexOrThrow17 = columnIndexOrThrow17;
                    arrayList.add(new MusicVideoDataBean(i3, string, j, string2, string3, i4, string4, j2, string5, j3, j4, i5, string6, i6, string7, j5, cursorQuery.isNull(columnIndexOrThrow17) ? null : cursorQuery.getString(columnIndexOrThrow17), cursorQuery.isNull(columnIndexOrThrow18) ? null : cursorQuery.getString(columnIndexOrThrow18)));
                    columnIndexOrThrow = i7;
                    i2 = i2;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public List getAllByTitleAndIds(String str, List list) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("SELECT * FROM music_video WHERE title = ");
        sbNewStringBuilder.append("?");
        sbNewStringBuilder.append(" AND id IN (");
        int size = list == null ? 1 : list.size();
        StringUtil.appendPlaceholders(sbNewStringBuilder, size);
        sbNewStringBuilder.append(")");
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire(sbNewStringBuilder.toString(), size + 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        int i = 2;
        if (list == null) {
            roomSQLiteQueryAcquire.bindNull(2);
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                if (num == null) {
                    roomSQLiteQueryAcquire.bindNull(i);
                } else {
                    roomSQLiteQueryAcquire.bindLong(i, num.intValue());
                }
                i++;
            }
        }
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayAudioData.TAG_PARENT_PATH);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "bucketId");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "title");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayName");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "year");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mineType");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "data");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "dateAdd");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "dateModified");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "albumId");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "albumName");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "artistId");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "artistName");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayAudioData.TAG_SIZE);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "uri");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "bucketDisplayName");
                int i2 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    int i3 = cursorQuery.getInt(columnIndexOrThrow);
                    String string = cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2);
                    long j = cursorQuery.getLong(columnIndexOrThrow3);
                    String string2 = cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4);
                    String string3 = cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5);
                    int i4 = cursorQuery.getInt(columnIndexOrThrow6);
                    String string4 = cursorQuery.isNull(columnIndexOrThrow7) ? null : cursorQuery.getString(columnIndexOrThrow7);
                    long j2 = cursorQuery.getLong(columnIndexOrThrow8);
                    String string5 = cursorQuery.isNull(columnIndexOrThrow9) ? null : cursorQuery.getString(columnIndexOrThrow9);
                    long j3 = cursorQuery.getLong(columnIndexOrThrow10);
                    long j4 = cursorQuery.getLong(columnIndexOrThrow11);
                    int i5 = cursorQuery.getInt(columnIndexOrThrow12);
                    String string6 = cursorQuery.isNull(columnIndexOrThrow13) ? null : cursorQuery.getString(columnIndexOrThrow13);
                    int i6 = cursorQuery.getInt(i2);
                    int i7 = columnIndexOrThrow;
                    columnIndexOrThrow15 = columnIndexOrThrow15;
                    String string7 = cursorQuery.isNull(columnIndexOrThrow15) ? null : cursorQuery.getString(columnIndexOrThrow15);
                    int i8 = columnIndexOrThrow16;
                    long j5 = cursorQuery.getLong(i8);
                    columnIndexOrThrow16 = i8;
                    columnIndexOrThrow17 = columnIndexOrThrow17;
                    arrayList.add(new MusicVideoDataBean(i3, string, j, string2, string3, i4, string4, j2, string5, j3, j4, i5, string6, i6, string7, j5, cursorQuery.isNull(columnIndexOrThrow17) ? null : cursorQuery.getString(columnIndexOrThrow17), cursorQuery.isNull(columnIndexOrThrow18) ? null : cursorQuery.getString(columnIndexOrThrow18)));
                    columnIndexOrThrow = i7;
                    i2 = i2;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public MusicVideoDataBean getMusicVideoById(int i) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        MusicVideoDataBean musicVideoDataBean;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM music_video WHERE id = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayAudioData.TAG_PARENT_PATH);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "bucketId");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "title");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayName");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "year");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mineType");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "data");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "dateAdd");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "dateModified");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "albumId");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "albumName");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "artistId");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "artistName");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayAudioData.TAG_SIZE);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "uri");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "bucketDisplayName");
                if (cursorQuery.moveToFirst()) {
                    musicVideoDataBean = new MusicVideoDataBean(cursorQuery.getInt(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getLong(columnIndexOrThrow3), cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4), cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5), cursorQuery.getInt(columnIndexOrThrow6), cursorQuery.isNull(columnIndexOrThrow7) ? null : cursorQuery.getString(columnIndexOrThrow7), cursorQuery.getLong(columnIndexOrThrow8), cursorQuery.isNull(columnIndexOrThrow9) ? null : cursorQuery.getString(columnIndexOrThrow9), cursorQuery.getLong(columnIndexOrThrow10), cursorQuery.getLong(columnIndexOrThrow11), cursorQuery.getInt(columnIndexOrThrow12), cursorQuery.isNull(columnIndexOrThrow13) ? null : cursorQuery.getString(columnIndexOrThrow13), cursorQuery.getInt(columnIndexOrThrow14), cursorQuery.isNull(columnIndexOrThrow15) ? null : cursorQuery.getString(columnIndexOrThrow15), cursorQuery.getLong(columnIndexOrThrow16), cursorQuery.isNull(columnIndexOrThrow17) ? null : cursorQuery.getString(columnIndexOrThrow17), cursorQuery.isNull(columnIndexOrThrow18) ? null : cursorQuery.getString(columnIndexOrThrow18));
                } else {
                    musicVideoDataBean = null;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return musicVideoDataBean;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public List getMusicVideoByTitleOrDisplay(String str) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM music_video WHERE title = ? OR displayName = ?", 2);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(2);
        } else {
            roomSQLiteQueryAcquire.bindString(2, str);
        }
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayAudioData.TAG_PARENT_PATH);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "bucketId");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "title");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayName");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "year");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mineType");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "data");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "dateAdd");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "dateModified");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "albumId");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "albumName");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "artistId");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "artistName");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayAudioData.TAG_SIZE);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "uri");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "bucketDisplayName");
                int i = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    int i2 = cursorQuery.getInt(columnIndexOrThrow);
                    String string = cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2);
                    long j = cursorQuery.getLong(columnIndexOrThrow3);
                    String string2 = cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4);
                    String string3 = cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5);
                    int i3 = cursorQuery.getInt(columnIndexOrThrow6);
                    String string4 = cursorQuery.isNull(columnIndexOrThrow7) ? null : cursorQuery.getString(columnIndexOrThrow7);
                    long j2 = cursorQuery.getLong(columnIndexOrThrow8);
                    String string5 = cursorQuery.isNull(columnIndexOrThrow9) ? null : cursorQuery.getString(columnIndexOrThrow9);
                    long j3 = cursorQuery.getLong(columnIndexOrThrow10);
                    long j4 = cursorQuery.getLong(columnIndexOrThrow11);
                    int i4 = cursorQuery.getInt(columnIndexOrThrow12);
                    String string6 = cursorQuery.isNull(columnIndexOrThrow13) ? null : cursorQuery.getString(columnIndexOrThrow13);
                    int i5 = cursorQuery.getInt(i);
                    int i6 = columnIndexOrThrow;
                    columnIndexOrThrow15 = columnIndexOrThrow15;
                    String string7 = cursorQuery.isNull(columnIndexOrThrow15) ? null : cursorQuery.getString(columnIndexOrThrow15);
                    long j5 = cursorQuery.getLong(columnIndexOrThrow16);
                    columnIndexOrThrow16 = columnIndexOrThrow16;
                    columnIndexOrThrow17 = columnIndexOrThrow17;
                    arrayList.add(new MusicVideoDataBean(i2, string, j, string2, string3, i3, string4, j2, string5, j3, j4, i4, string6, i5, string7, j5, cursorQuery.isNull(columnIndexOrThrow17) ? null : cursorQuery.getString(columnIndexOrThrow17), cursorQuery.isNull(columnIndexOrThrow18) ? null : cursorQuery.getString(columnIndexOrThrow18)));
                    columnIndexOrThrow = i6;
                    i = i;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public MusicVideoDataBean getMusicVideoListByDisplayName(String str) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        MusicVideoDataBean musicVideoDataBean;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM music_video WHERE displayName = ?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayAudioData.TAG_PARENT_PATH);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "bucketId");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "title");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayName");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "year");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mineType");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "data");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "dateAdd");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "dateModified");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "albumId");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "albumName");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "artistId");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "artistName");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayAudioData.TAG_SIZE);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "uri");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "bucketDisplayName");
                if (cursorQuery.moveToFirst()) {
                    musicVideoDataBean = new MusicVideoDataBean(cursorQuery.getInt(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getLong(columnIndexOrThrow3), cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4), cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5), cursorQuery.getInt(columnIndexOrThrow6), cursorQuery.isNull(columnIndexOrThrow7) ? null : cursorQuery.getString(columnIndexOrThrow7), cursorQuery.getLong(columnIndexOrThrow8), cursorQuery.isNull(columnIndexOrThrow9) ? null : cursorQuery.getString(columnIndexOrThrow9), cursorQuery.getLong(columnIndexOrThrow10), cursorQuery.getLong(columnIndexOrThrow11), cursorQuery.getInt(columnIndexOrThrow12), cursorQuery.isNull(columnIndexOrThrow13) ? null : cursorQuery.getString(columnIndexOrThrow13), cursorQuery.getInt(columnIndexOrThrow14), cursorQuery.isNull(columnIndexOrThrow15) ? null : cursorQuery.getString(columnIndexOrThrow15), cursorQuery.getLong(columnIndexOrThrow16), cursorQuery.isNull(columnIndexOrThrow17) ? null : cursorQuery.getString(columnIndexOrThrow17), cursorQuery.isNull(columnIndexOrThrow18) ? null : cursorQuery.getString(columnIndexOrThrow18));
                } else {
                    musicVideoDataBean = null;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return musicVideoDataBean;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public MusicVideoDataBean getMusicVideoListByPath(String str) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        MusicVideoDataBean musicVideoDataBean;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM music_video WHERE data = ?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayAudioData.TAG_PARENT_PATH);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "bucketId");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "title");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "displayName");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "year");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "mineType");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "data");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "dateAdd");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "dateModified");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "albumId");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "albumName");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "artistId");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "artistName");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(cursorQuery, PlayAudioData.TAG_SIZE);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "uri");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "bucketDisplayName");
                if (cursorQuery.moveToFirst()) {
                    musicVideoDataBean = new MusicVideoDataBean(cursorQuery.getInt(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getLong(columnIndexOrThrow3), cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4), cursorQuery.isNull(columnIndexOrThrow5) ? null : cursorQuery.getString(columnIndexOrThrow5), cursorQuery.getInt(columnIndexOrThrow6), cursorQuery.isNull(columnIndexOrThrow7) ? null : cursorQuery.getString(columnIndexOrThrow7), cursorQuery.getLong(columnIndexOrThrow8), cursorQuery.isNull(columnIndexOrThrow9) ? null : cursorQuery.getString(columnIndexOrThrow9), cursorQuery.getLong(columnIndexOrThrow10), cursorQuery.getLong(columnIndexOrThrow11), cursorQuery.getInt(columnIndexOrThrow12), cursorQuery.isNull(columnIndexOrThrow13) ? null : cursorQuery.getString(columnIndexOrThrow13), cursorQuery.getInt(columnIndexOrThrow14), cursorQuery.isNull(columnIndexOrThrow15) ? null : cursorQuery.getString(columnIndexOrThrow15), cursorQuery.getLong(columnIndexOrThrow16), cursorQuery.isNull(columnIndexOrThrow17) ? null : cursorQuery.getString(columnIndexOrThrow17), cursorQuery.isNull(columnIndexOrThrow18) ? null : cursorQuery.getString(columnIndexOrThrow18));
                } else {
                    musicVideoDataBean = null;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return musicVideoDataBean;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override
    public void insertAll(List list) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.b.insert((Iterable) list);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public int update(MusicVideoDataBean musicVideoDataBean) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandle = this.d.handle(musicVideoDataBean);
            this.a.setTransactionSuccessful();
            return iHandle;
        } finally {
            this.a.endTransaction();
        }
    }
}
