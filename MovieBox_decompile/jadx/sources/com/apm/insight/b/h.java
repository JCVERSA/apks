package com.apm.insight.b;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Printer;
import androidx.annotation.Nullable;
import java.util.concurrent.CopyOnWriteArrayList;

public final class h {

    private static volatile boolean f18805a;

    private static Printer f18806b;

    private static final CopyOnWriteArrayList<e> f18807c = new CopyOnWriteArrayList<>();

    private static volatile boolean f18808d = false;

    public interface a {
        @Nullable
        String a();

        String b();

        String c();
    }

    public static void a() {
        if (f18805a) {
            return;
        }
        f18805a = true;
        f18806b = new Printer() {
            @Override
            public final void println(String str) {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                if (str.charAt(0) == '>') {
                    h.a(true, str);
                } else if (str.charAt(0) == '<') {
                    h.a(false, str);
                }
            }
        };
        i.a();
        i.a(f18806b);
    }

    public static void a(e eVar) {
        CopyOnWriteArrayList<e> copyOnWriteArrayList = f18807c;
        synchronized (copyOnWriteArrayList) {
            copyOnWriteArrayList.add(eVar);
        }
    }

    public static void a(boolean z10, String str) {
        e.f18749a = System.nanoTime() / 1000000;
        e.f18750b = SystemClock.currentThreadTimeMillis();
        CopyOnWriteArrayList<e> copyOnWriteArrayList = f18807c;
        for (int i10 = 0; i10 < copyOnWriteArrayList.size(); i10++) {
            e eVar = copyOnWriteArrayList.get(i10);
            if (eVar == null || !eVar.a()) {
                if (!z10 && eVar.f18751c) {
                    eVar.b("");
                }
            } else if (z10) {
                if (!eVar.f18751c) {
                    eVar.a(str);
                }
            } else if (eVar.f18751c) {
                eVar.b(str);
            }
        }
    }
}
