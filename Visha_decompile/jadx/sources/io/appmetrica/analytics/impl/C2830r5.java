package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.NonNull;
import defpackage.abb;
import defpackage.y71;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import java.util.LinkedHashMap;

public class C2830r5 {
    public final C2781p5 a;
    public final C2806q5 b;

    @NonNull
    protected final Context c;
    public final C2532f5 d;
    public final F4 e;
    public final AbstractC2656k5 f;

    @NonNull
    protected final Hl g;
    public final Zg h;
    public final L8 i;
    public final ICommonExecutor j;
    public final Kb k;
    public final InterfaceC3009y9 l;
    public final int m;

    public C2830r5(Context context, C2532f5 c2532f5, F4 f4, AbstractC2656k5 abstractC2656k5, Hl hl, Zg zg, ICommonExecutor iCommonExecutor, int i, Kb kb, InterfaceC3009y9 interfaceC3009y9) {
        this(context, c2532f5, f4, abstractC2656k5, hl, zg, iCommonExecutor, new L8(), i, new C2781p5(f4.a), new C2806q5(context, c2532f5), kb, interfaceC3009y9);
    }

    public static C2486d9 c(C2706m5 c2706m5) {
        return new C2486d9(c2706m5);
    }

    public final Q8 a() {
        Context context = this.c;
        C2532f5 c2532f5 = this.d;
        return new Q8(new V8(context, c2532f5), this.m);
    }

    public final S6 b(C2706m5 c2706m5) {
        return new S6(c2706m5, C2559g7.a(this.c).c(this.d), new O6(c2706m5.c()), new C2733n7());
    }

    public final C2781p5 d() {
        return this.a;
    }

    public final C2806q5 e() {
        return this.b;
    }

    public final Un f() {
        Un un;
        Yn c2612ia;
        Xn xnB = C2910ua.E.B();
        C2532f5 c2532f5 = this.d;
        synchronized (xnB) {
            try {
                String strValueOf = String.valueOf(c2532f5);
                LinkedHashMap linkedHashMap = xnB.b;
                Object un2 = linkedHashMap.get(strValueOf);
                if (un2 == null) {
                    Le le = new Le(C2559g7.a(xnB.a).b(c2532f5));
                    if (c2532f5.d()) {
                        String str = "appmetrica_vital_" + c2532f5.b + ".dat";
                        c2612ia = new C2880t5(y71.n(abb.a(str, new C2612ia(xnB.a, str)), abb.a("appmetrica_vital_main.dat", new C2612ia(xnB.a, "appmetrica_vital_main.dat"))));
                    } else {
                        c2612ia = new C2612ia(xnB.a, "appmetrica_vital_" + c2532f5.b + ".dat");
                    }
                    un2 = new Un(le, c2612ia, strValueOf);
                    linkedHashMap.put(strValueOf, un2);
                }
                un = (Un) un2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return un;
    }

    public C2830r5(Context context, C2532f5 c2532f5, F4 f4, AbstractC2656k5 abstractC2656k5, Hl hl, Zg zg, ICommonExecutor iCommonExecutor, L8 l8, int i, C2781p5 c2781p5, C2806q5 c2806q5, Kb kb, InterfaceC3009y9 interfaceC3009y9) {
        this.c = context;
        this.d = c2532f5;
        this.e = f4;
        this.f = abstractC2656k5;
        this.g = hl;
        this.h = zg;
        this.j = iCommonExecutor;
        this.i = l8;
        this.m = i;
        this.a = c2781p5;
        this.b = c2806q5;
        this.k = kb;
        this.l = interfaceC3009y9;
    }

    public final C2746nk c() {
        return new C2746nk(this.c, this.d);
    }

    public final C2719mi d(C2706m5 c2706m5) {
        C2719mi c2719mi = new C2719mi(c2706m5, this.f.a(), this.j);
        Kb kb = this.k;
        synchronized (kb) {
            kb.c.add(c2719mi);
        }
        return c2719mi;
    }

    public final Fg a(C2706m5 c2706m5) {
        return new Fg(new C2419ah(c2706m5, this.h, new W3()), this.g, new Xg(this.e));
    }

    public static C2945vk a(C2706m5 c2706m5, Un un, C2681l5 c2681l5) {
        C2920uk c2920uk = new C2920uk(un);
        return new C2945vk(c2706m5, c2920uk, c2681l5, new C2761oa(c2706m5, c2920uk, new C3020yk(c2706m5.g(), "foreground"), AbstractC2802q1.a(), new SystemTimeProvider()), new J2(c2706m5, c2920uk, new C3020yk(c2706m5.g(), "background"), AbstractC2802q1.a(), new SystemTimeProvider()));
    }

    public static C2582h5 b() {
        return new C2582h5();
    }

    public final C2810q9 a(Le le, Un un, C2945vk c2945vk, S6 s6, C2477d0 c2477d0, C2746nk c2746nk, C2719mi c2719mi) {
        return new C2810q9(le, un, c2945vk, s6, c2477d0, this.i, c2746nk, this.m, new C2756o5(c2719mi), new X8(un, new Y8(un)), new SystemTimeProvider());
    }

    public static C2669ki a(C2706m5 c2706m5, C2486d9 c2486d9) {
        return new C2669ki(c2486d9, c2706m5);
    }

    public InterfaceC2959w9 a(B9 b9, S6 s6, Fg fg, F4 f4, C2532f5 c2532f5, Le le) {
        return this.l.a(b9, s6, fg, f4, c2532f5, le).a();
    }

    public final G3 a(Le le) {
        Context context = this.c;
        return new G3(context, le, context.getPackageName(), new SafePackageManager());
    }
}
