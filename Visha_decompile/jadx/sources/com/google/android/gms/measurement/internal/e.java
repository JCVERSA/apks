package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.internal.measurement.zzcl;
import defpackage.b7e;
import defpackage.b7j;
import defpackage.boi;
import defpackage.c9j;
import defpackage.fy0;
import defpackage.ini;
import defpackage.kdj;
import defpackage.kwg;
import defpackage.lui;
import defpackage.m02;
import defpackage.m2j;
import defpackage.mpc;
import defpackage.nlh;
import defpackage.oce;
import defpackage.q1j;
import defpackage.r3h;
import defpackage.roh;
import defpackage.tme;
import defpackage.u6h;
import defpackage.uee;
import defpackage.uoi;
import defpackage.v1h;
import defpackage.wd8;
import defpackage.wsg;
import defpackage.wzg;
import defpackage.y3i;
import defpackage.zui;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

public final class e implements uoi {
    public static volatile e H;
    public volatile Boolean A;
    public Boolean B;
    public Boolean C;
    public volatile boolean D;
    public int E;
    public final long G;
    public final Context a;
    public final String b;
    public final String c;
    public final String d;
    public final boolean e;
    public final b7e f;
    public final oce g;
    public final roh h;
    public final c i;
    public final d j;
    public final b7j k;
    public final c9j l;
    public final r3h m;
    public final fy0 n;
    public final h o;
    public final g p;
    public final b q;
    public final m2j r;
    public final String s;
    public v1h t;
    public j u;
    public tme v;
    public wzg w;
    public Boolean y;
    public long z;
    public boolean x = false;
    public final AtomicInteger F = new AtomicInteger(0);

