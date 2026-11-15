package defpackage;

import com.google.android.gms.internal.ads.e0;

public final class vse extends tte {
    public static volatile Long i;
    public static final Object j = new Object();

    public vse(e0 e0Var, String str, String str2, ooe ooeVar, int i2, int i3) {
        super(e0Var, "GVtnwWIrGNoPqjL1Fje94meezE8Inh8q0aGs9n0MCbVt8vOhfMkdgAbgJriZr+ZA", "EVd3TNrS3JyklQrlg/g4eG7fxshxeFVbto/4/TJxZiw=", ooeVar, i2, 44);
    }

    @Override
    public final void a() {
        if (i == null) {
            synchronized (j) {
                try {
                    if (i == null) {
                        i = (Long) this.f.invoke(null, null);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        ooe ooeVar = this.e;
        synchronized (ooeVar) {
            ooeVar.o0(i.longValue());
        }
    }
}
