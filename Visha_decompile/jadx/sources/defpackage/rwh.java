package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.g;
import com.google.android.gms.internal.ads.i6;
import defpackage.rwh;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Map;
import java.util.concurrent.Executor;

public final class rwh {
    public static volatile int e = 1;
    public final Context a;
    public final Executor b;
    public final xda c;
    public final boolean d;

    public rwh(Context context, Executor executor, xda xdaVar, boolean z) {
        this.a = context;
        this.b = executor;
        this.c = xdaVar;
        this.d = z;
    }

    public static rwh a(final Context context, Executor executor, boolean z) {
        final zda zdaVar = new zda();
        if (z) {
            executor.execute(new Runnable() {
                @Override
                public final void run() {
                    int i = rwh.e;
                    zdaVar.c(i6.b(context, "GLAS", null));
                }
            });
        } else {
            executor.execute(new Runnable() {
                @Override
                public final void run() {
                    int i = rwh.e;
                    zdaVar.c(i6.c());
                }
            });
        }
        return new rwh(context, executor, zdaVar.a(), z);
    }

    public static void g(int i) {
        e = i;
    }

    public final xda b(int i, String str) {
        return h(i, 0L, null, null, null, str);
    }

    public final xda c(int i, long j, Exception exc) {
        return h(i, j, exc, null, null, null);
    }

    public final xda d(int i, long j) {
        return h(i, j, null, null, null, null);
    }

    public final xda e(int i, long j, String str) {
        return h(i, j, null, null, null, str);
    }

    public final xda f(int i, long j, String str, Map map) {
        return h(i, j, null, str, null, null);
    }

    public final xda h(final int i, long j, Exception exc, String str, Map map, String str2) {
        if (!this.d) {
            return this.c.i(this.b, new xh1() {
                @Override
                public final Object a(xda xdaVar) {
                    return Boolean.valueOf(xdaVar.q());
                }
            });
        }
        Context context = this.a;
        final boe boeVarB0 = g.b0();
        boeVarB0.v(context.getPackageName());
        boeVarB0.z(j);
        boeVarB0.B(e);
        if (exc != null) {
            Object obj = n3i.a;
            StringWriter stringWriter = new StringWriter();
            exc.printStackTrace(new PrintWriter(stringWriter));
            boeVarB0.A(stringWriter.toString());
            boeVarB0.y(exc.getClass().getName());
        }
        if (str2 != null) {
            boeVarB0.w(str2);
        }
        if (str != null) {
            boeVarB0.x(str);
        }
        return this.c.i(this.b, new xh1() {
            @Override
            public final Object a(xda xdaVar) {
                int i2 = rwh.e;
                if (!xdaVar.q()) {
                    return Boolean.FALSE;
                }
                int i3 = i;
                iyh iyhVarA = ((i6) xdaVar.m()).a(((g) boeVarB0.q()).l());
                iyhVarA.a(i3);
                iyhVarA.c();
                return Boolean.TRUE;
            }
        });
    }
}
