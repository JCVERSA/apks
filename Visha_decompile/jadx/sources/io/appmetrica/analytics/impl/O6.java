package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.os.ResultReceiver;
import com.hunantv.media.player.libnative.ImgoMediaPlayerLib;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public final class O6 {
    public final CounterConfigurationReporterType a;
    public final C2471cj b;

    public O6(CounterConfigurationReporterType counterConfigurationReporterType) {
        this(counterConfigurationReporterType, C2910ua.j().v());
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003e  */
    public final M6 a(SQLiteDatabase sQLiteDatabase, String str, int i, String str2, boolean z) {
        Cursor cursorRawQuery;
        ArrayList<ContentValues> arrayList;
        int iDelete;
        C2471cj c2471cj;
        C2421aj c2421aj;
        C2506e4 c2506e4;
        Integer num;
        try {
            cursorRawQuery = sQLiteDatabase.rawQuery(String.format("SELECT %s, %s, %s FROM %s WHERE %s", "global_number", "type", "event_description", "events", str), null);
            if (cursorRawQuery != null) {
                try {
                    if (cursorRawQuery.getCount() > 0) {
                        arrayList = new ArrayList(cursorRawQuery.getCount());
                        while (cursorRawQuery.moveToNext()) {
                            ContentValues contentValues = new ContentValues();
                            DatabaseUtils.cursorRowToContentValues(cursorRawQuery, contentValues);
                            arrayList.add(contentValues);
                        }
                    } else {
                        arrayList = null;
                    }
                } catch (Throwable th) {
                    th = th;
                    try {
                        Fj fj = AbstractC2521ej.a;
                        fj.getClass();
                        fj.a(new C2546fj("select_rows_to_delete_exception", th));
                        In.a(cursorRawQuery);
                        arrayList = null;
                    } catch (Throwable th2) {
                        In.a(cursorRawQuery);
                        throw th2;
                    }
                }
            } else {
                arrayList = null;
            }
            In.a(cursorRawQuery);
        } catch (Throwable th3) {
            th = th3;
            cursorRawQuery = null;
        }
        try {
            iDelete = sQLiteDatabase.delete("events", str, null);
        } catch (Throwable unused) {
            iDelete = 0;
        }
        if (arrayList != null && arrayList.size() != 0 && iDelete == arrayList.size() && z && str2 != null && (c2471cj = this.b) != null) {
            CounterConfigurationReporterType counterConfigurationReporterType = this.a;
            synchronized (c2471cj) {
                c2421aj = (C2421aj) c2471cj.c.get(str2);
                if (c2421aj == null) {
                    c2421aj = new C2421aj(str2, c2471cj.b, counterConfigurationReporterType, c2471cj.a);
                    c2471cj.c.put(str2, c2421aj);
                }
            }
            try {
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray = new JSONArray();
                JSONArray jSONArray2 = new JSONArray();
                for (ContentValues contentValues2 : arrayList) {
                    Integer asInteger = contentValues2.getAsInteger("global_number");
                    Integer asInteger2 = contentValues2.getAsInteger("type");
                    if (asInteger != null && asInteger2 != null) {
                        jSONArray.put(asInteger);
                        EnumC2588hb enumC2588hbA = EnumC2588hb.a(asInteger2.intValue());
                        if (enumC2588hbA == null) {
                            Map map = Cf.a;
                            num = null;
                        } else {
                            num = (Integer) Cf.c.get(enumC2588hbA);
                        }
                        jSONArray2.put(num);
                    }
                }
                jSONObject.put("global_number", jSONArray).put(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_PLAYER_EVENT_TYPE_INT, jSONArray2);
                JSONObject jSONObjectPut = new JSONObject().put("details", new JSONObject().put("reason", N6.a(i)).put("cleared", jSONObject).put("actual_deleted_number", iDelete));
                PublicLogger orCreatePublicLogger = LoggerStorage.getOrCreatePublicLogger(str2);
                String string = jSONObjectPut.toString();
                Set set = C9.a;
                EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
                c2506e4 = new C2506e4(string, "", 12290, 0, orCreatePublicLogger);
            } catch (Throwable unused2) {
                c2506e4 = null;
            }
            if (c2506e4 != null && c2421aj.c != null) {
                try {
                    CounterConfiguration counterConfiguration = new CounterConfiguration(c2421aj.a);
                    counterConfiguration.setReporterType(c2421aj.c);
                    c2421aj.d.a.reportData(1, c2506e4.d(new C2992xh(new C2791pf(c2421aj.b, (ResultReceiver) null), counterConfiguration, null).c()));
                } catch (Throwable unused3) {
                }
            }
        }
        return new M6(arrayList, iDelete);
    }

    public O6(CounterConfigurationReporterType counterConfigurationReporterType, C2471cj c2471cj) {
        this.a = counterConfigurationReporterType;
        this.b = c2471cj;
    }
}
