package io.appmetrica.analytics.identifiers.impl;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import androidx.media3.common.C;
import defpackage.e74;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;

public final class f {
    public final e a;
    public final e74 b;
    public final String c;
    public final SafePackageManager d;

    public f(e eVar, e74 e74Var, String str, SafePackageManager safePackageManager) {
        this.a = eVar;
        this.b = e74Var;
        this.c = str;
        this.d = safePackageManager;
    }

    public final Object a(Context context) throws g {
        IBinder iBinder;
        if (this.d.resolveService(context, this.a.a, 0) == null) {
            throw new l("could not resolve " + this.c + " services");
        }
        try {
            e eVar = this.a;
            if (context.bindService(eVar.a, eVar, 1)) {
                e eVar2 = this.a;
                if (eVar2.b == null) {
                    synchronized (eVar2.c) {
                        if (eVar2.b == null) {
                            try {
                                eVar2.c.wait(C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                            } catch (InterruptedException unused) {
                            }
                        }
                    }
                }
                iBinder = eVar2.b;
            } else {
                iBinder = null;
            }
        } catch (Throwable unused2) {
        }
        if (iBinder != null) {
            return this.b.invoke(iBinder);
        }
        throw new g("could not bind to " + this.c + " services");
    }

    public final void b(Context context) {
        try {
            this.a.a(context);
        } catch (Throwable unused) {
        }
    }

    public f(Intent intent, e74 e74Var, String str) {
        this(new e(intent, str), e74Var, str, new SafePackageManager());
    }
}
