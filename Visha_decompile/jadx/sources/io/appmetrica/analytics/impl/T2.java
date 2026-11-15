package io.appmetrica.analytics.impl;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import defpackage.i81;
import io.appmetrica.analytics.AdRevenue;
import io.appmetrica.analytics.ModuleEvent;
import io.appmetrica.analytics.Revenue;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.ecommerce.ECommerceEvent;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.plugins.IPluginReporter;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import io.appmetrica.analytics.profile.UserProfile;
import io.appmetrica.analytics.profile.UserProfileUpdate;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.apache.commons.text.StringSubstitutor;
import org.json.JSONObject;

public abstract class T2 implements Ka {
    public static final HashSet m = new HashSet(Arrays.asList(1, 13));
    public static final R2 n = new R2();
    protected final Context a;
    protected final C2992xh b;

    @NonNull
    protected final PublicLogger c;

    @NonNull
    protected final C2774on d;

    @NonNull
    protected final C2891tg e;

    @NonNull
    protected final C6 f;
    public final X g;
    protected final C2744ni h;
    public C2886tb i;
    public final C2688lc j;
    public final T9 k;
    public final C3014ye l;

    public T2(Context context, C2744ni c2744ni, C2992xh c2992xh, T9 t9, C2688lc c2688lc, C2774on c2774on, C2891tg c2891tg, C6 c6, X x, C3014ye c3014ye) {
        this.a = context.getApplicationContext();
        this.h = c2744ni;
        this.b = c2992xh;
        this.k = t9;
        this.d = c2774on;
        this.e = c2891tg;
        this.f = c6;
        this.g = x;
        this.l = c3014ye;
        PublicLogger orCreatePublicLogger = LoggerStorage.getOrCreatePublicLogger(c2992xh.b().getApiKey());
        this.c = orCreatePublicLogger;
        c2992xh.a(new Tk(orCreatePublicLogger, "Crash Environment"));
        if (AbstractC2853s3.a(c2992xh.b().isLogEnabled())) {
            orCreatePublicLogger.setEnabled(true);
        }
        this.j = c2688lc;
    }

