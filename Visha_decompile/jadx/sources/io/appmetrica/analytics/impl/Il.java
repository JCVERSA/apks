package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.billinginterface.internal.config.BillingConfig;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.networktasks.internal.RetryPolicyConfig;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

public final class Il implements ProtobufConverter {
    public final C2740ne a = new C2740ne();
    public final C2711ma b = new C2711ma();
    public final C2673km c = new C2673km();
    public final C2852s2 d = new C2852s2();
    public final C3028z3 e = new C3028z3();
    public final C2803q2 f = new C2803q2();
    public final D6 g = new D6();
    public final C2574gm h = new C2574gm();
    public final C2789pd i = new C2789pd();
    public final J9 j = new J9();

    @Override
    @NonNull
    public final Zl fromModel(@NonNull Ll ll) {
        Zl zl = new Zl();
        zl.s = ll.u;
        zl.t = ll.v;
        String str = ll.a;
        if (str != null) {
            zl.a = str;
        }
        List list = ll.f;
        if (list != null) {
            zl.f = (String[]) list.toArray(new String[list.size()]);
        }
        List list2 = ll.g;
        if (list2 != null) {
            zl.g = (String[]) list2.toArray(new String[list2.size()]);
        }
        List list3 = ll.b;
        if (list3 != null) {
            zl.c = (String[]) list3.toArray(new String[list3.size()]);
        }
        List list4 = ll.h;
        if (list4 != null) {
            zl.o = (String[]) list4.toArray(new String[list4.size()]);
        }
        Map<String, ? extends List<String>> map = ll.i;
        if (map != null) {
            zl.h = this.g.fromModel(map);
        }
        C2715me c2715me = ll.s;
        if (c2715me != null) {
            zl.v = this.a.fromModel(c2715me);
        }
        String str2 = ll.j;
        if (str2 != null) {
            zl.j = str2;
        }
        String str3 = ll.c;
        if (str3 != null) {
            zl.d = str3;
        }
        String str4 = ll.d;
        if (str4 != null) {
            zl.e = str4;
        }
        String str5 = ll.e;
        if (str5 != null) {
            zl.r = str5;
        }
        zl.i = this.b.fromModel(ll.m);
        String str6 = ll.k;
        if (str6 != null) {
            zl.k = str6;
        }
        String str7 = ll.l;
        if (str7 != null) {
            zl.l = str7;
        }
        zl.m = ll.p;
        zl.b = ll.n;
        zl.q = ll.o;
        RetryPolicyConfig retryPolicyConfig = ll.t;
        zl.w = retryPolicyConfig.maxIntervalSeconds;
        zl.x = retryPolicyConfig.exponentialMultiplier;
        String str8 = ll.q;
        if (str8 != null) {
            zl.n = str8;
        }
        C2648jm c2648jm = ll.r;
        if (c2648jm != null) {
            this.c.getClass();
            Yl yl = new Yl();
            yl.a = c2648jm.a;
            zl.p = yl;
        }
        zl.u = ll.w;
        BillingConfig billingConfig = ll.x;
        if (billingConfig != null) {
            zl.z = this.d.fromModel(billingConfig);
        }
        C2978x3 c2978x3 = ll.y;
        if (c2978x3 != null) {
            this.e.getClass();
            Rl rl = new Rl();
            rl.a = c2978x3.a;
            zl.y = rl;
        }
        C2778p2 c2778p2 = ll.z;
        if (c2778p2 != null) {
            zl.A = this.f.fromModel(c2778p2);
        }
        zl.B = this.h.fromModel(ll.A);
        zl.C = this.i.fromModel(ll.B);
        zl.D = this.j.fromModel(ll.C);
        return zl;
    }

    @Override
    @NonNull
    public final Ll toModel(@NonNull Zl zl) {
        Kl kl = new Kl(this.b.toModel(zl.i));
        kl.a = zl.a;
        kl.j = zl.j;
        kl.c = zl.d;
        kl.b = Arrays.asList(zl.c);
        kl.g = Arrays.asList(zl.g);
        kl.f = Arrays.asList(zl.f);
        kl.d = zl.e;
        kl.e = zl.r;
        kl.h = Arrays.asList(zl.o);
        kl.k = zl.k;
        kl.l = zl.l;
        kl.q = zl.m;
        kl.o = zl.b;
        kl.p = zl.q;
        kl.t = zl.s;
        kl.u = zl.t;
        kl.r = zl.n;
        kl.v = zl.u;
        kl.w = new RetryPolicyConfig(zl.w, zl.x);
        kl.i = this.g.toModel(zl.h);
        Wl wl = zl.v;
        if (wl != null) {
            this.a.getClass();
            kl.n = new C2715me(wl.a, wl.b);
        }
        Yl yl = zl.p;
        if (yl != null) {
            this.c.getClass();
            kl.s = new C2648jm(yl.a);
        }
        Ql ql = zl.z;
        if (ql != null) {
            this.d.getClass();
            kl.x = new BillingConfig(ql.a, ql.b);
        }
        Rl rl = zl.y;
        if (rl != null) {
            this.e.getClass();
            kl.y = new C2978x3(rl.a);
        }
        Pl pl = zl.A;
        if (pl != null) {
            kl.z = this.f.toModel(pl);
        }
        Xl xl = zl.B;
        if (xl != null) {
            this.h.getClass();
            kl.A = new C2549fm(xl.a);
        }
        kl.B = this.i.toModel(zl.C);
        Tl tl = zl.D;
        if (tl != null) {
            this.j.getClass();
            kl.C = new I9(tl.a);
        }
        return new Ll(kl);
    }
}
