package com.apm.insight.runtime;

import android.os.SystemClock;
import android.util.Printer;
import java.util.ArrayList;
import java.util.List;

public class i {

    private static i f19188a;

    private long f19189b = -1;

    private final List<Printer> f19190c = new ArrayList();

    private final List<Printer> f19191d = new ArrayList();

    private boolean f19192e = false;

    static {
        new Printer() {
            @Override
            public final void println(String str) {
                if (str == null) {
                    return;
                }
                if (str.charAt(0) == '>') {
                    i.a().a(str);
                } else if (str.charAt(0) == '<') {
                    i.a().b(str);
                }
                i.c();
            }
        };
    }

    private i() {
    }

    public static i a() {
        if (f19188a == null) {
            synchronized (i.class) {
                try {
                    if (f19188a == null) {
                        f19188a = new i();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f19188a;
    }

    static Printer c() {
        return null;
    }

    public final boolean b() {
        return this.f19189b != -1 && SystemClock.uptimeMillis() - this.f19189b > 5000;
    }

    final void b(String str) {
        this.f19189b = SystemClock.uptimeMillis();
        try {
            a(this.f19191d, str);
        } catch (Exception e10) {
            com.apm.insight.a.b((Throwable) e10);
        }
    }

    final void a(String str) {
        this.f19189b = -1L;
        try {
            a(this.f19190c, str);
        } catch (Exception e10) {
            com.apm.insight.a.a((Throwable) e10);
        }
    }

    private static void a(List<? extends Printer> list, String str) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                Printer printer = list.get(i10);
                if (printer == null) {
                    return;
                }
                printer.println(str);
            }
        } catch (Throwable th2) {
            com.apm.insight.a.a(th2);
        }
    }
}
