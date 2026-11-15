package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.b;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

public class mb implements lb {
    public static volatile lb c;
    public final we a;
    public final Map b;

    public mb(we weVar) {
        wd8.l(weVar);
        this.a = weVar;
        this.b = new ConcurrentHashMap();
    }

    public static lb c(zv3 zv3Var, Context context, e2a e2aVar) {
        wd8.l(zv3Var);
        wd8.l(context);
        wd8.l(e2aVar);
        wd8.l(context.getApplicationContext());
        if (c == null) {
            synchronized (mb.class) {
                try {
                    if (c == null) {
                        Bundle bundle = new Bundle(1);
                        if (zv3Var.t()) {
                            e2aVar.a(as1.class, new Executor() {
                                @Override
                                public final void execute(Runnable runnable) {
                                    runnable.run();
                                }
                            }, new wd3() {
                                @Override
                                public final void a(sd3 sd3Var) {
                                    mb.d(sd3Var);
                                }
                            });
                            bundle.putBoolean("dataCollectionDefaultEnabled", zv3Var.s());
                        }
                        c = new mb(b.A(context, null, null, null, bundle).x());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public static void d(sd3 sd3Var) {
        throw null;
    }

    @Override
    public void a(String str, String str2, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (cgf.d(str) && cgf.c(str2, bundle) && cgf.b(str, str2, bundle)) {
            cgf.a(str, str2, bundle);
            this.a.n(str, str2, bundle);
        }
    }

    @Override
    public void b(String str, String str2, Object obj) {
        if (cgf.d(str) && cgf.e(str, str2)) {
            this.a.t(str, str2, obj);
        }
    }
}
