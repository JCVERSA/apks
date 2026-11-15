package defpackage;

import android.database.Cursor;
import androidx.p004lifecycle.LiveData;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.transsion.dbdata.beans.SubtitleHistory;
import com.transsion.livecaption.constant.ICode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;

public final class x4a implements w4a {
    public final RoomDatabase a;
    public final EntityInsertionAdapter b;
    public final EntityDeletionOrUpdateAdapter c;

    public class a extends EntityInsertionAdapter {
        public a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, SubtitleHistory subtitleHistory) {
            String str = subtitleHistory.subId;
            if (str == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, str);
            }
            String str2 = subtitleHistory.subName;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str2);
            }
            String str3 = subtitleHistory.subPath;
            if (str3 == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, str3);
            }
            String str4 = subtitleHistory.subLanguage;
            if (str4 == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, str4);
            }
            String str5 = subtitleHistory.subLanguageId;
            if (str5 == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindString(5, str5);
            }
            supportSQLiteStatement.bindLong(6, subtitleHistory.subSize);
            supportSQLiteStatement.bindLong(7, subtitleHistory.state);
        }

        @Override
        public String createQuery() {
            return "INSERT OR REPLACE INTO `SubtitleHistory` (`sub_id`,`sub_name`,`sub_path`,`sub_language`,`sub_language_id`,`sub_size`,`state`) VALUES (?,?,?,?,?,?,?)";
        }
    }

    public class b extends EntityDeletionOrUpdateAdapter {
        public b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, SubtitleHistory subtitleHistory) {
            String str = subtitleHistory.subId;
            if (str == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, str);
            }
        }

        @Override
        public String createQuery() {
            return "DELETE FROM `SubtitleHistory` WHERE `sub_id` = ?";
        }
    }

    public class c implements Callable {
        public final RoomSQLiteQuery b;

        public c(RoomSQLiteQuery roomSQLiteQuery) {
            this.b = roomSQLiteQuery;
        }

        @Override
        public List call() {
            Cursor cursorQuery = DBUtil.query(x4a.this.a, this.b, false, null);
            try {
                int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_id");
                int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_name");
                int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_path");
                int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_language");
                int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_language_id");
                int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_size");
                int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, ICode.CALL.CALL_KEY_STATE);
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    SubtitleHistory subtitleHistory = new SubtitleHistory();
                    if (cursorQuery.isNull(columnIndexOrThrow)) {
                        subtitleHistory.subId = null;
                    } else {
                        subtitleHistory.subId = cursorQuery.getString(columnIndexOrThrow);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow2)) {
                        subtitleHistory.subName = null;
                    } else {
                        subtitleHistory.subName = cursorQuery.getString(columnIndexOrThrow2);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow3)) {
                        subtitleHistory.subPath = null;
                    } else {
                        subtitleHistory.subPath = cursorQuery.getString(columnIndexOrThrow3);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow4)) {
                        subtitleHistory.subLanguage = null;
                    } else {
                        subtitleHistory.subLanguage = cursorQuery.getString(columnIndexOrThrow4);
                    }
                    if (cursorQuery.isNull(columnIndexOrThrow5)) {
                        subtitleHistory.subLanguageId = null;
                    } else {
                        subtitleHistory.subLanguageId = cursorQuery.getString(columnIndexOrThrow5);
                    }
                    subtitleHistory.subSize = cursorQuery.getLong(columnIndexOrThrow6);
                    subtitleHistory.state = cursorQuery.getInt(columnIndexOrThrow7);
                    arrayList.add(subtitleHistory);
                }
                return arrayList;
            } finally {
                cursorQuery.close();
            }
        }

        public void finalize() {
            this.b.release();
        }
    }

    public x4a(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new a(roomDatabase);
        this.c = new b(roomDatabase);
    }

    public static List b() {
        return Collections.emptyList();
    }

    @Override
    public int deleteSubtitleHistory(SubtitleHistory subtitleHistory) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandle = this.c.handle(subtitleHistory);
            this.a.setTransactionSuccessful();
            return iHandle;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public int deleteSubtitleHistoryList(List list) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            int iHandleMultiple = this.c.handleMultiple(list);
            this.a.setTransactionSuccessful();
            return iHandleMultiple;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void insertSubtitleHistory(SubtitleHistory subtitleHistory) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.b.insert(subtitleHistory);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public List queryAllDownLoadSubtitle(int i) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM SubtitleHistory LIMIT ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i);
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_name");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_path");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_language");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_language_id");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sub_size");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, ICode.CALL.CALL_KEY_STATE);
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                SubtitleHistory subtitleHistory = new SubtitleHistory();
                if (cursorQuery.isNull(columnIndexOrThrow)) {
                    subtitleHistory.subId = null;
                } else {
                    subtitleHistory.subId = cursorQuery.getString(columnIndexOrThrow);
                }
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    subtitleHistory.subName = null;
                } else {
                    subtitleHistory.subName = cursorQuery.getString(columnIndexOrThrow2);
                }
                if (cursorQuery.isNull(columnIndexOrThrow3)) {
                    subtitleHistory.subPath = null;
                } else {
                    subtitleHistory.subPath = cursorQuery.getString(columnIndexOrThrow3);
                }
                if (cursorQuery.isNull(columnIndexOrThrow4)) {
                    subtitleHistory.subLanguage = null;
                } else {
                    subtitleHistory.subLanguage = cursorQuery.getString(columnIndexOrThrow4);
                }
                if (cursorQuery.isNull(columnIndexOrThrow5)) {
                    subtitleHistory.subLanguageId = null;
                } else {
                    subtitleHistory.subLanguageId = cursorQuery.getString(columnIndexOrThrow5);
                }
                subtitleHistory.subSize = cursorQuery.getLong(columnIndexOrThrow6);
                subtitleHistory.state = cursorQuery.getInt(columnIndexOrThrow7);
                arrayList.add(subtitleHistory);
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public LiveData queryAllDownLoadSubtitleLiveData() {
        return this.a.getInvalidationTracker().createLiveData(new String[]{"SubtitleHistory"}, false, new c(RoomSQLiteQuery.acquire("SELECT * FROM SubtitleHistory", 0)));
    }
}
