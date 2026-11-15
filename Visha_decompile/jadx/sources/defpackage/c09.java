package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.mozilla.javascript.ES6Iterator;

public class c09 implements ge3, e8a, xx0 {
    public static final ka3 g = ka3.b("proto");
    public final u29 b;
    public final hy0 c;
    public final hy0 d;
    public final he3 e;
    public final oj8 f;

    public interface b {
        Object apply(Object obj);
    }

    public static class c {
        public final String a;
        public final String b;

        public c(String str, String str2) {
            this.a = str;
            this.b = str2;
        }
    }

    public interface d {
        Object a();
    }

    public c09(hy0 hy0Var, hy0 hy0Var2, he3 he3Var, u29 u29Var, oj8 oj8Var) {
        this.b = u29Var;
        this.c = hy0Var;
        this.d = hy0Var2;
        this.e = he3Var;
        this.f = oj8Var;
    }

    public static byte[] B0(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        int length = 0;
        while (cursor.moveToNext()) {
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            length += blob.length;
        }
        byte[] bArr = new byte[length];
        int length2 = 0;
        for (int i = 0; i < arrayList.size(); i++) {
            byte[] bArr2 = (byte[]) arrayList.get(i);
            System.arraycopy(bArr2, 0, bArr, length2, bArr2.length);
            length2 += bArr2.length;
        }
        return bArr;
    }

    public static Boolean E0(Cursor cursor) {
        return Boolean.valueOf(cursor.getCount() > 0);
    }

