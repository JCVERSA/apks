package c9;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.hisavana.common.tracking.TrackingKey;
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

public class m0 implements c9.d, d9.a, c9.c {

    private static final t8.c f16741f = t8.c.b("proto");

    private final v0 f16742a;

    private final e9.a f16743b;

    private final e9.a f16744c;

    private final e f16745d;

    private final iy.a f16746e;

    interface b {
        Object apply(Object obj);
    }

    private static class c {

        final String f16747a;

        final String f16748b;

        private c(String str, String str2) {
            this.f16747a = str;
            this.f16748b = str2;
        }
    }

    interface d {
        Object a();
    }

    m0(e9.a aVar, e9.a aVar2, e eVar, v0 v0Var, iy.a aVar3) {
        this.f16742a = v0Var;
        this.f16743b = aVar;
        this.f16744c = aVar2;
        this.f16745d = eVar;
        this.f16746e = aVar3;
    }

    private boolean B0() {
        return t0() * u0() >= this.f16745d.f();
    }

    private List D0(List list, Map map) {
        ListIterator listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            k kVar = (k) listIterator.next();
            if (map.containsKey(Long.valueOf(kVar.c()))) {
                com.google.android.datatransport.runtime.i.a aVarP = kVar.b().p();
                for (c cVar : (Set) map.get(Long.valueOf(kVar.c()))) {
                    aVarP.c(cVar.f16747a, cVar.f16748b);
                }
                listIterator.set(k.a(kVar.c(), kVar.d(), aVarP.d()));
            }
        }
        return list;
    }

    public Object E0(Cursor cursor) {
        while (cursor.moveToNext()) {
            j(cursor.getInt(0), LogEventDropped.Reason.MESSAGE_TOO_OLD, cursor.getString(1));
        }
        return null;
    }

    public Integer G0(long j10, SQLiteDatabase sQLiteDatabase) {
        String[] strArr = {String.valueOf(j10)};
        m1(sQLiteDatabase.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr), new b() {
            @Override
            public final Object apply(Object obj) {
                return this.f16762a.E0((Cursor) obj);
            }
        });
        return Integer.valueOf(sQLiteDatabase.delete("events", "timestamp_ms < ?", strArr));
    }

    public static Object H0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        return null;
    }

    public static Object I0(Throwable th2) {
        throw new SynchronizationException("Timed out while trying to acquire the lock.", th2);
    }

    public static SQLiteDatabase J0(Throwable th2) {
        throw new SynchronizationException("Timed out while trying to open db.", th2);
    }

    public static Long K0(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    public static x8.e L0(long j10, Cursor cursor) {
        cursor.moveToNext();
        return x8.e.c().c(cursor.getLong(0)).b(j10).a();
    }

    public static x8.e M0(final long j10, SQLiteDatabase sQLiteDatabase) {
        return (x8.e) m1(sQLiteDatabase.rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]), new b() {
            @Override
            public final Object apply(Object obj) {
                return m0.L0(j10, (Cursor) obj);
            }
        });
    }

    public static Long N0(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return null;
    }

    public Boolean O0(com.google.android.datatransport.runtime.o oVar, SQLiteDatabase sQLiteDatabase) {
        Long lY0 = y0(sQLiteDatabase, oVar);
        return lY0 == null ? Boolean.FALSE : (Boolean) m1(r0().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lY0.toString()}), new b() {
            @Override
            public final Object apply(Object obj) {
                return Boolean.valueOf(((Cursor) obj).moveToNext());
            }
        });
    }

    public static List P0(SQLiteDatabase sQLiteDatabase) {
        return (List) m1(sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new b() {
            @Override
            public final Object apply(Object obj) {
                return m0.Q0((Cursor) obj);
            }
        });
    }

    public static List Q0(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            arrayList.add(com.google.android.datatransport.runtime.o.a().b(cursor.getString(1)).d(f9.a.b(cursor.getInt(2))).c(g1(cursor.getString(3))).a());
        }
        return arrayList;
    }

    public List R0(com.google.android.datatransport.runtime.o oVar, SQLiteDatabase sQLiteDatabase) {
        List listE1 = e1(sQLiteDatabase, oVar, this.f16745d.d());
        for (Priority priority : Priority.values()) {
            if (priority != oVar.d()) {
                int iD = this.f16745d.d() - listE1.size();
                if (iD <= 0) {
                    break;
                }
                listE1.addAll(e1(sQLiteDatabase, oVar.f(priority), iD));
            }
        }
        return D0(listE1, f1(sQLiteDatabase, listE1));
    }

    public x8.a S0(Map map, x8.a.C0939a c0939a, Cursor cursor) {
        while (cursor.moveToNext()) {
            String string = cursor.getString(0);
            LogEventDropped.Reason reasonJ0 = j0(cursor.getInt(1));
            long j10 = cursor.getLong(2);
            if (!map.containsKey(string)) {
                map.put(string, new ArrayList());
            }
            ((List) map.get(string)).add(LogEventDropped.c().c(reasonJ0).b(j10).a());
        }
        h1(c0939a, map);
        return c0939a.e(x0()).d(s0()).c((String) this.f16746e.get()).b();
    }

    public x8.a T0(String str, final Map map, final x8.a.C0939a c0939a, SQLiteDatabase sQLiteDatabase) {
        return (x8.a) m1(sQLiteDatabase.rawQuery(str, new String[0]), new b() {
            @Override
            public final Object apply(Object obj) {
                return this.f16716a.S0(map, c0939a, (Cursor) obj);
            }
        });
    }

    public Object U0(List list, com.google.android.datatransport.runtime.o oVar, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j10 = cursor.getLong(0);
            boolean z10 = cursor.getInt(7) != 0;
            com.google.android.datatransport.runtime.i.a aVarO = com.google.android.datatransport.runtime.i.a().n(cursor.getString(1)).i(cursor.getLong(2)).o(cursor.getLong(3));
            if (z10) {
                aVarO.h(new com.google.android.datatransport.runtime.h(k1(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                aVarO.h(new com.google.android.datatransport.runtime.h(k1(cursor.getString(4)), i1(j10)));
            }
            if (!cursor.isNull(6)) {
                aVarO.g(Integer.valueOf(cursor.getInt(6)));
            }
            if (!cursor.isNull(8)) {
                aVarO.l(Integer.valueOf(cursor.getInt(8)));
            }
            if (!cursor.isNull(9)) {
                aVarO.m(cursor.getString(9));
            }
            if (!cursor.isNull(10)) {
                aVarO.j(cursor.getBlob(10));
            }
            if (!cursor.isNull(11)) {
                aVarO.k(cursor.getBlob(11));
            }
            list.add(k.a(j10, oVar, aVarO.d()));
        }
        return null;
    }

    public static Object V0(Map map, Cursor cursor) {
        while (true) {
            if (!cursor.moveToNext()) {
                return null;
            }
            long j10 = cursor.getLong(0);
            Set hashSet = (Set) map.get(Long.valueOf(j10));
            if (hashSet == null) {
                hashSet = new HashSet();
                map.put(Long.valueOf(j10), hashSet);
            }
            hashSet.add(new c(cursor.getString(1), cursor.getString(2)));
        }
    }

    public Long W0(com.google.android.datatransport.runtime.i iVar, com.google.android.datatransport.runtime.o oVar, SQLiteDatabase sQLiteDatabase) {
        if (B0()) {
            j(1L, LogEventDropped.Reason.CACHE_FULL, iVar.n());
            return -1L;
        }
        long jO0 = o0(sQLiteDatabase, oVar);
        int iE = this.f16745d.e();
        byte[] bArrA = iVar.e().a();
        boolean z10 = bArrA.length <= iE;
        ContentValues contentValues = new ContentValues();
        contentValues.put("context_id", Long.valueOf(jO0));
        contentValues.put("transport_name", iVar.n());
        contentValues.put("timestamp_ms", Long.valueOf(iVar.f()));
        contentValues.put("uptime_ms", Long.valueOf(iVar.o()));
        contentValues.put("payload_encoding", iVar.e().b().a());
        contentValues.put("code", iVar.d());
        contentValues.put("num_attempts", (Integer) 0);
        contentValues.put("inline", Boolean.valueOf(z10));
        contentValues.put("payload", z10 ? bArrA : new byte[0]);
        contentValues.put("product_id", iVar.l());
        contentValues.put("pseudonymous_id", iVar.m());
        contentValues.put("experiment_ids_clear_blob", iVar.g());
        contentValues.put("experiment_ids_encrypted_blob", iVar.h());
        long jInsert = sQLiteDatabase.insert("events", null, contentValues);
        if (!z10) {
            int iCeil = (int) Math.ceil(((double) bArrA.length) / ((double) iE));
            for (int i10 = 1; i10 <= iCeil; i10++) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(bArrA, (i10 - 1) * iE, Math.min(i10 * iE, bArrA.length));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("event_id", Long.valueOf(jInsert));
                contentValues2.put("sequence_num", Integer.valueOf(i10));
                contentValues2.put("bytes", bArrCopyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues2);
            }
        }
        for (Map.Entry entry : iVar.k().entrySet()) {
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("event_id", Long.valueOf(jInsert));
            contentValues3.put("name", (String) entry.getKey());
            contentValues3.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, (String) entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues3);
        }
        return Long.valueOf(jInsert);
    }

    public static byte[] X0(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        int length = 0;
        while (cursor.moveToNext()) {
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            length += blob.length;
        }
        byte[] bArr = new byte[length];
        int length2 = 0;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            byte[] bArr2 = (byte[]) arrayList.get(i10);
            System.arraycopy(bArr2, 0, bArr, length2, bArr2.length);
            length2 += bArr2.length;
        }
        return bArr;
    }

    public Object Y0(Cursor cursor) {
        while (cursor.moveToNext()) {
            j(cursor.getInt(0), LogEventDropped.Reason.MAX_RETRIES_REACHED, cursor.getString(1));
        }
        return null;
    }

    public Object Z0(String str, String str2, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        m1(sQLiteDatabase.rawQuery(str2, null), new b() {
            @Override
            public final Object apply(Object obj) {
                return this.f16767a.Y0((Cursor) obj);
            }
        });
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    public static Boolean a1(Cursor cursor) {
        return Boolean.valueOf(cursor.getCount() > 0);
    }

    public static Object b1(String str, LogEventDropped.Reason reason, long j10, SQLiteDatabase sQLiteDatabase) {
        if (((Boolean) m1(sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(reason.getNumber())}), new b() {
            @Override
            public final Object apply(Object obj) {
                return m0.a1((Cursor) obj);
            }
        })).booleanValue()) {
            sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j10 + " WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(reason.getNumber())});
        } else {
            ContentValues contentValues = new ContentValues();
            contentValues.put("log_source", str);
            contentValues.put("reason", Integer.valueOf(reason.getNumber()));
            contentValues.put("events_dropped_count", Long.valueOf(j10));
            sQLiteDatabase.insert("log_event_dropped", null, contentValues);
        }
        return null;
    }

    public static Object c1(long j10, com.google.android.datatransport.runtime.o oVar, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j10));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{oVar.b(), String.valueOf(f9.a.a(oVar.d()))}) < 1) {
            contentValues.put("backend_name", oVar.b());
            contentValues.put(TrackingKey.PRIORITY, Integer.valueOf(f9.a.a(oVar.d())));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }

    public Object d1(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement("DELETE FROM log_event_dropped").execute();
        sQLiteDatabase.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + this.f16743b.getTime()).execute();
        return null;
    }

    private List e1(SQLiteDatabase sQLiteDatabase, final com.google.android.datatransport.runtime.o oVar, int i10) {
        final ArrayList arrayList = new ArrayList();
        Long lY0 = y0(sQLiteDatabase, oVar);
        if (lY0 == null) {
            return arrayList;
        }
        m1(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline", "product_id", "pseudonymous_id", "experiment_ids_clear_blob", "experiment_ids_encrypted_blob"}, "context_id = ?", new String[]{lY0.toString()}, null, null, null, String.valueOf(i10)), new b() {
            @Override
            public final Object apply(Object obj) {
                return this.f16783a.U0(arrayList, oVar, (Cursor) obj);
            }
        });
        return arrayList;
    }

    private Map f1(SQLiteDatabase sQLiteDatabase, List list) {
        final HashMap map = new HashMap();
        StringBuilder sb2 = new StringBuilder("event_id IN (");
        for (int i10 = 0; i10 < list.size(); i10++) {
            sb2.append(((k) list.get(i10)).c());
            if (i10 < list.size() - 1) {
                sb2.append(',');
            }
        }
        sb2.append(')');
        m1(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", AppMeasurementSdk.ConditionalUserProperty.VALUE}, sb2.toString(), null, null, null, null), new b() {
            @Override
            public final Object apply(Object obj) {
                return m0.V0(map, (Cursor) obj);
            }
        });
        return map;
    }

    private static byte[] g1(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    private void h1(x8.a.C0939a c0939a, Map map) {
        for (Map.Entry entry : map.entrySet()) {
            c0939a.a(x8.c.c().c((String) entry.getKey()).b((List) entry.getValue()).a());
        }
    }

    private byte[] i1(long j10) {
        return (byte[]) m1(r0().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j10)}, null, null, "sequence_num"), new b() {
            @Override
            public final Object apply(Object obj) {
                return m0.X0((Cursor) obj);
            }
        });
    }

    private LogEventDropped.Reason j0(int i10) {
        LogEventDropped.Reason reason = LogEventDropped.Reason.REASON_UNKNOWN;
        if (i10 == reason.getNumber()) {
            return reason;
        }
        LogEventDropped.Reason reason2 = LogEventDropped.Reason.MESSAGE_TOO_OLD;
        if (i10 == reason2.getNumber()) {
            return reason2;
        }
        LogEventDropped.Reason reason3 = LogEventDropped.Reason.CACHE_FULL;
        if (i10 == reason3.getNumber()) {
            return reason3;
        }
        LogEventDropped.Reason reason4 = LogEventDropped.Reason.PAYLOAD_TOO_BIG;
        if (i10 == reason4.getNumber()) {
            return reason4;
        }
        LogEventDropped.Reason reason5 = LogEventDropped.Reason.MAX_RETRIES_REACHED;
        if (i10 == reason5.getNumber()) {
            return reason5;
        }
        LogEventDropped.Reason reason6 = LogEventDropped.Reason.INVALID_PAYLOD;
        if (i10 == reason6.getNumber()) {
            return reason6;
        }
        LogEventDropped.Reason reason7 = LogEventDropped.Reason.SERVER_ERROR;
        if (i10 == reason7.getNumber()) {
            return reason7;
        }
        y8.a.b("SQLiteEventStore", "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN", Integer.valueOf(i10));
        return reason;
    }

    private Object j1(d dVar, b bVar) {
        long time = this.f16744c.getTime();
        while (true) {
            try {
                return dVar.a();
            } catch (SQLiteDatabaseLockedException e10) {
                if (this.f16744c.getTime() >= ((long) this.f16745d.b()) + time) {
                    return bVar.apply(e10);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    private static t8.c k1(String str) {
        return str == null ? f16741f : t8.c.b(str);
    }

    private void l0(final SQLiteDatabase sQLiteDatabase) {
        j1(new d() {
            @Override
            public final Object a() {
                return m0.H0(sQLiteDatabase);
            }
        }, new b() {
            @Override
            public final Object apply(Object obj) {
                return m0.I0((Throwable) obj);
            }
        });
    }

    private static String l1(Iterable iterable) {
        StringBuilder sb2 = new StringBuilder("(");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            sb2.append(((k) it.next()).c());
            if (it.hasNext()) {
                sb2.append(',');
            }
        }
        sb2.append(')');
        return sb2.toString();
    }

    static Object m1(Cursor cursor, b bVar) {
        try {
            return bVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    private long o0(SQLiteDatabase sQLiteDatabase, com.google.android.datatransport.runtime.o oVar) {
        Long lY0 = y0(sQLiteDatabase, oVar);
        if (lY0 != null) {
            return lY0.longValue();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("backend_name", oVar.b());
        contentValues.put(TrackingKey.PRIORITY, Integer.valueOf(f9.a.a(oVar.d())));
        contentValues.put("next_request_ms", (Integer) 0);
        if (oVar.c() != null) {
            contentValues.put("extras", Base64.encodeToString(oVar.c(), 0));
        }
        return sQLiteDatabase.insert("transport_contexts", null, contentValues);
    }

    private x8.b s0() {
        return x8.b.b().b(x8.d.c().b(p0()).c(e.f16724a.f()).a()).a();
    }

    private long t0() {
        return r0().compileStatement("PRAGMA page_count").simpleQueryForLong();
    }

    private long u0() {
        return r0().compileStatement("PRAGMA page_size").simpleQueryForLong();
    }

    private x8.e x0() {
        final long time = this.f16743b.getTime();
        return (x8.e) A0(new b() {
            @Override
            public final Object apply(Object obj) {
                return m0.M0(time, (SQLiteDatabase) obj);
            }
        });
    }

    private Long y0(SQLiteDatabase sQLiteDatabase, com.google.android.datatransport.runtime.o oVar) {
        StringBuilder sb2 = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(oVar.b(), String.valueOf(f9.a.a(oVar.d()))));
        if (oVar.c() != null) {
            sb2.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(oVar.c(), 0));
        } else {
            sb2.append(" and extras is null");
        }
        return (Long) m1(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb2.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), new b() {
            @Override
            public final Object apply(Object obj) {
                return m0.N0((Cursor) obj);
            }
        });
    }

    Object A0(b bVar) {
        SQLiteDatabase sQLiteDatabaseR0 = r0();
        sQLiteDatabaseR0.beginTransaction();
        try {
            Object objApply = bVar.apply(sQLiteDatabaseR0);
            sQLiteDatabaseR0.setTransactionSuccessful();
            return objApply;
        } finally {
            sQLiteDatabaseR0.endTransaction();
        }
    }

    @Override
    public int B() {
        final long time = this.f16743b.getTime() - this.f16745d.c();
        return ((Integer) A0(new b() {
            @Override
            public final Object apply(Object obj) {
                return this.f16733a.G0(time, (SQLiteDatabase) obj);
            }
        })).intValue();
    }

    @Override
    public void C(Iterable iterable) {
        if (iterable.iterator().hasNext()) {
            r0().compileStatement("DELETE FROM events WHERE _id in " + l1(iterable)).execute();
        }
    }

    @Override
    public void G(final com.google.android.datatransport.runtime.o oVar, final long j10) {
        A0(new b() {
            @Override
            public final Object apply(Object obj) {
                return m0.c1(j10, oVar, (SQLiteDatabase) obj);
            }
        });
    }

    @Override
    public Iterable H() {
        return (Iterable) A0(new b() {
            @Override
            public final Object apply(Object obj) {
                return m0.P0((SQLiteDatabase) obj);
            }
        });
    }

    @Override
    public long O(com.google.android.datatransport.runtime.o oVar) {
        return ((Long) m1(r0().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{oVar.b(), String.valueOf(f9.a.a(oVar.d()))}), new b() {
            @Override
            public final Object apply(Object obj) {
                return m0.K0((Cursor) obj);
            }
        })).longValue();
    }

    @Override
    public boolean P(final com.google.android.datatransport.runtime.o oVar) {
        return ((Boolean) A0(new b() {
            @Override
            public final Object apply(Object obj) {
                return this.f16754a.O0(oVar, (SQLiteDatabase) obj);
            }
        })).booleanValue();
    }

    @Override
    public void Q(Iterable iterable) {
        if (iterable.iterator().hasNext()) {
            final String str = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + l1(iterable);
            final String str2 = "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name";
            A0(new b() {
                @Override
                public final Object apply(Object obj) {
                    return this.f16736a.Z0(str, str2, (SQLiteDatabase) obj);
                }
            });
        }
    }

    @Override
    public Iterable Z(final com.google.android.datatransport.runtime.o oVar) {
        return (Iterable) A0(new b() {
            @Override
            public final Object apply(Object obj) {
                return this.f16739a.R0(oVar, (SQLiteDatabase) obj);
            }
        });
    }

    @Override
    public Object b(d9.a.InterfaceC0702a interfaceC0702a) {
        SQLiteDatabase sQLiteDatabaseR0 = r0();
        l0(sQLiteDatabaseR0);
        try {
            Object objExecute = interfaceC0702a.execute();
            sQLiteDatabaseR0.setTransactionSuccessful();
            return objExecute;
        } finally {
            sQLiteDatabaseR0.endTransaction();
        }
    }

    @Override
    public void close() {
        this.f16742a.close();
    }

    @Override
    public void d() {
        A0(new b() {
            @Override
            public final Object apply(Object obj) {
                return this.f16758a.d1((SQLiteDatabase) obj);
            }
        });
    }

    @Override
    public x8.a h() {
        final x8.a.C0939a c0939aE = x8.a.e();
        final HashMap map = new HashMap();
        final String str = "SELECT log_source, reason, events_dropped_count FROM log_event_dropped";
        return (x8.a) A0(new b() {
            @Override
            public final Object apply(Object obj) {
                return this.f16763a.T0(str, map, c0939aE, (SQLiteDatabase) obj);
            }
        });
    }

    @Override
    public void j(final long j10, final LogEventDropped.Reason reason, final String str) {
        A0(new b() {
            @Override
            public final Object apply(Object obj) {
                return m0.b1(str, reason, j10, (SQLiteDatabase) obj);
            }
        });
    }

    long p0() {
        return t0() * u0();
    }

    SQLiteDatabase r0() {
        final v0 v0Var = this.f16742a;
        Objects.requireNonNull(v0Var);
        return (SQLiteDatabase) j1(new d() {
            @Override
            public final Object a() {
                return v0Var.getWritableDatabase();
            }
        }, new b() {
            @Override
            public final Object apply(Object obj) {
                return m0.J0((Throwable) obj);
            }
        });
    }

    @Override
    public k w0(final com.google.android.datatransport.runtime.o oVar, final com.google.android.datatransport.runtime.i iVar) {
        y8.a.c("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", oVar.d(), iVar.n(), oVar.b());
        long jLongValue = ((Long) A0(new b() {
            @Override
            public final Object apply(Object obj) {
                return this.f16729a.W0(iVar, oVar, (SQLiteDatabase) obj);
            }
        })).longValue();
        if (jLongValue < 1) {
            return null;
        }
        return k.a(jLongValue, oVar, iVar);
    }
}
