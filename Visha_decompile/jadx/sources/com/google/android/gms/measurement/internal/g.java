package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.C;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.b7e;
import defpackage.b7j;
import defpackage.c9j;
import defpackage.h0j;
import defpackage.hej;
import defpackage.kdj;
import defpackage.kqi;
import defpackage.kti;
import defpackage.kwg;
import defpackage.lvg;
import defpackage.mpi;
import defpackage.nlh;
import defpackage.oce;
import defpackage.pnh;
import defpackage.roh;
import defpackage.rsi;
import defpackage.s71;
import defpackage.sfj;
import defpackage.u2j;
import defpackage.uee;
import defpackage.v0a;
import defpackage.vjj;
import defpackage.w6j;
import defpackage.wd8;
import defpackage.x8j;
import defpackage.z8j;
import defpackage.zri;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.lang3.BooleanUtils;
import org.mozilla.javascript.ES6Iterator;

public final class g extends nlh {
    public f c;
    public rsi d;
    public final Set e;
    public boolean f;
    public final AtomicReference g;
    public final Object h;
    public uee i;
    public int j;
    public final AtomicLong k;
    public long l;
    public int m;
    public final vjj n;
    public boolean o;
    public final z8j p;

    public g(e eVar) {
        super(eVar);
        this.e = new CopyOnWriteArraySet();
        this.h = new Object();
        this.o = true;
        this.p = new h0j(this);
        this.g = new AtomicReference();
        this.i = new uee(null, null);
        this.j = 100;
        this.l = -1L;
        this.m = 100;
        this.k = new AtomicLong(0L);
        this.n = new vjj(eVar);
    }

    public static void a0(g gVar, uee ueeVar, uee ueeVar2) {
        zzah[] zzahVarArr = {zzah.ANALYTICS_STORAGE, zzah.AD_STORAGE};
        boolean z = false;
        for (int i = 0; i < 2; i++) {
            zzah zzahVar = zzahVarArr[i];
            if (!ueeVar2.h(zzahVar) && ueeVar.h(zzahVar)) {
                z = true;
                break;
            }
        }
        boolean zK = ueeVar.k(ueeVar2, zzah.ANALYTICS_STORAGE, zzah.AD_STORAGE);
        if (z || zK) {
            gVar.a.B().t();
        }
    }

    public static void b0(g gVar, uee ueeVar, int i, long j, boolean z, boolean z2) {
        gVar.g();
        gVar.h();
        if (j <= gVar.l && uee.i(gVar.m, i)) {
            gVar.a.b().t().b("Dropped out-of-date consent setting, proposed settings", ueeVar);
            return;
        }
        roh rohVarF = gVar.a.F();
        e eVar = rohVarF.a;
        rohVarF.g();
        if (!rohVarF.v(i)) {
            gVar.a.b().t().b("Lower precedence consent source ignored, proposed source", Integer.valueOf(i));
            return;
        }
        SharedPreferences.Editor editorEdit = rohVarF.n().edit();
        editorEdit.putString("consent_settings", ueeVar.g());
        editorEdit.putInt("consent_source", i);
        editorEdit.apply();
        gVar.l = j;
        gVar.m = i;
        gVar.a.L().s(z);
        if (z2) {
            gVar.a.L().R(new AtomicReference());
        }
    }

    public final void A(String str, String str2, long j, Object obj) {
        this.a.a().w(new zzhj(this, str, str2, obj, j));
    }

    public final void B(String str) {
        this.g.set(str);
    }

    public final void C(Bundle bundle) {
        D(bundle, this.a.c().currentTimeMillis());
    }

