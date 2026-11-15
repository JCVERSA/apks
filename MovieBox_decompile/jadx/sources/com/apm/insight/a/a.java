package com.apm.insight.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.b.i;
import com.apm.insight.runtime.m;

public class a implements ICrashCallback {

    private static volatile a f18699d;

    private volatile String f18700a;

    private volatile i.a f18701b;

    private volatile i.a f18702c;

    private volatile boolean f18703e = false;

    private a() {
    }

    public static a a() {
        if (f18699d == null) {
            synchronized (a.class) {
                try {
                    if (f18699d == null) {
                        f18699d = new a();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f18699d;
    }

    @Override
    public void onCrash(@NonNull CrashType crashType, @Nullable String str, @Nullable Thread thread) {
        crashType.equals(CrashType.NATIVE);
    }

    public final void a(String str, i.a aVar, i.a aVar2) {
        this.f18700a = str;
        this.f18701b = aVar;
        this.f18702c = aVar2;
        if (this.f18703e) {
            return;
        }
        this.f18703e = true;
        m.a().a(new Runnable() {
            @Override
            public final void run() {
            }
        });
    }
}
