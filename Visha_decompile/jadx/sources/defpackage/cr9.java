package defpackage;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.transsion.dbdata.beans.sniff.SniffScriptBean;
import com.transsion.dbdata.beans.sniff.SniffSoucreBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class cr9 implements br9 {
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
        public void bind(SupportSQLiteStatement supportSQLiteStatement, SniffScriptBean sniffScriptBean) {
            String str = sniffScriptBean.script_key;
            if (str == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, str);
            }
            String str2 = sniffScriptBean.script_version;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str2);
            }
            String str3 = sniffScriptBean.script_url;
            if (str3 == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, str3);
            }
            String str4 = sniffScriptBean.sniff_domain;
            if (str4 == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, str4);
            }
            String str5 = sniffScriptBean.sniff_url;
            if (str5 == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindString(5, str5);
            }
            String str6 = sniffScriptBean.script_content;
            if (str6 == null) {
                supportSQLiteStatement.bindNull(6);
            } else {
                supportSQLiteStatement.bindString(6, str6);
            }
            supportSQLiteStatement.bindLong(7, sniffScriptBean.script_status ? 1L : 0L);
            supportSQLiteStatement.bindLong(8, sniffScriptBean.script_updatetime);
            String str7 = sniffScriptBean.js_file_name;
            if (str7 == null) {
                supportSQLiteStatement.bindNull(9);
            } else {
                supportSQLiteStatement.bindString(9, str7);
            }
        }

        @Override
        public String createQuery() {
            return "INSERT OR REPLACE INTO `url_js` (`script_key`,`script_version`,`script_url`,`sniff_domain`,`sniff_url`,`script_content`,`script_status`,`script_updatetime`,`js_file_name`) VALUES (?,?,?,?,?,?,?,?,?)";
        }
    }

    public class b extends EntityDeletionOrUpdateAdapter {
        public b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, SniffScriptBean sniffScriptBean) {
            String str = sniffScriptBean.script_key;
            if (str == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, str);
            }
        }

        @Override
        public String createQuery() {
            return "DELETE FROM `url_js` WHERE `script_key` = ?";
        }
    }

    public class c extends EntityDeletionOrUpdateAdapter {
        public c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, SniffScriptBean sniffScriptBean) {
            String str = sniffScriptBean.script_key;
            if (str == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, str);
            }
            String str2 = sniffScriptBean.script_version;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, str2);
            }
            String str3 = sniffScriptBean.script_url;
            if (str3 == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, str3);
            }
            String str4 = sniffScriptBean.sniff_domain;
            if (str4 == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, str4);
            }
            String str5 = sniffScriptBean.sniff_url;
            if (str5 == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindString(5, str5);
            }
            String str6 = sniffScriptBean.script_content;
            if (str6 == null) {
                supportSQLiteStatement.bindNull(6);
            } else {
                supportSQLiteStatement.bindString(6, str6);
            }
            supportSQLiteStatement.bindLong(7, sniffScriptBean.script_status ? 1L : 0L);
            supportSQLiteStatement.bindLong(8, sniffScriptBean.script_updatetime);
            String str7 = sniffScriptBean.js_file_name;
            if (str7 == null) {
                supportSQLiteStatement.bindNull(9);
            } else {
                supportSQLiteStatement.bindString(9, str7);
            }
            String str8 = sniffScriptBean.script_key;
            if (str8 == null) {
                supportSQLiteStatement.bindNull(10);
            } else {
                supportSQLiteStatement.bindString(10, str8);
            }
        }

        @Override
        public String createQuery() {
            return "UPDATE OR ABORT `url_js` SET `script_key` = ?,`script_version` = ?,`script_url` = ?,`sniff_domain` = ?,`sniff_url` = ?,`script_content` = ?,`script_status` = ?,`script_updatetime` = ?,`js_file_name` = ? WHERE `script_key` = ?";
        }
    }

    public class d extends SharedSQLiteStatement {
        public d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String createQuery() {
            return "DELETE FROM url_js";
        }
    }

    public cr9(RoomDatabase roomDatabase) {
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
    public void delete(SniffScriptBean sniffScriptBean) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.c.handle(sniffScriptBean);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public void deleteAll() {
        this.a.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.e.acquire();
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
    public List getAllSniffUrls() {
        String str;
        boolean z = false;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM url_js", 0);
        this.a.assertNotSuspendingTransaction();
        String str2 = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "script_key");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "script_version");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "script_url");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sniff_domain");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, SniffSoucreBean.JSON_KEY_SNIFF_URL);
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "script_content");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "script_status");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "script_updatetime");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "js_file_name");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                SniffScriptBean sniffScriptBean = new SniffScriptBean();
                if (cursorQuery.isNull(columnIndexOrThrow)) {
                    sniffScriptBean.script_key = str2;
                } else {
                    sniffScriptBean.script_key = cursorQuery.getString(columnIndexOrThrow);
                }
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    sniffScriptBean.script_version = str2;
                } else {
                    sniffScriptBean.script_version = cursorQuery.getString(columnIndexOrThrow2);
                }
                if (cursorQuery.isNull(columnIndexOrThrow3)) {
                    sniffScriptBean.script_url = str2;
                } else {
                    sniffScriptBean.script_url = cursorQuery.getString(columnIndexOrThrow3);
                }
                if (cursorQuery.isNull(columnIndexOrThrow4)) {
                    sniffScriptBean.sniff_domain = str2;
                } else {
                    sniffScriptBean.sniff_domain = cursorQuery.getString(columnIndexOrThrow4);
                }
                if (cursorQuery.isNull(columnIndexOrThrow5)) {
                    sniffScriptBean.sniff_url = str2;
                } else {
                    sniffScriptBean.sniff_url = cursorQuery.getString(columnIndexOrThrow5);
                }
                if (cursorQuery.isNull(columnIndexOrThrow6)) {
                    sniffScriptBean.script_content = str2;
                } else {
                    sniffScriptBean.script_content = cursorQuery.getString(columnIndexOrThrow6);
                }
                sniffScriptBean.script_status = cursorQuery.getInt(columnIndexOrThrow7) != 0 ? true : z;
                sniffScriptBean.script_updatetime = cursorQuery.getLong(columnIndexOrThrow8);
                if (cursorQuery.isNull(columnIndexOrThrow9)) {
                    str = null;
                    sniffScriptBean.js_file_name = null;
                } else {
                    str = null;
                    sniffScriptBean.js_file_name = cursorQuery.getString(columnIndexOrThrow9);
                }
                arrayList.add(sniffScriptBean);
                str2 = str;
                z = false;
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public SniffScriptBean getSniffScriptEntity(String str) {
        boolean z = true;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM url_js WHERE script_key = ?", 1);
        if (str == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, str);
        }
        this.a.assertNotSuspendingTransaction();
        SniffScriptBean sniffScriptBean = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "script_key");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "script_version");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "script_url");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sniff_domain");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, SniffSoucreBean.JSON_KEY_SNIFF_URL);
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "script_content");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "script_status");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "script_updatetime");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "js_file_name");
            if (cursorQuery.moveToFirst()) {
                SniffScriptBean sniffScriptBean2 = new SniffScriptBean();
                if (cursorQuery.isNull(columnIndexOrThrow)) {
                    sniffScriptBean2.script_key = null;
                } else {
                    sniffScriptBean2.script_key = cursorQuery.getString(columnIndexOrThrow);
                }
                if (cursorQuery.isNull(columnIndexOrThrow2)) {
                    sniffScriptBean2.script_version = null;
                } else {
                    sniffScriptBean2.script_version = cursorQuery.getString(columnIndexOrThrow2);
                }
                if (cursorQuery.isNull(columnIndexOrThrow3)) {
                    sniffScriptBean2.script_url = null;
                } else {
                    sniffScriptBean2.script_url = cursorQuery.getString(columnIndexOrThrow3);
                }
                if (cursorQuery.isNull(columnIndexOrThrow4)) {
                    sniffScriptBean2.sniff_domain = null;
                } else {
                    sniffScriptBean2.sniff_domain = cursorQuery.getString(columnIndexOrThrow4);
                }
                if (cursorQuery.isNull(columnIndexOrThrow5)) {
                    sniffScriptBean2.sniff_url = null;
                } else {
                    sniffScriptBean2.sniff_url = cursorQuery.getString(columnIndexOrThrow5);
                }
                if (cursorQuery.isNull(columnIndexOrThrow6)) {
                    sniffScriptBean2.script_content = null;
                } else {
                    sniffScriptBean2.script_content = cursorQuery.getString(columnIndexOrThrow6);
                }
                if (cursorQuery.getInt(columnIndexOrThrow7) == 0) {
                    z = false;
                }
                sniffScriptBean2.script_status = z;
                sniffScriptBean2.script_updatetime = cursorQuery.getLong(columnIndexOrThrow8);
                if (cursorQuery.isNull(columnIndexOrThrow9)) {
                    sniffScriptBean2.js_file_name = null;
                } else {
                    sniffScriptBean2.js_file_name = cursorQuery.getString(columnIndexOrThrow9);
                }
                sniffScriptBean = sniffScriptBean2;
            }
            return sniffScriptBean;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public void insert(SniffScriptBean sniffScriptBean) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.b.insert(sniffScriptBean);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
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
    public void updateSniffScriptEntity(SniffScriptBean sniffScriptBean) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.d.handle(sniffScriptBean);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }
}
