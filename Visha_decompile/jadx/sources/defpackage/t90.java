package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.Lock;

public abstract class t90 {
    public static String d;
    public Lock a;
    public SQLiteOpenHelper b;
    public SQLiteDatabase c;

    public t90(SQLiteOpenHelper sQLiteOpenHelper) {
        d = getClass().getSimpleName();
        this.a = jp1.g;
        this.b = sQLiteOpenHelper;
        SQLiteDatabase sQLiteDatabaseE = e();
        this.c = sQLiteDatabaseE;
        if (sQLiteDatabaseE == null) {
            try {
                System.exit(0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public final void a(SQLiteDatabase sQLiteDatabase, Cursor cursor) {
        if (cursor != null && !cursor.isClosed()) {
            cursor.close();
        }
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
            return;
        }
        sQLiteDatabase.close();
    }

    public boolean b(String str, String[] strArr) {
        SQLiteDatabase sQLiteDatabase;
        Lock lock;
        String str2;
        StringBuilder sb;
        long jCurrentTimeMillis;
        long j;
        String string;
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        this.a.lock();
        try {
            this.c.beginTransaction();
            this.c.delete(d(), str, strArr);
            this.c.setTransactionSuccessful();
            return true;
        } catch (Exception e) {
            ie7.a(e);
            return false;
        } finally {
            this.c.endTransaction();
            this.a.unlock();
            ie7.b(d, (System.currentTimeMillis() - jCurrentTimeMillis2) + " delete");
        }
    }

    public abstract ContentValues c(Object obj);

    public abstract String d();

    public SQLiteDatabase e() {
        try {
            return this.b.getWritableDatabase();
        } catch (Exception unused) {
            return null;
        }
    }

    public abstract Object f(Cursor cursor);

    public List g(String str, String[] strArr) {
        return h(null, str, strArr, null, null, null, null);
    }

    public List h(String[] strArr, String str, String[] strArr2, String str2, String str3, String str4, String str5) throws Throwable {
        Cursor cursorQuery;
        String str6;
        StringBuilder sb;
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.a.lock();
        ArrayList arrayList = new ArrayList();
        try {
            try {
                this.c.beginTransaction();
                cursorQuery = this.c.query(d(), strArr, str, strArr2, str2, str3, str4, str5);
                while (!cursorQuery.isClosed() && cursorQuery.moveToNext()) {
                    try {
                        arrayList.add(f(cursorQuery));
                    } catch (Exception e) {
                        e = e;
                        ie7.a(e);
                        a(null, cursorQuery);
                        this.c.endTransaction();
                        this.a.unlock();
                        str6 = d;
                        sb = new StringBuilder();
                    }
                }
                this.c.setTransactionSuccessful();
                a(null, cursorQuery);
                this.c.endTransaction();
                this.a.unlock();
                str6 = d;
                sb = new StringBuilder();
            } catch (Throwable th) {
                th = th;
                a(null, null);
                this.c.endTransaction();
                this.a.unlock();
                ie7.b(d, (System.currentTimeMillis() - jCurrentTimeMillis) + " query");
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            a(null, null);
            this.c.endTransaction();
            this.a.unlock();
            ie7.b(d, (System.currentTimeMillis() - jCurrentTimeMillis) + " query");
            throw th;
        }
        sb.append(System.currentTimeMillis() - jCurrentTimeMillis);
        sb.append(" query");
        ie7.b(str6, sb.toString());
        return arrayList;
    }

    public List i() {
        return g(null, null);
    }

    public Object j(String str, String[] strArr) throws Throwable {
        long jCurrentTimeMillis = System.currentTimeMillis();
        List listH = h(null, str, strArr, null, null, null, "1");
        ie7.b(d, (System.currentTimeMillis() - jCurrentTimeMillis) + " queryOne");
        if (listH.size() > 0) {
            return listH.get(0);
        }
        return null;
    }

    public boolean k(Object obj) {
        if (obj == null) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.a.lock();
        try {
            this.c.beginTransaction();
            this.c.replace(d(), null, c(obj));
            this.c.setTransactionSuccessful();
            return true;
        } catch (Exception e) {
            ie7.a(e);
            return false;
        } finally {
            this.c.endTransaction();
            this.a.unlock();
            ie7.b(d, (System.currentTimeMillis() - jCurrentTimeMillis) + " replaceT");
        }
    }

    public boolean l(List list) {
        if (list == null) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.a.lock();
        try {
            this.c.beginTransaction();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.c.replace(d(), null, c(it.next()));
            }
            this.c.setTransactionSuccessful();
            return true;
        } catch (Exception e) {
            ie7.a(e);
            return false;
        } finally {
            this.c.endTransaction();
            this.a.unlock();
            ie7.b(d, (System.currentTimeMillis() - jCurrentTimeMillis) + " replaceList");
        }
    }

    public boolean m(ContentValues contentValues, String str, String[] strArr) {
        SQLiteDatabase sQLiteDatabase;
        Lock lock;
        String str2;
        StringBuilder sb;
        long jCurrentTimeMillis;
        long j;
        String string;
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        this.a.lock();
        try {
            this.c.beginTransaction();
            this.c.update(d(), contentValues, str, strArr);
            this.c.setTransactionSuccessful();
            return true;
        } catch (Exception e) {
            ie7.a(e);
            return false;
        } finally {
            this.c.endTransaction();
            this.a.unlock();
            ie7.b(d, (System.currentTimeMillis() - jCurrentTimeMillis2) + " updateContentValues");
        }
    }
}
