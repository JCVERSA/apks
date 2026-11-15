package com.mbridge.msdk.tracker;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import java.util.List;

class c {

    private final b f37666a;

    private final String f37667b;

    private final Object f37668c = new Object();

    public c(b bVar, String str) {
        this.f37666a = bVar;
        this.f37667b = str;
    }

    private static boolean c(SQLiteDatabase sQLiteDatabase) {
        return sQLiteDatabase == null || !sQLiteDatabase.isOpen() || sQLiteDatabase.isReadOnly();
    }

    private static void d(SQLiteDatabase sQLiteDatabase) {
        if (y.b(sQLiteDatabase)) {
            return;
        }
        try {
            sQLiteDatabase.setTransactionSuccessful();
        } catch (Exception e10) {
            if (a.f37664a) {
                Log.e("TrackManager", "transactionSuccess: ", e10);
            }
        }
    }

    public long a(i iVar) {
        SQLiteDatabase writableDatabase;
        synchronized (this.f37668c) {
            long jInsert = -1;
            if (y.b(this.f37666a)) {
                return -1L;
            }
            try {
                writableDatabase = this.f37666a.getWritableDatabase();
            } catch (Exception e10) {
                if (a.f37664a) {
                    Log.e("TrackManager", "insert getWritableDatabase: " + e10.getMessage());
                }
                writableDatabase = null;
            }
            if (c(writableDatabase)) {
                return -1L;
            }
            try {
                try {
                    a(writableDatabase);
                    ContentValues contentValues = new ContentValues(16);
                    e eVarA = iVar.a();
                    contentValues.put("name", eVarA.b());
                    contentValues.put(NativeComponentConstants.KEY_COMPONENT_TYPE, Integer.valueOf(eVarA.h()));
                    contentValues.put("time_stamp", Long.valueOf(eVarA.g()));
                    contentValues.put("properties", eVarA.d().toString());
                    contentValues.put(TrackingKey.PRIORITY, Integer.valueOf(eVarA.c()));
                    contentValues.put("state", Integer.valueOf(iVar.e()));
                    contentValues.put("report_count", Integer.valueOf(iVar.c()));
                    contentValues.put("uuid", eVarA.i());
                    contentValues.put("ignore_max_timeout", Integer.valueOf(!eVarA.k() ? 1 : 0));
                    contentValues.put("ignore_max_retry_times", Integer.valueOf(!eVarA.j() ? 1 : 0));
                    contentValues.put("invalid_time", Long.valueOf(iVar.b()));
                    jInsert = writableDatabase.insert(this.f37667b, null, contentValues);
                    d(writableDatabase);
                    b(writableDatabase);
                } catch (Exception e11) {
                    if (a.f37664a) {
                        Log.e("TrackManager", "insert: " + e11.getMessage());
                    }
                    b(writableDatabase);
                }
                return jInsert;
            } catch (Throwable th2) {
                b(writableDatabase);
                throw th2;
            }
        }
    }

    public int b() {
        SQLiteDatabase writableDatabase;
        synchronized (this.f37668c) {
            int iMax = 0;
            if (y.b(this.f37666a)) {
                return 0;
            }
            Cursor cursorQuery = null;
            try {
                writableDatabase = this.f37666a.getWritableDatabase();
            } catch (Exception e10) {
                if (a.f37664a) {
                    Log.e("TrackManager", "getAvailableCount getWritableDatabase: " + e10.getMessage());
                }
                writableDatabase = null;
            }
            try {
                if (c(writableDatabase)) {
                    return 0;
                }
                a(writableDatabase);
                cursorQuery = writableDatabase.query(this.f37667b, null, "state = ? OR state = ?", new String[]{String.valueOf(3), String.valueOf(0)}, null, null, null, null);
                if (cursorQuery != null && cursorQuery.moveToNext()) {
                    iMax = Math.max(cursorQuery.getCount(), 0);
                }
                d(writableDatabase);
                return iMax;
            } catch (Exception e11) {
                if (a.f37664a) {
                    Log.e("TrackManager", "getAvailableCount: " + e11.getMessage());
                }
            } finally {
                b(writableDatabase);
                y.a(cursorQuery);
            }
        }
    }