    public e(zui zuiVar) {
        Bundle bundle;
        wd8.l(zuiVar);
        Context context = zuiVar.a;
        b7e b7eVar = new b7e(context);
        this.f = b7eVar;
        wsg.a = b7eVar;
        this.a = context;
        this.b = zuiVar.b;
        this.c = zuiVar.c;
        this.d = zuiVar.d;
        this.e = zuiVar.h;
        this.A = zuiVar.e;
        this.s = zuiVar.j;
        this.D = true;
        zzcl zzclVar = zuiVar.g;
        if (zzclVar != null && (bundle = zzclVar.zzg) != null) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.B = (Boolean) obj;
            }
            Object obj2 = zzclVar.zzg.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.C = (Boolean) obj2;
            }
        }
        q1j.e(context);
        fy0 fy0VarA = m02.a();
        this.n = fy0VarA;
        Long l = zuiVar.i;
        this.G = l != null ? l.longValue() : fy0VarA.currentTimeMillis();
        this.g = new oce(this);
        roh rohVar = new roh(this);
        rohVar.k();
        this.h = rohVar;
        c cVar = new c(this);
        cVar.k();
        this.i = cVar;
        c9j c9jVar = new c9j(this);
        c9jVar.k();
        this.l = c9jVar;
        this.m = new r3h(new lui(zuiVar, this));
        this.q = new b(this);
        h hVar = new h(this);
        hVar.i();
        this.o = hVar;
        g gVar = new g(this);
        gVar.i();
        this.p = gVar;
        b7j b7jVar = new b7j(this);
        b7jVar.i();
        this.k = b7jVar;
        m2j m2jVar = new m2j(this);
        m2jVar.k();
        this.r = m2jVar;
        d dVar = new d(this);
        dVar.k();
        this.j = dVar;
        zzcl zzclVar2 = zuiVar.g;
        boolean z = zzclVar2 == null || zzclVar2.zzb == 0;
        if (context.getApplicationContext() instanceof Application) {
            g gVarI = I();
            if (gVarI.a.a.getApplicationContext() instanceof Application) {
                Application application = (Application) gVarI.a.a.getApplicationContext();
                if (gVarI.c == null) {
                    gVarI.c = new f(gVarI, null);
                }
                if (z) {
                    application.unregisterActivityLifecycleCallbacks(gVarI.c);
                    application.registerActivityLifecycleCallbacks(gVarI.c);
                    gVarI.a.b().u().a("Registered activity lifecycle callback");
                }
            }
        } else {
            b().v().a("Application context is not an Application");
        }
        dVar.w(new zzfx(this, zuiVar));
    }

    public static e H(Context context, zzcl zzclVar, Long l) {
        Bundle bundle;
        if (zzclVar != null && (zzclVar.zze == null || zzclVar.zzf == null)) {
            zzclVar = new zzcl(zzclVar.zza, zzclVar.zzb, zzclVar.zzc, zzclVar.zzd, null, null, zzclVar.zzg, null);
        }
        wd8.l(context);
        wd8.l(context.getApplicationContext());
        if (H == null) {
            synchronized (e.class) {
                try {
                    if (H == null) {
                        H = new e(new zui(context, zzclVar, l));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else if (zzclVar != null && (bundle = zzclVar.zzg) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            wd8.l(H);
            H.A = Boolean.valueOf(zzclVar.zzg.getBoolean("dataCollectionDefaultEnabled"));
        }
        wd8.l(H);
        return H;
    }

    public static void f(e eVar, zui zuiVar) {
        eVar.a().g();
        eVar.g.r();
        tme tmeVar = new tme(eVar);
        tmeVar.k();
        eVar.v = tmeVar;
        wzg wzgVar = new wzg(eVar, zuiVar.f);
        wzgVar.i();
        eVar.w = wzgVar;
        v1h v1hVar = new v1h(eVar);
        v1hVar.i();
        eVar.t = v1hVar;
        j jVar = new j(eVar);
        jVar.i();
        eVar.u = jVar;
        eVar.l.l();
        eVar.h.l();
        eVar.w.j();
        u6h u6hVarT = eVar.b().t();
        eVar.g.l();
        u6hVarT.b("App measurement initialized, version", 73000L);
        eVar.b().t().a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String strQ = wzgVar.q();
        if (TextUtils.isEmpty(eVar.b)) {
            if (eVar.N().R(strQ)) {
                eVar.b().t().a("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
            } else {
                eVar.b().t().a("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(String.valueOf(strQ)));
            }
        }
        eVar.b().p().a("Debug-level message logging enabled");
        if (eVar.E != eVar.F.get()) {
            eVar.b().q().c("Not all components initialized", Integer.valueOf(eVar.E), Integer.valueOf(eVar.F.get()));
        }
        eVar.x = true;
    }

    public static final void t() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    public static final void u(ini iniVar) {
        if (iniVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    public static final void v(nlh nlhVar) {
        if (nlhVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!nlhVar.l()) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(nlhVar.getClass())));
        }
    }

    public static final void w(boi boiVar) {
        if (boiVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!boiVar.m()) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(boiVar.getClass())));
        }
    }

    public final tme A() {
        w(this.v);
        return this.v;
    }

    public final wzg B() {
        v(this.w);
        return this.w;
    }

    public final v1h C() {
        v(this.t);
        return this.t;
    }

    public final r3h D() {
        return this.m;
    }

    public final c E() {
        c cVar = this.i;
        if (cVar == null || !cVar.m()) {
            return null;
        }
        return cVar;
    }

    public final roh F() {
        u(this.h);
        return this.h;
    }

    public final d G() {
        return this.j;
    }

    public final g I() {
        v(this.p);
        return this.p;
    }

    public final m2j J() {
        w(this.r);
        return this.r;
    }

    public final h K() {
        v(this.o);
        return this.o;
    }

    public final j L() {
        v(this.u);
        return this.u;
    }

    public final b7j M() {
        v(this.k);
        return this.k;
    }

    public final c9j N() {
        u(this.l);
        return this.l;
    }

    public final String O() {
        return this.b;
    }

    public final String P() {
        return this.c;
    }

    public final String Q() {
        return this.d;
    }

    public final String R() {
        return this.s;
    }

    @Override
    public final d a() {
        w(this.j);
        return this.j;
    }

    @Override
    public final c b() {
        w(this.i);
        return this.i;
    }

    @Override
    public final fy0 c() {
        return this.n;
    }

    @Override
    public final b7e d() {
        return this.f;
    }

    @Override
    public final Context e() {
        return this.a;
    }

    public final void g() {
        this.F.incrementAndGet();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0017  */
    public final void h(String str, int i, Throwable th, byte[] bArr, Map map) {
        List<ResolveInfo> listQueryIntentActivities;
        if (i == 200 || i == 204) {
            if (th == null) {
                F().r.a(true);
                if (bArr != null || bArr.length == 0) {
                    b().p().a("Deferred Deep Link response empty.");
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr));
                    String strOptString = jSONObject.optString("deeplink", "");
                    String strOptString2 = jSONObject.optString("gclid", "");
                    double dOptDouble = jSONObject.optDouble("timestamp", 0.0d);
                    if (TextUtils.isEmpty(strOptString)) {
                        b().p().a("Deferred Deep Link is empty.");
                        return;
                    }
                    c9j c9jVarN = N();
                    e eVar = c9jVarN.a;
                    if (!TextUtils.isEmpty(strOptString) && (listQueryIntentActivities = c9jVarN.a.a.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(strOptString)), 0)) != null && !listQueryIntentActivities.isEmpty()) {
                        Bundle bundle = new Bundle();
                        bundle.putString("gclid", strOptString2);
                        bundle.putString("_cis", "ddp");
                        this.p.t(TtmlNode.TEXT_EMPHASIS_AUTO, "_cmp", bundle);
                        c9j c9jVarN2 = N();
                        if (TextUtils.isEmpty(strOptString)) {
                            return;
                        }
                        try {
                            SharedPreferences.Editor editorEdit = c9jVarN2.a.a.getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
                            editorEdit.putString("deeplink", strOptString);
                            editorEdit.putLong("timestamp", Double.doubleToRawLongBits(dOptDouble));
                            if (editorEdit.commit()) {
                                c9jVarN2.a.a.sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
                                return;
                            }
                            return;
                        } catch (RuntimeException e) {
                            c9jVarN2.a.b().q().b("Failed to persist Deferred Deep Link. exception", e);
                            return;
                        }
                    }
                    b().v().c("Deferred Deep Link validation failed. gclid, deep link", strOptString2, strOptString);
                    return;
                } catch (JSONException e2) {
                    b().q().b("Failed to parse the Deferred Deep Link response. exception", e2);
                    return;
                }
            }
        } else if (i == 304) {
            i = 304;
            if (th == null) {
                F().r.a(true);
                if (bArr != null) {
                }
                b().p().a("Deferred Deep Link response empty.");
                return;
            }
        }
        b().v().c("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i), th);
    }

    public final void i() {
        this.E++;
    }

    public final void j() {
        a().g();
        w(J());
        String strQ = B().q();
        Pair pairO = F().o(strQ);
        if (!this.g.u() || ((Boolean) pairO.second).booleanValue() || TextUtils.isEmpty((CharSequence) pairO.first)) {
            b().p().a("ADID unavailable to retrieve Deferred Deep Link. Skipping");
            return;
        }
        m2j m2jVarJ = J();
        m2jVarJ.j();
        ConnectivityManager connectivityManager = (ConnectivityManager) m2jVarJ.a.a.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = null;
        if (connectivityManager != null) {
            try {
                activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException unused) {
            }
        }
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            b().v().a("Network is not available for Deferred Deep Link request. Skipping");
            return;
        }
        c9j c9jVarN = N();
        B().a.g.l();
        URL urlR = c9jVarN.r(73000L, strQ, (String) pairO.first, (-1) + F().s.a());
        if (urlR != null) {
            m2j m2jVarJ2 = J();
            y3i y3iVar = new y3i(this);
            m2jVarJ2.g();
            m2jVarJ2.j();
            wd8.l(urlR);
            wd8.l(y3iVar);
            m2jVarJ2.a.a().v(new zzig(m2jVarJ2, strQ, urlR, null, null, y3iVar, null));
        }
    }

    public final void k(boolean z) {
        this.A = Boolean.valueOf(z);
    }

    public final void l(boolean z) {
        a().g();
        this.D = z;
    }

    public final void m(zzcl zzclVar) {
        uee ueeVar;
        a().g();
        uee ueeVarP = F().p();
        roh rohVarF = F();
        e eVar = rohVarF.a;
        rohVarF.g();
        int i = 100;
        int i2 = rohVarF.n().getInt("consent_source", 100);
        oce oceVar = this.g;
        e eVar2 = oceVar.a;
        Boolean boolO = oceVar.o("google_analytics_default_allow_ad_storage");
        oce oceVar2 = this.g;
        e eVar3 = oceVar2.a;
        Boolean boolO2 = oceVar2.o("google_analytics_default_allow_analytics_storage");
        if (!(boolO == null && boolO2 == null) && F().v(-10)) {
            ueeVar = new uee(boolO, boolO2);
            i = -10;
        } else {
            if (!TextUtils.isEmpty(B().r()) && (i2 == 0 || i2 == 30 || i2 == 10 || i2 == 30 || i2 == 30 || i2 == 40)) {
                I().F(uee.b, -10, this.G);
            } else if (TextUtils.isEmpty(B().r()) && zzclVar != null && zzclVar.zzg != null && F().v(30)) {
                ueeVar = uee.a(zzclVar.zzg);
                if (!ueeVar.equals(uee.b)) {
                    i = 30;
                }
            }
            ueeVar = null;
        }
        if (ueeVar != null) {
            I().F(ueeVar, i, this.G);
            ueeVarP = ueeVar;
        }
        I().I(ueeVarP);
        if (F().e.a() == 0) {
            b().u().b("Persisting first open", Long.valueOf(this.G));
            F().e.b(this.G);
        }
        I().n.c();
        if (r()) {
            if (!TextUtils.isEmpty(B().r()) || !TextUtils.isEmpty(B().p())) {
                c9j c9jVarN = N();
                String strR = B().r();
                roh rohVarF2 = F();
                rohVarF2.g();
                String string = rohVarF2.n().getString("gmp_app_id", null);
                String strP = B().p();
                roh rohVarF3 = F();
                rohVarF3.g();
                if (c9jVarN.Z(strR, string, strP, rohVarF3.n().getString("admob_app_id", null))) {
                    b().t().a("Rechecking which service to use due to a GMP App Id change");
                    roh rohVarF4 = F();
                    rohVarF4.g();
                    Boolean boolQ = rohVarF4.q();
                    SharedPreferences.Editor editorEdit = rohVarF4.n().edit();
                    editorEdit.clear();
                    editorEdit.apply();
                    if (boolQ != null) {
                        rohVarF4.r(boolQ);
                    }
                    C().p();
                    this.u.P();
                    this.u.O();
                    F().e.b(this.G);
                    F().g.b(null);
                }
                roh rohVarF5 = F();
                String strR2 = B().r();
                rohVarF5.g();
                SharedPreferences.Editor editorEdit2 = rohVarF5.n().edit();
                editorEdit2.putString("gmp_app_id", strR2);
                editorEdit2.apply();
                roh rohVarF6 = F();
                String strP2 = B().p();
                rohVarF6.g();
                SharedPreferences.Editor editorEdit3 = rohVarF6.n().edit();
                editorEdit3.putString("admob_app_id", strP2);
                editorEdit3.apply();
            }
            if (!F().p().h(zzah.ANALYTICS_STORAGE)) {
                F().g.b(null);
            }
            I().B(F().g.a());
            kdj.b();
            if (this.g.v(null, kwg.e0)) {
                try {
                    N().a.a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                } catch (ClassNotFoundException unused) {
                    if (!TextUtils.isEmpty(F().t.a())) {
                        b().v().a("Remote config removed with active feature rollouts");
                        F().t.b(null);
                    }
                }
            }
            if (!TextUtils.isEmpty(B().r()) || !TextUtils.isEmpty(B().p())) {
                boolean zO = o();
                if (!F().t() && !this.g.x()) {
                    F().s(!zO);
                }
                if (zO) {
                    I().e0();
                }
                M().d.a();
                L().R(new AtomicReference());
                L().u(F().w.a());
            }
        } else if (o()) {
            if (!N().Q("android.permission.INTERNET")) {
                b().q().a("App is missing INTERNET permission");
            }
            if (!N().Q("android.permission.ACCESS_NETWORK_STATE")) {
                b().q().a("App is missing ACCESS_NETWORK_STATE permission");
            }
            if (!mpc.a(this.a).g() && !this.g.y()) {
                if (!c9j.W(this.a)) {
                    b().q().a("AppMeasurementReceiver not registered/enabled");
                }
                if (!c9j.X(this.a, false)) {
                    b().q().a("AppMeasurementService not registered/enabled");
                }
            }
            b().q().a("Uploading is not possible. App measurement disabled");
        }
        F().n.a(true);
    }

    public final boolean n() {
        return this.A != null && this.A.booleanValue();
    }

    public final boolean o() {
        return x() == 0;
    }

    public final boolean p() {
        a().g();
        return this.D;
    }

    public final boolean q() {
        return TextUtils.isEmpty(this.b);
    }

    public final boolean r() {
        if (!this.x) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
        a().g();
        Boolean bool = this.y;
        if (bool == null || this.z == 0 || (!bool.booleanValue() && Math.abs(this.n.elapsedRealtime() - this.z) > 1000)) {
            this.z = this.n.elapsedRealtime();
            boolean z = true;
            Boolean boolValueOf = Boolean.valueOf(N().Q("android.permission.INTERNET") && N().Q("android.permission.ACCESS_NETWORK_STATE") && (mpc.a(this.a).g() || this.g.y() || (c9j.W(this.a) && c9j.X(this.a, false))));
            this.y = boolValueOf;
            if (boolValueOf.booleanValue()) {
                if (!N().J(B().r(), B().p()) && TextUtils.isEmpty(B().p())) {
                    z = false;
                }
                this.y = Boolean.valueOf(z);
            }
        }
        return this.y.booleanValue();
    }

    public final boolean s() {
        return this.e;
    }

    public final int x() {
        a().g();
        if (this.g.x()) {
            return 1;
        }
        Boolean bool = this.C;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        a().g();
        if (!this.D) {
            return 8;
        }
        Boolean boolQ = F().q();
        if (boolQ != null) {
            return boolQ.booleanValue() ? 0 : 3;
        }
        oce oceVar = this.g;
        b7e b7eVar = oceVar.a.f;
        Boolean boolO = oceVar.o("firebase_analytics_collection_enabled");
        if (boolO != null) {
            return boolO.booleanValue() ? 0 : 4;
        }
        Boolean bool2 = this.B;
        if (bool2 != null) {
            return bool2.booleanValue() ? 0 : 5;
        }
        return (this.A == null || this.A.booleanValue()) ? 0 : 7;
    }

    public final b y() {
        b bVar = this.q;
        if (bVar != null) {
            return bVar;
        }
        throw new IllegalStateException("Component not created");
    }

    public final oce z() {
        return this.g;
    }
}
