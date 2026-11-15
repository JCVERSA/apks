package defpackage;

import com.google.android.gms.internal.ads.d0;
import com.google.android.gms.internal.ads.e0;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;

public abstract class tte implements Callable {
    public final e0 b;
    public final String c;
    public final String d;
    public final ooe e;
    public Method f;
    public final int g;
    public final int h;

    public tte(e0 e0Var, String str, String str2, ooe ooeVar, int i, int i2) {
        this.b = e0Var;
        this.c = str;
        this.d = str2;
        this.e = ooeVar;
        this.g = i;
        this.h = i2;
    }

    public abstract void a();

    @Override
    public final Object call() {
        int i;
        try {
            long jNanoTime = System.nanoTime();
            e0 e0Var = this.b;
            Method methodI = e0Var.i(this.c, this.d);
            this.f = methodI;
            if (methodI == null) {
                return null;
            }
            a();
            d0 d0VarD = e0Var.d();
            if (d0VarD == null || (i = this.g) == Integer.MIN_VALUE) {
                return null;
            }
            d0VarD.c(this.h, i, (System.nanoTime() - jNanoTime) / 1000, null, null);
            return null;
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }
}
