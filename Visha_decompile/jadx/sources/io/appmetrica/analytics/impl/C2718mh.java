package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreutils.internal.ApiKeyUtils;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.db.DBUtils;
import io.appmetrica.analytics.coreutils.internal.io.GZIPCompressor;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.networktasks.internal.DefaultNetworkResponseHandler;
import io.appmetrica.analytics.networktasks.internal.FullUrlFormer;
import io.appmetrica.analytics.networktasks.internal.RequestBodyEncrypter;
import io.appmetrica.analytics.networktasks.internal.RequestDataHolder;
import io.appmetrica.analytics.networktasks.internal.ResponseDataHolder;
import io.appmetrica.analytics.networktasks.internal.RetryPolicyConfig;
import io.appmetrica.analytics.networktasks.internal.SendingDataTaskHelper;
import io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
import org.json.JSONObject;

public final class C2718mh implements UnderlyingNetworkTask {
    public final C2706m5 a;
    public final LinkedHashMap b;
    public C2882t7 c;
    public C2785p9 d;
    public final S6 e;
    public List f;
    public int g;
    public int h;
    public int i;
    public C2693lh j;
    public final C2878t3 k;
    public final PublicLogger l;
    public final Un m;
    public final Ya n;
    public final Rg o;
    public final FullUrlFormer p;
    public final Db q;
    public final RequestDataHolder r;
    public final ResponseDataHolder s;
    public final SendingDataTaskHelper t;
    public boolean u;
    public int v;

    public C2718mh(@NonNull C2706m5 c2706m5, @NonNull Rg rg, @NonNull Db db, @NonNull FullUrlFormer<C2469ch> fullUrlFormer, @NonNull RequestDataHolder requestDataHolder, @NonNull ResponseDataHolder responseDataHolder, @NonNull RequestBodyEncrypter requestBodyEncrypter) {
        this(c2706m5, rg, db, fullUrlFormer, requestDataHolder, responseDataHolder, c2706m5.h(), c2706m5.o(), c2706m5.t(), requestBodyEncrypter);
    }

    public final C2785p9 a(C2693lh c2693lh, List list, C2469ch c2469ch) {
        C2785p9 c2785p9 = new C2785p9();
        C2586h9 c2586h9 = new C2586h9();
        c2586h9.a = WrapUtils.getOrDefaultIfEmpty(this.c.b, c2469ch.getUuid());
        c2586h9.b = WrapUtils.getOrDefaultIfEmpty(this.c.a, c2469ch.getDeviceId());
        this.g = CodedOutputByteBufferNano.computeMessageSize(4, c2586h9) + this.g;
        c2785p9.b = c2586h9;
        Lm lmA = C2910ua.E.A();
        C2643jh c2643jh = new C2643jh(this, c2785p9);
        synchronized (lmA) {
            lmA.a.a(c2643jh);
        }
        List list2 = c2693lh.a;
        c2785p9.a = (C2710m9[]) list2.toArray(new C2710m9[list2.size()]);
        c2785p9.c = a(c2693lh.c);
        c2785p9.e = (String[]) list.toArray(new String[list.size()]);
        this.g = CodedOutputByteBufferNano.computeTagSize(8) + this.g;
        return c2785p9;
    }

    @Override
    @NonNull
    public final String description() {
        return "ReportTask_" + ApiKeyUtils.createPartialApiKey(this.a.b.b);
    }

    @Override
    @NonNull
    public final FullUrlFormer<?> getFullUrlFormer() {
        return this.p;
    }

    @Override
    @NonNull
    public final RequestDataHolder getRequestDataHolder() {
        return this.r;
    }

    @Override
    @NonNull
    public final ResponseDataHolder getResponseDataHolder() {
        return this.s;
    }

    @Override
    @Nullable
    public final RetryPolicyConfig getRetryPolicyConfig() {
        return ((C2469ch) this.a.k.a()).getRetryPolicyConfig();
    }

    @Override
    @Nullable
    public final SSLSocketFactory getSslSocketFactory() {
        ((C2473cl) C2910ua.E.y()).getClass();
        return null;
    }

