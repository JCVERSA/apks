package com.apm.insight.b;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.Printer;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

public final class i {

    private static int f18809a = 5;

    private static b f18810b;

    private static boolean f18811c;

    private static Printer f18812d;

    public interface a {
    }

    static class b implements Printer {

        List<Printer> f18813a = new ArrayList();

        private List<Printer> f18816d = new ArrayList();

        List<Printer> f18814b = new ArrayList();

        private boolean f18817e = false;

        boolean f18815c = false;

        b() {
        }

        @Override
        public final void println(String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            i.b();
            if (str.charAt(0) == '>' && this.f18815c) {
                for (Printer printer : this.f18814b) {
                    if (!this.f18813a.contains(printer)) {
                        this.f18813a.add(printer);
                    }
                }
                this.f18814b.clear();
                this.f18815c = false;
            }
            if (this.f18813a.size() > i.f18809a) {
                Log.e("LooperPrinterUtils", "wrapper contains too many printer,please check if the useless printer have been removed");
            }
            for (Printer printer2 : this.f18813a) {
                if (printer2 != null) {
                    printer2.println(str);
                }
            }
            str.charAt(0);
            i.b();
        }
    }

    public static void a() {
        if (f18811c) {
            return;
        }
        f18811c = true;
        f18810b = new b();
        Printer printerD = d();
        f18812d = printerD;
        if (printerD != null) {
            f18810b.f18813a.add(printerD);
        }
        if (com.apm.insight.e.s()) {
            Looper.getMainLooper().setMessageLogging(f18810b);
        }
    }

    static a b() {
        return null;
    }

    private static Printer d() {
        try {
            Field declaredField = Class.forName("android.os.Looper").getDeclaredField("mLogging");
            declaredField.setAccessible(true);
            return (Printer) declaredField.get(Looper.getMainLooper());
        } catch (Exception unused) {
            return null;
        }
    }

    public static void a(Printer printer) {
        if (printer == null || f18810b.f18814b.contains(printer)) {
            return;
        }
        f18810b.f18814b.add(printer);
        f18810b.f18815c = true;
    }
}
