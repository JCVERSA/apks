package com.mgtv.data.aphone.core.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import androidx.annotation.NonNull;

public class f extends d {
    private static f a;

    private f(Context context) {
        super(context.getApplicationContext(), "mgtv_data_aphone_sdk.db", null, 4);
    }

    @Override
    public void a(@NonNull h hVar, boolean z) {
        super.a(hVar, z);
    }

    public static f a(Context context) {
        if (a == null) {
            synchronized (d.class) {
                try {
                    if (a == null) {
                        a = new f(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    @Override
    public void a(SQLiteDatabase sQLiteDatabase, int i) {
        if (i < 1) {
            d.a(sQLiteDatabase, SDKResumeHttpTaskColumn.values(), i);
            d.a(sQLiteDatabase, SDKResumeHttpErrorTaskColumn.values(), i);
            d.a(sQLiteDatabase, SDKResumeHttpOflHbTaskColumn.values(), i);
            d.a(sQLiteDatabase, SDKResumeHttpTraceTaskColumn.values(), i);
            d.a(sQLiteDatabase, SDKResumeHttpTraceTaskZipColumn.values(), i);
            return;
        }
        if (i < 2) {
            sQLiteDatabase.execSQL(String.format("DELETE TABLE %1$s", SDKResumeHttpErrorTaskColumn.TABLE));
            return;
        }
        if (i < 3) {
            d.a(sQLiteDatabase, SDKResumeHttpOflHbTaskColumn.values(), i);
        } else if (i < 4) {
            d.a(sQLiteDatabase, SDKResumeHttpTraceTaskColumn.values(), i);
            d.a(sQLiteDatabase, SDKResumeHttpTraceTaskZipColumn.values(), i);
        }
    }
}