    public final void D(Bundle bundle, long j) {
        wd8.l(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            this.a.b().v().a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        wd8.l(bundle2);
        mpi.a(bundle2, "app_id", String.class, null);
        mpi.a(bundle2, "origin", String.class, null);
        mpi.a(bundle2, "name", String.class, null);
        mpi.a(bundle2, ES6Iterator.VALUE_PROPERTY, Object.class, null);
        mpi.a(bundle2, "trigger_event_name", String.class, null);
        mpi.a(bundle2, "trigger_timeout", Long.class, 0L);
        mpi.a(bundle2, "timed_out_event_name", String.class, null);
        mpi.a(bundle2, "timed_out_event_params", Bundle.class, null);
        mpi.a(bundle2, "triggered_event_name", String.class, null);
        mpi.a(bundle2, "triggered_event_params", Bundle.class, null);
        mpi.a(bundle2, "time_to_live", Long.class, 0L);
        mpi.a(bundle2, "expired_event_name", String.class, null);
        mpi.a(bundle2, "expired_event_params", Bundle.class, null);
        wd8.f(bundle2.getString("name"));
        wd8.f(bundle2.getString("origin"));
        wd8.l(bundle2.get(ES6Iterator.VALUE_PROPERTY));
        bundle2.putLong("creation_timestamp", j);
        String string = bundle2.getString("name");
        Object obj = bundle2.get(ES6Iterator.VALUE_PROPERTY);
        if (this.a.N().l0(string) != 0) {
            this.a.b().q().b("Invalid conditional user property name", this.a.D().e(string));
            return;
        }
        if (this.a.N().h0(string, obj) != 0) {
            this.a.b().q().c("Invalid conditional user property value", this.a.D().e(string), obj);
            return;
        }
        Object objO = this.a.N().o(string, obj);
        if (objO == null) {
            this.a.b().q().c("Unable to normalize conditional user property value", this.a.D().e(string), obj);
            return;
        }
        mpi.b(bundle2, objO);
        long j2 = bundle2.getLong("trigger_timeout");
        if (!TextUtils.isEmpty(bundle2.getString("trigger_event_name"))) {
            this.a.z();
            if (j2 > 15552000000L || j2 < 1) {
                this.a.b().q().c("Invalid conditional user property timeout", this.a.D().e(string), Long.valueOf(j2));
                return;
            }
        }
        long j3 = bundle2.getLong("time_to_live");
        this.a.z();
        if (j3 > 15552000000L || j3 < 1) {
            this.a.b().q().c("Invalid conditional user property time to live", this.a.D().e(string), Long.valueOf(j3));
        } else {
            this.a.a().w(new zzhm(this, bundle2));
        }
    }

    public final void E(Bundle bundle, int i, long j) {
        h();
        String strF = uee.f(bundle);
        if (strF != null) {
            this.a.b().w().b("Ignoring invalid consent setting", strF);
            this.a.b().w().a("Valid consent values are 'granted', 'denied'");
        }
        F(uee.a(bundle), i, j);
    }

    public final void F(uee ueeVar, int i, long j) {
        uee ueeVar2;
        boolean z;
        uee ueeVar3;
        boolean z2;
        boolean z3;
        h();
        if (i != -10 && ueeVar.d() == null && ueeVar.e() == null) {
            this.a.b().w().a("Discarding empty consent settings");
            return;
        }
        synchronized (this.h) {
            try {
                ueeVar2 = this.i;
                z = false;
                if (uee.i(i, this.j)) {
                    boolean zJ = ueeVar.j(this.i);
                    zzah zzahVar = zzah.ANALYTICS_STORAGE;
                    if (ueeVar.h(zzahVar) && !this.i.h(zzahVar)) {
                        z = true;
                    }
                    uee ueeVarC = ueeVar.c(this.i);
                    this.i = ueeVarC;
                    this.j = i;
                    z3 = z;
                    z = true;
                    ueeVar3 = ueeVarC;
                    z2 = zJ;
                } else {
                    ueeVar3 = ueeVar;
                    z2 = false;
                    z3 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z) {
            this.a.b().t().b("Ignoring lower-priority consent settings, proposed settings", ueeVar3);
            return;
        }
        long andIncrement = this.k.getAndIncrement();
        if (z2) {
            this.g.set(null);
            this.a.a().x(new zzhx(this, ueeVar3, j, i, andIncrement, z3, ueeVar2));
            return;
        }
        zzhy zzhyVar = new zzhy(this, ueeVar3, i, andIncrement, z3, ueeVar2);
        if (i == 30 || i == -10) {
            this.a.a().x(zzhyVar);
        } else {
            this.a.a().w(zzhyVar);
        }
    }

    public final void G(rsi rsiVar) {
        rsi rsiVar2;
        g();
        h();
        if (rsiVar != null && rsiVar != (rsiVar2 = this.d)) {
            wd8.p(rsiVar2 == null, "EventInterceptor already set.");
        }
        this.d = rsiVar;
    }

    public final void H(Boolean bool) {
        h();
        this.a.a().w(new zzhw(this, bool));
    }

    public final void I(uee ueeVar) {
        g();
        boolean z = (ueeVar.h(zzah.ANALYTICS_STORAGE) && ueeVar.h(zzah.AD_STORAGE)) || this.a.L().z();
        if (z != this.a.p()) {
            this.a.l(z);
            roh rohVarF = this.a.F();
            e eVar = rohVarF.a;
            rohVarF.g();
            Boolean boolValueOf = rohVarF.n().contains("measurement_enabled_from_api") ? Boolean.valueOf(rohVarF.n().getBoolean("measurement_enabled_from_api", true)) : null;
            if (!z || boolValueOf == null || boolValueOf.booleanValue()) {
                N(Boolean.valueOf(z), false);
            }
        }
    }

    public final void J(String str, String str2, Object obj, boolean z) {
        K(TtmlNode.TEXT_EMPHASIS_AUTO, "_ldl", obj, true, this.a.c().currentTimeMillis());
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0046  */
    /* JADX WARN: Code duplicated, block: B:24:0x0057  */
    /* JADX WARN: Code duplicated, block: B:27:0x0073 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x0075  */
    /* JADX WARN: Code duplicated, block: B:30:0x0081  */
    /* JADX WARN: Code duplicated, block: B:34:0x0098  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:41:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:43:? A[RETURN, SYNTHETIC] */
    public final void K(String str, String str2, Object obj, boolean z, long j) {
        int i;
        int iL0;
        int iH0;
        Object objO;
        String str3 = str == null ? "app" : str;
        if (!z) {
            c9j c9jVarN = this.a.N();
            i = 6;
            if (c9jVarN.P("user property", str2)) {
                if (c9jVarN.L("user property", zri.a, null, str2)) {
                    c9jVarN.a.z();
                    if (c9jVarN.K("user property", 24, str2)) {
                        i = 0;
                    }
                } else {
                    iL0 = 15;
                }
            }
            if (i != 0) {
                c9j c9jVarN2 = this.a.N();
                this.a.z();
                this.a.N().z(this.p, null, i, "_ev", c9jVarN2.q(str2, 24, true), str2 != null ? str2.length() : 0);
            } else {
                if (obj != null) {
                    A(str3, str2, j, null);
                    return;
                }
                iH0 = this.a.N().h0(str2, obj);
                if (iH0 != 0) {
                    c9j c9jVarN3 = this.a.N();
                    this.a.z();
                    this.a.N().z(this.p, null, iH0, "_ev", c9jVarN3.q(str2, 24, true), (!(obj instanceof String) || (obj instanceof CharSequence)) ? obj.toString().length() : 0);
                } else {
                    objO = this.a.N().o(str2, obj);
                    if (objO != null) {
                        A(str3, str2, j, objO);
                    }
                }
            }
        }
        iL0 = this.a.N().l0(str2);
        i = iL0;
        if (i != 0) {
            c9j c9jVarN4 = this.a.N();
            this.a.z();
            this.a.N().z(this.p, null, i, "_ev", c9jVarN4.q(str2, 24, true), str2 != null ? str2.length() : 0);
        } else {
            if (obj != null) {
                A(str3, str2, j, null);
                return;
            }
            iH0 = this.a.N().h0(str2, obj);
            if (iH0 != 0) {
                c9j c9jVarN5 = this.a.N();
                this.a.z();
                this.a.N().z(this.p, null, iH0, "_ev", c9jVarN5.q(str2, 24, true), (!(obj instanceof String) || (obj instanceof CharSequence)) ? obj.toString().length() : 0);
            } else {
                objO = this.a.N().o(str2, obj);
                if (objO != null) {
                    A(str3, str2, j, objO);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0050 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0052  */
    /* JADX WARN: Code duplicated, block: B:19:0x0061  */
    public final void L(String str, String str2, Object obj, long j) {
        String str3;
        Object obj2;
        wd8.f(str);
        wd8.f(str2);
        g();
        h();
        if ("allow_personalized_ads".equals(str2)) {
            if (obj instanceof String) {
                String str4 = (String) obj;
                if (!TextUtils.isEmpty(str4)) {
                    String lowerCase = str4.toLowerCase(Locale.ENGLISH);
                    String str5 = BooleanUtils.FALSE;
                    long j2 = true != BooleanUtils.FALSE.equals(lowerCase) ? 0L : 1L;
                    Long lValueOf = Long.valueOf(j2);
                    pnh pnhVar = this.a.F().m;
                    if (j2 == 1) {
                        str5 = BooleanUtils.TRUE;
                    }
                    pnhVar.b(str5);
                    obj2 = lValueOf;
                } else if (obj == null) {
                    this.a.F().m.b("unset");
                    obj2 = obj;
                } else {
                    str3 = str2;
                    obj2 = obj;
                }
            } else if (obj == null) {
                this.a.F().m.b("unset");
                obj2 = obj;
            } else {
                str3 = str2;
                obj2 = obj;
            }
            str3 = "_npa";
        } else {
            str3 = str2;
            obj2 = obj;
        }
        if (!this.a.o()) {
            this.a.b().u().a("User property not set since app measurement is disabled");
        } else if (this.a.r()) {
            this.a.L().x(new zzlc(str3, j, obj2, str));
        }
    }

    public final void M(kti ktiVar) {
        h();
        wd8.l(ktiVar);
        if (this.e.remove(ktiVar)) {
            return;
        }
        this.a.b().v().a("OnEventListener had not been registered");
    }

    public final void N(Boolean bool, boolean z) {
        g();
        h();
        this.a.b().p().b("Setting app measurement enabled (FE)", bool);
        this.a.F().r(bool);
        if (z) {
            roh rohVarF = this.a.F();
            e eVar = rohVarF.a;
            rohVarF.g();
            SharedPreferences.Editor editorEdit = rohVarF.n().edit();
            if (bool != null) {
                editorEdit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                editorEdit.remove("measurement_enabled_from_api");
            }
            editorEdit.apply();
        }
        if (this.a.p() || !(bool == null || bool.booleanValue())) {
            O();
        }
    }

    public final void O() {
        g();
        String strA = this.a.F().m.a();
        if (strA != null) {
            if ("unset".equals(strA)) {
                L("app", "_npa", null, this.a.c().currentTimeMillis());
            } else {
                L("app", "_npa", Long.valueOf(true != BooleanUtils.TRUE.equals(strA) ? 0L : 1L), this.a.c().currentTimeMillis());
            }
        }
        if (!this.a.o() || !this.o) {
            this.a.b().p().a("Updating Scion state (FE)");
            this.a.L().v();
            return;
        }
        this.a.b().p().a("Recording app launch after enabling measurement for the first time (FE)");
        e0();
        hej.b();
        if (this.a.z().v(null, kwg.f0)) {
            this.a.M().d.a();
        }
        this.a.a().w(new zzhg(this));
    }

    public final int P(String str) {
        wd8.f(str);
        this.a.z();
        return 25;
    }

    public final Boolean Q() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) this.a.a().q(atomicReference, C.DEFAULT_SEEK_FORWARD_INCREMENT_MS, "boolean test flag value", new zzhp(this, atomicReference));
    }

    public final Double R() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) this.a.a().q(atomicReference, C.DEFAULT_SEEK_FORWARD_INCREMENT_MS, "double test flag value", new zzhv(this, atomicReference));
    }

    public final Integer S() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) this.a.a().q(atomicReference, C.DEFAULT_SEEK_FORWARD_INCREMENT_MS, "int test flag value", new zzhu(this, atomicReference));
    }

    public final Long T() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) this.a.a().q(atomicReference, C.DEFAULT_SEEK_FORWARD_INCREMENT_MS, "long test flag value", new zzht(this, atomicReference));
    }

