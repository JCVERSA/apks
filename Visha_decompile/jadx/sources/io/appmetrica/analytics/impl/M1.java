package io.appmetrica.analytics.impl;

import android.content.Context;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import org.json.JSONObject;

public final class M1 {
    public final C2587ha a;
    public boolean b;

    public M1() {
        this(new C2587ha());
    }

    public final synchronized long a(Context context) {
        String strA;
        try {
            this.a.getClass();
            strA = Qa.a(FileUtils.getFileFromAppStorage(context, "metrica_service_settings.dat"));
        } catch (Throwable unused) {
        }
        return !TextUtils.isEmpty(strA) ? new JSONObject(strA).optLong("delay") : 0L;
    }

    public final void b(Context context) {
        synchronized (this) {
        }
        if (this.b) {
            return;
        }
        long jA = a(context);
        if (jA > 0) {
            try {
                Thread.sleep(jA);
            } catch (Throwable unused) {
            }
        }
        this.b = true;
    }

    public M1(C2587ha c2587ha) {
        this.b = false;
        this.a = c2587ha;
    }
}
