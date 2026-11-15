package io.appmetrica.analytics.impl;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class Im {
    public final HashMap a;

    public Im(@NonNull String str, @NonNull HashMap<String, List<String>> map) {
        this.a = map;
    }

    @VisibleForTesting(otherwise = 5)
    public final HashMap<String, List<String>> a() {
        return this.a;
    }

    public final boolean a(SQLiteDatabase sQLiteDatabase) {
        try {
            boolean zEquals = true;
            for (Map.Entry entry : this.a.entrySet()) {
                try {
                    Cursor cursorQuery = sQLiteDatabase.query((String) entry.getKey(), null, null, null, null, null, null);
                    if (cursorQuery == null) {
                        In.a(cursorQuery);
                        return false;
                    }
                    List list = (List) entry.getValue();
                    List listAsList = Arrays.asList(cursorQuery.getColumnNames());
                    Collections.sort(listAsList);
                    zEquals &= list.equals(listAsList);
                    In.a(cursorQuery);
                } catch (Throwable th) {
                    In.a((Cursor) null);
                    throw th;
                }
            }
            return zEquals;
        } catch (Throwable unused) {
            return false;
        }
    }
}