    public final String U() {
        return (String) this.g.get();
    }

    public final String V() {
        u2j u2jVarQ = this.a.K().q();
        if (u2jVarQ != null) {
            return u2jVarQ.b;
        }
        return null;
    }

    public final String W() {
        u2j u2jVarQ = this.a.K().q();
        if (u2jVarQ != null) {
            return u2jVarQ.a;
        }
        return null;
    }

    public final String X() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) this.a.a().q(atomicReference, C.DEFAULT_SEEK_FORWARD_INCREMENT_MS, "String test flag value", new zzhs(this, atomicReference));
    }

    public final ArrayList Y(String str, String str2) {
        if (this.a.a().z()) {
            this.a.b().q().a("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList(0);
        }
        this.a.d();
        if (b7e.a()) {
            this.a.b().q().a("Cannot get conditional user properties from main thread");
            return new ArrayList(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        this.a.a().q(atomicReference, 5000L, "get conditional user properties", new zzho(this, atomicReference, null, str, str2));
        List list = (List) atomicReference.get();
        if (list != null) {
            return c9j.u(list);
        }
        this.a.b().q().b("Timed out waiting for get conditional user properties", null);
        return new ArrayList();
    }

    public final Map Z(String str, String str2, boolean z) {
        if (this.a.a().z()) {
            this.a.b().q().a("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        }
        this.a.d();
        if (b7e.a()) {
            this.a.b().q().a("Cannot get user properties from main thread");
            return Collections.emptyMap();
        }
        AtomicReference atomicReference = new AtomicReference();
        this.a.a().q(atomicReference, 5000L, "get user properties", new zzhq(this, atomicReference, null, str, str2, z));
        List<zzlc> list = (List) atomicReference.get();
        if (list == null) {
            this.a.b().q().b("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z));
            return Collections.emptyMap();
        }
        ArrayMap arrayMap = new ArrayMap(list.size());
        for (zzlc zzlcVar : list) {
            Object objZza = zzlcVar.zza();
            if (objZza != null) {
                arrayMap.put(zzlcVar.zzb, objZza);
            }
        }
        return arrayMap;
    }

    public final void e0() {
        g();
        h();
        if (this.a.r()) {
            if (this.a.z().v(null, kwg.Z)) {
                oce oceVarZ = this.a.z();
                oceVarZ.a.d();
                Boolean boolO = oceVarZ.o("google_analytics_deferred_deep_link_enabled");
                if (boolO != null && boolO.booleanValue()) {
                    this.a.b().p().a("Deferred Deep Link feature enabled.");
                    this.a.a().w(new Runnable() {
                        @Override
                        public final void run() {
                            g gVar = this.zza;
                            gVar.g();
                            if (gVar.a.F().r.b()) {
                                gVar.a.b().p().a("Deferred Deep Link already retrieved. Not fetching again.");
                                return;
                            }
                            long jA = gVar.a.F().s.a();
                            gVar.a.F().s.b(1 + jA);
                            gVar.a.z();
                            if (jA < 5) {
                                gVar.a.j();
                            } else {
                                gVar.a.b().v().a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                                gVar.a.F().r.a(true);
                            }
                        }
                    });
                }
            }
            this.a.L().N();
            this.o = false;
            roh rohVarF = this.a.F();
            rohVarF.g();
            String string = rohVarF.n().getString("previous_os_version", null);
            rohVarF.a.A().j();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor editorEdit = rohVarF.n().edit();
                editorEdit.putString("previous_os_version", str);
                editorEdit.apply();
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            this.a.A().j();
            if (string.equals(str)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", string);
            t(TtmlNode.TEXT_EMPHASIS_AUTO, "_ou", bundle);
        }
    }

    @Override
    public final boolean m() {
        return false;
    }

    public final void n(String str, String str2, Bundle bundle) {
        long jCurrentTimeMillis = this.a.c().currentTimeMillis();
        wd8.f(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong("creation_timestamp", jCurrentTimeMillis);
        if (str2 != null) {
            bundle2.putString("expired_event_name", str2);
            bundle2.putBundle("expired_event_params", bundle);
        }
        this.a.a().w(new zzhn(this, bundle2));
    }

    public final void o() {
        if (!(this.a.e().getApplicationContext() instanceof Application) || this.c == null) {
            return;
        }
        ((Application) this.a.e().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.c);
    }

    public final void p(Bundle bundle) {
        if (bundle == null) {
            this.a.F().w.b(new Bundle());
            return;
        }
        Bundle bundleA = this.a.F().w.a();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                if (this.a.N().S(obj)) {
                    this.a.N().z(this.p, null, 27, null, null, 0);
                }
                this.a.b().w().c("Invalid default event parameter type. Name, value", str, obj);
            } else if (c9j.U(str)) {
                this.a.b().w().b("Invalid default event parameter name. Name", str);
            } else if (obj == null) {
                bundleA.remove(str);
            } else {
                c9j c9jVarN = this.a.N();
                this.a.z();
                if (c9jVarN.N("param", str, 100, obj)) {
                    this.a.N().A(bundleA, str, obj);
                }
            }
        }
        this.a.N();
        int iJ = this.a.z().j();
        if (bundleA.size() > iJ) {
            int i = 0;
            for (String str2 : new TreeSet(bundleA.keySet())) {
                i++;
                if (i > iJ) {
                    bundleA.remove(str2);
                }
            }
            this.a.N().z(this.p, null, 26, null, null, 0);
            this.a.b().w().a("Too many default event parameters set. Discarding beyond event parameter limit");
        }
        this.a.F().w.b(bundleA);
        this.a.L().u(bundleA);
    }

    public final void q(String str, String str2, Bundle bundle) {
        r(str, str2, bundle, true, true, this.a.c().currentTimeMillis());
    }

    public final void r(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        String str3 = str == null ? "app" : str;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        if (str2 == "screen_view" || (str2 != null && str2.equals("screen_view"))) {
            this.a.K().D(bundle2, j);
            return;
        }
        boolean z3 = true;
        if (z2 && this.d != null && !c9j.U(str2)) {
            z3 = false;
        }
        z(str3, str2, j, bundle2, z2, z3, z, null);
    }

    public final void s(String str, String str2, Bundle bundle, String str3) {
        e.t();
        z(TtmlNode.TEXT_EMPHASIS_AUTO, str2, this.a.c().currentTimeMillis(), bundle, false, true, true, str3);
    }

    public final void t(String str, String str2, Bundle bundle) {
        g();
        u(str, str2, this.a.c().currentTimeMillis(), bundle);
    }

    public final void u(String str, String str2, long j, Bundle bundle) {
        g();
        v(str, str2, j, bundle, true, this.d == null || c9j.U(str2), true, null);
    }

    public final void v(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        boolean z4;
        Bundle[] bundleArr;
        wd8.f(str);
        wd8.l(bundle);
        g();
        h();
        if (!this.a.o()) {
            this.a.b().p().a("Event not sent since app measurement is disabled");
            return;
        }
        List listS = this.a.B().s();
        if (listS != null && !listS.contains(str2)) {
            this.a.b().p().c("Dropping non-safelisted event. event name, origin", str2, str);
            return;
        }
        if (!this.f) {
            this.f = true;
            try {
                try {
                    (!this.a.s() ? Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, this.a.e().getClassLoader()) : Class.forName("com.google.android.gms.tagmanager.TagManagerService")).getDeclaredMethod("initialize", Context.class).invoke(null, this.a.e());
                } catch (Exception e) {
                    this.a.b().v().b("Failed to invoke Tag Manager's initialize() method", e);
                }
            } catch (ClassNotFoundException unused) {
                this.a.b().t().a("Tag Manager is not found and thus will not be used");
            }
        }
        if ("_cmp".equals(str2) && bundle.containsKey("gclid")) {
            this.a.d();
            L(TtmlNode.TEXT_EMPHASIS_AUTO, "_lgclid", bundle.getString("gclid"), this.a.c().currentTimeMillis());
        }
        this.a.d();
        if (z && c9j.Y(str2)) {
            this.a.N().y(bundle, this.a.F().w.a());
        }
        if (!z3) {
            this.a.d();
            if (!"_iap".equals(str2)) {
                c9j c9jVarN = this.a.N();
                int i = 2;
                if (c9jVarN.P(NotificationCompat.CATEGORY_EVENT, str2)) {
                    if (c9jVarN.L(NotificationCompat.CATEGORY_EVENT, kqi.a, kqi.b, str2)) {
                        c9jVarN.a.z();
                        if (c9jVarN.K(NotificationCompat.CATEGORY_EVENT, 40, str2)) {
                            i = 0;
                        }
                    } else {
                        i = 13;
                    }
                }
                if (i != 0) {
                    this.a.b().r().b("Invalid public event name. Event will not be logged (FE)", this.a.D().c(str2));
                    c9j c9jVarN2 = this.a.N();
                    this.a.z();
                    this.a.N().z(this.p, null, i, "_ev", c9jVarN2.q(str2, 40, true), str2 != null ? str2.length() : 0);
                    return;
                }
            }
        }
        this.a.d();
        u2j u2jVarR = this.a.K().r(false);
        if (u2jVarR != null && !bundle.containsKey("_sc")) {
            u2jVarR.d = true;
        }
        c9j.x(u2jVarR, bundle, z && !z3);
        boolean zEquals = "am".equals(str);
        boolean zU = c9j.U(str2);
        if (!z || this.d == null || zU) {
            z4 = zEquals;
        } else {
            if (!zEquals) {
                this.a.b().p().c("Passing event to registered event handler (FE)", this.a.D().c(str2), this.a.D().b(bundle));
                wd8.l(this.d);
                this.d.a(str, str2, bundle, j);
                return;
            }
            z4 = true;
        }
        if (this.a.r()) {
            int iI0 = this.a.N().i0(str2);
            if (iI0 != 0) {
                this.a.b().r().b("Invalid event name. Event will not be logged (FE)", this.a.D().c(str2));
                c9j c9jVarN3 = this.a.N();
                this.a.z();
                this.a.N().z(this.p, str3, iI0, "_ev", c9jVarN3.q(str2, 40, true), str2 != null ? str2.length() : 0);
                return;
            }
            Bundle bundleS0 = this.a.N().s0(str3, str2, bundle, s71.b("_o", "_sn", "_sc", "_si"), z3);
            wd8.l(bundleS0);
            this.a.d();
            if (this.a.K().r(false) != null && "_ae".equals(str2)) {
                w6j w6jVar = this.a.M().e;
                long jElapsedRealtime = w6jVar.d.a.c().elapsedRealtime();
                long j2 = jElapsedRealtime - w6jVar.b;
                w6jVar.b = jElapsedRealtime;
                if (j2 > 0) {
                    this.a.N().v(bundleS0, j2);
                }
            }
            kdj.b();
            if (this.a.z().v(null, kwg.e0)) {
                if (!TtmlNode.TEXT_EMPHASIS_AUTO.equals(str) && "_ssr".equals(str2)) {
                    c9j c9jVarN4 = this.a.N();
                    String string = bundleS0.getString("_ffr");
                    if (v0a.a(string)) {
                        string = null;
                    } else if (string != null) {
                        string = string.trim();
                    }
                    if (x8j.a(string, c9jVarN4.a.F().t.a())) {
                        c9jVarN4.a.b().p().a("Not logging duplicate session_start_with_rollout event");
                        return;
                    }
                    c9jVarN4.a.F().t.b(string);
                } else if ("_ae".equals(str2)) {
                    String strA = this.a.N().a.F().t.a();
                    if (!TextUtils.isEmpty(strA)) {
                        bundleS0.putString("_ffr", strA);
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(bundleS0);
            if (this.a.F().o.a() > 0 && this.a.F().u(j) && this.a.F().q.b()) {
                this.a.b().u().a("Current session is expired, remove the session number, ID, and engagement time");
                L(TtmlNode.TEXT_EMPHASIS_AUTO, "_sid", null, this.a.c().currentTimeMillis());
                L(TtmlNode.TEXT_EMPHASIS_AUTO, "_sno", null, this.a.c().currentTimeMillis());
                L(TtmlNode.TEXT_EMPHASIS_AUTO, "_se", null, this.a.c().currentTimeMillis());
            }
            if (bundleS0.getLong("extend_session", 0L) == 1) {
                this.a.b().u().a("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                this.a.M().d.b(j, true);
            }
            ArrayList arrayList2 = new ArrayList(bundleS0.keySet());
            Collections.sort(arrayList2);
            int size = arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                String str4 = (String) arrayList2.get(i2);
                if (str4 != null) {
                    this.a.N();
                    Object obj = bundleS0.get(str4);
                    if (obj instanceof Bundle) {
                        bundleArr = new Bundle[]{(Bundle) obj};
                    } else if (obj instanceof Parcelable[]) {
                        Parcelable[] parcelableArr = (Parcelable[]) obj;
                        bundleArr = (Bundle[]) Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
                    } else if (obj instanceof ArrayList) {
                        ArrayList arrayList3 = (ArrayList) obj;
                        bundleArr = (Bundle[]) arrayList3.toArray(new Bundle[arrayList3.size()]);
                    } else {
                        bundleArr = null;
                    }
                    if (bundleArr != null) {
                        bundleS0.putParcelableArray(str4, bundleArr);
                    }
                }
            }
            int i3 = 0;
            while (i3 < arrayList.size()) {
                Bundle bundleR0 = (Bundle) arrayList.get(i3);
                String str5 = i3 != 0 ? "_ep" : str2;
                bundleR0.putString("_o", str);
                if (z2) {
                    bundleR0 = this.a.N().r0(bundleR0);
                }
                Bundle bundle2 = bundleR0;
                this.a.L().n(new zzaw(str5, new zzau(bundle2), str, j), str3);
                if (!z4) {
                    Iterator it = this.e.iterator();
                    while (it.hasNext()) {
                        ((kti) it.next()).a(str, str2, new Bundle(bundle2), j);
                    }
                }
                i3++;
            }
            this.a.d();
            if (this.a.K().r(false) == null || !"_ae".equals(str2)) {
                return;
            }
            this.a.M().e.d(true, true, this.a.c().elapsedRealtime());
        }
    }

    public final void w(kti ktiVar) {
        h();
        wd8.l(ktiVar);
        if (this.e.add(ktiVar)) {
            return;
        }
        this.a.b().v().a("OnEventListener already registered");
    }

    public final void x(long j) {
        this.g.set(null);
        this.a.a().w(new zzhl(this, j));
    }

    public final void y(long j, boolean z) {
        g();
        h();
        this.a.b().p().a("Resetting analytics data (FE)");
        b7j b7jVarM = this.a.M();
        b7jVarM.g();
        b7jVarM.e.a();
        sfj.b();
        if (this.a.z().v(null, kwg.u0)) {
            this.a.B().t();
        }
        boolean zO = this.a.o();
        roh rohVarF = this.a.F();
        rohVarF.e.b(j);
        if (!TextUtils.isEmpty(rohVarF.a.F().t.a())) {
            rohVarF.t.b(null);
        }
        hej.b();
        oce oceVarZ = rohVarF.a.z();
        lvg lvgVar = kwg.f0;
        if (oceVarZ.v(null, lvgVar)) {
            rohVarF.o.b(0L);
        }
        if (!rohVarF.a.z().x()) {
            rohVarF.s(!zO);
        }
        rohVarF.u.b(null);
        rohVarF.v.b(0L);
        rohVarF.w.b(null);
        if (z) {
            this.a.L().p();
        }
        hej.b();
        if (this.a.z().v(null, lvgVar)) {
            this.a.M().d.a();
        }
        this.o = !zO;
    }

    public final void z(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        Bundle bundle2 = new Bundle(bundle);
        for (String str4 : bundle2.keySet()) {
            Object obj = bundle2.get(str4);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str4, new Bundle((Bundle) obj));
            } else {
                int i = 0;
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    while (i < parcelableArr.length) {
                        Parcelable parcelable = parcelableArr[i];
                        if (parcelable instanceof Bundle) {
                            parcelableArr[i] = new Bundle((Bundle) parcelable);
                        }
                        i++;
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    while (i < list.size()) {
                        Object obj2 = list.get(i);
                        if (obj2 instanceof Bundle) {
                            list.set(i, new Bundle((Bundle) obj2));
                        }
                        i++;
                    }
                }
            }
        }
        this.a.a().w(new zzhi(this, str, str2, j, bundle2, z, z2, z3, str3));
    }
}