    @Override
    public final boolean onCreateTask() {
        Cursor cursorRawQuery;
        int iOptInt;
        S6 s6 = this.a.e;
        s6.getClass();
        ArrayList arrayList = new ArrayList();
        s6.a.lock();
        try {
            SQLiteDatabase readableDatabase = s6.c.getReadableDatabase();
            if (readableDatabase != null) {
                cursorRawQuery = readableDatabase.rawQuery(H5.b, null);
                while (cursorRawQuery.moveToNext()) {
                    try {
                        ContentValues contentValues = new ContentValues();
                        DatabaseUtils.cursorRowToContentValues(cursorRawQuery, contentValues);
                        arrayList.add(contentValues);
                    } catch (Throwable unused) {
                        try {
                            arrayList = new ArrayList();
                            In.a(cursorRawQuery);
                            s6.a.unlock();
                        } catch (Throwable th) {
                            In.a(cursorRawQuery);
                            s6.a.unlock();
                            throw th;
                        }
                    }
                }
            } else {
                cursorRawQuery = null;
            }
            In.a(cursorRawQuery);
            s6.a.unlock();
        } catch (Throwable unused2) {
            cursorRawQuery = null;
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        ContentValues contentValues2 = (ContentValues) arrayList.get(0);
        this.b.clear();
        for (Map.Entry<String, Object> entry : contentValues2.valueSet()) {
            this.b.put(entry.getKey(), entry.getValue().toString());
        }
        String asString = contentValues2.getAsString("report_request_parameters");
        if (TextUtils.isEmpty(asString)) {
            C2882t7 c2882t7 = new C2882t7();
            this.c = c2882t7;
            this.o.c = c2882t7;
        } else {
            try {
                C2882t7 c2882t8 = new C2882t7(new C2687lb(asString));
                this.c = c2882t8;
                this.o.c = c2882t8;
            } catch (Throwable unused3) {
                C2882t7 c2882t9 = new C2882t7();
                this.c = c2882t9;
                this.o.c = c2882t9;
            }
        }
        C2469ch config = this.q.getConfig();
        List list = config.w;
        if (In.a((Collection) list)) {
            return false;
        }
        this.p.setHosts(config.q);
        if (!config.t() || In.a((Collection) this.p.getAllHosts())) {
            return false;
        }
        this.f = null;
        C2693lh c2693lhA = a(config);
        this.j = c2693lhA;
        if (c2693lhA.a.isEmpty()) {
            return false;
        }
        Un un = this.m;
        synchronized (un) {
            iOptInt = un.a.a().optInt("report_request_id", -1);
        }
        int i = iOptInt + 1;
        this.v = i;
        this.o.e = i;
        C2785p9 c2785p9A = a(this.j, list, config);
        this.d = c2785p9A;
        this.f = this.j.b;
        this.t.prepareAndSetPostData(MessageNano.toByteArray(c2785p9A));
        return true;
    }

    @Override
    public final void onPerformRequest() {
        this.t.onPerformRequest();
    }

    @Override
    public final void onPostRequestComplete(boolean z) {
        String strA;
        if (z) {
            a(false);
        } else if (this.s.getResponseCode() == 400) {
            a(true);
        }
        if (z) {
            for (int i = 0; i < this.j.a.size(); i++) {
                for (C2660k9 c2660k9 : ((C2710m9) this.j.a.get(i)).c) {
                    if (c2660k9 != null && (strA = Df.a(c2660k9)) != null) {
                        this.l.info(strA, new Object[0]);
                    }
                }
            }
        }
    }

    @Override
    public final boolean onRequestComplete() {
        return this.t.isResponseValid();
    }

    @Override
    public final void onRequestError(@Nullable Throwable th) {
    }

    @Override
    public final void onShouldNotExecute() {
        this.u = false;
    }

    @Override
    public final void onSuccessfulTaskFinished() {
    }

    @Override
    public final void onTaskAdded() {
        ((C2980x5) this.a.p).d.set(false);
    }

    @Override
    public final void onTaskFinished() {
        SQLiteDatabase writableDatabase;
        S6 s6 = this.a.e;
        s6.getClass();
        try {
            s6.b.lock();
            if (s6.i.get() > ((C2469ch) s6.h.k.a()).v && (writableDatabase = s6.c.getWritableDatabase()) != null) {
                int iA = s6.a(writableDatabase);
                s6.i.addAndGet(-iA);
                if (iA != 0) {
                    Iterator it = s6.j.iterator();
                    while (it.hasNext()) {
                        ((W8) it.next()).a();
                    }
                }
            }
        } catch (Throwable unused) {
        }
        s6.b.unlock();
        ((C2980x5) this.a.p).d.set(true);
    }

    @Override
    public final void onTaskRemoved() {
        ((C2980x5) this.a.p).d.set(true);
        if (this.u) {
            ((C2980x5) this.a.p).d();
        }
    }

    @Override
    public final void onUnsuccessfulTaskFinished() {
    }

    public C2718mh(C2706m5 c2706m5, Rg rg, Db db, FullUrlFormer fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, S6 s6, PublicLogger publicLogger, Un un, RequestBodyEncrypter requestBodyEncrypter) {
        this(c2706m5, publicLogger, s6, rg, un, db, new C2878t3(1024000, "event value in ReportTask", publicLogger), AbstractC2802q1.a(), fullUrlFormer, requestDataHolder, responseDataHolder, requestBodyEncrypter);
    }

    public C2718mh(C2706m5 c2706m5, PublicLogger publicLogger, S6 s6, Rg rg, Un un, Db db, C2878t3 c2878t3, Fj fj, FullUrlFormer fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, RequestBodyEncrypter requestBodyEncrypter) {
        this.b = new LinkedHashMap();
        this.g = 0;
        this.h = 0;
        this.i = -1;
        this.u = true;
        this.t = new SendingDataTaskHelper(requestBodyEncrypter, new GZIPCompressor(), requestDataHolder, responseDataHolder, new DefaultNetworkResponseHandler());
        this.o = rg;
        this.a = c2706m5;
        this.e = s6;
        this.l = publicLogger;
        this.k = c2878t3;
        this.m = un;
        this.q = db;
        this.n = fj;
        this.r = requestDataHolder;
        this.s = responseDataHolder;
        this.p = fullUrlFormer;
    }

    public static C2511e9[] a(JSONObject jSONObject) {
        int length = jSONObject.length();
        if (length <= 0) {
            return null;
        }
        C2511e9[] c2511e9Arr = new C2511e9[length];
        Iterator<String> itKeys = jSONObject.keys();
        int i = 0;
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                C2511e9 c2511e9 = new C2511e9();
                c2511e9.a = next;
                c2511e9.b = jSONObject.getString(next);
                c2511e9Arr[i] = c2511e9;
            } catch (Throwable unused) {
            }
            i++;
        }
        return c2511e9Arr;
    }

    public final void a(boolean z) {
        Un un = this.m;
        int i = this.v;
        synchronized (un) {
            Vn vn = un.a;
            vn.a(vn.a().put("report_request_id", i));
        }
        C2710m9[] c2710m9Arr = this.d.a;
        for (int i2 = 0; i2 < c2710m9Arr.length; i2++) {
            try {
                C2710m9 c2710m9 = c2710m9Arr[i2];
                long jLongValue = ((Long) this.f.get(i2)).longValue();
                EnumC3045zk enumC3045zk = (EnumC3045zk) Cf.b.get(c2710m9.b.c);
                if (enumC3045zk == null) {
                    enumC3045zk = EnumC3045zk.FOREGROUND;
                }
                this.e.a(jLongValue, enumC3045zk.a, c2710m9.c.length, z);
                Cf.a(c2710m9);
            } catch (Throwable unused) {
            }
        }
        S6 s6 = this.e;
        long jA = this.a.j.a();
        s6.b.lock();
        try {
            if (J5.a.booleanValue()) {
                s6.c();
            }
            SQLiteDatabase writableDatabase = s6.c.getWritableDatabase();
            if (writableDatabase != null) {
                writableDatabase.delete("sessions", H5.c, new String[]{String.valueOf(jA)});
            }
        } catch (Throwable unused2) {
        }
        s6.b.unlock();
    }

    @NonNull
    public final C2693lh a(@NonNull C2469ch c2469ch) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        JSONObject jSONObject = new JSONObject();
        ArrayList arrayList3 = new ArrayList();
        Cursor cursor = null;
        try {
            Cursor cursorA = a();
            if (cursorA != null) {
                JSONObject jSONObject2 = jSONObject;
                C2452c0 c2452c0 = null;
                while (cursorA.moveToNext() && this.h < 100) {
                    try {
                        ContentValues contentValues = new ContentValues();
                        DBUtils.cursorRowToContentValues(cursorA, contentValues);
                        A7 model = new B7(null, 1, null).toModel(contentValues);
                        Long l = model.a;
                        if (l != null) {
                            C3032z7 c3032z7 = model.d;
                            C2760o9 c2760o9A = Cf.a(c3032z7.a, c3032z7.b, c3032z7.c);
                            String locale = c2469ch.getLocale();
                            EnumC3045zk enumC3045zk = model.b;
                            C2685l9 c2685l9 = new C2685l9();
                            c2685l9.a = c2760o9A;
                            c2685l9.b = locale;
                            if (enumC3045zk != null) {
                                Integer num = (Integer) Cf.a.get(enumC3045zk);
                                c2685l9.c = num != null ? num.intValue() : 0;
                            }
                            int iComputeUInt64Size = this.g + CodedOutputByteBufferNano.computeUInt64Size(1, Long.MAX_VALUE);
                            this.g = iComputeUInt64Size;
                            int iComputeMessageSize = iComputeUInt64Size + CodedOutputByteBufferNano.computeMessageSize(2, c2685l9);
                            this.g = iComputeMessageSize;
                            if (iComputeMessageSize >= 250880) {
                                break;
                            }
                            C2668kh c2668khA = a(l.longValue(), c2685l9, c2469ch, arrayList3, arrayList.size());
                            if (c2668khA == null) {
                                continue;
                            } else {
                                if (c2452c0 == null) {
                                    c2452c0 = c2668khA.b;
                                } else {
                                    if (!c2452c0.equals(c2668khA.b)) {
                                        break;
                                    }
                                    break;
                                }
                                arrayList2.add(l);
                                arrayList.add(c2668khA.a);
                                if (!TextUtils.isEmpty(c2668khA.b.a)) {
                                    try {
                                        jSONObject2 = new JSONObject(c2668khA.b.a);
                                    } catch (Throwable unused) {
                                    }
                                }
                                if (c2668khA.c) {
                                    break;
                                }
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorA;
                        jSONObject = jSONObject2;
                        try {
                            arrayList3.add(th);
                            In.a(cursor);
                        } catch (Throwable th2) {
                            In.a(cursor);
                            throw th2;
                        }
                    }
                }
                jSONObject = jSONObject2;
            }
            In.a(cursorA);
        } catch (Throwable th3) {
            th = th3;
        }
        Iterator it = arrayList3.iterator();
        while (it.hasNext()) {
            this.n.reportError("protobuf_serialization_error", (Throwable) it.next());
        }
        return new C2693lh(arrayList, arrayList2, jSONObject);
    }

    public static C2452c0 a(ContentValues contentValues) {
        C2708m7 model = new C2733n7(null, 1, null).toModel(contentValues);
        return new C2452c0((String) WrapUtils.getOrDefault(model.g.g, ""), ((Long) WrapUtils.getOrDefault(model.g.h, 0L)).longValue());
    }

    /* JADX WARN: Code duplicated, block: B:69:0x010f  */
    public final C2668kh a(long j, C2685l9 c2685l9, C2469ch c2469ch, ArrayList arrayList, int i) {
        Cursor cursorA;
        C2668kh c2668kh;
        C2660k9 c2660k9A;
        int iComputeMessageSize;
        C2411a9 c2411a9;
        boolean z = true;
        C2710m9 c2710m9 = new C2710m9();
        c2710m9.a = j;
        c2710m9.b = c2685l9;
        EnumC3045zk enumC3045zk = (EnumC3045zk) Cf.b.get(c2685l9.c);
        if (enumC3045zk == null) {
            enumC3045zk = EnumC3045zk.FOREGROUND;
        }
        try {
            cursorA = a(j, enumC3045zk);
            if (cursorA != null) {
                try {
                    ArrayList arrayList2 = new ArrayList();
                    C2452c0 c2452c0 = null;
                    while (true) {
                        if (cursorA.moveToNext() && this.h < 100) {
                            ContentValues contentValues = new ContentValues();
                            DBUtils.cursorRowToContentValues(cursorA, contentValues);
                            try {
                                R8 r8 = new R8(contentValues);
                                EnumC2588hb enumC2588hb = r8.h;
                                if (enumC2588hb != null) {
                                    c2411a9 = (C2411a9) Cf.d.get(enumC2588hb);
                                } else {
                                    Map map = Cf.a;
                                    c2411a9 = null;
                                }
                                if (c2411a9 == null) {
                                    c2411a9 = C2411a9.i;
                                }
                                try {
                                    c2660k9A = c2411a9.a(r8, c2469ch);
                                } catch (Throwable th) {
                                    th = th;
                                    arrayList.add(th);
                                    c2660k9A = null;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                            if (c2660k9A != null) {
                                C2452c0 c2452c0A = a(contentValues);
                                if (c2452c0 == null) {
                                    if (this.i < 0) {
                                        try {
                                            C2511e9[] c2511e9ArrA = a(new JSONObject(c2452c0A.a));
                                            if (c2511e9ArrA != null) {
                                                iComputeMessageSize = 0;
                                                for (C2511e9 c2511e9 : c2511e9ArrA) {
                                                    iComputeMessageSize += CodedOutputByteBufferNano.computeMessageSize(7, c2511e9);
                                                }
                                            } else {
                                                iComputeMessageSize = 0;
                                            }
                                        } catch (Throwable unused) {
                                        }
                                        this.i = iComputeMessageSize;
                                        this.g += iComputeMessageSize;
                                    }
                                    c2452c0 = c2452c0A;
                                } else {
                                    if (!c2452c0.equals(c2452c0A)) {
                                        break;
                                    }
                                    break;
                                }
                                C2878t3 c2878t3 = this.k;
                                byte[] bArr = c2660k9A.e;
                                c2878t3.getClass();
                                byte[] bArrA = c2878t3.a(bArr);
                                byte[] bArr2 = c2660k9A.e;
                                if (bArr2 != bArrA) {
                                    c2660k9A.i = ((bArr2 == null ? 0 : bArr2.length) - (bArrA == null ? 0 : bArrA.length)) + c2660k9A.i;
                                    c2660k9A.e = bArrA;
                                }
                                this.g += CodedOutputByteBufferNano.computeMessageSize(3, c2660k9A);
                                if (arrayList2.isEmpty() && i == 0) {
                                    if (this.g >= 1048576) {
                                    }
                                } else if (this.g >= 250880) {
                                }
                            }
                            arrayList2.add(c2660k9A);
                            this.h++;
                        }
                        z = false;
                        break;
                    }
                    if (arrayList2.size() > 0) {
                        c2710m9.c = (C2660k9[]) arrayList2.toArray(new C2660k9[arrayList2.size()]);
                        c2668kh = new C2668kh(c2710m9, c2452c0, z);
                    } else {
                        c2668kh = null;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        arrayList.add(th);
                        return null;
                    } finally {
                        In.a(cursorA);
                    }
                }
            } else {
                c2668kh = null;
            }
            In.a(cursorA);
            return c2668kh;
        } catch (Throwable th4) {
            th = th4;
            cursorA = null;
        }
    }

    public final Cursor a() {
        Cursor cursorQuery;
        S6 s6 = this.e;
        LinkedHashMap linkedHashMap = this.b;
        s6.a.lock();
        try {
            SQLiteDatabase readableDatabase = s6.c.getReadableDatabase();
            cursorQuery = readableDatabase != null ? readableDatabase.query("sessions", null, S6.a(linkedHashMap), S6.a(new String[]{Long.toString(0L)}, linkedHashMap), null, null, "id ASC", null) : null;
        } catch (Throwable unused) {
        }
        s6.a.unlock();
        return cursorQuery;
    }

    public final Cursor a(long j, EnumC3045zk enumC3045zk) {
        Cursor cursorQuery;
        S6 s6 = this.e;
        s6.a.lock();
        try {
            SQLiteDatabase readableDatabase = s6.c.getReadableDatabase();
            cursorQuery = readableDatabase != null ? readableDatabase.query("events", null, "session_id = ? AND session_type = ?", new String[]{Long.toString(j), Integer.toString(enumC3045zk.a)}, null, null, "number_in_session ASC", null) : null;
        } catch (Throwable unused) {
        }
        s6.a.unlock();
        return cursorQuery;
    }
}
