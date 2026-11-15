package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.internal.ads.t;
import com.google.android.gms.tasks.a;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

public final class jxh {
    public final Context a;
    public final Executor b;
    public final rwh c;
    public final ixh d;
    public xda e;

    public jxh(Context context, Executor executor, rwh rwhVar, twh twhVar, hxh hxhVar) {
        this.a = context;
        this.b = executor;
        this.c = rwhVar;
        this.d = hxhVar;
    }

    public static t a(jxh jxhVar) throws PackageManager.NameNotFoundException {
        Context context = jxhVar.a;
        return zwh.a(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
    }

    public static jxh c(Context context, Executor executor, rwh rwhVar, twh twhVar) {
        final jxh jxhVar = new jxh(context, executor, rwhVar, twhVar, new hxh());
        Callable callable = new Callable() {
            @Override
            public final Object call() {
                return jxh.a(this.b);
            }
        };
        Executor executor2 = jxhVar.b;
        jxhVar.e = a.c(executor2, callable).e(executor2, new re7() {
            @Override
            public final void a(Exception exc) {
                jxh.d(this.a, exc);
            }
        });
        return jxhVar;
    }

    public static void d(jxh jxhVar, Exception exc) {
        if (exc instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
        jxhVar.c.c(2025, -1L, exc);
    }

    public final t b() {
        ixh ixhVar = this.d;
        xda xdaVar = this.e;
        return !xdaVar.q() ? ixhVar.zza() : (t) xdaVar.m();
    }
}
