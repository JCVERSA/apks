package com.apm.insight.e.a;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.util.HashMap;

public final class b extends a<com.apm.insight.d.a> {
    public b() {
        super("duplicatelog");
    }

    @Override
    protected final ContentValues a(com.apm.insight.d.a aVar) {
        com.apm.insight.d.a aVar2 = aVar;
        ContentValues contentValues = new ContentValues();
        contentValues.put("path", aVar2.f18829a);
        contentValues.put("insert_time", Long.valueOf(aVar2.f18830b));
        return contentValues;
    }

    public final boolean a(SQLiteDatabase sQLiteDatabase, String str) {
        int count;
        if (sQLiteDatabase != null && !TextUtils.isEmpty(str)) {
            try {
                Cursor cursorQuery = sQLiteDatabase.query(this.f18861a, null, "path=?", new String[]{str}, null, null, null);
                count = cursorQuery.getCount();
                try {
                    cursorQuery.close();
                } catch (Throwable th2) {
                    th = th2;
                    com.apm.insight.a.b(th);
                }
            } catch (Throwable th3) {
                th = th3;
                count = 0;
            }
            if (count > 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final void a(SQLiteDatabase sQLiteDatabase, com.apm.insight.d.a aVar) {
        if (aVar == null || a(sQLiteDatabase, aVar.f18829a)) {
            return;
        }
        super.a(sQLiteDatabase, aVar);
        try {
            sQLiteDatabase.execSQL("delete from " + this.f18861a + " where _id in (select _id from " + this.f18861a + " order by insert_time desc limit 1000 offset 500)");
        } catch (Exception e10) {
            com.apm.insight.a.b((Throwable) e10);
        }
    }

    @Override
    protected final HashMap<String, String> a() {
        HashMap<String, String> map = new HashMap<>();
        map.put("path", "TEXT");
        map.put("insert_time", "INTEGER");
        map.put("ext1", "TEXT");
        map.put("ext2", "TEXT");
        return map;
    }
}