    public void a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            this.c.warning("Invalid Error Environment (key,value) pair: (%s,%s).", str, str2);
            return;
        }
        this.c.info("Put error environment pair <%s, %s>", str, str2);
        I8 i8 = this.b.c;
        i8.b.b(i8.a, str, str2);
    }

    public final void b(Map<String, String> map) {
        if (In.a((Map) map)) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            a(entry.getKey(), entry.getValue());
        }
    }

    public final void c(String str) {
        if (this.b.f()) {
            return;
        }
        this.h.d.c();
        C2886tb c2886tb = this.i;
        c2886tb.a.removeCallbacks(c2886tb.c, c2886tb.b.b.b.getApiKey());
        this.b.e = true;
        C2744ni c2744ni = this.h;
        PublicLogger publicLogger = this.c;
        Set set = C9.a;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        C2506e4 c2506e4 = new C2506e4("", str, 3, 0, publicLogger);
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        c2744ni.a(C2744ni.a(c2506e4, c2992xh), c2992xh, 1, null);
    }

    @Override
    public final void clearAppEnvironment() {
        String str;
        this.c.info("Clear app environment", new Object[0]);
        C2744ni c2744ni = this.h;
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        C2408a6 c2408a6N = C2506e4.n();
        C2791pf c2791pf = new C2791pf(c2992xh.a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(c2992xh.b);
        synchronized (c2992xh) {
            str = c2992xh.f;
        }
        c2744ni.a(new C2743nh(c2408a6N, false, 1, null, new C2992xh(c2791pf, counterConfiguration, str)));
    }

    public final void d(String str) {
        this.h.d.b();
        C2886tb c2886tb = this.i;
        C2886tb.a(c2886tb.a, c2886tb.b, c2886tb.c);
        C2744ni c2744ni = this.h;
        PublicLogger publicLogger = this.c;
        Set set = C9.a;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        C2506e4 c2506e4 = new C2506e4("", str, 6400, 0, publicLogger);
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        c2744ni.a(C2744ni.a(c2506e4, c2992xh), c2992xh, 1, null);
        this.b.e = false;
    }

    @Override
    @NonNull
    public final IPluginReporter getPluginExtension() {
        return this;
    }

    public String j() {
        return "[BaseReporter]";
    }

    public void k() {
        String str;
        C2542ff c2542ff;
        C2744ni c2744ni = this.h;
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        C2641jf c2641jf = c2992xh.d;
        synchronized (c2992xh) {
            str = c2992xh.f;
        }
        PublicLogger orCreatePublicLogger = LoggerStorage.getOrCreatePublicLogger(c2992xh.b.getApiKey());
        Set set = C9.a;
        JSONObject jSONObject = new JSONObject();
        if (c2641jf != null && (c2542ff = c2641jf.a) != null) {
            try {
                jSONObject.put("preloadInfo", c2542ff.c());
            } catch (Throwable unused) {
            }
        }
        String string = jSONObject.toString();
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        C2506e4 c2506e4 = new C2506e4(string, "", 6144, 0, orCreatePublicLogger);
        c2506e4.c(str);
        c2744ni.a(C2744ni.a(c2506e4, c2992xh), c2992xh, 1, null);
    }

    @Override
    public final void pauseSession() {
        this.c.info("Pause session", new Object[0]);
        c(null);
    }

    @Override
    public final void putAppEnvironmentValue(String str, String str2) {
        String str3;
        if (TextUtils.isEmpty(str)) {
            this.c.warning("Invalid App Environment (key,value) pair: (%s,%s).", str, str2);
            return;
        }
        this.c.info("Put app environment: <%s, %s>", str, str2);
        C2744ni c2744ni = this.h;
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        C2408a6 c2408a6B = C2506e4.b(str, str2);
        C2791pf c2791pf = new C2791pf(c2992xh.a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(c2992xh.b);
        synchronized (c2992xh) {
            str3 = c2992xh.f;
        }
        c2744ni.a(new C2743nh(c2408a6B, false, 1, null, new C2992xh(c2791pf, counterConfiguration, str3)));
    }

    @Override
    public final void reportAdRevenue(@NonNull AdRevenue adRevenue) {
        reportAdRevenue(adRevenue, false);
    }

    @Override
    public final void reportAnr(@NonNull Map<Thread, StackTraceElement[]> map) {
        StackTraceElement[] stackTraceElementArrB;
        Y y = new Y(new Z(this, map));
        C2860sa c2860sa = new C2860sa();
        C2688lc c2688lc = C2879t4.i().a;
        Thread threadA = y.a();
        Map mapC = null;
        try {
            stackTraceElementArrB = y.b();
            if (stackTraceElementArrB == null) {
                try {
                    stackTraceElementArrB = threadA.getStackTrace();
                } catch (SecurityException unused) {
                }
            }
        } catch (SecurityException unused2) {
            stackTraceElementArrB = null;
        }
        Tm tm = (Tm) c2860sa.apply(threadA, stackTraceElementArrB);
        ArrayList arrayList = new ArrayList();
        TreeMap treeMap = new TreeMap(new Ym());
        try {
            mapC = y.c();
        } catch (SecurityException unused3) {
        }
        if (mapC != null) {
            treeMap.putAll(mapC);
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            Thread thread = (Thread) entry.getKey();
            if (thread != threadA && thread != null) {
                arrayList.add((Tm) c2860sa.apply(thread, (StackTraceElement[]) entry.getValue()));
            }
        }
        a(new S(tm, arrayList, c2688lc.b()));
    }

    @Override
    public final void reportECommerce(@NonNull ECommerceEvent eCommerceEvent) {
        String str;
        this.c.info("E-commerce event received: " + eCommerceEvent.getPublicDescription(), new Object[0]);
        C2744ni c2744ni = this.h;
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        for (C2893ti c2893ti : eCommerceEvent.toProto()) {
            C2506e4 c2506e4 = new C2506e4(LoggerStorage.getOrCreatePublicLogger(c2992xh.b.getApiKey()));
            EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
            c2506e4.d = 41000;
            c2506e4.b = c2506e4.e(Base64Utils.compressBase64(MessageNano.toByteArray((MessageNano) c2893ti.a)));
            c2506e4.g = c2893ti.b.getBytesTruncated();
            C2791pf c2791pf = new C2791pf(c2992xh.a);
            CounterConfiguration counterConfiguration = new CounterConfiguration(c2992xh.b);
            synchronized (c2992xh) {
                str = c2992xh.f;
            }
            c2744ni.a(new C2743nh(c2506e4, false, 1, null, new C2992xh(c2791pf, counterConfiguration, str)));
        }
    }

    @Override
    public final void reportError(@NonNull String str, @Nullable Throwable th) {
        C2866sg c2866sg = new C2866sg(str, a(th));
        C2744ni c2744ni = this.h;
        byte[] byteArray = MessageNano.toByteArray(this.e.fromModel(c2866sg));
        PublicLogger publicLogger = this.c;
        Set set = C9.a;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        C2506e4 c2506e4 = new C2506e4(byteArray, str, 5892, publicLogger);
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        c2744ni.a(C2744ni.a(c2506e4, c2992xh), c2992xh, 1, null);
        this.c.info("Error received: %s", WrapUtils.wrapToTag(str));
    }

    @Override
    public final void reportEvent(@NonNull String str) {
        this.c.info("Event received: " + WrapUtils.wrapToTag(str), new Object[0]);
        C2744ni c2744ni = this.h;
        PublicLogger publicLogger = this.c;
        Set set = C9.a;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        C2506e4 c2506e4 = new C2506e4("", str, 1, 0, publicLogger);
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        c2744ni.a(C2744ni.a(c2506e4, c2992xh), c2992xh, 1, null);
    }

    @Override
    public final void reportRevenue(@NonNull Revenue revenue) {
        String str;
        Di di = S2.a;
        di.getClass();
        Nn nnA = di.a(revenue);
        if (!nnA.a) {
            this.c.warning("Passed revenue is not valid. Reason: " + nnA.b, new Object[0]);
            return;
        }
        C2744ni c2744ni = this.h;
        Ei ei = new Ei(revenue, this.c);
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        C2506e4 c2506e4A = C2506e4.a(LoggerStorage.getOrCreatePublicLogger(c2992xh.b.getApiKey()), ei);
        C2791pf c2791pf = new C2791pf(c2992xh.a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(c2992xh.b);
        synchronized (c2992xh) {
            str = c2992xh.f;
        }
        c2744ni.a(new C2743nh(c2506e4A, false, 1, null, new C2992xh(c2791pf, counterConfiguration, str)));
        this.c.info("Revenue received for productID: " + WrapUtils.wrapToTag(revenue.productID) + " of quantity: " + WrapUtils.wrapToTag(revenue.quantity) + " with price (in micros): " + revenue.priceMicros + " " + revenue.currency, new Object[0]);
    }

    @Override
    public final void reportUnhandledException(@NonNull Throwable th) {
        C2749nn c2749nnA = AbstractC2824qn.a(th, new S(null, null, this.j.b()), null, (String) this.k.b.a(), (Boolean) this.k.c.a());
        C2744ni c2744ni = this.h;
        C2992xh c2992xh = this.b;
        c2744ni.d.b();
        c2744ni.a(c2744ni.b.a(c2749nnA, c2992xh));
        this.c.info("Unhandled exception received: " + c2749nnA, new Object[0]);
    }

    @Override
    public final void reportUserProfile(@NonNull UserProfile userProfile) {
        String str;
        An an = new An(An.c);
        Iterator<UserProfileUpdate<? extends Bn>> it = userProfile.getUserProfileUpdates().iterator();
        while (it.hasNext()) {
            Bn userProfileUpdatePatcher = it.next().getUserProfileUpdatePatcher();
            ((AbstractC3038zd) userProfileUpdatePatcher).e = this.c;
            userProfileUpdatePatcher.a(an);
        }
        Fn fn = new Fn();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < an.a.size(); i++) {
            SparseArray sparseArray = an.a;
            Iterator it2 = ((HashMap) sparseArray.get(sparseArray.keyAt(i))).values().iterator();
            while (it2.hasNext()) {
                arrayList.add((Cn) it2.next());
            }
        }
        fn.a = (Cn[]) arrayList.toArray(new Cn[arrayList.size()]);
        Nn nnA = n.a(fn);
        if (!nnA.a) {
            this.c.warning("UserInfo wasn't sent because " + nnA.b, new Object[0]);
            return;
        }
        C2744ni c2744ni = this.h;
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        C2408a6 c2408a6A = C2506e4.a(fn);
        C2791pf c2791pf = new C2791pf(c2992xh.a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(c2992xh.b);
        synchronized (c2992xh) {
            str = c2992xh.f;
        }
        c2744ni.a(new C2743nh(c2408a6A, false, 1, null, new C2992xh(c2791pf, counterConfiguration, str)));
        this.c.info("User profile received", new Object[0]);
    }

    @Override
    public final void resumeSession() {
        d(null);
        this.c.info("Resume session", new Object[0]);
    }

    @Override
    public final void sendEventsBuffer() {
        this.c.info("Send event buffer", new Object[0]);
        C2744ni c2744ni = this.h;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        PublicLogger publicLogger = this.c;
        Set set = C9.a;
        C2506e4 c2506e4 = new C2506e4("", "", 256, 0, publicLogger);
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        c2744ni.a(C2744ni.a(c2506e4, c2992xh), c2992xh, 1, null);
    }

    @Override
    public final void setDataSendingEnabled(boolean z) {
        this.b.b.setDataSendingEnabled(z);
        this.c.info("Updated data sending enabled: %s", Boolean.valueOf(z));
    }

    @Override
    public final void setSessionExtra(@NonNull String str, @Nullable byte[] bArr) {
        C2744ni c2744ni = this.h;
        PublicLogger publicLogger = this.c;
        Set set = C9.a;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        C2506e4 c2506e4 = new C2506e4("", null, 8193, 0, publicLogger);
        if (bArr == null) {
            bArr = new byte[0];
        }
        c2506e4.p = Collections.singletonMap(str, bArr);
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        c2744ni.a(C2744ni.a(c2506e4, c2992xh), c2992xh, 1, null);
    }

    @Override
    public final void setUserProfileID(@Nullable String str) {
        String str2;
        C2744ni c2744ni = this.h;
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        C2506e4 c2506e4 = new C2506e4(LoggerStorage.getOrCreatePublicLogger(c2992xh.b.getApiKey()));
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        c2506e4.d = 40962;
        c2506e4.c(str);
        c2506e4.b = c2506e4.e(str);
        C2791pf c2791pf = new C2791pf(c2992xh.a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(c2992xh.b);
        synchronized (c2992xh) {
            str2 = c2992xh.f;
        }
        c2744ni.a(new C2743nh(c2506e4, false, 1, null, new C2992xh(c2791pf, counterConfiguration, str2)));
        this.c.info("Set user profile ID: " + WrapUtils.wrapToTag(str), new Object[0]);
    }

    @Override
    public final void reportAdRevenue(@NonNull AdRevenue adRevenue, boolean z) {
        String str;
        C2744ni c2744ni = this.h;
        B b = new B(adRevenue, z, this.c);
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        C2506e4 c2506e4A = C2506e4.a(LoggerStorage.getOrCreatePublicLogger(c2992xh.b.getApiKey()), b);
        C2791pf c2791pf = new C2791pf(c2992xh.a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(c2992xh.b);
        synchronized (c2992xh) {
            str = c2992xh.f;
        }
        c2744ni.a(new C2743nh(c2506e4A, false, 1, null, new C2992xh(c2791pf, counterConfiguration, str)));
        this.c.info("AdRevenue Received: AdRevenue{adRevenue=" + adRevenue.adRevenue + ", currency='" + WrapUtils.wrapToTag(adRevenue.currency.getCurrencyCode()) + "', adType=" + WrapUtils.wrapToTag(adRevenue.adType) + ", adNetwork='" + WrapUtils.wrapToTag(adRevenue.adNetwork) + "', adUnitId='" + WrapUtils.wrapToTag(adRevenue.adUnitId) + "', adUnitName='" + WrapUtils.wrapToTag(adRevenue.adUnitName) + "', adPlacementId='" + WrapUtils.wrapToTag(adRevenue.adPlacementId) + "', adPlacementName='" + WrapUtils.wrapToTag(adRevenue.adPlacementName) + "', precision='" + WrapUtils.wrapToTag(adRevenue.precision) + "', payload=" + AbstractC2712mb.b(adRevenue.payload) + ", autoCollected=" + z + StringSubstitutor.DEFAULT_VAR_END, new Object[0]);
    }

    @Override
    public final void b(@NonNull String str, @Nullable String str2) {
        this.c.info("Event received: " + WrapUtils.wrapToTag(str) + ". With value: " + WrapUtils.wrapToTag(str2), new Object[0]);
        C2744ni c2744ni = this.h;
        PublicLogger publicLogger = this.c;
        Set set = C9.a;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        C2506e4 c2506e4 = new C2506e4(str2, str, 1, 0, publicLogger);
        c2506e4.l = EnumC2859s9.JS;
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        c2744ni.a(C2744ni.a(c2506e4, c2992xh), c2992xh, 1, null);
    }

    public final void a(Map<String, String> map) {
        if (In.a((Map) map)) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            putAppEnvironmentValue(entry.getKey(), entry.getValue());
        }
    }

    public final C2749nn a(Throwable th) {
        Throwable th2;
        StackTraceElement[] stackTrace;
        if (th == null) {
            stackTrace = null;
            th2 = null;
        } else if (th instanceof R1) {
            stackTrace = th.getStackTrace();
            th2 = null;
        } else {
            th2 = th;
            stackTrace = null;
        }
        return AbstractC2824qn.a(th2, new S(null, null, this.j.b()), stackTrace != null ? Arrays.asList(stackTrace) : null, (String) this.k.b.a(), (Boolean) this.k.c.a());
    }

    @Override
    public final void reportError(@NonNull String str, @Nullable String str2) {
        reportError(str, str2, (Throwable) null);
    }

    @Override
    public final void reportEvent(@NonNull String str, String str2) {
        this.c.info("Event received: " + WrapUtils.wrapToTag(str) + ". With value: " + WrapUtils.wrapToTag(str2), new Object[0]);
        C2744ni c2744ni = this.h;
        PublicLogger publicLogger = this.c;
        Set set = C9.a;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        C2506e4 c2506e4 = new C2506e4(str2, str, 1, 0, publicLogger);
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        c2744ni.a(C2744ni.a(c2506e4, c2992xh), c2992xh, 1, null);
    }

    @Override
    public final void reportError(@NonNull String str, @Nullable String str2, @Nullable Throwable th) {
        B6 b6 = new B6(new C2866sg(str2, a(th)), str);
        C2744ni c2744ni = this.h;
        byte[] byteArray = MessageNano.toByteArray(this.f.fromModel(b6));
        PublicLogger publicLogger = this.c;
        Set set = C9.a;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        C2506e4 c2506e4 = new C2506e4(byteArray, str2, 5896, publicLogger);
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        c2744ni.a(C2744ni.a(c2506e4, c2992xh), c2992xh, 1, null);
        this.c.info("Error received: id: %s, message: %s", WrapUtils.wrapToTag(str), WrapUtils.wrapToTag(str2));
    }

    @Override
    public final void reportUnhandledException(@NonNull PluginErrorDetails pluginErrorDetails) {
        C2749nn c2749nnA = this.l.a(pluginErrorDetails);
        C2744ni c2744ni = this.h;
        C2500dn c2500dn = c2749nnA.a;
        String str = c2500dn != null ? (String) WrapUtils.getOrDefault(c2500dn.a, "") : "";
        byte[] byteArray = MessageNano.toByteArray(this.d.fromModel(c2749nnA));
        PublicLogger publicLogger = this.c;
        Set set = C9.a;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        C2506e4 c2506e4 = new C2506e4(byteArray, str, 5891, publicLogger);
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        c2744ni.a(C2744ni.a(c2506e4, c2992xh), c2992xh, 1, null);
        this.c.info("Crash from plugin received: %s", WrapUtils.wrapToTag(pluginErrorDetails.getMessage()));
    }

    @Override
    public final boolean b() {
        return this.b.f();
    }

    @Override
    public void a(@NonNull C2749nn c2749nn) {
        C2744ni c2744ni = this.h;
        C2992xh c2992xh = this.b;
        c2744ni.d.b();
        C2743nh c2743nhA = c2744ni.b.a(c2749nn, c2992xh);
        C2992xh c2992xh2 = c2743nhA.e;
        InterfaceC2846rl interfaceC2846rl = c2744ni.e;
        if (interfaceC2846rl != null) {
            c2992xh2.b.setUuid(((C2822ql) interfaceC2846rl).g());
        } else {
            c2992xh2.getClass();
        }
        c2744ni.c.b(c2743nhA);
        this.c.info("Unhandled exception received: " + c2749nn, new Object[0]);
    }

    @Override
    public final void reportEvent(@NonNull String str, @Nullable Map<String, Object> map) {
        C2744ni c2744ni = this.h;
        PublicLogger publicLogger = this.c;
        Set set = C9.a;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        c2744ni.a(new C2506e4("", str, 1, 0, publicLogger), this.b, 1, map);
        PublicLogger publicLogger2 = this.c;
        StringBuilder sb = new StringBuilder("Event received: ");
        sb.append(WrapUtils.wrapToTag(str));
        sb.append(". With value: ");
        sb.append(WrapUtils.wrapToTag(map == null ? null : map.toString()));
        publicLogger2.info(sb.toString(), new Object[0]);
    }

    @Override
    public final void reportError(@NonNull PluginErrorDetails pluginErrorDetails, @Nullable String str) {
        C2749nn c2749nnA;
        C3014ye c3014ye = this.l;
        if (pluginErrorDetails != null) {
            c2749nnA = c3014ye.a(pluginErrorDetails);
        } else {
            c3014ye.getClass();
            c2749nnA = null;
        }
        C2866sg c2866sg = new C2866sg(str, c2749nnA);
        C2744ni c2744ni = this.h;
        byte[] byteArray = MessageNano.toByteArray(this.e.fromModel(c2866sg));
        PublicLogger publicLogger = this.c;
        Set set = C9.a;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        C2506e4 c2506e4 = new C2506e4(byteArray, str, 5896, publicLogger);
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        c2744ni.a(C2744ni.a(c2506e4, c2992xh), c2992xh, 1, null);
        this.c.info("Error from plugin received: %s", WrapUtils.wrapToTag(str));
    }

    @Override
    public final void a(@NonNull S s) {
        W w = new W(s, (String) this.k.b.a(), (Boolean) this.k.c.a());
        C2744ni c2744ni = this.h;
        byte[] byteArray = MessageNano.toByteArray(this.g.fromModel(w));
        PublicLogger publicLogger = this.c;
        Set set = C9.a;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        C2506e4 c2506e4 = new C2506e4(byteArray, "", 5968, publicLogger);
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        String str = null;
        c2744ni.a(C2744ni.a(c2506e4, c2992xh), c2992xh, 1, null);
        PublicLogger publicLogger2 = this.c;
        StringBuilder sb = new StringBuilder("ANR was reported ");
        Tm tm = s.a;
        if (tm != null) {
            str = "Thread[name=" + tm.a + ",tid={" + tm.c + ", priority=" + tm.b + ", group=" + tm.d + "}] at " + i81.y0(tm.f, "\n", null, null, 0, null, null, 62, null);
        }
        sb.append(str);
        publicLogger2.info(sb.toString(), new Object[0]);
    }

    @Override
    public final void reportEvent(@NonNull ModuleEvent moduleEvent) {
        if (m.contains(Integer.valueOf(moduleEvent.getType()))) {
            return;
        }
        int type = moduleEvent.getType();
        String name = moduleEvent.getName();
        String value = moduleEvent.getValue();
        Map<String, Object> environment = moduleEvent.getEnvironment();
        Map<String, byte[]> extras = moduleEvent.getExtras();
        PublicLogger publicLogger = this.c;
        Set set = C9.a;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        C2506e4 c2506e4 = new C2506e4(value, name, 8192, type, publicLogger);
        c2506e4.c = AbstractC2712mb.b(environment);
        if (extras != null) {
            c2506e4.p = extras;
        }
        this.h.a(c2506e4, this.b, moduleEvent.getServiceDataReporterType(), moduleEvent.getAttributes());
    }

    @Override
    public final void reportError(@NonNull String str, @Nullable String str2, @Nullable PluginErrorDetails pluginErrorDetails) {
        C2749nn c2749nnA;
        C3014ye c3014ye = this.l;
        if (pluginErrorDetails != null) {
            c2749nnA = c3014ye.a(pluginErrorDetails);
        } else {
            c3014ye.getClass();
            c2749nnA = null;
        }
        B6 b6 = new B6(new C2866sg(str2, c2749nnA), str);
        C2744ni c2744ni = this.h;
        byte[] byteArray = MessageNano.toByteArray(this.f.fromModel(b6));
        PublicLogger publicLogger = this.c;
        Set set = C9.a;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        C2506e4 c2506e4 = new C2506e4(byteArray, str2, 5896, publicLogger);
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        c2744ni.a(C2744ni.a(c2506e4, c2992xh), c2992xh, 1, null);
        this.c.info("Error with identifier: %s from plugin received: %s", str, WrapUtils.wrapToTag(str2));
    }

    @Override
    public final void a(@NonNull String str) {
        C2744ni c2744ni = this.h;
        C2408a6 c2408a6A = C2408a6.a(str);
        C2992xh c2992xh = this.b;
        c2744ni.getClass();
        c2744ni.a(C2744ni.a(c2408a6A, c2992xh), c2992xh, 1, null);
    }
}
