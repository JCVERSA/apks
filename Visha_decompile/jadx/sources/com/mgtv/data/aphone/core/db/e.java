package com.mgtv.data.aphone.core.db;

import android.annotation.TargetApi;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.text.TextUtils;
import android.util.Log;
import com.mgtv.data.aphone.core.bean.EventBean;
import com.mgtv.data.aphone.core.bean.OffLineHbBean;
import com.mgtv.data.aphone.core.j.i;
import com.transsion.retrofit.reponse.ResponseUtil;
import java.util.ArrayList;
import java.util.List;

public class e {
    public static synchronized void a(Context context, final List<EventBean> list, final String str, final boolean z, boolean z2) {
        f.a(context).a(new h() {
            @Override
            public boolean a(SQLiteDatabase sQLiteDatabase) {
                return false;
            }

            @Override
            public boolean b(SQLiteDatabase sQLiteDatabase) {
                if (!z) {
                    sQLiteDatabase.execSQL("delete from " + str);
                }
                SQLiteStatement sQLiteStatementA = d.a(sQLiteDatabase, str, SDKResumeHttpTaskColumn.values(), null);
                for (EventBean eventBean : list) {
                    sQLiteStatementA.bindString(SDKResumeHttpTaskColumn.url.ordinal() + 1, eventBean.url);
                    sQLiteStatementA.bindString(SDKResumeHttpTaskColumn.eventId.ordinal() + 1, eventBean.eventId);
                    sQLiteStatementA.bindString(SDKResumeHttpTaskColumn.bid.ordinal() + 1, eventBean.bid);
                    sQLiteStatementA.bindString(SDKResumeHttpTaskColumn.params.ordinal() + 1, eventBean.params);
                    sQLiteStatementA.bindString(SDKResumeHttpTaskColumn.method.ordinal() + 1, eventBean.method);
                    sQLiteStatementA.bindLong(SDKResumeHttpTaskColumn.status.ordinal() + 1, eventBean.status);
                    sQLiteStatementA.bindString(SDKResumeHttpTaskColumn.create_time.ordinal() + 1, eventBean.create_time);
                    sQLiteStatementA.executeInsert();
                }
                return true;
            }
        }, z2);
    }