    public static Object F0(String str, LogEventDropped.Reason reason, long j, SQLiteDatabase sQLiteDatabase) {
        if (((Boolean) Q0(sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(reason.getNumber())}), new b() {
            @Override
            public final Object apply(Object obj) {
                return c09.E0((Cursor) obj);
            }
        })).booleanValue()) {
            sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j + " WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(reason.getNumber())});
        } else {
            ContentValues contentValues = new ContentValues();
            contentValues.put("log_source", str);
            contentValues.put("reason", Integer.valueOf(reason.getNumber()));
            contentValues.put("events_dropped_count", Long.valueOf(j));
            sQLiteDatabase.insert("log_event_dropped", null, contentValues);
        }
        return null;
    }

    public static Object G0(long j, a9b a9bVar, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{a9bVar.b(), String.valueOf(mf8.a(a9bVar.d()))}) < 1) {
            contentValues.put("backend_name", a9bVar.b());
            contentValues.put("priority", Integer.valueOf(mf8.a(a9bVar.d())));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }

    public static byte[] K0(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    public static ka3 O0(String str) {
        return str == null ? g : ka3.b(str);
    }

    public static String P0(Iterable iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(((v08) it.next()).c());
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public static Object Q0(Cursor cursor, b bVar) {
        try {
            return bVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    public static Object l0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        return null;
    }

    public static Object m0(Throwable th) {
        throw new SynchronizationException("Timed out while trying to acquire the lock.", th);
    }

    public static SQLiteDatabase n0(Throwable th) {
        throw new SynchronizationException("Timed out while trying to open db.", th);
    }

    public static Long o0(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    public static xna p0(long j, Cursor cursor) {
        cursor.moveToNext();
        return xna.c().c(cursor.getLong(0)).b(j).a();
    }

    public static xna q0(final long j, SQLiteDatabase sQLiteDatabase) {
        return (xna) Q0(sQLiteDatabase.rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]), new b() {
            @Override
            public final Object apply(Object obj) {
                return c09.p0(j, (Cursor) obj);
            }
        });
    }

    public static Long r0(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return null;
    }

    public static List t0(SQLiteDatabase sQLiteDatabase) {
        return (List) Q0(sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new b() {
            @Override
            public final Object apply(Object obj) {
                return c09.u0((Cursor) obj);
            }
        });
    }

    public static List u0(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            arrayList.add(a9b.a().b(cursor.getString(1)).d(mf8.b(cursor.getInt(2))).c(K0(cursor.getString(3))).a());
        }
        return arrayList;
    }

    public static Object z0(Map map, Cursor cursor) {
        while (true) {
            if (!cursor.moveToNext()) {
                return null;
            }
            long j = cursor.getLong(0);
            Set hashSet = (Set) map.get(Long.valueOf(j));
            if (hashSet == null) {
                hashSet = new HashSet();
                map.put(Long.valueOf(j), hashSet);
            }
            hashSet.add(new c(cursor.getString(1), cursor.getString(2)));
        }
    }

    public final Long A0(xd3 xd3Var, a9b a9bVar, SQLiteDatabase sQLiteDatabase) {
        if (h0()) {
            e(1L, LogEventDropped.Reason.CACHE_FULL, xd3Var.j());
            return -1L;
        }
        long jZ = Z(sQLiteDatabase, a9bVar);
        int iE = this.e.e();
        byte[] bArrA = xd3Var.e().a();
        boolean z = bArrA.length <= iE;
        ContentValues contentValues = new ContentValues();
        contentValues.put("context_id", Long.valueOf(jZ));
        contentValues.put("transport_name", xd3Var.j());
        contentValues.put("timestamp_ms", Long.valueOf(xd3Var.f()));
        contentValues.put("uptime_ms", Long.valueOf(xd3Var.k()));
        contentValues.put("payload_encoding", xd3Var.e().b().a());
        contentValues.put(TrackingKey.CODE, xd3Var.d());
        contentValues.put("num_attempts", (Integer) 0);
        contentValues.put("inline", Boolean.valueOf(z));
        contentValues.put(TranSearchIndexablesContract.TranRawData.PAYLOAD, z ? bArrA : new byte[0]);
        long jInsert = sQLiteDatabase.insert("events", null, contentValues);
        if (!z) {
            int iCeil = (int) Math.ceil(((double) bArrA.length) / ((double) iE));
            for (int i = 1; i <= iCeil; i++) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(bArrA, (i - 1) * iE, Math.min(i * iE, bArrA.length));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("event_id", Long.valueOf(jInsert));
                contentValues2.put("sequence_num", Integer.valueOf(i));
                contentValues2.put("bytes", bArrCopyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues2);
            }
        }
        for (Map.Entry entry : xd3Var.i().entrySet()) {
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("event_id", Long.valueOf(jInsert));
            contentValues3.put("name", (String) entry.getKey());
            contentValues3.put(ES6Iterator.VALUE_PROPERTY, (String) entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues3);
        }
        return Long.valueOf(jInsert);
    }

    @Override
    public boolean B(final a9b a9bVar) {
        return ((Boolean) g0(new b() {
            @Override
            public final Object apply(Object obj) {
                return this.a.s0(a9bVar, (SQLiteDatabase) obj);
            }
        })).booleanValue();
    }

    @Override
    public void C(Iterable iterable) {
        if (iterable.iterator().hasNext()) {
            final String str = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + P0(iterable);
            final String str2 = "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name";
            g0(new b() {
                @Override
                public final Object apply(Object obj) {
                    return this.a.D0(str, str2, (SQLiteDatabase) obj);
                }
            });
        }
    }

    public final Object C0(Cursor cursor) {
        while (cursor.moveToNext()) {
            e(cursor.getInt(0), LogEventDropped.Reason.MAX_RETRIES_REACHED, cursor.getString(1));
        }
        return null;
    }

    public final Object D0(String str, String str2, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        Q0(sQLiteDatabase.rawQuery(str2, null), new b() {
            @Override
            public final Object apply(Object obj) {
                return this.a.C0((Cursor) obj);
            }
        });
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    public final Object H0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement("DELETE FROM log_event_dropped").execute();
        sQLiteDatabase.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + this.c.a()).execute();
        return null;
    }

    public final List I0(SQLiteDatabase sQLiteDatabase, final a9b a9bVar, int i) {
        final ArrayList arrayList = new ArrayList();
        Long lF0 = f0(sQLiteDatabase, a9bVar);
        if (lF0 == null) {
            return arrayList;
        }
        Q0(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", TranSearchIndexablesContract.TranRawData.PAYLOAD, TrackingKey.CODE, "inline"}, "context_id = ?", new String[]{lF0.toString()}, null, null, null, String.valueOf(i)), new b() {
            @Override
            public final Object apply(Object obj) {
                return this.a.y0(arrayList, a9bVar, (Cursor) obj);
            }
        });
        return arrayList;
    }

    public final Map J0(SQLiteDatabase sQLiteDatabase, List list) {
        final HashMap map = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i = 0; i < list.size(); i++) {
            sb.append(((v08) list.get(i)).c());
            if (i < list.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        Q0(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", ES6Iterator.VALUE_PROPERTY}, sb.toString(), null, null, null, null), new b() {
            @Override
            public final Object apply(Object obj) {
                return c09.z0(map, (Cursor) obj);
            }
        });
        return map;
    }

    public final void L0(zx0.a aVar, Map map) {
        for (Map.Entry entry : map.entrySet()) {
            aVar.a(zp5.c().c((String) entry.getKey()).b((List) entry.getValue()).a());
        }
    }

    public final byte[] M0(long j) {
        return (byte[]) Q0(b0().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j)}, null, null, "sequence_num"), new b() {
            @Override
            public final Object apply(Object obj) {
                return c09.B0((Cursor) obj);
            }
        });
    }

    public final Object N0(d dVar, b bVar) {
        long jA = this.d.a();
        while (true) {
            try {
                return dVar.a();
            } catch (SQLiteDatabaseLockedException e) {
                if (this.d.a() >= ((long) this.e.b()) + jA) {
                    return bVar.apply(e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    public final LogEventDropped.Reason X(int i) {
        LogEventDropped.Reason reason = LogEventDropped.Reason.REASON_UNKNOWN;
        if (i == reason.getNumber()) {
            return reason;
        }
        LogEventDropped.Reason reason2 = LogEventDropped.Reason.MESSAGE_TOO_OLD;
        if (i == reason2.getNumber()) {
            return reason2;
        }
        LogEventDropped.Reason reason3 = LogEventDropped.Reason.CACHE_FULL;
        if (i == reason3.getNumber()) {
            return reason3;
        }
        LogEventDropped.Reason reason4 = LogEventDropped.Reason.PAYLOAD_TOO_BIG;
        if (i == reason4.getNumber()) {
            return reason4;
        }
        LogEventDropped.Reason reason5 = LogEventDropped.Reason.MAX_RETRIES_REACHED;
        if (i == reason5.getNumber()) {
            return reason5;
        }
        LogEventDropped.Reason reason6 = LogEventDropped.Reason.INVALID_PAYLOD;
        if (i == reason6.getNumber()) {
            return reason6;
        }
        LogEventDropped.Reason reason7 = LogEventDropped.Reason.SERVER_ERROR;
        if (i == reason7.getNumber()) {
            return reason7;
        }
        vq5.a("SQLiteEventStore", "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN", Integer.valueOf(i));
        return reason;
    }

    public final void Y(final SQLiteDatabase sQLiteDatabase) {
        N0(new d() {
            @Override
            public final Object a() {
                return c09.l0(sQLiteDatabase);
            }
        }, new b() {
            @Override
            public final Object apply(Object obj) {
                return c09.m0((Throwable) obj);
            }
        });
    }

    public final long Z(SQLiteDatabase sQLiteDatabase, a9b a9bVar) {
        Long lF0 = f0(sQLiteDatabase, a9bVar);
        if (lF0 != null) {
            return lF0.longValue();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("backend_name", a9bVar.b());
        contentValues.put("priority", Integer.valueOf(mf8.a(a9bVar.d())));
        contentValues.put("next_request_ms", (Integer) 0);
        if (a9bVar.c() != null) {
            contentValues.put("extras", Base64.encodeToString(a9bVar.c(), 0));
        }
        return sQLiteDatabase.insert("transport_contexts", null, contentValues);
    }

    @Override
    public Object a(e8a.a aVar) {
        SQLiteDatabase sQLiteDatabaseB0 = b0();
        Y(sQLiteDatabaseB0);
        try {
            Object objExecute = aVar.execute();
            sQLiteDatabaseB0.setTransactionSuccessful();
            return objExecute;
        } finally {
            sQLiteDatabaseB0.endTransaction();
        }
    }

    public long a0() {
        return d0() * getPageSize();
    }

    @Override
    public void b() {
        g0(new b() {
            @Override
            public final Object apply(Object obj) {
                return this.a.H0((SQLiteDatabase) obj);
            }
        });
    }

    public SQLiteDatabase b0() {
        final u29 u29Var = this.b;
        Objects.requireNonNull(u29Var);
        return (SQLiteDatabase) N0(new d() {
            @Override
            public final Object a() {
                return u29Var.getWritableDatabase();
            }
        }, new b() {
            @Override
            public final Object apply(Object obj) {
                return c09.n0((Throwable) obj);
            }
        });
    }

    public final oi4 c0() {
        return oi4.b().b(wx9.c().b(a0()).c(he3.a.f()).a()).a();
    }

    @Override
    public void close() {
        this.b.close();
    }

    @Override
    public zx0 d() {
        final zx0.a aVarE = zx0.e();
        final HashMap map = new HashMap();
        final String str = "SELECT log_source, reason, events_dropped_count FROM log_event_dropped";
        return (zx0) g0(new b() {
            @Override
            public final Object apply(Object obj) {
                return this.a.x0(str, map, aVarE, (SQLiteDatabase) obj);
            }
        });
    }

    public final long d0() {
        return b0().compileStatement("PRAGMA page_count").simpleQueryForLong();
    }

    @Override
    public void e(final long j, final LogEventDropped.Reason reason, final String str) {
        g0(new b() {
            @Override
            public final Object apply(Object obj) {
                return c09.F0(str, reason, j, (SQLiteDatabase) obj);
            }
        });
    }

    public final xna e0() {
        final long jA = this.c.a();
        return (xna) g0(new b() {
            @Override
            public final Object apply(Object obj) {
                return c09.q0(jA, (SQLiteDatabase) obj);
            }
        });
    }

    public final Long f0(SQLiteDatabase sQLiteDatabase, a9b a9bVar) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(a9bVar.b(), String.valueOf(mf8.a(a9bVar.d()))));
        if (a9bVar.c() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(a9bVar.c(), 0));
        } else {
            sb.append(" and extras is null");
        }
        return (Long) Q0(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), new b() {
            @Override
            public final Object apply(Object obj) {
                return c09.r0((Cursor) obj);
            }
        });
    }

    public Object g0(b bVar) {
        SQLiteDatabase sQLiteDatabaseB0 = b0();
        sQLiteDatabaseB0.beginTransaction();
        try {
            Object objApply = bVar.apply(sQLiteDatabaseB0);
            sQLiteDatabaseB0.setTransactionSuccessful();
            return objApply;
        } finally {
            sQLiteDatabaseB0.endTransaction();
        }
    }

    public final long getPageSize() {
        return b0().compileStatement("PRAGMA page_size").simpleQueryForLong();
    }

    public final boolean h0() {
        return d0() * getPageSize() >= this.e.f();
    }

    public final List i0(List list, Map map) {
        ListIterator listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            v08 v08Var = (v08) listIterator.next();
            if (map.containsKey(Long.valueOf(v08Var.c()))) {
                xd3.a aVarL = v08Var.b().l();
                for (c cVar : (Set) map.get(Long.valueOf(v08Var.c()))) {
                    aVarL.c(cVar.a, cVar.b);
                }
                listIterator.set(v08.a(v08Var.c(), v08Var.d(), aVarL.d()));
            }
        }
        return list;
    }

    public final Object j0(Cursor cursor) {
        while (cursor.moveToNext()) {
            e(cursor.getInt(0), LogEventDropped.Reason.MESSAGE_TOO_OLD, cursor.getString(1));
        }
        return null;
    }

    public final Integer k0(long j, SQLiteDatabase sQLiteDatabase) {
        String[] strArr = {String.valueOf(j)};
        Q0(sQLiteDatabase.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr), new b() {
            @Override
            public final Object apply(Object obj) {
                return this.a.j0((Cursor) obj);
            }
        });
        return Integer.valueOf(sQLiteDatabase.delete("events", "timestamp_ms < ?", strArr));
    }

    @Override
    public int q() {
        final long jA = this.c.a() - this.e.c();
        return ((Integer) g0(new b() {
            @Override
            public final Object apply(Object obj) {
                return this.a.k0(jA, (SQLiteDatabase) obj);
            }
        })).intValue();
    }

    @Override
    public long r(a9b a9bVar) {
        return ((Long) Q0(b0().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{a9bVar.b(), String.valueOf(mf8.a(a9bVar.d()))}), new b() {
            @Override
            public final Object apply(Object obj) {
                return c09.o0((Cursor) obj);
            }
        })).longValue();
    }

    @Override
    public v08 s(final a9b a9bVar, final xd3 xd3Var) {
        vq5.b("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", a9bVar.d(), xd3Var.j(), a9bVar.b());
        long jLongValue = ((Long) g0(new b() {
            @Override
            public final Object apply(Object obj) {
                return this.a.A0(xd3Var, a9bVar, (SQLiteDatabase) obj);
            }
        })).longValue();
        if (jLongValue < 1) {
            return null;
        }
        return v08.a(jLongValue, a9bVar, xd3Var);
    }

    public final Boolean s0(a9b a9bVar, SQLiteDatabase sQLiteDatabase) {
        Long lF0 = f0(sQLiteDatabase, a9bVar);
        return lF0 == null ? Boolean.FALSE : (Boolean) Q0(b0().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lF0.toString()}), new b() {
            @Override
            public final Object apply(Object obj) {
                return Boolean.valueOf(((Cursor) obj).moveToNext());
            }
        });
    }

    @Override
    public void t(final a9b a9bVar, final long j) {
        g0(new b() {
            @Override
            public final Object apply(Object obj) {
                return c09.G0(j, a9bVar, (SQLiteDatabase) obj);
            }
        });
    }

    @Override
    public void v(Iterable iterable) {
        if (iterable.iterator().hasNext()) {
            b0().compileStatement("DELETE FROM events WHERE _id in " + P0(iterable)).execute();
        }
    }

    public final List v0(a9b a9bVar, SQLiteDatabase sQLiteDatabase) {
        List listI0 = I0(sQLiteDatabase, a9bVar, this.e.d());
        for (Priority priority : Priority.values()) {
            if (priority != a9bVar.d()) {
                int iD = this.e.d() - listI0.size();
                if (iD <= 0) {
                    break;
                }
                listI0.addAll(I0(sQLiteDatabase, a9bVar.f(priority), iD));
            }
        }
        return i0(listI0, J0(sQLiteDatabase, listI0));
    }

    @Override
    public Iterable w(final a9b a9bVar) {
        return (Iterable) g0(new b() {
            @Override
            public final Object apply(Object obj) {
                return this.a.v0(a9bVar, (SQLiteDatabase) obj);
            }
        });
    }

    public final zx0 w0(Map map, zx0.a aVar, Cursor cursor) {
        while (cursor.moveToNext()) {
            String string = cursor.getString(0);
            LogEventDropped.Reason reasonX = X(cursor.getInt(1));
            long j = cursor.getLong(2);
            if (!map.containsKey(string)) {
                map.put(string, new ArrayList());
            }
            ((List) map.get(string)).add(LogEventDropped.c().c(reasonX).b(j).a());
        }
        L0(aVar, map);
        aVar.e(e0());
        aVar.d(c0());
        aVar.c((String) this.f.get());
        return aVar.b();
    }

    @Override
    public Iterable x() {
        return (Iterable) g0(new b() {
            @Override
            public final Object apply(Object obj) {
                return c09.t0((SQLiteDatabase) obj);
            }
        });
    }

    public final zx0 x0(String str, final Map map, final zx0.a aVar, SQLiteDatabase sQLiteDatabase) {
        return (zx0) Q0(sQLiteDatabase.rawQuery(str, new String[0]), new b() {
            @Override
            public final Object apply(Object obj) {
                return this.a.w0(map, aVar, (Cursor) obj);
            }
        });
    }

    public final Object y0(List list, a9b a9bVar, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            boolean z = cursor.getInt(7) != 0;
            xd3.a aVarK = xd3.a().j(cursor.getString(1)).i(cursor.getLong(2)).k(cursor.getLong(3));
            if (z) {
                aVarK.h(new ba3(O0(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                aVarK.h(new ba3(O0(cursor.getString(4)), M0(j)));
            }
            if (!cursor.isNull(6)) {
                aVarK.g(Integer.valueOf(cursor.getInt(6)));
            }
            list.add(v08.a(j, a9bVar, aVarK.d()));
        }
        return null;
    }
}
