package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.AdvIdentifiersResult;
import io.appmetrica.analytics.StartupParamsCallback;
import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.internal.IdentifiersResult;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

public final class C2822ql implements InterfaceC2846rl {
    public static final Map k = Collections.unmodifiableMap(new C2747nl());
    public final List a;
    public final C2744ni b;
    public final C3021yl c;
    public final Handler d;
    public PublicLogger e;
    public final C2772ol f;
    public final Object g;
    public final WeakHashMap h;
    public HashMap i;
    public boolean j;

    public C2822ql(@NonNull Context context, C2744ni c2744ni, Ke ke, @NonNull Handler handler) {
        this(c2744ni, new C3021yl(context, ke), handler);
    }

    public final void a(@NonNull StartupParamsCallback startupParamsCallback, @NonNull List<String> list, @Nullable Map<String, String> map) {
        synchronized (this.g) {
            try {
                C3021yl c3021yl = this.c;
                c3021yl.getClass();
                if (!In.a((Map) map) && !In.a(map, c3021yl.e)) {
                    c3021yl.e = new HashMap(map);
                    c3021yl.g = true;
                    c3021yl.c();
                }
                a(startupParamsCallback, list);
                if (this.c.a((List) list)) {
                    a(list, new C2797pl(this, startupParamsCallback), map);
                } else {
                    a(new Bundle(), startupParamsCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0082 A[Catch: all -> 0x007f, TryCatch #0 {all -> 0x007f, blocks: (B:4:0x0063, B:6:0x0071, B:12:0x0085, B:14:0x00b4, B:15:0x00bb, B:17:0x00c1, B:18:0x00c8, B:20:0x00dd, B:23:0x00e8, B:24:0x00f4, B:21:0x00e2, B:11:0x0082), top: B:30:0x0063 }] */
    public final void b(Bundle bundle) {
        IdentifiersResult identifiersResultA = C2655k4.a(bundle, "Uuid");
        IdentifiersResult identifiersResultA2 = C2655k4.a(bundle, "DeviceId");
        IdentifiersResult identifiersResultA3 = C2655k4.a(bundle, "DeviceIdHash");
        IdentifiersResult identifiersResultA4 = C2655k4.a(bundle, "AdUrlReport");
        IdentifiersResult identifiersResultA5 = C2655k4.a(bundle, "AdUrlGet");
        IdentifiersResult identifiersResultA6 = C2655k4.a(bundle, "Clids");
        IdentifiersResult identifiersResultA7 = C2655k4.a(bundle, "RequestClids");
        IdentifiersResult identifiersResultA8 = C2655k4.a(bundle, "GAID");
        IdentifiersResult identifiersResultA9 = C2655k4.a(bundle, "HOAID");
        IdentifiersResult identifiersResultA10 = C2655k4.a(bundle, "YANDEX_ADV_ID");
        IdentifiersResult identifiersResultA11 = C2655k4.a(bundle, "CUSTOM_SDK_HOSTS");
        long j = bundle.getLong("ServerTimeOffset");
        long j2 = bundle.getLong("NextStartupTime");
        C2462ca c2462caA = C2655k4.a(bundle);
        Bundle bundle2 = bundle.getBundle("module_configs");
        C3021yl c3021yl = this.c;
        synchronized (c3021yl) {
            try {
                IdentifiersResult identifiersResult = (IdentifiersResult) c3021yl.b.get(StartupParamsCallback.APPMETRICA_UUID);
                if (identifiersResult != null) {
                    Mn mn = c3021yl.o;
                    String str = identifiersResult.id;
                    mn.getClass();
                    if (!Mn.a(str)) {
                        c3021yl.c(identifiersResultA);
                    }
                } else {
                    c3021yl.c(identifiersResultA);
                }
                c3021yl.a(StartupParamsCallback.APPMETRICA_DEVICE_ID, identifiersResultA2);
                c3021yl.a(StartupParamsCallback.APPMETRICA_DEVICE_ID_HASH, identifiersResultA3);
                c3021yl.b.put("appmetrica_google_adv_id", identifiersResultA8);
                c3021yl.b.put("appmetrica_huawei_oaid", identifiersResultA9);
                c3021yl.b.put("appmetrica_yandex_adv_id", identifiersResultA10);
                c3021yl.l.a(identifiersResultA11);
                c3021yl.m.a(c2462caA);
                if (!C3021yl.a(identifiersResultA5)) {
                    c3021yl.b.put("appmetrica_get_ad_url", identifiersResultA5);
                }
                if (!C3021yl.a(identifiersResultA4)) {
                    c3021yl.b.put("appmetrica_report_ad_url", identifiersResultA4);
                }
                c3021yl.f = j;
                W3 w3 = c3021yl.k;
                HashMap map = c3021yl.e;
                HashMap mapA = AbstractC2712mb.a(identifiersResultA7.id);
                w3.getClass();
                if (In.a((Map) map) ? In.a((Map) mapA) : map.equals(mapA)) {
                    c3021yl.b.put("appmetrica_clids", identifiersResultA6);
                    c3021yl.g = false;
                }
                c3021yl.h = j2;
                c3021yl.c();
            } catch (Throwable th) {
                throw th;
            }
        }
        C2879t4.i().k().a(bundle2, new SdkIdentifiers(identifiersResultA.id, identifiersResultA2.id, identifiersResultA3.id));
        h();
    }

    @NonNull
    @VisibleForTesting(otherwise = 5)
    public final H6 c() {
        return this.f;
    }

    public final String d() {
        IdentifiersResult identifiersResult = (IdentifiersResult) this.c.b.get(StartupParamsCallback.APPMETRICA_DEVICE_ID);
        if (identifiersResult == null) {
            return null;
        }
        return identifiersResult.id;
    }

    @NonNull
    public final C2512ea e() {
        C2462ca c2462ca;
        C3021yl c3021yl = this.c;
        Z9 z9 = c3021yl.n;
        C2412aa c2412aa = c3021yl.m;
        synchronized (c2412aa) {
            c2462ca = c2412aa.b;
        }
        z9.getClass();
        Boolean bool = c2462ca.a;
        return new C2512ea();
    }

    public final long f() {
        return this.c.f;
    }

    public final String g() {
        IdentifiersResult identifiersResult = (IdentifiersResult) this.c.b.get(StartupParamsCallback.APPMETRICA_UUID);
        if (identifiersResult == null) {
            return null;
        }
        return identifiersResult.id;
    }

    public final void h() {
        WeakHashMap weakHashMap = new WeakHashMap();
        for (Map.Entry entry : this.h.entrySet()) {
            List list = (List) entry.getValue();
            if (this.c.a((Collection) list)) {
                weakHashMap.put((StartupParamsCallback) entry.getKey(), list);
            }
        }
        Iterator it = weakHashMap.entrySet().iterator();
        while (it.hasNext()) {
            StartupParamsCallback startupParamsCallback = (StartupParamsCallback) ((Map.Entry) it.next()).getKey();
            if (startupParamsCallback != null) {
                a(new Bundle(), startupParamsCallback);
            }
        }
        weakHashMap.clear();
    }

    public final void i() {
        synchronized (this.g) {
            try {
                if (!this.j || this.c.b()) {
                    this.j = true;
                    a(this.a, this.f, this.i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public C2822ql(C2744ni c2744ni, C3021yl c3021yl, Handler handler) {
        this.a = Arrays.asList(StartupParamsCallback.APPMETRICA_UUID, StartupParamsCallback.APPMETRICA_DEVICE_ID, StartupParamsCallback.APPMETRICA_DEVICE_ID_HASH, "appmetrica_get_ad_url", "appmetrica_report_ad_url", "appmetrica_clids");
        this.g = new Object();
        this.h = new WeakHashMap();
        this.j = false;
        this.b = c2744ni;
        this.c = c3021yl;
        this.d = handler;
        this.f = new C2772ol(this);
    }

    public final void a(@NonNull Bundle bundle) {
        b(bundle, null);
    }

    public final void a(@NonNull PublicLogger publicLogger) {
        this.e = publicLogger;
    }

    public final void a(List list, H6 h6, Map map) {
        I6 i6 = new I6(this.d, h6);
        C2744ni c2744ni = this.b;
        c2744ni.getClass();
        Bundle bundle = new Bundle();
        bundle.putParcelable("io.appmetrica.analytics.impl.IdentifiersData", new C2513eb(i6, list, map));
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        PublicLogger anonymousInstance = PublicLogger.getAnonymousInstance();
        Set set = C9.a;
        C2506e4 c2506e4 = new C2506e4("", "", 1536, 0, anonymousInstance);
        c2506e4.m = bundle;
        W4 w4 = c2744ni.a;
        c2744ni.a(C2744ni.a(c2506e4, w4), w4, 1, null);
    }

    public final void a(Map<String, String> map) {
        if (In.a((Map) map)) {
            return;
        }
        synchronized (this.g) {
            try {
                HashMap mapB = AbstractC2623im.b(map);
                this.i = mapB;
                this.b.a(mapB);
                C3021yl c3021yl = this.c;
                c3021yl.getClass();
                if (!In.a((Map) mapB) && !In.a(mapB, c3021yl.e)) {
                    c3021yl.e = new HashMap(mapB);
                    c3021yl.g = true;
                    c3021yl.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(String str) {
        synchronized (this.g) {
            this.b.a(str);
        }
    }

    public final void a(Bundle bundle, StartupParamsCallback startupParamsCallback) {
        EnumC2697ll enumC2697ll;
        if (this.h.containsKey(startupParamsCallback)) {
            List list = (List) this.h.get(startupParamsCallback);
            if (this.c.a((Collection) list)) {
                startupParamsCallback.onReceive(a(list));
            } else {
                StartupParamsCallback.Reason reason = null;
                if (bundle.containsKey("startup_error_key_code")) {
                    int i = bundle.getInt("startup_error_key_code");
                    enumC2697ll = EnumC2697ll.UNKNOWN;
                    if (i == 1) {
                        enumC2697ll = EnumC2697ll.NETWORK;
                    } else if (i == 2) {
                        enumC2697ll = EnumC2697ll.PARSE;
                    }
                } else {
                    enumC2697ll = null;
                }
                if (enumC2697ll == null) {
                    if (!this.c.a()) {
                        PublicLogger publicLogger = this.e;
                        if (publicLogger != null) {
                            publicLogger.warning("Clids error. Passed clids: %s, and clids from server are empty.", this.i);
                        }
                        reason = new StartupParamsCallback.Reason("INCONSISTENT_CLIDS");
                    } else {
                        enumC2697ll = EnumC2697ll.UNKNOWN;
                    }
                }
                if (reason == null) {
                    reason = (StartupParamsCallback.Reason) CollectionUtils.getOrDefault(k, enumC2697ll, StartupParamsCallback.Reason.UNKNOWN);
                }
                startupParamsCallback.onRequestError(reason, a(list));
            }
            this.h.remove(startupParamsCallback);
            if (this.h.isEmpty()) {
                C2602i0 c2602i0 = this.b.d;
                synchronized (c2602i0.f) {
                    c2602i0.c = false;
                    c2602i0.c();
                }
            }
        }
    }

    public final void b(@NonNull Bundle bundle, @Nullable StartupParamsCallback startupParamsCallback) {
        synchronized (this.g) {
            try {
                b(bundle);
                h();
                if (startupParamsCallback != null) {
                    a(bundle, startupParamsCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(List<String> list) {
        synchronized (this.g) {
            try {
                List list2 = this.c.d;
                if (In.a((Collection) list)) {
                    if (!In.a((Collection) list2)) {
                        C3021yl c3021yl = this.c;
                        c3021yl.d = null;
                        c3021yl.i.a((List<String>) null);
                        this.b.a((List) null);
                    }
                } else if (!In.a(list, list2)) {
                    C3021yl c3021yl2 = this.c;
                    c3021yl2.d = list;
                    c3021yl2.i.a(list);
                    this.b.a(list);
                } else {
                    this.b.a(list2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final StartupParamsCallback.Result a(List list) {
        HashMap map = new HashMap();
        C3021yl c3021yl = this.c;
        synchronized (c3021yl) {
            try {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    IdentifiersResult identifiersResult = (IdentifiersResult) c3021yl.b.get(str);
                    if (identifiersResult != null) {
                        map.put(str, c3021yl.c.a(identifiersResult));
                    }
                }
                c3021yl.l.a(list, map);
                c3021yl.m.a(list, map);
            } catch (Throwable th) {
                throw th;
            }
        }
        return new StartupParamsCallback.Result(map);
    }

    public final void b(@Nullable String str) {
        synchronized (this.g) {
            this.b.b(str);
        }
    }

    public final Map<String, String> b() {
        IdentifiersResult identifiersResult = (IdentifiersResult) this.c.b.get("appmetrica_clids");
        String str = identifiersResult == null ? null : identifiersResult.id;
        if (!TextUtils.isEmpty(str)) {
            return AbstractC2712mb.a(str);
        }
        return this.i;
    }

    public final void a(StartupParamsCallback startupParamsCallback, List list) {
        if (this.h.isEmpty()) {
            C2602i0 c2602i0 = this.b.d;
            synchronized (c2602i0.f) {
                c2602i0.c = true;
                c2602i0.b();
            }
        }
        this.h.put(startupParamsCallback, list);
    }

    @NonNull
    public final AdvIdentifiersResult a() {
        C3021yl c3021yl = this.c;
        M m = c3021yl.j;
        IdentifiersResult identifiersResult = (IdentifiersResult) c3021yl.b.get("appmetrica_google_adv_id");
        IdentifiersResult identifiersResult2 = (IdentifiersResult) c3021yl.b.get("appmetrica_huawei_oaid");
        IdentifiersResult identifiersResult3 = (IdentifiersResult) c3021yl.b.get("appmetrica_yandex_adv_id");
        m.getClass();
        return new AdvIdentifiersResult(M.a(identifiersResult), M.a(identifiersResult2), M.a(identifiersResult3));
    }
}