    public static synchronized List<OffLineHbBean> b(Context context, String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                SQLiteDatabase readableDatabase = f.a(context).getReadableDatabase();
                if (readableDatabase == null) {
                    return arrayList;
                }
                cursorQuery = (i.a(str2) || i.a(str3)) ? readableDatabase.query(str, null, null, null, null, null, " create_time ", ResponseUtil.CODE_SUCESS) : readableDatabase.query(str, null, " suuid = ? and eventId = ? ", new String[]{str2, str3}, null, null, " create_time ", null);
                if (cursorQuery != null) {
                    if (cursorQuery.moveToFirst()) {
                        do {
                            OffLineHbBean offLineHbBean = new OffLineHbBean();
                            offLineHbBean.url = cursorQuery.getString(cursorQuery.getColumnIndex(SDKResumeHttpOflHbTaskColumn.url.name()));
                            offLineHbBean.eventId = cursorQuery.getString(cursorQuery.getColumnIndex(SDKResumeHttpOflHbTaskColumn.eventId.name()));
                            offLineHbBean.bid = cursorQuery.getString(cursorQuery.getColumnIndex(SDKResumeHttpOflHbTaskColumn.bid.name()));
                            offLineHbBean.params = cursorQuery.getString(cursorQuery.getColumnIndex(SDKResumeHttpOflHbTaskColumn.params.name()));
                            offLineHbBean.method = cursorQuery.getString(cursorQuery.getColumnIndex(SDKResumeHttpOflHbTaskColumn.method.name()));
                            offLineHbBean.status = cursorQuery.getInt(cursorQuery.getColumnIndex(SDKResumeHttpOflHbTaskColumn.status.name()));
                            offLineHbBean.suuid = cursorQuery.getString(cursorQuery.getColumnIndex(SDKResumeHttpOflHbTaskColumn.suuid.name()));
                            offLineHbBean.create_time = cursorQuery.getString(cursorQuery.getColumnIndex(SDKResumeHttpOflHbTaskColumn.create_time.name()));
                            arrayList.add(offLineHbBean);
                        } while (cursorQuery.moveToNext());
                    }
                    cursorQuery.close();
                }
                if (cursorQuery != null && !cursorQuery.isClosed()) {
                }
                return arrayList;
            } catch (Exception unused) {
                if (cursorQuery != null && !cursorQuery.isClosed()) {
                    cursorQuery.close();
                }
                if (cursorQuery != null && !cursorQuery.isClosed()) {
                }
            }
            cursorQuery.close();
            return arrayList;
        } catch (Throwable th) {
            if (cursorQuery != null && !cursorQuery.isClosed()) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public static synchronized void c(Context context, final List<com.mgtv.data.aphone.core.bean.b> list, final String str, boolean z, boolean z2) {
        f.a(context).a(new h() {
            @Override
            public boolean a(SQLiteDatabase sQLiteDatabase) {
                return false;
            }

            @Override
            public boolean b(SQLiteDatabase sQLiteDatabase) {
                SQLiteStatement sQLiteStatementA = d.a(sQLiteDatabase, str, SDKResumeHttpTraceTaskZipColumn.values(), null);
                for (com.mgtv.data.aphone.core.bean.b bVar : list) {
                    sQLiteStatementA.bindString(SDKResumeHttpTraceTaskZipColumn.taskId.ordinal() + 1, bVar.a);
                    sQLiteStatementA.bindString(SDKResumeHttpTraceTaskZipColumn.logs.ordinal() + 1, bVar.b);
                    sQLiteStatementA.bindString(SDKResumeHttpTraceTaskZipColumn.reportUrl.ordinal() + 1, bVar.c);
                    sQLiteStatementA.bindString(SDKResumeHttpTraceTaskZipColumn.log_path.ordinal() + 1, bVar.k);
                    sQLiteStatementA.bindString(SDKResumeHttpTraceTaskZipColumn.zip_path.ordinal() + 1, bVar.j);
                    sQLiteStatementA.bindLong(SDKResumeHttpTraceTaskZipColumn.netStatus.ordinal() + 1, bVar.d);
                    sQLiteStatementA.bindLong(SDKResumeHttpTraceTaskZipColumn.localLog.ordinal() + 1, bVar.e);
                    sQLiteStatementA.bindLong(SDKResumeHttpTraceTaskZipColumn.status.ordinal() + 1, bVar.f);
                    sQLiteStatementA.bindLong(SDKResumeHttpTraceTaskZipColumn.upCount.ordinal() + 1, bVar.g);
                    sQLiteStatementA.bindLong(SDKResumeHttpTraceTaskZipColumn.idx.ordinal() + 1, bVar.h);
                    sQLiteStatementA.bindLong(SDKResumeHttpTraceTaskZipColumn.sum.ordinal() + 1, bVar.i);
                    sQLiteStatementA.bindString(SDKResumeHttpTraceTaskZipColumn.create_time.ordinal() + 1, com.mgtv.data.aphone.core.j.e.a(System.currentTimeMillis()));
                    sQLiteStatementA.executeInsert();
                }
                return true;
            }
        }, z2);
    }

    public static synchronized List<EventBean> a(Context context, String str, String str2, String str3) {
        SQLiteDatabase readableDatabase;
        Cursor cursorQuery;
        ArrayList arrayList = new ArrayList();
        try {
            readableDatabase = f.a(context).getReadableDatabase();
        } catch (Exception e) {
            e.printStackTrace();
            readableDatabase = null;
        }
        SQLiteDatabase sQLiteDatabase = readableDatabase;
        if (sQLiteDatabase == null) {
            return arrayList;
        }
        if (!i.a(str2)) {
            cursorQuery = sQLiteDatabase.query(str, null, " bid = ? and create_time > date(?,?,?) ", new String[]{str2, "now", "start of day", "-3 day"}, null, null, " create_time ", null);
        } else {
            cursorQuery = sQLiteDatabase.query(str, null, " eventId = ? and create_time > date(?,?,?)  ", new String[]{str3, "now", "start of day", "-3 day"}, null, null, " create_time ", null);
        }
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            if (cursorQuery.moveToFirst()) {
                do {
                    EventBean eventBean = new EventBean();
                    eventBean.url = cursorQuery.getString(cursorQuery.getColumnIndex(SDKResumeHttpTaskColumn.url.name()));
                    eventBean.eventId = cursorQuery.getString(cursorQuery.getColumnIndex(SDKResumeHttpTaskColumn.eventId.name()));
                    eventBean.bid = cursorQuery.getString(cursorQuery.getColumnIndex(SDKResumeHttpTaskColumn.bid.name()));
                    eventBean.params = cursorQuery.getString(cursorQuery.getColumnIndex(SDKResumeHttpTaskColumn.params.name()));
                    eventBean.method = cursorQuery.getString(cursorQuery.getColumnIndex(SDKResumeHttpTaskColumn.method.name()));
                    eventBean.status = cursorQuery.getInt(cursorQuery.getColumnIndex(SDKResumeHttpTaskColumn.status.name()));
                    eventBean.create_time = cursorQuery.getString(cursorQuery.getColumnIndex(SDKResumeHttpTaskColumn.create_time.name()));
                    arrayList.add(eventBean);
                } while (cursorQuery.moveToNext());
            }
            cursorQuery.close();
        }
        return arrayList;
    }

    public static synchronized List<EventBean> a(Context context, String str) {
        SQLiteDatabase readableDatabase;
        ArrayList arrayList = new ArrayList();
        try {
            readableDatabase = f.a(context).getReadableDatabase();
        } catch (Exception e) {
            e.printStackTrace();
            readableDatabase = null;
        }
        SQLiteDatabase sQLiteDatabase = readableDatabase;
        if (sQLiteDatabase == null) {
            return arrayList;
        }
        Cursor cursorQuery = sQLiteDatabase.query(str, null, " create_time > date(?,?,?)", new String[]{"now", "start of day", "-3 day"}, "eventId", null, "bid  DESC ", null);
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            if (cursorQuery.moveToFirst()) {
                do {
                    EventBean eventBean = new EventBean();
                    eventBean.url = cursorQuery.getString(cursorQuery.getColumnIndex(SDKResumeHttpTaskColumn.url.name()));
                    eventBean.eventId = cursorQuery.getString(cursorQuery.getColumnIndex(SDKResumeHttpTaskColumn.eventId.name()));
                    eventBean.bid = cursorQuery.getString(cursorQuery.getColumnIndex(SDKResumeHttpTaskColumn.bid.name()));
                    eventBean.params = cursorQuery.getString(cursorQuery.getColumnIndex(SDKResumeHttpTaskColumn.params.name()));
                    eventBean.method = cursorQuery.getString(cursorQuery.getColumnIndex(SDKResumeHttpTaskColumn.method.name()));
                    eventBean.status = cursorQuery.getInt(cursorQuery.getColumnIndex(SDKResumeHttpTaskColumn.status.name()));
                    eventBean.create_time = cursorQuery.getString(cursorQuery.getColumnIndex(SDKResumeHttpTaskColumn.create_time.name()));
                    arrayList.add(eventBean);
                } while (cursorQuery.moveToNext());
            }
            cursorQuery.close();
        }
        return arrayList;
    }

    public static synchronized void b(Context context, final List<com.mgtv.data.aphone.core.bean.a> list, final String str, boolean z, boolean z2) {
        f.a(context).a(new h() {
            @Override
            public boolean a(SQLiteDatabase sQLiteDatabase) {
                return false;
            }

            @Override
            public boolean b(SQLiteDatabase sQLiteDatabase) {
                SQLiteStatement sQLiteStatementA = d.a(sQLiteDatabase, str, SDKResumeHttpTraceTaskColumn.values(), null);
                for (com.mgtv.data.aphone.core.bean.a aVar : list) {
                    sQLiteStatementA.bindString(SDKResumeHttpTraceTaskColumn.taskId.ordinal() + 1, aVar.a);
                    sQLiteStatementA.bindString(SDKResumeHttpTraceTaskColumn.logs.ordinal() + 1, aVar.b);
                    sQLiteStatementA.bindString(SDKResumeHttpTraceTaskColumn.reportUrl.ordinal() + 1, aVar.c);
                    sQLiteStatementA.bindLong(SDKResumeHttpTraceTaskColumn.netStatus.ordinal() + 1, aVar.d);
                    sQLiteStatementA.bindLong(SDKResumeHttpTraceTaskColumn.localLog.ordinal() + 1, aVar.e);
                    sQLiteStatementA.bindLong(SDKResumeHttpTraceTaskColumn.status.ordinal() + 1, aVar.f);
                    sQLiteStatementA.bindString(SDKResumeHttpTraceTaskColumn.create_time.ordinal() + 1, com.mgtv.data.aphone.core.j.e.a(System.currentTimeMillis()));
                    sQLiteStatementA.executeInsert();
                }
                return true;
            }
        }, z2);
    }

    public static synchronized List<com.mgtv.data.aphone.core.bean.a> b(Context context, String str, String str2) {
        Cursor cursorQuery;
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase readableDatabase = f.a(context).getReadableDatabase();
                if (readableDatabase == null) {
                    return arrayList;
                }
                if (!i.a(str2)) {
                    cursorQuery = readableDatabase.query(str, null, " taskId = ?  ", new String[]{str2}, " taskId,logs ", null, " create_time ", null);
                } else {
                    cursorQuery = readableDatabase.query(str, null, null, null, " taskId,logs ", null, " create_time ", null);
                }
                cursor = cursorQuery;
                if (cursor != null) {
                    if (cursor.moveToFirst()) {
                        do {
                            com.mgtv.data.aphone.core.bean.a aVar = new com.mgtv.data.aphone.core.bean.a();
                            aVar.c = cursor.getString(cursor.getColumnIndex(SDKResumeHttpTraceTaskColumn.reportUrl.name()));
                            aVar.a = cursor.getString(cursor.getColumnIndex(SDKResumeHttpTraceTaskColumn.taskId.name()));
                            aVar.d = cursor.getInt(cursor.getColumnIndex(SDKResumeHttpTraceTaskColumn.netStatus.name()));
                            aVar.e = cursor.getInt(cursor.getColumnIndex(SDKResumeHttpTraceTaskColumn.localLog.name()));
                            aVar.b = cursor.getString(cursor.getColumnIndex(SDKResumeHttpTraceTaskColumn.logs.name()));
                            aVar.f = cursor.getInt(cursor.getColumnIndex(SDKResumeHttpTraceTaskColumn.status.name()));
                            aVar.g = cursor.getString(cursor.getColumnIndex(SDKResumeHttpTraceTaskColumn.create_time.name()));
                            arrayList.add(aVar);
                        } while (cursor.moveToNext());
                    }
                    cursor.close();
                }
                if (cursor != null && !cursor.isClosed()) {
                }
                return arrayList;
            } catch (Exception unused) {
                if (cursor != null && !cursor.isClosed()) {
                    cursor.close();
                }
                if (cursor != null && !cursor.isClosed()) {
                }
            }
            cursor.close();
            return arrayList;
        } catch (Throwable th) {
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            throw th;
        }
    }

    public static synchronized void a(Context context, final String str, boolean z) {
        Log.d("big_data_sdk", "bds database delete() tableName: " + str);
        f.a(context).a(new h() {
            @Override
            public boolean a(SQLiteDatabase sQLiteDatabase) {
                return false;
            }

            @Override
            @TargetApi(11)
            public boolean b(SQLiteDatabase sQLiteDatabase) {
                d.a(sQLiteDatabase, str).executeUpdateDelete();
                return true;
            }
        }, z);
    }

    public static synchronized void a(Context context, String str, String str2, boolean z) {
        try {
            com.mgtv.data.aphone.core.j.c.b("big_data_sdk", "####################  deleteTraceTaskByTaskId() tableName :" + str + "  taskId: " + str2);
            try {
                SQLiteDatabase writableDatabase = f.a(context).getWritableDatabase();
                if (writableDatabase == null) {
                    return;
                }
                if (!TextUtils.isEmpty(str2)) {
                    writableDatabase.delete(str, " taskId = ? ", new String[]{str2});
                } else {
                    writableDatabase.delete(str, null, null);
                }
            } catch (Exception e) {
                e.getStackTrace();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized List<com.mgtv.data.aphone.core.bean.b> a(Context context, String str, String str2) {
        Cursor cursorQuery;
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase readableDatabase = f.a(context).getReadableDatabase();
                if (readableDatabase == null) {
                    return arrayList;
                }
                if (!i.a(str2)) {
                    cursorQuery = readableDatabase.query(str, null, " taskId = ?  ", new String[]{str2}, " taskId,zip_path ", null, " idx ", null);
                } else {
                    cursorQuery = readableDatabase.query(str, null, null, null, " taskId,zip_path ", null, " idx ", null);
                }
                cursor = cursorQuery;
                com.mgtv.data.aphone.core.j.c.a("big_data_sdk", "#################### getTraceTaskZipInfo()  tableName: " + str + "   sql:" + readableDatabase.toString());
                if (cursor != null) {
                    if (cursor.moveToFirst()) {
                        int i = 0;
                        while (true) {
                            com.mgtv.data.aphone.core.bean.b bVar = new com.mgtv.data.aphone.core.bean.b();
                            bVar.c = cursor.getString(cursor.getColumnIndex(SDKResumeHttpTraceTaskZipColumn.reportUrl.name()));
                            bVar.a = cursor.getString(cursor.getColumnIndex(SDKResumeHttpTraceTaskZipColumn.taskId.name()));
                            bVar.d = cursor.getInt(cursor.getColumnIndex(SDKResumeHttpTraceTaskZipColumn.netStatus.name()));
                            bVar.e = cursor.getInt(cursor.getColumnIndex(SDKResumeHttpTraceTaskZipColumn.localLog.name()));
                            bVar.b = cursor.getString(cursor.getColumnIndex(SDKResumeHttpTraceTaskZipColumn.logs.name()));
                            bVar.f = cursor.getInt(cursor.getColumnIndex(SDKResumeHttpTraceTaskZipColumn.status.name()));
                            bVar.g = cursor.getInt(cursor.getColumnIndex(SDKResumeHttpTraceTaskZipColumn.upCount.name()));
                            bVar.h = cursor.getInt(cursor.getColumnIndex(SDKResumeHttpTraceTaskZipColumn.idx.name()));
                            bVar.i = cursor.getInt(cursor.getColumnIndex(SDKResumeHttpTraceTaskZipColumn.sum.name()));
                            bVar.k = cursor.getString(cursor.getColumnIndex(SDKResumeHttpTraceTaskZipColumn.log_path.name()));
                            bVar.j = cursor.getString(cursor.getColumnIndex(SDKResumeHttpTraceTaskZipColumn.zip_path.name()));
                            bVar.l = cursor.getString(cursor.getColumnIndex(SDKResumeHttpTraceTaskZipColumn.create_time.name()));
                            StringBuilder sb = new StringBuilder();
                            sb.append("#################### getTraceTaskZipInfo()  tableName: ");
                            sb.append(str);
                            sb.append("   index:");
                            int i2 = i + 1;
                            sb.append(i);
                            com.mgtv.data.aphone.core.j.c.a("big_data_sdk", sb.toString());
                            arrayList.add(bVar);
                            if (!cursor.moveToNext()) {
                                break;
                            }
                            i = i2;
                        }
                    }
                    cursor.close();
                }
                if (cursor != null && !cursor.isClosed()) {
                    cursor.close();
                }
                return arrayList;
            } catch (Exception unused) {
                if (cursor != null && !cursor.isClosed()) {
                    cursor.close();
                }
                if (cursor != null && !cursor.isClosed()) {
                }
            }
        } catch (Throwable th) {
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            throw th;
        }
    }

    public static synchronized void a(Context context, String str, String str2, String str3, int i, boolean z) {
        com.mgtv.data.aphone.core.j.c.b("big_data_sdk", "####################  upDateTraceTaskByTaskId() tableName :" + str + "  zipPath: " + str2);
        try {
            SQLiteDatabase writableDatabase = f.a(context).getWritableDatabase();
            if (writableDatabase == null) {
                return;
            }
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("upConut", Integer.valueOf(i + 1));
                writableDatabase.update(str, contentValues, " taskId = ? and zip_path = ? ", new String[]{str3, str2});
            }
        } catch (Exception e) {
            e.getStackTrace();
        }
    }

    public static synchronized void a(Context context, String str, String str2, String str3, boolean z) {
        try {
            com.mgtv.data.aphone.core.j.c.b("big_data_sdk", "####################  deleteTraceTaskByZipPath() tableName :" + str + "  zipPath: " + str2 + " taskId:" + str3);
            try {
                SQLiteDatabase writableDatabase = f.a(context).getWritableDatabase();
                if (writableDatabase == null) {
                    return;
                }
                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                    writableDatabase.delete(str, "   zip_path = ?  and taskId = ?  ", new String[]{str2, str3});
                } else {
                    writableDatabase.delete(str, null, null);
                }
            } catch (Exception e) {
                e.getStackTrace();
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