    public void c(List<i> list) {
        SQLiteDatabase writableDatabase;
        synchronized (this.f37668c) {
            if (y.b(this.f37666a) || y.b((List<?>) list)) {
                return;
            }
            try {
                writableDatabase = this.f37666a.getWritableDatabase();
            } catch (Exception e10) {
                if (a.f37664a) {
                    Log.e("TrackManager", "updateReportStateSuccess getWritableDatabase: " + e10.getMessage());
                }
                writableDatabase = null;
            }
            if (c(writableDatabase)) {
                return;
            }
            try {
                try {
                    a(writableDatabase);
                    for (i iVar : list) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("state", (Integer) 2);
                        writableDatabase.update(this.f37667b, contentValues, "uuid = ?", new String[]{iVar.f()});
                    }
                    d(writableDatabase);
                    b(writableDatabase);
                } catch (Exception e11) {
                    if (a.f37664a) {
                        Log.e("TrackManager", "updateReportStateSuccess: " + e11.getMessage());
                    }
                    b(writableDatabase);
                }
            } catch (Throwable th2) {
                b(writableDatabase);
                throw th2;
            }
        }
    }

    public void c() {
        SQLiteDatabase writableDatabase;
        synchronized (this.f37668c) {
            if (y.b(this.f37666a)) {
                return;
            }
            try {
                writableDatabase = this.f37666a.getWritableDatabase();
            } catch (Exception e10) {
                if (a.f37664a) {
                    Log.e("TrackManager", "updateReportStateForReporting getWritableDatabase: " + e10.getMessage());
                }
                writableDatabase = null;
            }
            if (c(writableDatabase)) {
                return;
            }
            try {
                try {
                    a(writableDatabase);
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("state", (Integer) 3);
                    contentValues.put("report_error_message", "update from reporting");
                    writableDatabase.update(this.f37667b, contentValues, "state = ?", new String[]{String.valueOf(1)});
                    d(writableDatabase);
                    b(writableDatabase);
                } catch (Exception e11) {
                    if (a.f37664a) {
                        Log.e("TrackManager", "updateReportStateForReporting: " + e11.getMessage());
                    }
                    b(writableDatabase);
                }
            } catch (Throwable th2) {
                b(writableDatabase);
                throw th2;
            }
        }
    }

    public void b(List<i> list) {
        SQLiteDatabase writableDatabase;
        synchronized (this.f37668c) {
            if (y.b(this.f37666a) || y.b((List<?>) list)) {
                return;
            }
            try {
                writableDatabase = this.f37666a.getWritableDatabase();
            } catch (Exception e10) {
                if (a.f37664a) {
                    Log.e("TrackManager", "updateReportStateReporting getWritableDatabase: " + e10.getMessage());
                }
                writableDatabase = null;
            }
            if (c(writableDatabase)) {
                return;
            }
            try {
                try {
                    a(writableDatabase);
                    for (i iVar : list) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("state", (Integer) 1);
                        writableDatabase.update(this.f37667b, contentValues, "uuid = ?", new String[]{iVar.f()});
                    }
                    d(writableDatabase);
                    b(writableDatabase);
                } catch (Exception e11) {
                    if (a.f37664a) {
                        Log.e("TrackManager", "updateReportStateReporting: " + e11.getMessage());
                    }
                    b(writableDatabase);
                }
            } catch (Throwable th2) {
                b(writableDatabase);
                throw th2;
            }
        }
    }

    public List<i> a(int i10) {
        SQLiteDatabase writableDatabase;
        Throwable th2;
        Cursor cursorQuery;
        List<i> list;
        synchronized (this.f37668c) {
            Cursor cursor = null;
            List<i> listB = null;
            cursor = null;
            if (y.b(this.f37666a)) {
                return null;
            }
            try {
                writableDatabase = this.f37666a.getWritableDatabase();
            } catch (Exception e10) {
                if (a.f37664a) {
                    Log.e("TrackManager", "getAvailable getWritableDatabase: " + e10.getMessage());
                }
                writableDatabase = null;
            }
            if (c(writableDatabase)) {
                return null;
            }
            try {
                try {
                    a(writableDatabase);
                    cursorQuery = writableDatabase.query(this.f37667b, null, "state = ? OR state = ?", new String[]{String.valueOf(0), String.valueOf(3)}, null, null, "priority DESC", String.valueOf(i10));
                    try {
                        listB = y.b(cursorQuery);
                        d(writableDatabase);
                        b(writableDatabase);
                        y.a(cursorQuery);
                    } catch (Exception e11) {
                        e = e11;
                        List<i> list2 = listB;
                        cursor = cursorQuery;
                        list = list2;
                        if (a.f37664a) {
                            Log.e("TrackManager", "getAvailable: " + e.getMessage());
                        }
                        b(writableDatabase);
                        y.a(cursor);
                        listB = list;
                    } catch (Throwable th3) {
                        th2 = th3;
                        b(writableDatabase);
                        y.a(cursorQuery);
                        throw th2;
                    }
                } catch (Exception e12) {
                    e = e12;
                    list = null;
                }
                return listB;
            } catch (Throwable th4) {
                Cursor cursor2 = cursor;
                th2 = th4;
                cursorQuery = cursor2;
            }
        }
    }

    private static void b(SQLiteDatabase sQLiteDatabase) {
        if (y.b(sQLiteDatabase) || !sQLiteDatabase.inTransaction()) {
            return;
        }
        try {
            sQLiteDatabase.endTransaction();
        } catch (Exception e10) {
            if (a.f37664a) {
                Log.e("TrackManager", "endTransaction: ", e10);
            }
        }
    }

    public void a(List<i> list) {
        SQLiteDatabase writableDatabase;
        synchronized (this.f37668c) {
            if (y.b(this.f37666a) || y.b((List<?>) list)) {
                return;
            }
            try {
                writableDatabase = this.f37666a.getWritableDatabase();
            } catch (Exception e10) {
                if (a.f37664a) {
                    Log.e("TrackManager", "updateReportStateFailed getWritableDatabase: " + e10.getMessage());
                }
                writableDatabase = null;
            }
            if (c(writableDatabase)) {
                return;
            }
            try {
                try {
                    a(writableDatabase);
                    for (i iVar : list) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("state", Integer.valueOf(iVar.e()));
                        contentValues.put("report_count", Integer.valueOf(iVar.c()));
                        String strD = iVar.d();
                        if (!TextUtils.isEmpty(strD)) {
                            contentValues.put("report_error_message", strD);
                        }
                        writableDatabase.update(this.f37667b, contentValues, "uuid = ?", new String[]{iVar.f()});
                    }
                    d(writableDatabase);
                    b(writableDatabase);
                } catch (Exception e11) {
                    if (a.f37664a) {
                        Log.e("TrackManager", "updateReportStateFailed: " + e11.getMessage());
                    }
                    b(writableDatabase);
                }
            } catch (Throwable th2) {
                b(writableDatabase);
                throw th2;
            }
        }
    }

    public int a() {
        SQLiteDatabase writableDatabase;
        synchronized (this.f37668c) {
            int iDelete = -1;
            if (y.b(this.f37666a)) {
                return -1;
            }
            try {
                writableDatabase = this.f37666a.getWritableDatabase();
            } catch (Exception e10) {
                if (a.f37664a) {
                    Log.e("TrackManager", "deleteInvalidEvents getWritableDatabase: " + e10.getMessage());
                }
                writableDatabase = null;
            }
            if (c(writableDatabase)) {
                return -1;
            }
            try {
                try {
                    a(writableDatabase);
                    iDelete = writableDatabase.delete(this.f37667b, "state = ? OR state = ?", new String[]{String.valueOf(-1), String.valueOf(2)});
                    d(writableDatabase);
                    b(writableDatabase);
                } catch (Exception e11) {
                    if (a.f37664a) {
                        Log.e("TrackManager", "deleteInvalidEvents: " + e11.getMessage());
                    }
                    b(writableDatabase);
                }
                return iDelete;
            } catch (Throwable th2) {
                b(writableDatabase);
                throw th2;
            }
        }
    }

    private static void a(SQLiteDatabase sQLiteDatabase) {
        if (y.b(sQLiteDatabase)) {
            return;
        }
        try {
            sQLiteDatabase.beginTransaction();
        } catch (Exception e10) {
            if (a.f37664a) {
                Log.e("TrackManager", "beginTransaction: ", e10);
            }
        }
    }
}
