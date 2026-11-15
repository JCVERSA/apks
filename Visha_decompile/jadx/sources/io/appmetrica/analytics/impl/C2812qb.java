package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.d81;
import defpackage.z71;
import io.appmetrica.analytics.AppMetricaConfig;
import java.util.ArrayList;
import java.util.Iterator;

public final class C2812qb {
    public final C2628j2 a = new C2628j2();
    public final C2906u6 b = new C2906u6();
    public Wm c;
    public boolean d;
    public boolean e;

    public final synchronized void a(Context context, AppMetricaConfig appMetricaConfig, InterfaceC2413ab interfaceC2413ab) {
        if (this.e) {
            return;
        }
        d81.D(this.b.a, new Ma[]{this.a.a(context, appMetricaConfig, interfaceC2413ab)});
        this.e = true;
    }

    public final synchronized void b() {
        if (this.d) {
            return;
        }
        C2906u6 c2906u6 = this.b;
        ArrayList arrayList = C2879t4.i().i.a;
        ArrayList arrayList2 = new ArrayList(z71.v(arrayList, 10));
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            it.next().getClass();
            throw new ClassCastException();
        }
        c2906u6.a.addAll(arrayList2);
        this.d = true;
    }

    public final synchronized void c() {
        try {
            if (this.c != null) {
                return;
            }
            S1 s1 = new S1(this.b);
            this.c = new Wm(s1);
            Vm vm = new Vm();
            vm.a.add(s1);
            Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            if (defaultUncaughtExceptionHandler != null) {
                vm.a.add(defaultUncaughtExceptionHandler);
            }
            Thread.setDefaultUncaughtExceptionHandler(vm);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a() {
        this.b.a.clear();
        this.d = false;
        this.e = false;
    }
}
