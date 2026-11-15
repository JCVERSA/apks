package com.mgtv.thirdsdk.playcore.a;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.util.n;

public class b {
    private static final c a;
    private static final SQLiteDatabase b;

    static {
        c cVar = new c(BaseApplication.getContext(), "mgplayinfo.db", null, 1);
        a = cVar;
        b = cVar.getReadableDatabase();
    }

    public b(Context context) {
    }

    public void a() {
    }

    public void b(a aVar) {
        SQLiteDatabase sQLiteDatabase = b;
        if (sQLiteDatabase == null) {
            return;
        }
        try {
            sQLiteDatabase.execSQL("update VIDEO_POSITION set uid=?,url=?,pos=?,vdate=?,duration=? where vid=?", new Object[]{aVar.b(), aVar.d(), Integer.valueOf(aVar.e()), Long.valueOf(aVar.f()), Integer.valueOf(aVar.a()), Integer.valueOf(aVar.c())});
            n.a("BreakPointDao", "-----------update breakpoint:" + aVar.e());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int a(a aVar) {
        SQLiteDatabase sQLiteDatabase = b;
        if (sQLiteDatabase == null) {
            return 0;
        }
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = sQLiteDatabase.rawQuery("select max(vid) from VIDEO_POSITION", new String[0]);
            if (cursorRawQuery != null && cursorRawQuery.moveToNext()) {
                aVar.b(cursorRawQuery.getInt(0) + 1);
            }
            sQLiteDatabase.execSQL("insert into VIDEO_POSITION (vid, uid, url, pos, vdate, duration) values(?,?,?,?,?,?)", new Object[]{Integer.valueOf(aVar.c()), aVar.b(), aVar.d(), Integer.valueOf(aVar.e()), Long.valueOf(aVar.f()), Integer.valueOf(aVar.a())});
            n.a("BreakPointDao", "-----------saved BreakPoint : " + aVar.c());
            return aVar.c();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
    }

    public a a(String str) throws Throwable {
        a aVar;
        Exception e;
        Cursor cursorRawQuery;
        SQLiteDatabase sQLiteDatabase = b;
        Cursor cursor = null;
        a aVar2 = null;
        if (sQLiteDatabase == null) {
            return null;
        }
        try {
            cursorRawQuery = sQLiteDatabase.rawQuery("select * from VIDEO_POSITION where uid=?", new String[]{str});
            try {
                try {
                    if (cursorRawQuery.moveToNext()) {
                        aVar = new a();
                        try {
                            aVar.b(cursorRawQuery.getInt(0));
                            aVar.a(cursorRawQuery.getString(1));
                            aVar.b(cursorRawQuery.getString(2));
                            aVar.c(cursorRawQuery.getInt(3));
                            aVar.a(cursorRawQuery.getLong(4));
                            aVar.a(cursorRawQuery.getInt(5));
                            aVar2 = aVar;
                        } catch (Exception e2) {
                            e = e2;
                            e.printStackTrace();
                            if (cursorRawQuery != null) {
                                cursorRawQuery.close();
                            }
                            return aVar;
                        }
                    }
                    if (aVar2 == null) {
                        n.a("BreakPointDao", "-----------find breakpoint : null");
                    } else {
                        n.a("BreakPointDao", "-----------find breakpoint : " + aVar2.e());
                    }
                    cursorRawQuery.close();
                    return aVar2;
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorRawQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                aVar = null;
            }
        } catch (Exception e4) {
            aVar = null;
            e = e4;
            cursorRawQuery = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void a(int i) {
        SQLiteDatabase sQLiteDatabase = b;
        if (sQLiteDatabase == null) {
            return;
        }
        try {
            sQLiteDatabase.execSQL("delete from VIDEO_POSITION where vid=?", new Object[]{Integer.valueOf(i)});
            n.a("BreakPointDao", "-----------remove breakpoint : " + i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
