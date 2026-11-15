package defpackage;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.EntityUpsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.Collections;
import java.util.List;

public final class nu7 implements l47 {
    public final RoomDatabase a;
    public final EntityUpsertionAdapter b;

    public class a extends EntityInsertionAdapter {
        public a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, qk8 qk8Var) {
            if (qk8Var.a() == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, qk8Var.a());
            }
            if (qk8Var.d() == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, qk8Var.d());
            }
            supportSQLiteStatement.bindLong(3, qk8Var.b());
            if (qk8Var.c() == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, qk8Var.c());
            }
        }

        @Override
        public String createQuery() {
            return "INSERT INTO `click_freq_room` (`codeSeatId`,`pkg`,`count`,`date`) VALUES (?,?,?,?)";
        }
    }

    public class b extends EntityDeletionOrUpdateAdapter {
        public b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, qk8 qk8Var) {
            if (qk8Var.a() == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, qk8Var.a());
            }
            if (qk8Var.d() == null) {
                supportSQLiteStatement.bindNull(2);
            } else {
                supportSQLiteStatement.bindString(2, qk8Var.d());
            }
            supportSQLiteStatement.bindLong(3, qk8Var.b());
            if (qk8Var.c() == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, qk8Var.c());
            }
            if (qk8Var.a() == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindString(5, qk8Var.a());
            }
            if (qk8Var.d() == null) {
                supportSQLiteStatement.bindNull(6);
            } else {
                supportSQLiteStatement.bindString(6, qk8Var.d());
            }
        }

        @Override
        public String createQuery() {
            return "UPDATE `click_freq_room` SET `codeSeatId` = ?,`pkg` = ?,`count` = ?,`date` = ? WHERE `codeSeatId` = ? AND `pkg` = ?";
        }
    }

    public nu7(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new EntityUpsertionAdapter(new a(roomDatabase), new b(roomDatabase));
    }

    @Override
    public long a(qk8 qk8Var) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            long jUpsertAndReturnId = this.b.upsertAndReturnId(qk8Var);
            this.a.setTransactionSuccessful();
            return jUpsertAndReturnId;
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public int b(SupportSQLiteQuery supportSQLiteQuery) {
        this.a.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.a, supportSQLiteQuery, false, null);
        try {
            return cursorQuery.moveToFirst() ? cursorQuery.getInt(0) : 0;
        } finally {
            cursorQuery.close();
        }
    }

    public static List b() {
        return Collections.emptyList();
    }

    @Override
    public Cursor a(SupportSQLiteQuery supportSQLiteQuery) {
        return this.a.query(supportSQLiteQuery);
    }
}
