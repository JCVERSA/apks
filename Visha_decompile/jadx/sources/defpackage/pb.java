package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

public class pb implements zs1 {
    public final SQLiteOpenHelper a;
    public final c b;
    public final Object c;
    public final Map d;

    public static final class a extends SQLiteOpenHelper {
        public final zs1.a b;
        public final pb c;
        public final zs1.c d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, String str, int i, zs1.a aVar, pb pbVar, zs1.c cVar) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, i);
            this.b = aVar;
            this.c = pbVar;
            this.d = cVar;
        }

        @Override
        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
            y45.j(sQLiteDatabase, "db");
            sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
        }

        @Override
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            y45.j(sQLiteDatabase, "sqLiteDatabase");
            this.b.a(this.c.c(sQLiteDatabase));
        }

        @Override
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            y45.j(sQLiteDatabase, "sqLiteDatabase");
            this.d.a(this.c.c(sQLiteDatabase), i, i2);
        }
    }

    public final class b implements zs1.b {
        public final SQLiteDatabase b;
        public final d c;
        public final pb d;

        public b(pb pbVar, SQLiteDatabase sQLiteDatabase, d dVar) {
            y45.j(sQLiteDatabase, "mDb");
            y45.j(dVar, "mOpenCloseInfo");
            this.d = pbVar;
            this.b = sQLiteDatabase;
            this.c = dVar;
        }

        @Override
        public void beginTransaction() {
            this.b.beginTransaction();
        }

        @Override
        public void close() {
            this.d.b.a(this.b);
        }

        @Override
        public SQLiteStatement compileStatement(String str) {
            y45.j(str, "sql");
            SQLiteStatement sQLiteStatementCompileStatement = this.b.compileStatement(str);
            y45.i(sQLiteStatementCompileStatement, "mDb.compileStatement(sql)");
            return sQLiteStatementCompileStatement;
        }

        @Override
        public void endTransaction() {
            this.b.endTransaction();
        }

        @Override
        public void execSQL(String str) {
            y45.j(str, "sql");
            this.b.execSQL(str);
        }

        @Override
        public Cursor rawQuery(String str, String[] strArr) {
            y45.j(str, "query");
            Cursor cursorRawQuery = this.b.rawQuery(str, strArr);
            y45.i(cursorRawQuery, "mDb.rawQuery(query, selectionArgs)");
            return cursorRawQuery;
        }

        @Override
        public void setTransactionSuccessful() {
            this.b.setTransactionSuccessful();
        }
    }

    public static final class c {
        public final SQLiteOpenHelper a;
        public final Set b;
        public int c;
        public SQLiteDatabase d;
        public final Set e;
        public int f;
        public SQLiteDatabase g;

        public c(SQLiteOpenHelper sQLiteOpenHelper) {
            y45.j(sQLiteOpenHelper, "databaseHelper");
            this.a = sQLiteOpenHelper;
            this.b = new LinkedHashSet();
            this.e = new LinkedHashSet();
        }

        public final synchronized void a(SQLiteDatabase sQLiteDatabase) {
            try {
                y45.j(sQLiteDatabase, "mDb");
                if (y45.e(sQLiteDatabase, this.g)) {
                    this.e.remove(Thread.currentThread());
                    if (this.e.isEmpty()) {
                        while (true) {
                            int i = this.f;
                            this.f = i - 1;
                            if (i <= 0) {
                                break;
                            }
                            SQLiteDatabase sQLiteDatabase2 = this.g;
                            y45.g(sQLiteDatabase2);
                            sQLiteDatabase2.close();
                        }
                    }
                } else if (y45.e(sQLiteDatabase, this.d)) {
                    this.b.remove(Thread.currentThread());
                    if (this.b.isEmpty()) {
                        while (true) {
                            int i2 = this.c;
                            this.c = i2 - 1;
                            if (i2 <= 0) {
                                break;
                            }
                            SQLiteDatabase sQLiteDatabase3 = this.d;
                            y45.g(sQLiteDatabase3);
                            sQLiteDatabase3.close();
                        }
                    }
                } else {
                    xi.i("Trying to close unknown database from DatabaseManager");
                    sQLiteDatabase.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        public final synchronized SQLiteDatabase b() {
            SQLiteDatabase sQLiteDatabase;
            this.d = this.a.getReadableDatabase();
            this.c++;
            Set set = this.b;
            Thread threadCurrentThread = Thread.currentThread();
            y45.i(threadCurrentThread, "currentThread()");
            set.add(threadCurrentThread);
            sQLiteDatabase = this.d;
            y45.g(sQLiteDatabase);
            return sQLiteDatabase;
        }

        public final synchronized SQLiteDatabase c() {
            SQLiteDatabase sQLiteDatabase;
            this.g = this.a.getWritableDatabase();
            this.f++;
            Set set = this.e;
            Thread threadCurrentThread = Thread.currentThread();
            y45.i(threadCurrentThread, "currentThread()");
            set.add(threadCurrentThread);
            sQLiteDatabase = this.g;
            y45.g(sQLiteDatabase);
            return sQLiteDatabase;
        }
    }

    public static final class d {
        public int a;

        public final int a() {
            return this.a;
        }

        public final void b(int i) {
            this.a = i;
        }
    }

    public pb(Context context, String str, int i, zs1.a aVar, zs1.c cVar) {
        y45.j(context, "context");
        y45.j(str, "name");
        y45.j(aVar, "ccb");
        y45.j(cVar, "ucb");
        this.c = new Object();
        this.d = new HashMap();
        a aVar2 = new a(context, str, i, aVar, this, cVar);
        this.a = aVar2;
        this.b = new c(aVar2);
    }

    public final d b(SQLiteDatabase sQLiteDatabase) {
        d dVar;
        synchronized (this.c) {
            try {
                dVar = (d) this.d.get(sQLiteDatabase);
                if (dVar == null) {
                    dVar = new d();
                    this.d.put(sQLiteDatabase, dVar);
                }
                dVar.b(dVar.a() + 1);
                dVar.a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return dVar;
    }

    public zs1.b c(SQLiteDatabase sQLiteDatabase) {
        y45.j(sQLiteDatabase, "sqLiteDatabase");
        return new b(this, sQLiteDatabase, b(sQLiteDatabase));
    }

    @Override
    public zs1.b getReadableDatabase() {
        return c(this.b.b());
    }

    @Override
    public zs1.b getWritableDatabase() {
        return c(this.b.c());
    }
}
