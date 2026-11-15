package io.appmetrica.analytics.impl;

import android.content.Context;
import android.location.Location;
import android.net.ConnectivityManager;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.json.JSONException;
import org.json.JSONObject;

public final class C2783p7 {
    public final Context a;
    public final int b;
    public final X8 c;
    public final E8 d;
    public final C2452c0 e;
    public final N8 f;
    public final C2857s7 g;
    public final C2408a6 h;

    public C2783p7(Context context, C2995xk c2995xk, int i, X8 x8, E8 e8, C2452c0 c2452c0, N8 n8, C2857s7 c2857s7) {
        this.a = context;
        this.b = i;
        this.c = x8;
        this.d = e8;
        this.e = c2452c0;
        this.f = n8;
        this.g = c2857s7;
        this.h = e8.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String b() {
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        Lm lmA = C2910ua.E.A();
        C2758o7 c2758o7 = new C2758o7(ref$ObjectRef);
        synchronized (lmA) {
            lmA.b.a(c2758o7);
        }
        return (String) ref$ObjectRef.element;
    }

    public final C2683l7 a() throws JSONException {
        JSONObject jSONObjectOptJSONObject;
        eo eoVar;
        Integer numValueOf = Integer.valueOf(this.h.e);
        String name = this.h.getName();
        String value = this.h.getValue();
        X8 x8 = this.c;
        int i = this.b;
        Un un = x8.a.a;
        synchronized (un) {
            jSONObjectOptJSONObject = un.a.a().optJSONObject("numbers_of_type");
        }
        long jOptLong = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optLong(String.valueOf(i)) : 0L;
        x8.a.a(i, 1 + jOptLong);
        Long lValueOf = Long.valueOf(jOptLong);
        C2857s7 c2857s7 = this.g;
        c2857s7.getClass();
        Pb pbL = C2910ua.E.l();
        Location userLocation = pbL.getUserLocation();
        if (userLocation != null) {
            int i2 = eo.b;
            Location location = new Location(userLocation);
            String provider = location.getProvider();
            location.setProvider("");
            eoVar = new eo(location, provider);
        } else {
            Location systemLocation = pbL.getSystemLocation();
            eoVar = systemLocation != null ? new eo(new Location(systemLocation), "") : null;
        }
        boolean z = c2857s7.a.d;
        Double dValueOf = eoVar != null ? Double.valueOf(eoVar.getLatitude()) : null;
        Double dValueOf2 = eoVar != null ? Double.valueOf(eoVar.getLongitude()) : null;
        Long lValueOf2 = eoVar != null ? Long.valueOf(eoVar.getTime()) : null;
        Integer numValueOf2 = eoVar != null ? Integer.valueOf((int) eoVar.getAccuracy()) : null;
        Integer numValueOf3 = eoVar != null ? Integer.valueOf((int) eoVar.getBearing()) : null;
        Integer numValueOf4 = eoVar != null ? Integer.valueOf((int) eoVar.getSpeed()) : null;
        C2808q7 c2808q7 = new C2808q7(Boolean.valueOf(z), dValueOf2, dValueOf, eoVar != null ? Integer.valueOf((int) eoVar.getAltitude()) : null, numValueOf3, numValueOf2, numValueOf4, lValueOf2, eoVar != null ? eoVar.getProvider() : null, eoVar != null ? eoVar.a : null);
        String str = this.h.c;
        C2452c0 c2452c0 = this.e;
        String str2 = c2452c0.a;
        Long lValueOf3 = Long.valueOf(c2452c0.b);
        Integer numValueOf5 = Integer.valueOf(this.h.g);
        Context context = this.a;
        SafePackageManager safePackageManager = AbstractC2939ve.a;
        Integer num = (Integer) AbstractC2939ve.d.a((EnumC2914ue) SystemServiceUtils.accessSystemServiceSafelyOrDefault((ConnectivityManager) context.getSystemService("connectivity"), "getting connection type", "ConnectivityManager", EnumC2914ue.UNDEFINED, new C2889te()));
        num.intValue();
        String strB = b();
        M8 m8 = this.d.b;
        C2408a6 c2408a6 = this.h;
        return new C2683l7(numValueOf, name, value, lValueOf, c2808q7, str, str2, lValueOf3, numValueOf5, num, strB, m8, c2408a6.h, c2408a6.k, c2408a6.l, c2408a6.n, c2408a6.o, this.f.fromModel(c2408a6.p));
    }

    public C2783p7(Context context, C2995xk c2995xk, int i, X8 x8, E8 e8, C2469ch c2469ch, C2452c0 c2452c0) {
        this(context, c2995xk, i, x8, e8, c2452c0, new N8(), new C2857s7(c2469ch));
    }
}
