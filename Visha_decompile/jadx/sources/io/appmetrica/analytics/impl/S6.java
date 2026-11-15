package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import io.appmetrica.analytics.coreutils.internal.db.DBUtils;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.json.JSONObject;

public final class S6 {
    public final ReentrantReadWriteLock.ReadLock a;
    public final ReentrantReadWriteLock.WriteLock b;
    public final C2534f7 c;
    public final R6 d;
    public final Object e;
    public final ArrayList f;
    public final Context g;
    public final C2706m5 h;
    public final AtomicLong i;
    public final ArrayList j;
    public final O6 k;
    public final C2733n7 l;

    static {
        HashSet hashSet = new HashSet();
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        hashSet.add(0);
        hashSet.add(6400);
    }

    public S6(C2706m5 c2706m5, C2534f7 c2534f7, O6 o6, C2733n7 c2733n7) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.a = reentrantReadWriteLock.readLock();
        this.b = reentrantReadWriteLock.writeLock();
        this.e = new Object();
        this.f = new ArrayList(3);
        AtomicLong atomicLong = new AtomicLong();
        this.i = atomicLong;
        this.j = new ArrayList();
        this.c = c2534f7;
        this.g = c2706m5.getContext();
        this.h = c2706m5;
        this.k = o6;
        this.l = c2733n7;
        atomicLong.set(b());
        R6 r6 = new R6(this, c2706m5);
        this.d = r6;
        r6.setName(a(c2706m5));
    }

    public final long a() {
        this.a.lock();
        try {
            return this.i.get();
        } finally {
            this.a.unlock();
        }
    }

    public final long b() {
        long jQueryRowsCount;
        this.a.lock();
        try {
            SQLiteDatabase readableDatabase = this.c.getReadableDatabase();
            jQueryRowsCount = readableDatabase != null ? DBUtils.queryRowsCount(readableDatabase, "events") : 0L;
        } catch (Throwable unused) {
        }
        this.a.unlock();
        return jQueryRowsCount;
    }

    public final void c() {
        Cursor cursor;
        Cursor cursorRawQuery;
        this.a.lock();
        Cursor cursorRawQuery2 = null;
        try {
            SQLiteDatabase readableDatabase = this.c.getReadableDatabase();
            if (readableDatabase != null) {
                cursorRawQuery = readableDatabase.rawQuery(" SELECT DISTINCT id From sessions order by id asc ", new String[0]);
                try {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("All sessions in db: ");
                    while (cursorRawQuery.moveToNext()) {
                        stringBuffer.append(cursorRawQuery.getString(0));
                        stringBuffer.append(", ");
                    }
                    cursorRawQuery2 = readableDatabase.rawQuery(" SELECT DISTINCT session_id From events order by session_id asc ", new String[0]);
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("All sessions in reports db: ");
                    while (cursorRawQuery2.moveToNext()) {
                        stringBuffer2.append(cursorRawQuery2.getString(0));
                        stringBuffer2.append(", ");
                    }
                } catch (Throwable unused) {
                    cursor = cursorRawQuery2;
                    cursorRawQuery2 = cursorRawQuery;
                    cursorRawQuery = cursorRawQuery2;
                    cursorRawQuery2 = cursor;
                }
            } else {
                cursorRawQuery = null;
            }
        } catch (Throwable unused2) {
            cursor = null;
        }
        this.a.unlock();
        In.a(cursorRawQuery);
        In.a(cursorRawQuery2);
    }

    public final void d() {
        this.d.start();
    }

    public final long a(Set set) {
        this.a.lock();
        Cursor cursorRawQuery = null;
        long j = 0;
        try {
            SQLiteDatabase readableDatabase = this.c.getReadableDatabase();
            if (readableDatabase != null) {
                StringBuilder sb = new StringBuilder("SELECT count() FROM events");
                if (!set.isEmpty()) {
                    sb.append(" WHERE ");
                }
                Iterator it = set.iterator();
                int i = 0;
                while (it.hasNext()) {
                    Integer num = (Integer) it.next();
                    if (i > 0) {
                        sb.append(" OR ");
                    }
                    sb.append("type == " + num);
                    i++;
                }
                cursorRawQuery = readableDatabase.rawQuery(sb.toString(), null);
                if (cursorRawQuery.moveToFirst()) {
                    j = cursorRawQuery.getLong(0);
                }
            }
        } catch (Throwable unused) {
        }
        In.a(cursorRawQuery);
        this.a.unlock();
        return j;
    }

    public final void a(W8 w8) {
        this.j.add(w8);
    }

    public static String a(La la) {
        return "DatabaseWorker [" + la.b().e() + "]";
    }

    public final void a(long j, EnumC3045zk enumC3045zk, long j2) {
        JSONObject jSONObject;
        boolean zB;
        B7 b7 = new B7(null, 1, null);
        C2469ch c2469ch = (C2469ch) this.h.k.a();
        Long lValueOf = Long.valueOf(j);
        Long lValueOf2 = Long.valueOf(j2);
        try {
            jSONObject = new JSONObject().put("dId", c2469ch.getDeviceId()).put("uId", c2469ch.getUuid()).put("appVer", c2469ch.getAppVersion()).put("appBuild", c2469ch.getAppBuildNumber()).put("kitBuildType", c2469ch.getAnalyticsSdkBuildType()).put("osVer", c2469ch.getOsVersion()).put("osApiLev", c2469ch.getOsApiLevel()).put("lang", c2469ch.getLocale()).put("root", c2469ch.getDeviceRootStatus()).put("app_debuggable", ((Y5) c2469ch).a).put(CommonUrlParts.APP_FRAMEWORK, c2469ch.getAppFramework()).put("attribution_id", c2469ch.r).put("analyticsSdkVersionName", c2469ch.getAnalyticsSdkVersionName()).put("kitBuildNumber", c2469ch.getAnalyticsSdkBuildNumber());
        } catch (Throwable unused) {
            jSONObject = new JSONObject();
        }
        String string = jSONObject.toString();
        Long lValueOf3 = Long.valueOf(AbstractC2550fn.a());
        Kj kj = Jj.a;
        synchronized (kj) {
            zB = kj.b.b(true);
        }
        ContentValues contentValuesFromModel = b7.fromModel(new A7(lValueOf, enumC3045zk, string, new C3032z7(lValueOf2, lValueOf3, Boolean.valueOf(zB))));
        if (contentValuesFromModel == null) {
            return;
        }
        this.b.lock();
        try {
            SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
            if (writableDatabase != null) {
                writableDatabase.insertOrThrow("sessions", null, contentValuesFromModel);
            }
        } catch (Throwable unused2) {
        }
        this.b.unlock();
    }

    public final void a(ContentValues contentValues) {
        synchronized (this.e) {
            this.f.add(contentValues);
        }
        synchronized (this.d) {
            this.d.notifyAll();
        }
    }

    public final int a(SQLiteDatabase sQLiteDatabase) {
        try {
            return this.k.a(sQLiteDatabase, String.format("id IN (SELECT id FROM events ORDER BY CASE WHEN type IN (%1$s) THEN 2 WHEN type IN (%2$s) THEN 1 ELSE 0 END, id LIMIT (SELECT count() FROM events) / %3$s)", TextUtils.join(", ", C9.i), TextUtils.join(", ", C9.j), 10), 2, this.h.b.b, true).b;
        } catch (Throwable th) {
            Fj fj = AbstractC2521ej.a;
            fj.getClass();
            fj.a(new C2546fj("deleteExcessiveReports exception", th));
            return 0;
        }
    }

    public final void a(long j, int i, int i2, boolean z) {
        if (i2 <= 0) {
            return;
        }
        this.b.lock();
        try {
            String str = String.format(Locale.US, "%1$s = %2$s AND %3$s = %4$s AND %5$s <= (SELECT %5$s FROM %6$s WHERE %1$s = %2$s AND %3$s = %4$s ORDER BY %5$s ASC LIMIT %7$s, 1)", "session_id", Long.toString(j), "session_type", Integer.toString(i), TtmlNode.ATTR_ID, "events", Integer.toString(i2 - 1));
            SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
            if (writableDatabase != null) {
                M6 m6A = this.k.a(writableDatabase, str, 1, this.h.b.b, z);
                if (m6A.a != null) {
                    ArrayList arrayList = new ArrayList();
                    Iterator it = m6A.a.iterator();
                    while (it.hasNext()) {
                        Integer asInteger = ((ContentValues) it.next()).getAsInteger("type");
                        asInteger.intValue();
                        arrayList.add(asInteger);
                    }
                    Iterator it2 = this.j.iterator();
                    while (it2.hasNext()) {
                        ((W8) it2.next()).b(arrayList);
                    }
                }
                List list = m6A.a;
                if (list != null) {
                    for (int i3 = 0; i3 < list.size(); i3++) {
                        a((ContentValues) list.get(i3), "Event removed from db");
                    }
                }
                this.i.addAndGet(-m6A.b);
            }
        } catch (Throwable unused) {
        }
        this.b.unlock();
    }

    public final ContentValues a(long j, EnumC3045zk enumC3045zk) {
        ContentValues contentValues = new ContentValues();
        this.a.lock();
        Cursor cursorRawQuery = null;
        try {
            SQLiteDatabase readableDatabase = this.c.getReadableDatabase();
            if (readableDatabase != null) {
                cursorRawQuery = readableDatabase.rawQuery(String.format(Locale.US, "SELECT report_request_parameters FROM sessions WHERE id = %s AND type = %s ORDER BY id DESC LIMIT 1", Long.valueOf(j), Integer.valueOf(enumC3045zk.a)), null);
                if (cursorRawQuery.moveToNext()) {
                    ContentValues contentValues2 = new ContentValues();
                    DatabaseUtils.cursorRowToContentValues(cursorRawQuery, contentValues2);
                    contentValues = contentValues2;
                }
            }
        } catch (Throwable unused) {
        }
        In.a(cursorRawQuery);
        this.a.unlock();
        return contentValues;
    }

    public static String a(LinkedHashMap linkedHashMap) {
        StringBuilder sb = new StringBuilder("id >= ?");
        for (String str : linkedHashMap.keySet()) {
            sb.append(sb.length() > 0 ? " AND " : "");
            sb.append(str + " = ? ");
        }
        if (TextUtils.isEmpty(sb.toString())) {
            return null;
        }
        return sb.toString();
    }

    public static String[] a(String[] strArr, LinkedHashMap linkedHashMap) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(strArr));
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add((String) ((Map.Entry) it.next()).getValue());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public final void a(ContentValues contentValues, String str) {
        Integer asInteger = contentValues.getAsInteger("type");
        if (C9.d.contains(EnumC2588hb.a(asInteger != null ? asInteger.intValue() : -1))) {
            C2708m7 model = new C2733n7(null, 1, null).toModel(contentValues);
            PublicLogger publicLogger = this.h.m;
            EnumC2588hb enumC2588hb = model.d;
            C2683l7 c2683l7 = model.g;
            publicLogger.info(Df.a(str, enumC2588hb, c2683l7.b, c2683l7.c), new Object[0]);
        }
    }

    public static boolean a(S6 s6) {
        boolean zIsEmpty;
        synchronized (s6.e) {
            zIsEmpty = s6.f.isEmpty();
        }
        return zIsEmpty;
    }
}
